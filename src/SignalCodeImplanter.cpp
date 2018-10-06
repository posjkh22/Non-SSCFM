
#include <string.h>
#include "SignalCodeImplanter.hpp"

using namespace llvm;

extern char target_symbol[];

SignalCodeImplanter::SignalCodeImplanter(LLVMContext& context)
	: m_context(context)
{
	p_Analyzer = nullptr;
}

Analyzer* SignalCodeImplanter::getAnalyzer()
{
	return p_Analyzer;
}

bool SignalCodeImplanter::TakeAnalysisResults(Analyzer* analyzer)
{
	if(p_Analyzer == nullptr)
	{
		p_Analyzer = analyzer;
		p_CompactImplantedBBList 
			= p_Analyzer->getCompactImplantedBBList();
		p_ParsedIRmodule = p_Analyzer->getIRmodule();
	}

	else
	{
		delete p_Analyzer;
		p_Analyzer = analyzer;
		p_CompactImplantedBBList 
			= p_Analyzer->getCompactImplantedBBList();
		p_ParsedIRmodule = p_Analyzer->getIRmodule();
	}


	if(analyzer->getAnalysisType() == Analyzer::FINE_GRAINED)
	{
		m_level = IMPLANT_LEVEL::FINE_GRAINED_LEVEL;
		return true;
	}
	else if(analyzer->getAnalysisType() == Analyzer::COARSE_GRAINED)
	{
		m_level = IMPLANT_LEVEL::COARSE_GRAINED_LEVEL;
		return true;
	}
	else
	{
		std::cout << "[ERROR] Undefined Analysis Type " << std::endl;
		return false;
	}


	/*
	for(auto iter = p_CompactImplantedBBList->begin();
			iter != p_CompactImplantedBBList->end(); iter++)

	{
		std::cout << "node_id: " << std::hex << iter->second << std::oct << std::endl;
	}
	*/
}

bool SignalCodeImplanter::run()
{

	if(m_level == FINE_GRAINED_LEVEL)
	{
		std::cout << " -RunFineGrainedLevel runs.." << std::endl;
		
		if(RunFineGrainedLevel() != true)
		{
			std::cout << " -RunFineGrainedLevel Fails" << std::endl;
		}
	
		else
		{
			std::cout << " -RunFineGrainedLevel has finished!" << std::endl;
		}
	}


	else if(m_level == COARSE_GRAINED_LEVEL)
	{
		std::cout << " -RunCoarseGrainedLevel runs.." << std::endl;
		
		if(RunCoarseGrainedLevel() != true)
		{
			std::cout << " -RunCoarseGrainedLevel Fails" << std::endl;
		}
		else
		{
			std::cout << " -RunCoarseGrainedLevel has finished!" << std::endl;
		}

	}

	else
	{
		std::cout << " [ERROR] Undefined Analysis Type!" << std::endl;
		return false;
	}

	GenerateImplantedIRmodule();

	return true;
}


bool SignalCodeImplanter::RunFineGrainedLevel()
{

	IRBuilder<> builder(m_context);

	/* declare sig_initializer, sig_checker */
	DeclareSignalCodes(*p_ParsedIRmodule, m_context, builder);

	/* implant sig_checker */

	std::cout << "  -implant enqueue_signature runs.." << std::endl;

	for(auto iter = p_CompactImplantedBBList->begin();
			iter != p_CompactImplantedBBList->end(); iter++)
	{

		SignatureData* sd = *iter;

		llvm::BasicBlock *Target = sd->basicblock;
		unsigned int node_id = sd->node_id;
	

		unsigned int next_node_id1 = 0;
		unsigned int next_node_id2 = 0;


		llvm::Function* CurrentFunc = Target->getParent();

		std::cout << "Test: " << CurrentFunc->getName().str() << std::endl;

		wFunction* CurrentwFunc = 
			getAnalyzer()->getMetaDataSet()->SearchFunction(CurrentFunc);

		std::cout << "Test: " << CurrentwFunc->getName() << std::endl;


		/* 	GET BRANCH INFORMATION */
		for(auto iter_bb = Target->begin();
				iter_bb != Target->end(); iter_bb++)
		{
				
			Instruction &inst = *iter_bb;
		
			bool cond_branch_flag = false;


			if(!strcmp(inst.getOpcodeName(), "br"))
			{
				/* Unconditional branch */
				if(inst.getNumOperands() == 1)
				{
					Value* opnd = inst.getOperand(inst.getNumOperands() -1);

					BasicBlock *BranchBB = reinterpret_cast<BasicBlock *>(opnd);
					wBasicBlock* BranchwBB = CurrentwFunc->SearchBasicBlock(BranchBB);

					std::cout << " [TEST][UNIB] branch_block_id: " << std::oct << BranchwBB->getID() << std::dec << std::endl;
					next_node_id1 = BranchwBB->getID();	
					next_node_id2 = 0;	
				}
				
				/* Conditional branch: LLVM IR only two direction */	
			
				
				else if(inst.getNumOperands() == 3)
				{

					cond_branch_flag = true;

					Value* opnd1 = inst.getOperand(inst.getNumOperands() -1);
					BasicBlock *BranchBB1 = reinterpret_cast<BasicBlock *>(opnd1);
					wBasicBlock* BranchwBB1 = CurrentwFunc->SearchBasicBlock(BranchBB1);
			
					std::cout << " [TEST][CONDB] branch_block_id-1: " << std::oct << BranchwBB1->getID() << std::dec << std::endl;
					next_node_id1 = BranchwBB1->getID();
						

					Value* opnd2 = inst.getOperand(inst.getNumOperands() -2);
					BasicBlock *BranchBB2 = reinterpret_cast<BasicBlock *>(opnd2);
					wBasicBlock* BranchwBB2 = CurrentwFunc->SearchBasicBlock(BranchBB2);
					
					std::cout << " [TEST][CONDB] branch_block_id-2: " << std::oct <<  BranchwBB2->getID() << std::dec << std::endl;
					next_node_id2 = BranchwBB2->getID();	
					
					//std::pair<wBasicBlock* , wBasicBlock *> *BranchwBBpair 
					//	= new std::pair<wBasicBlock *, wBasicBlock *>(BranchwBB1 , BranchwBB2); 
				
					//CurrentBB->setBranchBlock(BranchwBBpair);
					//CurrentBB->setType(wBasicBlock::TWO_BRANCH);
				}

				else
				{
					std::cout << "TWO More Branch Target is Detected!!" << std::endl;

				}
			}
		

		}
	

			
		llvm::Instruction *TargetCloned1
			= getTargetInstClonedforChecker(*p_ParsedIRmodule);

		/* 	update_signature */
		ImplantSignalCodes_end(
				*p_ParsedIRmodule, 
				m_context, 
				builder, 
				Target,
				next_node_id1,
				next_node_id2,
				TargetCloned1
				);
		
		/*	update_verification */
		llvm::Instruction *TargetCloned2
			= getTargetInstClonedforChecker_with_entry(*p_ParsedIRmodule);
		
		ImplantSignalCodes_begin(
				*p_ParsedIRmodule, 
				m_context, 
				builder, 
				Target,
				node_id,
				TargetCloned2
				);


		
		/*	
		if(sd->type == 3)
		{
			llvm::Instruction *TargetCloned 
				= getTargetInstClonedforChecker_with_call(*p_ParsedIRmodule);

			ImplantSignalCodes(
					*p_ParsedIRmodule, 
					m_context, 
					builder, 
					Target,
					node_id,
					TargetCloned
					);
		}

		
		else if(sd->type == 0)
		{
			llvm::Instruction *TargetCloned 
				= getTargetInstClonedforChecker_with_return(*p_ParsedIRmodule);

			ImplantSignalCodes(
					*p_ParsedIRmodule, 
					m_context, 
					builder, 
					Target,
					node_id,
					TargetCloned
					);
		}
		else if(sd->type == 4)
		{
			llvm::Instruction *TargetCloned 
				= getTargetInstClonedforChecker_with_remainder_process(*p_ParsedIRmodule);

			ImplantSignalCodes(
					*p_ParsedIRmodule, 
					m_context, 
					builder, 
					Target,
					node_id,
					TargetCloned
					);
		}

		else
		{
			llvm::Instruction *TargetCloned 
				= getTargetInstClonedforChecker(*p_ParsedIRmodule);

			ImplantSignalCodes(
					*p_ParsedIRmodule, 
					m_context, 
					builder, 
					Target,
					node_id,
					TargetCloned
					);
		}

		*/
		
	}
	
	std::cout << "  -implant enqueue_signature has finished!" << std::endl;
	
	std::cout << "  -implant initialize_monitor runs.." << std::endl;
	
	/* implant sig_initializer */
	/*
	BasicBlock *Target 
		= SearchTargetBasicBlock(*p_ParsedIRmodule, std::string(target_symbol));
	Instruction *TargetCloned
		= getTargetInstClonedforInitializer(*p_ParsedIRmodule);

	ImplantSignalCodes(
			*p_ParsedIRmodule, 
			m_context, 
			builder, 
			Target, 
			0,
			TargetCloned
			);

	*/
	std::cout << "  -implant initialize_monitor has finished!" << std::endl;

	
	return true;
}



bool SignalCodeImplanter::RunCoarseGrainedLevel()
{
	IRBuilder<> builder(m_context);

	/* declare sig_initializer, sig_checker */
	DeclareSignalCodes(*p_ParsedIRmodule, m_context, builder);

	/* implant sig_checker */
	for(auto iter = p_CompactImplantedBBList->begin();
			iter != p_CompactImplantedBBList->end(); iter++)
	{

		SignatureData* sd = *iter;

		llvm::BasicBlock *Target = sd->basicblock;
		unsigned int node_id = sd->node_id;
		llvm::Instruction *TargetCloned 
			= getTargetInstClonedforChecker(*p_ParsedIRmodule);

		ImplantSignalCodes_begin(
				*p_ParsedIRmodule, 
				m_context, 
				builder, 
				Target,
				node_id,
				TargetCloned
				);
	}
	
	/* implant sig_initializer */
	BasicBlock *Target 
		= SearchTargetBasicBlock(*p_ParsedIRmodule, std::string(target_symbol));
	Instruction *TargetCloned
		= getTargetInstClonedforInitializer(*p_ParsedIRmodule);

	ImplantSignalCodes_begin(
			*p_ParsedIRmodule, 
			m_context, 
			builder, 
			Target, 
			0,
			TargetCloned
			);


	return true;
}


/* 	verify_signature */
bool SignalCodeImplanter::ImplantSignalCodes_begin(
		ParsedIRmodule &m, 
		LLVMContext &context, 
		IRBuilder<> &builder, 
		BasicBlock *bb,
		unsigned int node_id,
		Instruction *inst
	){

	if(bb->size() > 0)
	{
		inst->setParent(bb);
		llvm::Instruction *newInst = inst->clone();


		/* for checker */
		if(newInst->getNumOperands() > 1)
		{	
			llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(context);
			Value *node_id_value = llvm::ConstantInt::get(i32_type, node_id, true);
			
			llvm::Function* f = bb->getParent();
			llvm::Value* signature_value_1 = nullptr;
			llvm::Value* signature_value_2 = nullptr;

			for(auto iter = m_meta.begin();
					iter != m_meta.end(); iter++)
			{
				Meta* p_meta = *iter;
				
				if(p_meta->fnam == f->getName().str())
				{
					signature_value_1 = p_meta->val_1;
					signature_value_2 = p_meta->val_2;
					break;
				}

			}

			//newInst->setOperand(0, signature_value);
			//newInst->setOperand(1, signature_value);
			//newInst->setOperand(2, node_id_value);
		
			newInst->setOperand(0, signature_value_1);
			newInst->setOperand(1, signature_value_2);
			newInst->setOperand(2, node_id_value);
		}

		
				
		llvm::Instruction& first_inst = *(bb->getInstList().begin());

		if(!strcmp(first_inst.getOpcodeName(),"phi"))
		{
			std::cout << " - [CAUTION] phi in " << bb->getParent()->getName().str() << std::endl;
			bb->getInstList().insert(++(bb->getInstList().begin()), newInst);
		}

		else
		{
			/* Front of BasicBlock */
			bb->getInstList().push_front(newInst);
		

			/* Before ret or br */
			//bb->getInstList().insert(--(bb->getInstList().end()), newInst);
		
		
			/* End of BasicBlock: ret, br */
			//bb->getInstList().push_back(newInst);
		}
	}

	return true;
}

/*	update_signature */
bool SignalCodeImplanter::ImplantSignalCodes_end(
		ParsedIRmodule &m, 
		LLVMContext &context, 
		IRBuilder<> &builder, 
		BasicBlock *bb,
		unsigned int node_id1,
		unsigned int node_id2,
		Instruction *inst
	){

	if(bb->size() > 0)
	{
		inst->setParent(bb);
		llvm::Instruction *newInst = inst->clone();


		/* for checker */
		if(newInst->getNumOperands() > 1)
		{	
			llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(context);
			Value *node_id_value_1 = llvm::ConstantInt::get(i32_type, node_id1, true);
			Value *node_id_value_2 = llvm::ConstantInt::get(i32_type, node_id2, true);
			
			llvm::Function* f = bb->getParent();
			llvm::Value* signature_value_1 = nullptr;
			llvm::Value* signature_value_2 = nullptr;

			for(auto iter = m_meta.begin();
					iter != m_meta.end(); iter++)
			{
				Meta* p_meta = *iter;
				
				if(p_meta->fnam == f->getName().str())
				{
					signature_value_1 = p_meta->val_1;
					signature_value_2 = p_meta->val_2;
					break;
				}

			}

			/*
			newInst->setOperand(0, signature_value);
			newInst->setOperand(1, signature_value);
			newInst->setOperand(2, node_id_value);
			newInst->setOperand(3, node_id_value);
			*/

			newInst->setOperand(0, signature_value_1);
			newInst->setOperand(1, signature_value_2);
			newInst->setOperand(2, node_id_value_1);
			newInst->setOperand(3, node_id_value_2);
		}

		
				
		llvm::Instruction& first_inst = *(bb->getInstList().begin());

		/* Front of BasicBlock */
		//bb->getInstList().push_front(newInst);
		

		/* Before ret or br */
		bb->getInstList().insert(--(bb->getInstList().end()), newInst);
		
		
		/* End of BasicBlock: ret, br */
		//bb->getInstList().push_back(newInst);
	}

	return true;
}




/* Find Target BasicBlock to be implanted at */
llvm::BasicBlock *SignalCodeImplanter::SearchTargetBasicBlock(
		ParsedIRmodule &m, 
		std::string fname
	)
{

	llvm::BasicBlock *SavedBB = nullptr;

  	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == fname){

			llvm::Function::BasicBlockListType::iterator iter2;
			iter2 = f.getBasicBlockList().begin();

			llvm::BasicBlock &bb = *iter2;
			
			SavedBB = &bb;
			break;
		}
	}

	return SavedBB;
}


/* Find Target Instruction to be implanted */
llvm::Instruction *SignalCodeImplanter::getTargetInstClonedforInitializer(
		ParsedIRmodule &m
		)
{

	llvm::Instruction *SavedInst = nullptr;
	llvm::BasicBlock *SavedBB = nullptr;
	llvm::Instruction *ReturnInst = nullptr;


	std::list<llvm::Instruction *> InstList;
	std::list<llvm::Instruction *>::iterator InstList_iter;

	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == std::string("CallcheckerSet")){

			//std::cout << "Function found!" << std::endl;

			for (auto iter2 = f.getBasicBlockList().begin(); 
					iter2 != f.getBasicBlockList().end(); iter2++) {

				llvm::BasicBlock &bb = *iter2;

				auto iter4 = bb.end();
				for (auto iter3 = bb.begin(); iter3 != iter4; iter3++) {


					llvm::Instruction &inst = *iter3;
					
					if(inst.getOpcodeName() == std::string("call")){
						
						SavedInst = &inst;
						SavedBB = &bb;

						InstList.push_back(SavedInst);
						
					}
					
				}
			}
		}
	}


	ReturnInst = *(InstList.begin());
	
	return ReturnInst;
}

/* Find Target Instruction to be implanted */
llvm::Instruction *SignalCodeImplanter::getTargetInstClonedforChecker(
		ParsedIRmodule &m
		)
{

	llvm::Instruction *SavedInst = nullptr;
	llvm::BasicBlock *SavedBB = nullptr;
	llvm::Instruction *ReturnInst = nullptr;


	std::list<llvm::Instruction *> InstList;
	std::list<llvm::Instruction *>::iterator InstList_iter;


	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == std::string("CallcheckerSet")){

		//	std::cout << "Function found!" << std::endl;

			for (auto iter2 = f.getBasicBlockList().begin(); 
					iter2 != f.getBasicBlockList().end(); iter2++) {

				llvm::BasicBlock &bb = *iter2;

				auto iter4 = bb.end();
				for (auto iter3 = bb.begin(); iter3 != iter4; iter3++) {


					llvm::Instruction &inst = *iter3;
					
					if(inst.getOpcodeName() == std::string("call")){
						
						SavedInst = &inst;
						SavedBB = &bb;

						InstList.push_back(SavedInst);
						
					}
					
				}
			}
		}
	}

	
	InstList_iter = InstList.begin();
	InstList_iter++;
	ReturnInst = *(InstList_iter);
	
	return ReturnInst;
}

/* Find Target Instruction to be implanted */
llvm::Instruction *SignalCodeImplanter::getTargetInstClonedforChecker_with_entry(
		ParsedIRmodule &m)
{

	llvm::Instruction *SavedInst = nullptr;
	llvm::BasicBlock *SavedBB = nullptr;
	llvm::Instruction *ReturnInst = nullptr;


	std::list<llvm::Instruction *> InstList;
	std::list<llvm::Instruction *>::iterator InstList_iter;


	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == std::string("CallcheckerSet")){

		//	std::cout << "Function found!" << std::endl;

			for (auto iter2 = f.getBasicBlockList().begin(); 
					iter2 != f.getBasicBlockList().end(); iter2++) {

				llvm::BasicBlock &bb = *iter2;

				auto iter4 = bb.end();
				for (auto iter3 = bb.begin(); iter3 != iter4; iter3++) {


					llvm::Instruction &inst = *iter3;
					
					if(inst.getOpcodeName() == std::string("call")){
						
						SavedInst = &inst;
						SavedBB = &bb;

						InstList.push_back(SavedInst);
						
					}
					
				}
			}
		}
	}

	
	InstList_iter = InstList.begin();
	InstList_iter++;
	InstList_iter++;
	ReturnInst = *(InstList_iter);
	
	return ReturnInst;
}

/* Find Target Instruction to be implanted */
llvm::Instruction *SignalCodeImplanter::getTargetInstClonedforChecker_with_return(
		ParsedIRmodule &m
		)
{

	llvm::Instruction *SavedInst = nullptr;
	llvm::BasicBlock *SavedBB = nullptr;
	llvm::Instruction *ReturnInst = nullptr;


	std::list<llvm::Instruction *> InstList;
	std::list<llvm::Instruction *>::iterator InstList_iter;


	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == std::string("CallcheckerSet")){

		//	std::cout << "Function found!" << std::endl;

			for (auto iter2 = f.getBasicBlockList().begin(); 
					iter2 != f.getBasicBlockList().end(); iter2++) {

				llvm::BasicBlock &bb = *iter2;

				auto iter4 = bb.end();
				for (auto iter3 = bb.begin(); iter3 != iter4; iter3++) {


					llvm::Instruction &inst = *iter3;
					
					if(inst.getOpcodeName() == std::string("call")){
						
						SavedInst = &inst;
						SavedBB = &bb;

						InstList.push_back(SavedInst);
						
					}
					
				}
			}
		}
	}

	
	InstList_iter = InstList.begin();
	InstList_iter++;
	InstList_iter++;
	InstList_iter++;
	ReturnInst = *(InstList_iter);
	
	return ReturnInst;
}


/* Find Target Instruction to be implanted */
llvm::Instruction *SignalCodeImplanter::getTargetInstClonedforChecker_with_remainder_process(
		ParsedIRmodule &m
		)
{

	llvm::Instruction *SavedInst = nullptr;
	llvm::BasicBlock *SavedBB = nullptr;
	llvm::Instruction *ReturnInst = nullptr;


	std::list<llvm::Instruction *> InstList;
	std::list<llvm::Instruction *>::iterator InstList_iter;


	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == std::string("CallcheckerSet")){

		//	std::cout << "Function found!" << std::endl;

			for (auto iter2 = f.getBasicBlockList().begin(); 
					iter2 != f.getBasicBlockList().end(); iter2++) {

				llvm::BasicBlock &bb = *iter2;

				auto iter4 = bb.end();
				for (auto iter3 = bb.begin(); iter3 != iter4; iter3++) {


					llvm::Instruction &inst = *iter3;
					
					if(inst.getOpcodeName() == std::string("call")){
						
						SavedInst = &inst;
						SavedBB = &bb;

						InstList.push_back(SavedInst);
						
					}
					
				}
			}
		}
	}

	
	InstList_iter = InstList.begin();
	InstList_iter++;
	InstList_iter++;
	InstList_iter++;
	InstList_iter++;
	ReturnInst = *(InstList_iter);
	
	return ReturnInst;
}






/* Generate Implanted IRmodule */
bool SignalCodeImplanter::GenerateImplantedIRmodule()
{
	Module* writeModule = p_ParsedIRmodule->release();
	std::error_code EC;
	raw_fd_ostream OS("outputs/translated.bc", EC, sys::fs::F_None);
	
	WriteBitcodeToFile(writeModule, OS, true, nullptr, true, nullptr);
	OS.flush();

	return true;
}

/* declare sig_initializer, sig_checker */
bool SignalCodeImplanter::DeclareSignalCodes(
		ParsedIRmodule &m, 
		LLVMContext &context, 
		IRBuilder<> &builder
	)
{

	/* Function-type : void return/ no param */
	FunctionType *void_return_one_integer 
		= llvm::FunctionType::get(builder.getVoidTy(), IntegerType::get(context, 32), false);

	//FunctionType *void_return_two_integer 
	//	= llvm::FunctionType::get(builder.getVoidTy(), IntegerType::get(context, 32), IntegerType::get(context,32), false);

	FunctionType *funcType = llvm::FunctionType::get(builder.getVoidTy(), false);
	
	
	/* General Puts Function */

	/* sig_initializer */
	Constant *checker1_ptr = m->getOrInsertFunction("init_monitor", funcType); 
	Function *checker1 = cast<Function>(checker1_ptr);

	/*	update_signature */
	/*
	Constant *checker2_ptr = m->getOrInsertFunction("update_signature", 
			builder.getVoidTy(),
			Type::getIntNPtrTy(context, 32),
			Type::getIntNPtrTy(context, 32),
			IntegerType::get(context, 32),
			IntegerType::get(context, 32)
			);
	*/
	Constant *checker2_ptr = m->getOrInsertFunction("update_signature", 
			builder.getVoidTy(),
			Type::getIntNPtrTy(context, 32),
			Type::getIntNPtrTy(context, 32),
			IntegerType::get(context, 32),
			IntegerType::get(context, 32)
			);
			
			
	
	
	Function *checker2 = cast<Function>(checker2_ptr);

	/* 	verify_signarue */
	/*
	Constant *checker3_ptr = m->getOrInsertFunction("verify_signature", 
			builder.getVoidTy(),
			Type::getIntNPtrTy(context, 32),
			Type::getIntNPtrTy(context, 32),
			IntegerType::get(context, 32)
			);
	*/
	Constant *checker3_ptr = m->getOrInsertFunction("verify_signature", 
			builder.getVoidTy(),
			Type::getIntNPtrTy(context, 32),
			Type::getIntNPtrTy(context, 32),
			IntegerType::get(context, 32)
			);

	Function *checker3 = cast<Function>(checker3_ptr);
	
	/* sig_checker (type3: signature & return) */
	Constant *checker4_ptr = m->getOrInsertFunction("enqueue_signature_with_return", void_return_one_integer); 
	Function *checker4 = cast<Function>(checker4_ptr);

	/* sig_checker (type4: signature & remainder_process) */
	Constant *checker5_ptr = m->getOrInsertFunction("enqueue_signature_with_remainder_process", void_return_one_integer); 
	Function *checker5 = cast<Function>(checker5_ptr);
	

	IntegerType *integer_type 
		= llvm::IntegerType::get(context, 32);


	/* sig_checker (type4: signature & remainder_process) */

	Constant *checker6_ptr = m->getOrInsertFunction("update_signature2", 
			builder.getVoidTy(),
			//PointerType::get(integer_type, 32),
			Type::getIntNPtrTy(context, 32),
			IntegerType::get(context, 32)
			);

	Function *checker6 = cast<Function>(checker6_ptr);
	
	Constant *checker7_ptr = m->getOrInsertFunction("update_signature3", 
			builder.getVoidTy(),
			IntegerType::get(context, 32),
			IntegerType::get(context, 32)
			);

	Function *checker7 = cast<Function>(checker7_ptr);



	/* Call checker Set */
	Constant *gcdptr = m->getOrInsertFunction("CallcheckerSet", funcType); 
	Function *gcd = cast<Function>(gcdptr);
	llvm::BasicBlock *entry = BasicBlock::Create(context, "entry", gcd);
	IRBuilder<> CallChecker_builder(entry);
	
	llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(context);
	Value *constant_one = llvm::ConstantInt::get(i32_type, 1, true);
	
	Constant *value_ptr_1 = nullptr;;
	Constant *value_ptr_2 = nullptr;;
	
	Constant *constant_zero = llvm::ConstantInt::get(i32_type, 0, true);
  	

	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) 
	{

		Function &f = *iter1;
		std::string fnam(f.getName().str());

		std::string sig_nam_1 = fnam + std::string("_signature_1");
		value_ptr_1 = m->getOrInsertGlobal(sig_nam_1, integer_type);
		GlobalVariable* g_value_ptr_1 = cast<GlobalVariable>(value_ptr_1);
		g_value_ptr_1->setInitializer(constant_zero);

		std::string sig_nam_2 = fnam + std::string("_signature_2");
		value_ptr_2 = m->getOrInsertGlobal(sig_nam_2, integer_type);
		GlobalVariable* g_value_ptr_2 = cast<GlobalVariable>(value_ptr_2);
		g_value_ptr_2->setInitializer(constant_zero);
	
		Meta* p_meta = new Meta;
		p_meta->fnam = f.getName().str();
		p_meta->val_1 = value_ptr_1;
		p_meta->val_2 = value_ptr_2;

		m_meta.push_back(p_meta);

	}

	Value* args1[] = {value_ptr_1, constant_one};
	Value* args2[] = {value_ptr_1, value_ptr_1, constant_one};
	Value* args3[] = {value_ptr_1, value_ptr_1, constant_one, constant_one};

	//Value *call_checker1 = CallChecker_builder.CreateCall(checker1);
	//Value *call_checker2 = CallChecker_builder.CreateCall(checker2, constant_one);
	CallChecker_builder.CreateCall(checker1);
	//CallChecker_builder.CreateCall(checker2, constant_one);
	//CallChecker_builder.CreateCall(checker3, constant_one);
	
	/*	update_signature */
	CallChecker_builder.CreateCall(checker2, args3);
	
	/*	verify_signature */
	CallChecker_builder.CreateCall(checker3, args2);

	CallChecker_builder.CreateCall(checker4, constant_one);
	CallChecker_builder.CreateCall(checker5, constant_one);

	//CallChecker_builder.CreateCall(checker6, args1);
	//CallChecker_builder.CreateCall(checker7, args2);
	//CallChecker_builder.CreateCall(checker7, args1);
	
	CallChecker_builder.CreateRetVoid();

	/*
  	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) 
	{

		Function &f = *iter1;
		std::string fnam(f.getName().str());
		
		llvm::BasicBlock* entry = &(f.getEntryBlock());
		
		IRBuilder<> m_builder(entry);
		AllocaInst* temp = m_builder.CreateAlloca(i32_type);
		m_builder.CreateStore(temp, value_ptr1);
		//m_builder.CreateCall(checker5, constant_one);

	}
*/
	return true;
}
