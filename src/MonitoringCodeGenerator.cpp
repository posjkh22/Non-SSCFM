

#include "MonitoringCodeGenerator.hpp"
#include <fstream>

//#define ACES_LIST
//#define ACES_AVLTREE


const char FINE_INIT_MONITOR[] = "./outputs/fine_initialize_monitor.c";
const char COARSE_INIT_MONITOR[] = "./outputs/coarse_initialize_monitor.c";

MonitoringCodeGenerator::MonitoringCodeGenerator()
{


}

bool MonitoringCodeGenerator::TakeAnalysisResults(Analyzer* analyzer)
{
	p_Analyzer = analyzer;
	return true;
}

bool MonitoringCodeGenerator::run()
{

	if(p_Analyzer->getAnalysisType() == Analyzer::COARSE_GRAINED)
	{
		if(Make_CoarseGrainedInitializer(p_Analyzer->getCoarseBBConnectionMetaDataList()) != true)
		{
			std::cout << " -Make_CoarseGrainedInitializer fails" << std::endl;
			return false;
		}

	}

	else if(p_Analyzer->getAnalysisType() == Analyzer::FINE_GRAINED)
	{
	
		//if(Make_FineGrainedInitializer2(p_Analyzer->getCompactBBInfoList()) != true)
		if(Make_FineGrainedInitializer2(p_Analyzer->getBBNodeList()) != true)
		{
			std::cout << " -Make_FineGrainedInitializer fails" << std::endl;
			return false;
		}

	}
	else
	{
		std::cout << " -MonitoringCodeGenrator Fails: Undefined Analysis Type" << std::endl;
		return false;
	}

	
	return true;
}

bool MonitoringCodeGenerator::Make_CoarseGrainedInitializer(CoarseBBConnectionMetaDataList* BI)
{
	std::ofstream fout;
	//fout.open("./monitor/coarse_initialize_monitor.c");
	fout.open(COARSE_INIT_MONITOR);
	
	fout << "#include <stdlib.h>" << std::endl;
	fout << "#include \"list/aces_list.h\" " << std::endl << std::endl;

	fout << "struct BBNode;" << std::endl;
	fout << "struct list;" << std::endl << std::endl;

	fout << "typedef list INTEGRATED_CFG;" << std::endl;
	fout << "extern INTEGRATED_CFG* p_integrated_CFG;" << std::endl;
	fout << "extern unsigned int leverage_signature;" << std::endl << std::endl;
	
	fout << "INTEGRATED_CFG* generate_path_tree();" << std::endl;
	fout << "void add_basicblock(INTEGRATED_CFG* ,unsigned int, unsigned int, unsigned int, unsigned int);" << std::endl << std::endl;
	//fout << "void generate_return_point_stack();" << std::endl << std::endl;


	fout << "void initialize_monitor(unsigned int node_id)" << std::endl;
	fout << "{" << std::endl;

	//fout << "	generate_return_point_stack();" << std::endl;
	fout << "	p_integrated_CFG = generate_path_tree();" << std::endl;


	for(auto iter = BI->begin();
			iter != BI->end(); iter++)
	{
		CoarseBBConnectionMetaData* bb = *iter;
		
		if(bb->connection_set.empty() == true)
		{
			fout << "	add_basicblock(p_integrated_CFG, ";
			fout << std::hex << "0x" << bb->node_id << ", ";
			fout << std::dec << "5, ";
			fout << std::dec << bb->numConnection << ", ";
			fout << std::hex << "0x0" ;
			fout << ");";
			fout << std::dec << std::endl;
		}

		for(auto connection_set_itr = bb->connection_set.begin();
				connection_set_itr != bb->connection_set.end(); connection_set_itr++)
		{
		
			fout << "	add_basicblock(p_integrated_CFG, ";
			fout << std::hex << "0x" << bb->node_id << ", ";
			fout << std::dec << "5, ";
			fout << std::dec << bb->numConnection << ", ";
			fout << std::hex << "0x" << *connection_set_itr;
			fout << ");";
			fout << std::dec << std::endl;
		}
		
	}
	fout << std::endl;
	fout << "	return;" << std::endl;
	fout << "}" << std::endl << std::endl;


	//MetaDataSet* t_m = p_Analyzer->getMetaDataSet();
	///wFunction* t_f = t_m->getEntryFunc();
	//wBasicBlock* ProgramEntryBlock  = t_f->getEntryBlock();
	//std:: cout << t_f->getName() << std::endl;

	wBasicBlock* ProgramEntryBlock  = p_Analyzer->getProgramEntryBlock();

	fout << "INTEGRATED_CFG* generate_path_tree()" << std::endl;
	fout << "{" << std::endl;
	//fout << "	Pathtree* t_pathtree = new Pathtree;" << std::endl;
	fout << "	p_integrated_CFG = (INTEGRATED_CFG* )malloc(sizeof(INTEGRATED_CFG));"<< std::endl;
	fout << "	init(p_integrated_CFG);"<< std::endl;
	//fout << "	BBInfo* t_bb = new BBInfo(0x00000001, 1, ";
	fout << "	BBNode* p_bb_init = (BBNode*)malloc(sizeof(BBNode));" << std::endl;
	fout << "	p_bb_init->node_id = leverage_signature;" << std::endl;
	fout << "	p_bb_init->connectionType = 1;" << std::endl;
	fout << "	p_bb_init->connectionNum = 1;" << std::endl;
	fout << "	p_bb_init->connectionArr = (unsigned int*)malloc(sizeof(unsigned int) * p_bb_init->connectionNum);" << std::endl;
	fout << "	p_bb_init->connectionArr[0] = ";
	fout << "0x" << std::hex << ProgramEntryBlock->getID() << ";" << std::endl;
	//fout << "	p_bb->connectionArr[1] = 0;" << std::endl;
	
	//fout << "	t_pathtree->insert(std::make_pair(0x00000001, t_bb));" << std::endl << std::endl;
	fout << "	insert(p_integrated_CFG, p_bb_init);" << std::endl << std::endl;
	fout << "	return p_integrated_CFG;" << std::endl;
	fout << "}" << std::endl << std::endl;
	
	fout.close();
	return true;
}




bool MonitoringCodeGenerator::Make_FineGrainedInitializer(CompactBBInfoList* BI)
{
	std::ofstream fout;
	//fout.open("./monitor/initialize_monitor.c");
	fout.open(FINE_INIT_MONITOR);

	//fout << "#include \"CheckerAPIs.h\" " << std::endl << std::endl;
	//fout << "#define true 1" << std::endl;
	//fout << "#define false 0" << std::endl;


	fout << "Pathtree* generate_path_tree();" << std::endl;
	fout << "void add_basicblock(Pathtree* ,unsigned int, unsigned int, unsigned int, unsigned int);" << std::endl;
	fout << "extern Pathtree* p_pathtree;" << std::endl;
	fout << "extern bool checker_init_flag; " << std::endl  << std::endl;

	fout << "void initialize_monitor(unsigned int node_id)" << std::endl;
	fout << "{" << std::endl;
	fout << "	generate_return_point_stack();" << std::endl;
	fout << "	p_pathtree = generate_path_tree();" << std::endl;
	
	for(auto iter = BI->begin();
			iter != BI->end(); iter++)
	{
		CompactBBInfo* bb = *iter;
		fout << "	add_basicblock(p_pathtree, ";
		fout << std::hex << "0x" << bb->node_id << ", ";
		fout << std::dec << bb->numConnection << ", ";
		fout << std::hex << "0x" << bb->nextNode[0] << ", ";
		fout << "0x" << bb->nextNode[1] << ");";
		fout << std::dec << std::endl;
		
	}
	fout << std::endl;
	fout << "	return;" << std::endl;
	fout << "}" << std::endl << std::endl;


	//MetaDataSet* t_m = p_Analyzer->getMetaDataSet();
	///wFunction* t_f = t_m->getEntryFunc();
	//wBasicBlock* ProgramEntryBlock  = t_f->getEntryBlock();
	//std:: cout << t_f->getName() << std::endl;

	wBasicBlock* ProgramEntryBlock  = p_Analyzer->getProgramEntryBlock();

	fout << "Pathtree* generate_path_tree()" << std::endl;
	fout << "{" << std::endl;
	//fout << "	Pathtree* t_pathtree = new Pathtree;" << std::endl;
	fout << "	p_pathtree = (Pathtree* )malloc(sizeof(Pathtree));"<< std::endl;
	fout << "	init(p_pathtree);"<< std::endl;
	//fout << "	BBInfo* t_bb = new BBInfo(0x00000001, 1, ";
	fout << "	BBInfo* t_bb = (BBInfo*)malloc(sizeof(BBInfo));" << std::endl;
	fout << "	t_bb->node_id = 0x00000001;" << std::endl;
	fout << "	t_bb->numConnection = 1;" << std::endl;
	fout << "	t_bb->nextNode[0] = ";
	fout << "0x" << std::hex << ProgramEntryBlock->getID() << ";" << std::endl;
	fout << "	t_bb->nextNode[1] = 0;" << std::endl;
	
	//fout << "	t_pathtree->insert(std::make_pair(0x00000001, t_bb));" << std::endl << std::endl;
	fout << "	insert(p_pathtree, t_bb);" << std::endl << std::endl;
	fout << "	return p_pathtree;" << std::endl;
	fout << "}" << std::endl << std::endl;
	
	
	fout.close();
	return true;
}

bool MonitoringCodeGenerator::Make_FineGrainedInitializer2(BBNodeList* p_bbNodeList)
{
	std::ofstream fout;
	//fout.open("./monitor/fine_initialize_monitor.c");
	fout.open(FINE_INIT_MONITOR);
	
	fout << "#include <stdlib.h>" << std::endl;

	fout << "#include \"fine_initialize_monitor.h\" " << std::endl << std::endl;
//	fout << "#define ACES_LIST" << std::endl;
//	fout << "#define ACES_LIST" << std::endl;

	fout << "#ifdef ACES_LIST" << std::endl;
	fout << "#include \"list/aces_list.h\" " << std::endl << std::endl;
	fout << "#endif" << std::endl;
	
	fout << "#ifdef ACES_AVLTREE" << std::endl;
	fout << "#include \"tree/aces_avltree.h\" " << std::endl << std::endl;
	fout << "#endif" << std::endl;

	fout << "#ifdef ACES_HASH" << std::endl;
	fout << "#include \"hash/aces_hash.h\" " << std::endl << std::endl;
	fout << "#endif" << std::endl;


	fout << "struct BBNode;" << std::endl;
	
	fout << "#ifdef ACES_LIST" << std::endl;
	fout << "struct list;" << std::endl << std::endl;
	fout << "typedef list INTEGRATED_CFG;" << std::endl;
	fout << "#endif" << std::endl << std::endl;
	
	fout << "#ifdef ACES_AVLTREE" << std::endl;
	fout << "struct avl_tree;" << std::endl << std::endl;
	fout << "typedef avl_tree INTEGRATED_CFG;" << std::endl;
	fout << "#endif" << std::endl << std::endl;

	fout << "#ifdef ACES_HASH" << std::endl;
	fout << "struct Hash;" << std::endl << std::endl;
	fout << "typedef Hash INTEGRATED_CFG;" << std::endl;
	fout << "#endif" << std::endl << std::endl;


	fout << "extern INTEGRATED_CFG* p_integrated_CFG;" << std::endl;
	fout << "extern unsigned int leverage_signature;" << std::endl << std::endl;
	
	fout << "INTEGRATED_CFG* generate_path_tree();" << std::endl;
	fout << "void add_basicblock(INTEGRATED_CFG* ,unsigned int, unsigned int, unsigned int, unsigned int);" << std::endl;
	//fout << "void generate_return_point_stack();" << std::endl << std::endl;


	/* initialize_monitor_routine(unsigned int node_id) */
	
	fout << "void initialize_monitor_routine(unsigned int node_id)" << std::endl;
	fout << "{" << std::endl;
	//fout << "	generate_return_point_stack();" << std::endl;
	fout << "	p_integrated_CFG = generate_path_tree();" << std::endl;
	
	for(auto iter = p_bbNodeList->begin();
			iter != p_bbNodeList->end(); iter++)
	{

	
		BBNode* p_bbNode = *iter;

		for(unsigned int i = 0; i < p_bbNode->connectionNum; i++)
		{

			fout << "	add_basicblock(p_integrated_CFG, ";
			fout << std::hex << "0x" << p_bbNode->node_id << ", ";
			fout << std::dec << p_bbNode->connectionType << ", ";
			fout << std::dec << "0x" << p_bbNode->connectionNum << ", ";
			fout << std::hex << "0x" << p_bbNode->connectionArr[i] << ");";
			fout << std::dec << std::endl;
		}
		
	}
	fout << std::endl;
	fout << "	return;" << std::endl;
	fout << "}" << std::endl << std::endl;


	//MetaDataSet* t_m = p_Analyzer->getMetaDataSet();
	///wFunction* t_f = t_m->getEntryFunc();
	//wBasicBlock* ProgramEntryBlock  = t_f->getEntryBlock();
	//std:: cout << t_f->getName() << std::endl;




	/* INTEGRATED_CFG* generate_path_tree() */

	wBasicBlock* ProgramEntryBlock  = p_Analyzer->getProgramEntryBlock();

	fout << "INTEGRATED_CFG* generate_path_tree()" << std::endl;
	fout << "{" << std::endl;
	fout << "	p_integrated_CFG = (INTEGRATED_CFG* )malloc(sizeof(INTEGRATED_CFG));"<< std::endl;
	

	fout << "#ifdef ACES_LIST" << std::endl;
	fout << "	init(p_integrated_CFG);"<< std::endl;
	fout << "#endif" << std::endl << std::endl;
	
	fout << "#ifdef ACES_AVLTREE" << std::endl;
	fout << "	init(p_integrated_CFG);"<< std::endl;
	fout << "#endif" << std::endl << std::endl;

	fout << "#ifdef ACES_HASH" << std::endl;
	fout << "	init(p_integrated_CFG, 100000);"<< std::endl;
	fout << "#endif" << std::endl << std::endl;
	

	fout << "	BBNode* p_bb_init = (BBNode*)malloc(sizeof(BBNode));" << std::endl;
	fout << "	p_bb_init->node_id = leverage_signature;" << std::endl;
	fout << "	p_bb_init->connectionType = 1;" << std::endl;
	fout << "	p_bb_init->connectionNum = 1;" << std::endl;
	fout << "	p_bb_init->connectionArr = (unsigned int*)malloc(sizeof(unsigned int) * p_bb_init->connectionNum);" << std::endl;
	fout << "	p_bb_init->connectionArr[0] = ";
	fout << "0x" << std::hex << ProgramEntryBlock->getID() << ";" << std::endl;

	fout << "#ifdef ACES_LIST" << std::endl;
	fout << "	insert(p_integrated_CFG, p_bb_init);" << std::endl;
	fout << "#endif" << std::endl << std::endl;
	
	fout << "#ifdef ACES_AVLTREE" << std::endl;
	fout << "	p_integrated_CFG->root = insert(p_integrated_CFG->root, p_bb_init);" << std::endl;
	fout << "#endif" << std::endl << std::endl;

	fout << "#ifdef ACES_HASH" << std::endl;
	fout << "	insert(p_integrated_CFG, p_bb_init);" << std::endl;
	fout << "#endif" << std::endl << std::endl;

	fout << "	return p_integrated_CFG;" << std::endl;
	fout << "}" << std::endl << std::endl;
	
	
	fout.close();
	return true;
}
