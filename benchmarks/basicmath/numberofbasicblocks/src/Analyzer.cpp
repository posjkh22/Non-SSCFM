#include "Analyzer.hpp"
#include <fstream>

char target_symbol[] = "main";


bool Analyzer::numberofinstruction()
{
	
	std::unique_ptr<Module> &m = *p_IRmodule;
	unsigned int numberofinstructions = 0;
	for (auto iter1 = m->getFunctionList().begin();
		iter1 != m->getFunctionList().end(); iter1++)
	{

		Function &f = *iter1;
		for (auto iter2 = f.getBasicBlockList().begin(); 
				iter2 != f.getBasicBlockList().end(); iter2++) 
		{
			BasicBlock &bb = *iter2;
			for(auto iter3 = bb.begin(); iter3 != bb.end(); iter3++)
			{
				numberofinstructions++;
			}
		}
	}
	std::cout << "[6]numberofinstructions: " << numberofinstructions << std::endl;

	return true;
}


bool Analyzer::numberoffunction()
{
	
	std::unique_ptr<Module> &m = *p_IRmodule;
	unsigned int numberoffunction = 0;
	for (auto iter1 = m->getFunctionList().begin();
		iter1 != m->getFunctionList().end(); iter1++)
	{

		Function &f = *iter1;

		unsigned int basicblock_num = f.getBasicBlockList().size();

		if(basicblock_num == 0)
		{
			/* blank */	
		}
		else
		{
			numberoffunction++;
		}
	}
	
	std::cout << "[4]numberoffunction: " << numberoffunction << std::endl;

	return true;
}




bool Analyzer::numberofbasicblock()
{ 

	std::unique_ptr<Module> &m = *p_IRmodule;
	unsigned long numberofbasicblocks = 0;

	for (auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) 
	{

		Function &f = *iter1;
		for (auto iter2 = f.getBasicBlockList().begin(); 
				iter2 != f.getBasicBlockList().end(); iter2++) 
		{

			numberofbasicblocks++;	

			/*
			BasicBlock &bb = *iter2;
			for (auto iter3 = bb.begin(); iter3 != bb.end(); iter3++)
			{
				
			}
			*/

		}

	}
	
	std::cout << "[3]numberofbasicblocks: " << numberofbasicblocks << std::endl;
	
	//generate_module();

	return true;	
}

bool Analyzer::generate_module()
{
	Module* writeModule = p_IRmodule->release();
	std::error_code EC;
	raw_fd_ostream OS("validation.bc", EC, sys::fs::F_None);
	
	WriteBitcodeToFile(writeModule, OS, true, nullptr, true, nullptr);
	OS.flush();

	return true;
}


void Analyzer::debug_calllist()
{

	for(auto iter1 = p_MetaDataSet->getwFuncList()->begin(); 
			iter1 != p_MetaDataSet->getwFuncList()->end(); iter1++){

		wFunction* currentWf = (*iter1);
		currentWf->debug_show_calllist();
		currentWf->debug_show_parentSet();
		currentWf->debug_show_siblingSet();
	}
}


/* Analyzer */

Analyzer::Analyzer(Analyzer::Analysis_ty ty)
{
	m_analysis_ty = ty;

	p_bbNodeList = nullptr;

	p_CompactBBInfoList = nullptr;

	p_CompactImplantedBBList = nullptr;
	p_coarseBBConnectionMetaDataList = nullptr;
	p_MetaDataSet = new MetaDataSet;
}

Analyzer::~Analyzer()
{
	delete p_MetaDataSet;
}

bool Analyzer::takeInput(ParsedIRmodule& m)
{
	p_IRmodule = &m;
	return true;
}



MetaDataSet* Analyzer::getMetaDataSet(){
	return p_MetaDataSet;
}


std::unique_ptr<Module>* Analyzer::getIRmodule()
{
	return p_IRmodule;
}


CompactBBInfoList* Analyzer::getCompactBBInfoList()
{
	return p_CompactBBInfoList;
}

BBNodeList* Analyzer::getBBNodeList()
{
	return p_bbNodeList;
}

CoarseBBConnectionMetaDataList* Analyzer::getCoarseBBConnectionMetaDataList()
{
	return p_coarseBBConnectionMetaDataList;
}


wBasicBlock* Analyzer::getProgramEntryBlock()
{
	return getMetaDataSet()->getEntryFunc()->getEntryBlock();
}

Analyzer::Analysis_ty Analyzer::getAnalysisType()
{
	return m_analysis_ty;
}


bool Analyzer::Preprocess()
{
	if(Preprocess1() != true){
		return false;
	}
	std::cout << " (1)Preprocess1 is finished!" << std::endl;

	if(Preprocess2() != true){
		return false;
	}
	std::cout << " (2)Preprocess2 is finished!" << std::endl;
	
	if(Preprocess3() != true){
		return false;
	}
	std::cout << " (3)Preprocess3 is finished!" << std::endl;
	
	return true;
}


/* Preprocess1: Configure parsedIRmodule */
/*
   Preprocess1: Split the existing Basicblock
   An existing Basicblock could have one or more function call.
   This preprocess make one Basicblock has just one function call.
*/
bool Analyzer::Preprocess1(){

	ParsedIRmodule &m = *p_IRmodule;

	while(splitBBModuleChecker(m) != 0){
		splitBBModuleOnce(m);
	}
	splitBBModuleOnce(m);

	return true;
}

/* Preporcess1: splitBBModuleChecker */
int Analyzer::splitBBModuleChecker(ParsedIRmodule &m){


	int CheckSum = 0;
	int InstCall_flag = 0;

	std::list<Data *> ToSplitBBList;
  
	for (auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		for (auto iter2 = f.getBasicBlockList().begin(); 
				iter2 != f.getBasicBlockList().end(); iter2++) {

			InstCall_flag = 0;
			
			BasicBlock &bb = *iter2;
			for (auto iter3 = bb.begin(); iter3 != bb.end(); iter3++) {
				
				Instruction &inst = *iter3;
				/* Increase CheckSum per Call Inst */
				if(!strcmp(inst.getOpcodeName(), "call")){
					CheckSum++;
#ifdef DEBUG_WRAPPER
					std::cout << "[INCREASE]" <<std::endl;
#endif
					InstCall_flag = 1;
				}
      		}
			/* Decrease CheckSum per BB if BB has a Call Inst */
			if(InstCall_flag == 1){
				CheckSum--;
#ifdef DEBUG_WRAPPER
				std::cout << "[DECREASE]" <<std::endl;
#endif			
			}
    	}
		
		
  	}

#ifdef DEBUG_WRAPPER
	std::cout << "[CheckSum]: " << CheckSum << std::endl;
#endif			

	return CheckSum;
}


/* Preporcess1: splitBBModuleOnce */
bool Analyzer::splitBBModuleOnce(ParsedIRmodule &m){

	std::list<Data *> ToSplitBBList;
	Data *data;
  
	for (auto iter1 = m->getFunctionList().begin(); iter1 != m->getFunctionList().end(); iter1++) {
		Function &f = *iter1;
		for (auto iter2 = f.getBasicBlockList().begin(); iter2 != f.getBasicBlockList().end(); iter2++) {

			BasicBlock &bb = *iter2;
			Instruction *pastInst = reinterpret_cast<Instruction *>(0);
			for (auto iter3 = bb.begin(); iter3 != bb.end(); iter3++) {

				Instruction &inst = *iter3;
				/* store split point */
				if(pastInst != reinterpret_cast<Instruction *>(0)){
					/* Ignore if the next instruction is "br" */
					//if((!strcmp(pastInst->getOpcodeName(), "call")) 
					//&& (strcmp(inst.getOpcodeName(), "br") && strcmp(inst.getOpcodeName(), "ret"))){
					
					if((!strcmp(pastInst->getOpcodeName(), "call")) && strcmp(inst.getOpcodeName(), "br")){
						data = new Data(&f, &bb, &inst);
						ToSplitBBList.push_back(data);
						break;
					}
				}
				pastInst = &inst;
      		}
    	}
  	}


	BasicBlock *tmp;
	std::list<Data *>::iterator iter;
	/* split by using splitBasicBlock function */
	for(iter = ToSplitBBList.begin(); iter != ToSplitBBList.end(); iter++){
		tmp = (*iter)->bb->splitBasicBlock((*iter)->inst);
	}

	return true;
}


/* Preprocess2: Generate Meta data */
bool Analyzer::Preprocess2(){

	std::unique_ptr<Module> &m = *p_IRmodule;

	unsigned int FunctionID = 0x0000;
	unsigned int BasicBlockID = 0x0000;

	/* Module Entry */
  	for (auto iter1 = m->getFunctionList().begin(); iter1 != m->getFunctionList().end(); iter1++) {


		/* Function Entry */
		Function &f = *iter1;
		wFunction *wf = new wFunction(p_IRmodule, this);
		wf->setwFunction(&f);
		wf->setID(++FunctionID);
		BasicBlockID = 0x0000;
		p_MetaDataSet->pushFuncList(wf);
	
		if(f.getName().str() == target_symbol)
		{
			p_MetaDataSet->setEntryFunc(wf);
		}

	
		unsigned int BBNumber = 0;
		for (auto iter2 = f.getBasicBlockList().begin(); iter2 != f.getBasicBlockList().end(); iter2++) {


			/* BasicBlock Entry */
			BasicBlock &bb = *iter2;
			wBasicBlock *wbb = new wBasicBlock;
			wbb->setName(f.getName().str() + std::string("%") + std::to_string(BBNumber++));

			wbb->setwBasicBlock(&bb);
			wbb->setID(FunctionID << 16 | (++BasicBlockID));
			wf->pushBBList(wbb);
	
			for (auto iter3 = bb.begin(); iter3 != bb.end(); iter3++)
			{

				/* Instruction Entry */
				Instruction &inst = *iter3;
				wInstruction *wInst = new wInstruction;
				wInst->setwInstruction(&inst);
				wbb->pushInstList(wInst);

				int opnt_cnt = inst.getNumOperands();

				for(int i = 0; i < opnt_cnt; i++)
				{
					Value *opnd = inst.getOperand(i);
					wInst->pushOperandList(opnd);
				}

			}
			/* BasicBlock EndPoint */
			
		}
		/* Function EndPoint */	
  	}


	return true;

}



/* Preprocess3: Configure Meta data */
bool Analyzer::Preprocess3()
{

	if(getAnalysisType() == Analysis_ty::FINE_GRAINED)
	{
	
		if(BasicBlockBranchAndFunctionCallImpl() != true)
		{
			std::cout << " [Failure] BasicBlockBranchAndFunctionCallImpl Fails" << std::endl;
			return false;
		}
		std::cout << " - BasicBlockBranchAndFunctionCallImpl Finished!" << std::endl;

		/*	
		if(BasicBlockBranchAndFunctionCallImpl3() != true)
		{
			std::cout << " [Failure] BasicBlockBranchAndFunctionCallImpl3 Fails" << std::endl;
			return false;
		}
		std::cout << " - BasicBlockBranchAndFunctionCallImpl3 Finished!" << std::endl;
		*/
	}	

	else if(getAnalysisType() == Analysis_ty::COARSE_GRAINED)
	{

		std::cout << " - BasicBlockBranchAndFunctionCallImpl runs..!" << std::endl;
		if(BasicBlockBranchAndFunctionCallImpl() != true)
		{
			std::cout << " [Failure] BasicBlockBranchAndFunctionCallImpl Fails" << std::endl;
			return false;
		}
		std::cout << " - BasicBlockBranchAndFunctionCallImpl has finished!" << std::endl;
		

		std::cout << " - BasicBlockBranchAndFunctionCallImpl2 runs..!" << std::endl;
		if(BasicBlockBranchAndFunctionCallImpl2() != true)
		{	
			std::cout << " [Failure] BasicBlockBranchAndFunctionCallImpl2 Fails" << std::endl;
			return false;
		}
		std::cout << " - BasicBlockBranchAndFunctionCallImpl2 has finished!" << std::endl;
	}

	return true;
}


/* Preporcess3: BasicBlockBranchAndFunctionCallImpl */
/*
   1. make connection of each Basicblock.
   2. classify each Basicblock(call/br/return)
    - call type: call a function
	- br: have a conditional branch
	- return: exit the function
*/

bool Analyzer::BasicBlockBranchAndFunctionCallImpl2()
{
	if(makeParentFunctionSet() != true)
	{
		std::cout << " [Failrue] SetParentFunction Fails" << std::endl;	
		return false;
	}

	if(makeSiblingFunctionSet() != true)
	{
		std::cout << " [Failure] SetSiblingFunction Fails" << std::endl;	
		return false;
	}

	return true;
}

bool Analyzer::BasicBlockBranchAndFunctionCallImpl3()
{
	if(makeParentFunctionSet() != true)
	{
		std::cout << " [Failrue] SetParentFunction Fails" << std::endl;	
		return false;
	}

	return true;
}


bool Analyzer::makeParentFunctionSet()
{

	for(auto iter1 = p_MetaDataSet->getwFuncList()->begin(); 
			iter1 != p_MetaDataSet->getwFuncList()->end(); iter1++)
	{

		wFunction* ParentFunction = (*iter1);
		
		/* Skip non-define function */
		if(ParentFunction->getwBBList()->empty())
		{
			continue;
		}

		/* set ParentFunctionList for each function */
		for(auto cs_iter = ParentFunction->getChildFunctionSet()->begin();
				cs_iter != ParentFunction->getChildFunctionSet()->end(); cs_iter++)
		{
		
			wFunction *ChildFunction = (*cs_iter);
			ChildFunction->InsertParentFunctionSet(ParentFunction);	
		}
	}

	return true;
}


bool Analyzer::makeSiblingFunctionSet()
{
	for(auto iter1 = p_MetaDataSet->getwFuncList()->begin(); 
			iter1 != p_MetaDataSet->getwFuncList()->end(); iter1++)
	{

		wFunction* currentFunction = (*iter1);

		/* Skip non-define function */
		if(currentFunction->getwBBList()->empty())
		{
			continue;
		}
		
		for(auto ps_iter = currentFunction->getParentFunctionSet()->begin();
				ps_iter != currentFunction->getParentFunctionSet()->end(); ps_iter++)
		{
			wFunction* parentFunction = (*ps_iter);

			/* including itself */
			for(auto cs_iter = parentFunction->getChildFunctionSet()->begin();
					cs_iter != parentFunction->getChildFunctionSet()->end(); cs_iter++)
			{
				wFunction* siblingFunction = (*cs_iter);
				currentFunction->InsertSiblingFunctionSet(siblingFunction);	
			}

		}
	}

	return true;
}


bool Analyzer::BasicBlockBranchAndFunctionCallImpl()
{

	unsigned int numberofcall = 0;	

	for(auto iter1 = p_MetaDataSet->getwFuncList()->begin(); 
			iter1 != p_MetaDataSet->getwFuncList()->end(); iter1++)
	{

		wFunction *CurrentFunc = (*iter1);
		CurrentFunc->determineFuncRetTy();

		if(CurrentFunc->getwBBList()->empty())
		{
			std::cout << "  -Undefined Function: " << CurrentFunc->getName() << std::endl;
			continue;
		}

		for(auto iter2 = CurrentFunc->getwBBList()->begin(); 
				iter2 != CurrentFunc->getwBBList()->end(); iter2++){

			wBasicBlock *CurrentBB = (*iter2);
			CurrentBB->setParent(CurrentFunc);
			//std::list<wInstruction *>::iterator iter3;

			if(CurrentBB->getwInstList()->empty())
			{
				std::cout << " - (empty basicblock) in " << CurrentFunc->getName() << std::endl;
				continue;
			}

			for(auto iter3 = CurrentBB->getwInstList()->begin(); 
					iter3 != CurrentBB->getwInstList()->end(); ++iter3){
				
				Instruction *CurrentInst = (*iter3)->getInstruction();


				if(!strcmp(CurrentInst->getOpcodeName(), "br"))
				{
					/* Unconditional branch */
					if(CurrentInst->getNumOperands() == 1){
						Value* opnd = CurrentInst->getOperand(CurrentInst->getNumOperands() -1);

						BasicBlock *BranchBB = reinterpret_cast<BasicBlock *>(opnd);
						wBasicBlock* BranchwBB = CurrentFunc->SearchBasicBlock(BranchBB);
			
						std::pair<wBasicBlock* , wBasicBlock *> *BranchwBBpair 
							= new std::pair<wBasicBlock *, wBasicBlock *>
							(BranchwBB , reinterpret_cast<wBasicBlock *>(0)); 
						
						CurrentBB->setBranchBlock(BranchwBBpair);
			
						if(CurrentBB->hasCall() != true)
						{
							CurrentBB->setType(wBasicBlock::ONE_BRANCH);
						}
					}
					
					/* Conditional branch: LLVM IR only two direction */	
				
					
					else if(CurrentInst->getNumOperands() == 3)
					{
						Value* opnd1 = CurrentInst->getOperand(CurrentInst->getNumOperands() -1);
						BasicBlock *BranchBB1 = reinterpret_cast<BasicBlock *>(opnd1);
						wBasicBlock* BranchwBB1 = CurrentFunc->SearchBasicBlock(BranchBB1);
					

						Value* opnd2 = CurrentInst->getOperand(CurrentInst->getNumOperands() -2);
						BasicBlock *BranchBB2 = reinterpret_cast<BasicBlock *>(opnd2);
						wBasicBlock* BranchwBB2 = CurrentFunc->SearchBasicBlock(BranchBB2);
						
						std::pair<wBasicBlock* , wBasicBlock *> *BranchwBBpair 
							= new std::pair<wBasicBlock *, wBasicBlock *>(BranchwBB1 , BranchwBB2); 
					
						CurrentBB->setBranchBlock(BranchwBBpair);
						CurrentBB->setType(wBasicBlock::TWO_BRANCH);
					}

					else
					{
						std::cout << "TWO More Branch Target is Detected!!" << std::endl;
						continue;
					}
					break;
				}
				else if(!strcmp(CurrentInst->getOpcodeName(), "ret"))
				{		
					CurrentBB->setType(wBasicBlock::RETURN);
					CurrentFunc->pushReturnBlockList(CurrentBB);
					break;
				}
				else if(!strcmp(CurrentInst->getOpcodeName(), "switch"))
				{		
					std::cout << "  [Warning] This example has switch instruction!" << std::endl;
					continue;
				}


				/* other instruction such as load, store.. */
				else
				{
					continue;
				}
			}

			for(auto iter3 = CurrentBB->getwInstList()->begin(); 
					iter3 != CurrentBB->getwInstList()->end(); ++iter3)
			{
				
				Instruction *CurrentInst = (*iter3)->getInstruction();

				if(!strcmp(CurrentInst->getOpcodeName(), "call"))
				{

					numberofcall++;

					CurrentBB->setCall(true);					
					Value *branch_opnd = CurrentInst->getOperand(CurrentInst->getNumOperands() -1);
					Function *branch_func = reinterpret_cast<Function *>(branch_opnd);
					
					/* This is based on getOperand but, bitcast function causes a problem */
					//wFunction *target_wfunc =  p_MetaDataSet->SearchFunction(branch_func);


					/* CallSite */
					llvm::CallSite callsite(CurrentInst);
					Function *called_function = callsite.getCalledFunction();
				

					/* stripPointerCasts */

					CallInst* ci = cast<CallInst>(CurrentInst);
					Function* fp = ci->getCalledFunction();
					wFunction *target_wfunc = nullptr;
					if(fp==NULL)
					{
						Value* v = ci->getCalledValue();
						Value* sv = v->stripPointerCasts();
						Function *cv = reinterpret_cast<Function *>(sv);
						target_wfunc =  p_MetaDataSet->SearchFunction(cv);
					}
					else
					{
					/* Both methods shows generally same results, but Callsite covers bitcast function */
					//std::cout << "PriorWay-> Called function: " << branch_func->getName().str() << std::endl;
					//std::cout << "CallSite-> Called function: " << called_function->getName().str() << std::endl;
						target_wfunc =  p_MetaDataSet->SearchFunction(called_function);
					}
					
					if(target_wfunc == nullptr)
					{
						continue;
						//std::cout << " NotFound: " << target_wfunc->getName() << std::endl;
					}	

					if(target_wfunc->getwBBList()->empty())
					{
						
						//std::cout << "FIND: " << target_wfunc->getName() << std::endl;
						
						//CurrentBB->setType(wBasicBlock::ONE_BRANCH);
						continue;
					}
					else
					{

						/* Fine-Grained */	
						if(getAnalysisType() == Analyzer::FINE_GRAINED)
						{
							(*iter2)->pushFuncCallList(target_wfunc);
							//(*iter1)->InsertChildFunctionSet(target_wfunc);
						}	
						

						/* Coarse-Grained: cs generation */
						if(getAnalysisType() == Analyzer::COARSE_GRAINED)
						{
							(*iter1)->InsertChildFunctionSet(target_wfunc);
						}

						/* set CALL type */
						CurrentBB->setType(wBasicBlock::CALL);
	
						break;
					}
				

				}
			}


		}


	}
	
	std::cout << "[5]numberofcall: " << numberofcall << std::endl;

	return true;
}

/* Preporcess3: makePathsInEachFunction */
/*
   1. make Pathlist in each function
   2. determine the uncounted function when generating path
*/

bool Analyzer::makePathsInEachFunction(){

	std::list<wFunction *> *TraverseFuncList = p_MetaDataSet->getwFuncList();
	std::list<wFunction *>::iterator iter;


	for(iter = TraverseFuncList->begin(); iter != TraverseFuncList->end(); iter++){

		wFunction *current = *iter;

		/* if work well without this, delete it */
		 
		if( current->getFunction()->getName().str() == "free" 
				|| current->getFunction()->getName().str() == "malloc"){

			Function *f = current->getFunction();
			BasicBlock &entry = f->getBasicBlockList().front();
			wBasicBlock *entrywBB = current->SearchBasicBlock(&entry);
			(*iter)->IntrinsicFuncMakePathsList(entrywBB);
			//(*iter)->makePathList();
		}
		
		else{
		
		
			(*iter)->makeBBPathList((*iter)->SearchBasicBlock(&((*iter)->getFunction()->getEntryBlock())));
			//(*iter)->makePathList();
		
		}
	}
	return true;
}





////////////////////////////////////////////////////////////////////////////////////////////////////////////


bool Analyzer::ShowPathsInEachFunc(){

	std::cout << "[Function Paths]" << std::endl;

	std::list<wFunction *> *TraverseFuncList = p_MetaDataSet->getwFuncList();
	std::list<wFunction *>::iterator iter;

	for(iter = TraverseFuncList->begin(); iter != TraverseFuncList->end(); iter++){
		std::cout << (*iter)->getFunction()->getName().str();
		std::cout << "(PathNum: " << (*iter)->getNumPaths()  << ")" << std::endl;;
		(*iter)->showPathsList();	
		std::cout << std::endl;
	}

	std::cout << std::endl;
	return true;
}






bool Analyzer::DebugWrapperModule()
{

	std::ofstream outfile("./DebugProcessedModule");

#ifdef console
	std::cout << "[Debug Test]" << std::endl;
#else
	outfile << "[Debug Test]" << std::endl;
#endif
	std::list<wFunction *>::iterator iter1;
	for(iter1 = p_MetaDataSet->getwFuncList()->begin(); iter1 != p_MetaDataSet->getwFuncList()->end(); iter1++){
#ifdef console
		std::cout << "Function: " << (*iter1)->getFunction()->getName().str() << "(" ;
#else
		outfile << "Function: " << (*iter1)->getFunction()->getName().str() << "(" ;
#endif

		wFunction *wfunc = (*iter1);
		std::list<wBasicBlock *>::iterator iter2;

		if(wfunc->getFuncRetTy() == wFunction::FuncRetTy::VoidTy){
#ifdef console
			std::cout << "VoidTy): " << (*iter1)->getFunction()  << std::endl;
#else
			outfile << "VoidTy): " << (*iter1)->getFunction()  <<  std::endl;
#endif
		}else{
#ifdef console
			std::cout << "NonVoidTy): " << (*iter1)->getFunction()  << std::endl;
#else
			outfile << "NonVoidTy): " << (*iter1)->getFunction()  <<  std::endl;
#endif
		}

		for(iter2 = wfunc->getwBBList()->begin(); iter2 != wfunc->getwBBList()->end(); iter2++){
#ifdef console
			std::cout << " BasicBlock: " << (*iter2)->getBasicBlock() << " ";
			std::cout << " wBasicBlock: " << (*iter2) << " ";
			std::cout << "[" << *((*iter2)->getName()) << "]";	
#else
			outfile << " BasicBlock: " << (*iter2)->getBasicBlock() << " ";
			outfile << " wBasicBlock: " << (*iter2) << " ";
			outfile << "[" << *((*iter2)->getName()) << "]";	
#endif
			
			/*
			std::cout << "Call Num: " << (*iter2)->getNumFuncCall() << std::endl;
			std::cout << " BB_ID: " << std::hex <<  (*iter2)->getID() << std::dec;
			*/
#ifdef console
			std::cout << ", Type: " << (*iter2)->getType();
#else
			outfile << ", Type: " << (*iter2)->getType();
#endif
			
			//std::pair<wBasicBlock *, wBasicBlock *> *branchBlockPair = (*iter2)->getBranchBlock();

			if((*iter2)->getType() == wBasicBlock::ONE_BRANCH){
#ifdef console
				std::cout << " [ONE_BRANCH]" << std::endl;
#else
				outfile << " [ONE_BRANCH]" << std::endl;
#endif
				/*
				wBasicBlock *target1 = branchBlockPair->first;
				std::cout << " [BranchBlock]: " << target1->getBasicBlock() << " ";
				std::cout << " [wBranchBlock]: " << target1->getBasicBlock() << std::endl;
				*/

			}	
			else if((*iter2)->getType() == wBasicBlock::TWO_BRANCH)
			{
#ifdef console
				std::cout << " [TWO_BRANCH]" << std::endl;
#else
				outfile << " [TWO_BRANCH]" << std::endl;
#endif
				/*
				wBasicBlock *target1 = branchBlockPair->first;
				wBasicBlock *target2 = branchBlockPair->second;
				std::cout << " [BranchBlock]: " << target1->getBasicBlock() << " ";
				std::cout << " [wBranchBlock]: " << target1 << std::endl;
				std::cout << " [BranchBlock]: " << target2->getBasicBlock() << " ";
				std::cout << " [wBranchBlock]: " << target2 << std::endl;
				*/
			
			}
			else if((*iter2)->getType() == wBasicBlock::CALL)
			{
#ifdef console
				std::cout << " [CALL]" << std::endl;
#else
				outfile << " [CALL]" << std::endl;
#endif
				
			}			
			else 
			{
#ifdef console
				std::cout << " [Return]" << std::endl;
#else
				outfile << " [Return]" << std::endl;
#endif
			}

			wBasicBlock *wbb = (*iter2);
			std::list<wInstruction *>::iterator iter3;

		
			for(iter3 = wbb->getwInstList()->begin(); iter3 != wbb->getwInstList()->end(); iter3++){
#ifdef console
				std::cout << "   Instruction: " << (*iter3)->getInstruction()->getOpcodeName();
#else
				outfile << "   Instruction: " << (*iter3)->getInstruction()->getOpcodeName();
#endif
					
				wInstruction *wInst = *iter3;
				int opnt_cnt = wInst->getInstruction()->getNumOperands();
				
				/* CallSite : get Called function */

				
				if(!strcmp(wInst->getInstruction()->getOpcodeName(),"call"))
				{
					llvm::Instruction* call_inst = wInst->getInstruction(); 
					llvm::CallInst* CI = cast<CallInst>(call_inst);

					llvm::Function* fp = CI->getCalledFunction();
					llvm::Function* called_function;
					
					if(fp == NULL)
					{
						Value* v = CI->getCalledValue();
						Value* sv = v->stripPointerCasts();
						called_function = cast<Function>(sv);	
						
						outfile << "   [CS+] " << called_function->getName().str();
					}

					else
					{
						outfile << "   [CS-] " << fp->getName().str();
					}


				}

				
				/*
				if(!strcmp(wInst->getInstruction()->getOpcodeName(),"call"))
				{
					llvm::Instruction* call_inst = wInst->getInstruction(); 
					llvm::CallSite callsite(call_inst);
					llvm::Function* called_function = callsite.getCalledFunction();

					llvm::CallInst* ci = cast<CallInst>(call_inst);
					llvm::Function* ci_called_function = ci->getCalledFunction();


					if(ci_called_function->hasName())
					{
#ifdef console
						std::cout << "   [CS+] " << called_function->getName().str();
						std::cout << "   [CS+] " << ci_called_function->getName().str();
#else
						outfile << "   [CS+] " << called_function->getName().str();
						outfile << "   [CS+] " << ci_called_function->getName().str();
#endif
					}
					else
					{
#ifdef console

						if(called_function == nullptr && ci_called_function == nullptr)
						{
							std::cout << "   [CS--] called nullptr";
							std::cout << "   [CS--] ci_called nullptr";
						}
						else if(called_function == nullptr)
						{
							std::cout << "   [CS--] called nullptr";
						}
						else if(ci_called_function == nullptr)
						{
							std::cout << "   [CS--] ci_called nullptr";
						}
						else
						{
							std::cout << "   [CS-] " << called_function;
							std::cout << "   [CS-] " << ci_called_function;
						}
#else

						if(called_function == nullptr && ci_called_function == nullptr)
						{
							outfile << "   [CS--] called nullptr";
							outfile << "   [CS--] ci_called nullptr";
						}
						else if(called_function == nullptr)
						{
							outfile << "   [CS--] called nullptr";
						}
						else if(ci_called_function == nullptr)
						{
							outfile << "   [CS--] ci_called nullptr";
						}
						else
						{
							outfile << "   [CS-] " << called_function;
							outfile << "   [CS-] " << ci_called_function;
						}

#endif
					}


				}
				*/

				for(int i = 0; i < opnt_cnt; i++)
       	 		{
          			Value *opnd = wInst->getInstruction()->getOperand(i);
					std::string o = opnd->getName();
					if(opnd->hasName()) {
#ifdef console
						std::cout << " [S]" << o;
#else
						outfile << " [S]" << o;
#endif

					} else {
#ifdef console
						std::cout << " [P]" << opnd;
#else
						outfile << " [P]" << opnd;
#endif
					}
				}
#ifdef console
				std::cout << std::endl;
#else
				outfile << std::endl;
#endif
				
			}
			
		}	
	}

	outfile.close();

	return true;

}

/* Process */
/*
   1. IRImplanter
   : Implant Signal Codes into the input IR code
    - sig_initializer();
	- sig_checker();

   2. MonitoringCodeGenerator
   : Generate Monitoring code according to Analysis Results

*/
bool Analyzer::Process()
{
	
	std::cout << " -AnalysisForSignalCodeImplanter runs.." << std::endl;
	if(AnalysisForSignalCodeImplanter() != true)
	{
		std::cout << " -AnalysisForSignalCodeImplanter Fails" << std::endl;
		return false;
	}
	std::cout << " -AnalysisForSignalCodeImplanter has finished!" << std::endl;
	
		
	std::cout << " -AnalsysForMonitoringCodeGenerator runs.." << std::endl;
	if(AnalysisForMonitoringCodeGenerator() != true)
	{
		std::cout << " -AnalsysForMonitoringCodeGenerator Fails" << std::endl;
		return false;
	}
	std::cout << " -AnalsysForMonitoringCodeGenerator has finished!" << std::endl;
	
	return true;
}

bool Analyzer::AnalysisForSignalCodeImplanter()
{

	if(getAnalysisType() == Analyzer::COARSE_GRAINED)
	{
		
		if(p_CompactImplantedBBList == nullptr)
		{
			p_CompactImplantedBBList = new CompactImplantedBBList;
		}
		
		std::cout << "  -CoarseGrained AnalysisForSignalCodeImplanter runs.." << std::endl;

		for(auto iter1 = p_MetaDataSet->getwFuncList()->begin();
				iter1 != p_MetaDataSet->getwFuncList()->end();
				iter1++)
		{

			wFunction* Wf = *iter1;

			for(auto iter2 = Wf->getwBBList()->begin();
					iter2 != Wf->getwBBList()->end();
					iter2++)
			{

				wBasicBlock* currentWBB = *iter2;
				llvm::BasicBlock* currentBB = currentWBB->getBasicBlock();

				/* if BB is ENTRY or RETURN */
				if(currentWBB->getType() == wBasicBlock::RETURN || 
						currentWBB == *(Wf->getwBBList()->begin()))
				{

					p_CompactImplantedBBList->insert(std::make_pair(currentBB, currentWBB->getID()));
		
				}
				//p_CompactImplantedBBList->push_back(currentBB);
			}
		}
		std::cout << "  -CoarseGrained AnalysisForSignalCodeImplanter has finished!" << std::endl;

	}

	else if(getAnalysisType() == Analyzer::FINE_GRAINED)
	{
		std::cout << "  -FineGrained AnalysisForSignalCodeImplanter runs.." << std::endl;
	
		if(p_CompactImplantedBBList == nullptr)
		{
			p_CompactImplantedBBList = new CompactImplantedBBList;
		}

		for(auto iter1 = p_MetaDataSet->getwFuncList()->begin();
				iter1 != p_MetaDataSet->getwFuncList()->end();
				iter1++)
		{

			wFunction* Wf = *iter1;

			for(auto iter2 = Wf->getwBBList()->begin();
					iter2 != Wf->getwBBList()->end();
					iter2++)
			{

				wBasicBlock* currentWBB = *iter2;
				llvm::BasicBlock* currentBB = currentWBB->getBasicBlock();

				p_CompactImplantedBBList->insert(std::make_pair(currentBB, currentWBB->getID()));
		
				//p_CompactImplantedBBList->push_back(currentBB);
			}
		}

		std::cout << "  -FineGrained AnalysisForSignalCodeImplanter has finished!" << std::endl;

		return true;

	}
	else
	{
		std::cout << "Analysis Type Error" << std::endl;
		return false;
	}

	

	return true;
}


CompactImplantedBBList* Analyzer::getCompactImplantedBBList()
{
	return p_CompactImplantedBBList;
}


bool Analyzer::AnalysisForMonitoringCodeGenerator()
{

	bool success = false;

	if(getAnalysisType() == Analyzer::COARSE_GRAINED)
	{
		std::cout << "  -CoarseGrainedAnalysisForMnotoringCodeGenerator runs.. " << std::endl;
		success = CoarseGrainedAnalysisForMonitoringCodeGenerator();
		if(success == false)
		{
			std::cout << "  -CoarseGrainedAnalysisForMnotoringCodeGenerator has fail!" << std::endl;
		}
		else
		{
			std::cout << "  -CoarseGrainedAnalysisForMnotoringCodeGenerator has finished!" << std::endl;
		}
	}
	else if(getAnalysisType() == Analyzer::FINE_GRAINED)
	{
		std::cout << "  -FineGrainedAnalysisForMnotoringCodeGenerator runs.. " << std::endl;
		
		//success = FineGrainedAnalysisForMonitoringCodeGenerator();
		success = FineGrainedAnalysisForMonitoringCodeGenerator2();
		
		if(success == false)
		{
			std::cout << "  -FineGrainedAnalysisForMnotoringCodeGenerator has fail!" << std::endl;
		}
		else
		{
			std::cout << "  -FineGrainedAnalysisForMnotoringCodeGenerator has finished!" << std::endl;
		}
	}
	else
	{
		std::cout << "  -Undefined Analysis Type " << std::endl;
	}

	return success;
}

bool Analyzer::CoarseGrainedAnalysisForMonitoringCodeGenerator()
{
	
	if(p_coarseBBConnectionMetaDataList == nullptr)
	{
		p_coarseBBConnectionMetaDataList = new CoarseBBConnectionMetaDataList;
	}

	for(auto iter1 = p_MetaDataSet->getwFuncList()->begin();
			iter1 != p_MetaDataSet->getwFuncList()->end();
			iter1++)
	{
		wFunction* currentF = *iter1;

		/* Skip non-defined function */
		if(currentF->getwBBList()->empty() == true)
		{
			//std::cout << "Emtpy Function" << std::endl;
			continue;
		}

		CoarseBBConnectionMetaData* newCoarseBBConnectionMetaData_for_entry = nullptr;
		CoarseBBConnectionMetaData* newCoarseBBConnectionMetaData_for_return = nullptr;


		/*
			ENTRY BASICBLOCK CONNECTION STARTS!
		*/


		/* one entry block */
		wBasicBlock* entryBlock = currentF->getEntryBlock();

		/* If function has no function-call */
		/*
			A function-entry to A function-return (in same function)
			ReturnBlockList is used.
		*/
		if(currentF->getChildFunctionSet()->empty() == true)
		{

			newCoarseBBConnectionMetaData_for_entry = new CoarseBBConnectionMetaData(
				entryBlock->getID()
				);


			/* The number of Returnblock could be more than two */

			if(currentF->getReturnBlockList()->empty())
			{
				std::cout << " [ERROR] return block is empty in " << currentF->getName() << std::endl;
			}

			for(auto returnBB_iter = currentF->getReturnBlockList()->begin();
					returnBB_iter != currentF->getReturnBlockList()->end(); returnBB_iter++)
			{
				wBasicBlock* returnBlock = (*returnBB_iter);
				newCoarseBBConnectionMetaData_for_entry->InsertConnectionSet(
						returnBlock->getID());
			}

			newCoarseBBConnectionMetaData_for_entry->setConnectionSetNumber(
					newCoarseBBConnectionMetaData_for_entry->connection_set.size());
			
		}
	

		/* EntryBB of Function to EntryBB of called Function */
		/*
			A function-entry to B function-entry
			ChildFunctionSet is used.
		*/
		else
		{
			newCoarseBBConnectionMetaData_for_entry = new CoarseBBConnectionMetaData(
				entryBlock->getID()
				);


			for(auto childF_iter = currentF->getChildFunctionSet()->begin();
					childF_iter != currentF->getChildFunctionSet()->end(); childF_iter++)
			{
				wFunction* childF = (*childF_iter);
				wBasicBlock* childF_entryBB = childF->getEntryBlock();
				newCoarseBBConnectionMetaData_for_entry->InsertConnectionSet(
						childF_entryBB->getID());
			}

			newCoarseBBConnectionMetaData_for_entry->setConnectionSetNumber(
					newCoarseBBConnectionMetaData_for_entry->connection_set.size());

		}


		p_coarseBBConnectionMetaDataList->push_back(newCoarseBBConnectionMetaData_for_entry);


		/*
			RETURN BASICBLOCK CONNECTION STARTS!

			- Where to return?
			- 1. (entry basicblock) Sibling Set of parent function.
			- 2. (return basicblock) parent of parent function.
		*/


		/* more than two return block */
		for(auto returnBB_iter = currentF->getReturnBlockList()->begin();
				returnBB_iter != currentF->getReturnBlockList()->end(); returnBB_iter++)
		{

			wBasicBlock* returnBlock = (*returnBB_iter);

			newCoarseBBConnectionMetaData_for_return = new CoarseBBConnectionMetaData(
				returnBlock->getID()
				);


			for(auto parentF_iter = currentF->getParentFunctionSet()->begin();
					parentF_iter != currentF->getParentFunctionSet()->end(); parentF_iter++)
			{

				wFunction* parentF = (*parentF_iter);
				
				/* if parentF is 'main' or other target functions pass through */	
				if(parentF->getName() == std::string(target_symbol))
				{
					continue;
				}


				/* siblings of parentF */
				for(auto siblingF_iter = parentF->getSiblingFunctionSet()->begin();
						siblingF_iter != parentF->getSiblingFunctionSet()->end(); siblingF_iter++)
				{	
					wFunction* siblingOfParentF = (*siblingF_iter);
					wBasicBlock* entryBB_siblingOfParentF = siblingOfParentF->getEntryBlock();

					newCoarseBBConnectionMetaData_for_return->InsertConnectionSet(
							entryBB_siblingOfParentF->getID());

				}

				/* parent(grandpa) returnBlock of parentF */		
			
				for(auto p_parentF_iter = parentF->getParentFunctionSet()->begin();
						p_parentF_iter != parentF->getParentFunctionSet()->end(); p_parentF_iter++)
				{
					wFunction* parentOfParentF = (*p_parentF_iter);

					for(auto return_pp_iter = parentOfParentF->getReturnBlockList()->begin();
							return_pp_iter != parentOfParentF->getReturnBlockList()->end(); return_pp_iter++)
					{

						wBasicBlock* returnBB_parentOfParentF = (*return_pp_iter);
						
						newCoarseBBConnectionMetaData_for_return->InsertConnectionSet(
								returnBB_parentOfParentF->getID());
							
					}
				}



			}
			
			newCoarseBBConnectionMetaData_for_return->setConnectionSetNumber(
					newCoarseBBConnectionMetaData_for_return->connection_set.size());

			p_coarseBBConnectionMetaDataList->push_back(newCoarseBBConnectionMetaData_for_return);

		}
	}


	return true;
}

bool Analyzer::FineGrainedAnalysisForMonitoringCodeGenerator2()
{
	
	if(p_bbNodeList == nullptr)
	{
		p_bbNodeList = new BBNodeList;
	}
	

	for(auto iter1 = p_MetaDataSet->getwFuncList()->begin();
			iter1 != p_MetaDataSet->getwFuncList()->end();
			iter1++)
	{
		wFunction* currentF = *iter1;

		if(currentF->getwBBList()->empty())
		{
			//std::cout << "Emtpy Function" << std::endl;
			continue;
		}

		BBNode* p_bbNode = nullptr;
		
		for(auto iter2 = currentF->getwBBList()->begin();
				iter2 != currentF->getwBBList()->end();
				iter2++)
		{

		
			wBasicBlock* currentBB = *iter2;

			/* pass through undefined function */
			if(currentBB->getwInstList()->empty())
			{
				std::cout << "Empty BasicBlock" << std::endl;
				continue;
			}

			/* RETURN BasicBlcok */	
			if(currentBB->getType() == wBasicBlock::BB_type::RETURN)
			{
				if(currentBB->getParentFunction()->getName().str() == target_symbol)
				{
					//unsigned int connectionNum = currentF->getParentFunctionSet()->size();

					
					unsigned int connectionNum = 2;

					p_bbNode
						= new BBNode(
								currentBB->getID(),
								4,
								connectionNum);

					p_bbNode->addConnectionNode(0);
					p_bbNode->addConnectionNode(0);
					
					/*
					for(auto parent_iter = currentF->getParentFunctionSet()->begin();
							parent_iter != currentF->getParentFunctionSet()->end(); parent_iter++)
					{
						unsigned next_node_id = (*parent_iter)->getEntryBlock()->getID();
						p_bbNode->addConnectionNode(next_node_id);
					}
					*/

				}

				else
				{
					
					//unsigned int connectionNum = currentF->getParentFunctionSet()->size();
					
					unsigned int connectionNum = 2;

					p_bbNode
						= new BBNode(
								currentBB->getID(),
								0,
								connectionNum);
				
					p_bbNode->addConnectionNode(0);
					p_bbNode->addConnectionNode(0);
					
					/*
					for(auto parent_iter = currentF->getParentFunctionSet()->begin();
							parent_iter != currentF->getParentFunctionSet()->end(); parent_iter++)
					{
						unsigned next_node_id = (*parent_iter)->getEntryBlock()->getID();
						p_bbNode->addConnectionNode(next_node_id);
					}
					*/

				}

			}
		

			/* CALL BasicBlock */
			else if(currentBB->getType() == wBasicBlock::BB_type::CALL)
			{
				/* CALL BasicBlock always has 2 connections */

				wBasicBlock* nextBB1 = currentBB->getFuncCallEntryBB();
				wBasicBlock* nextBB2 = currentBB->getBranchBlock()->first;

				unsigned int connectionNum = 2;

				p_bbNode
					= new BBNode(
							currentBB->getID(),
							3,
							connectionNum);	
				
				p_bbNode->addConnectionNode(nextBB1->getID());
				p_bbNode->addConnectionNode(nextBB2->getID());

			}

			/* BRANCH BasicBlock */
			else if(currentBB->getType() == wBasicBlock::BB_type::ONE_BRANCH)
			{	
		
				/* BRANCH BasicBlcok has only 1 connection */
					
				wBasicBlock* nextBB1 = currentBB->getBranchBlock()->first;

				//unsigned int connectionNum = 2;
				unsigned int connectionNum = 1;

				p_bbNode
					= new BBNode(
							currentBB->getID(),
							1,
							connectionNum);
				
				p_bbNode->addConnectionNode(nextBB1->getID());
				//p_bbNode->addConnectionNode(0);
							
			}

			/* COND_BRANCH BasicBlock */
			else if(currentBB->getType() == wBasicBlock::BB_type::TWO_BRANCH)
			{
				
				/* COND_BRACH BasicBlock has 2 connections */

				wBasicBlock* nextBB1 = currentBB->getBranchBlock()->first;
				wBasicBlock* nextBB2 = currentBB->getBranchBlock()->second;
				
				unsigned int connectionNum = 2;

				p_bbNode
					= new BBNode(
							currentBB->getID(),
							2,
							connectionNum);	
				
				p_bbNode->addConnectionNode(nextBB1->getID());
				p_bbNode->addConnectionNode(nextBB2->getID());
			}
			
			else
			{
				
				std::cout << " [ERROR] Undefined basicblock type found in " << currentF->getName()  << std::endl;
				std::cout << " [ERROR] Maybe there is an unreachable basicblock. This is often casued by exit() function " << std::endl;
				return false;
			}
			
			p_bbNodeList->push_back(p_bbNode);
						
		}

	}
	
	return true;
}

bool Analyzer::FineGrainedAnalysisForMonitoringCodeGenerator()
{
	
	if(p_CompactBBInfoList == nullptr)
	{
		p_CompactBBInfoList = new CompactBBInfoList;
	}

	for(auto iter1 = p_MetaDataSet->getwFuncList()->begin();
			iter1 != p_MetaDataSet->getwFuncList()->end();
			iter1++)
	{
		wFunction* currentF = *iter1;

		if(currentF->getwBBList()->empty())
		{
			//std::cout << "Emtpy Function" << std::endl;
			continue;
		}

		CompactBBInfo* newCompactBBInfo = nullptr;
		
		for(auto iter2 = currentF->getwBBList()->begin();
				iter2 != currentF->getwBBList()->end();
				iter2++)
		{

		
			wBasicBlock* currentBB = *iter2;


			if(currentBB->getwInstList()->empty())
			{
				std::cout << "Empty BasicBlock" << std::endl;
				continue;
			}

			
			if(currentBB->getType() == wBasicBlock::BB_type::RETURN)
			{
				if(currentBB->getParentFunction()->getName().str() == target_symbol)
				{
					newCompactBBInfo
						= new CompactBBInfo(
								currentBB->getID(),
								4,
								0, 
								0);
				}

				else
				{
					newCompactBBInfo
						= new CompactBBInfo(
								currentBB->getID(),
								0,
								0, 
								0);
				}

			}
		


			else if(currentBB->getType() == wBasicBlock::BB_type::CALL)
			{
				wBasicBlock* nextBB1 = currentBB->getFuncCallEntryBB();
				wBasicBlock* nextBB2 = currentBB->getBranchBlock()->first;

				newCompactBBInfo
					= new CompactBBInfo(
							currentBB->getID(),
							3,
							nextBB1->getID(),
							nextBB2->getID());
					
			}

			

			else if(currentBB->getType() == wBasicBlock::BB_type::ONE_BRANCH)
			{	
			
				wBasicBlock* nextBB1 = currentBB->getBranchBlock()->first;

				newCompactBBInfo
					= new CompactBBInfo(
							currentBB->getID(),
							1,
							nextBB1->getID(),
							0);
							
			}

			else if(currentBB->getType() == wBasicBlock::BB_type::TWO_BRANCH)
			{
				
				wBasicBlock* nextBB1 = currentBB->getBranchBlock()->first;
				wBasicBlock* nextBB2 = currentBB->getBranchBlock()->second;
				
				newCompactBBInfo
					= new CompactBBInfo(
							currentBB->getID(),
							2,
							nextBB1->getID(),
							nextBB2->getID());
							
			}
			
			else
			{
				
				std::cout << " [ERROR] Undefined basicblock type found in " << currentF->getName()  << std::endl;
				std::cout << " [ERROR] Maybe there is an unreachable basicblock. This is often casued by exit() function " << std::endl;
				return false;
			}
			
			p_CompactBBInfoList->push_back(newCompactBBInfo);
						
		}

	}

	return true;
}

bool Analyzer::Debug_Show_Monitor_CompactBBInfo()
{
	for(auto iter = p_CompactBBInfoList->begin();
			iter != p_CompactBBInfoList->end();
			iter++)
	{

		CompactBBInfo* currentCompactBBInfo = *iter;

		std::cout << "node_id: " << std::hex << currentCompactBBInfo->node_id << std::endl;
		std::cout << "numConnection: " << std::dec << currentCompactBBInfo->numConnection << std::endl;
		std::cout << "nextNode[0]: " << std::hex << currentCompactBBInfo->nextNode[0] << std::endl;
		std::cout << "nextNode[1]: " << currentCompactBBInfo->nextNode[1] << std::endl << std::dec;
		std::cout << std::endl;
	}

	return true;
}

bool Analyzer::Debug_Show_Signal_CompactBBInfo()
{
	for(auto iter = p_CompactImplantedBBList->begin();
			iter != p_CompactImplantedBBList->end();
			iter++)
	{

		std::cout << "node_id: " << std::hex << iter->second << std::endl;
	}

	return true;
}



/////////////////////////////////////////////////////////////

