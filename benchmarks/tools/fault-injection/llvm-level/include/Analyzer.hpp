
#ifndef WRAPPER
#define WRAPPER

#include <map>
#include <vector>
#include <list>
#include <llvm/IR/Function.h>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Instruction.h>
#include <iostream>
#include <llvm/IRReader/IRReader.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/Bitcode/BitcodeWriter.h>
#include <llvm/Bitcode/BitcodeReader.h>
#include "MetaDataSet.hpp"
#include "wFunction.hpp"
#include "wBasicBlock.hpp"
#include "wInstruction.hpp"
#include <llvm/IR/CallSite.h>

#include <llvm/IR/IRBuilder.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/Bitcode/BitcodeWriter.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/Support/FileSystem.h>
#include <list>

using namespace llvm;

class Analyzer;
class MetaDataSet;


typedef std::map<BasicBlock* , unsigned int> CompactImplantedBBList;
//typedef std::vector<BasicBlock* > CompactImplantedBBList;


class CompactBBInfo
{
public:
	unsigned int node_id;
	unsigned int numConnection;
	unsigned int nextNode[2];

public:
	CompactBBInfo(
			unsigned int node_id,
			unsigned int numConnection,
			unsigned int next_node_id1,
			unsigned int next_node_id2)
		: node_id(node_id), numConnection(numConnection)
	{
		nextNode[0] = next_node_id1;
		nextNode[1] = next_node_id2;
	}
};


class BBNode
{
public:
	unsigned int node_id;
	unsigned int connectionType;
	unsigned int connectionNum;
	unsigned int* connectionArr;
	unsigned int currentNum;

public:
	BBNode(
			unsigned int node_id,
			unsigned int connectionType,
			unsigned int connectionNum)
		: node_id(node_id), connectionType(connectionType), connectionNum(connectionNum)
	{
		currentNum = 0;
		connectionArr = new unsigned int[connectionNum];
	}

	bool setConnectionArr(unsigned int* input_arr)
	{
		for(unsigned int i =0; i < connectionNum; i++)
		{
			connectionArr[i] = input_arr[i];
		}

		return true;

	}	

	bool addConnectionNode(unsigned int node_id)
	{
		connectionArr[currentNum] = node_id;
		currentNum++;

		return true;
	}

};


class CoarseBBConnectionMetaData
{

public:
	unsigned int node_id;
	unsigned int numConnection;
	std::set<unsigned int> connection_set;

public:
	CoarseBBConnectionMetaData(
			unsigned int node_id)
		: node_id(node_id){}

	bool InsertConnectionSet(unsigned int connection_node_id)
	{
		connection_set.insert(connection_node_id);	
		return true;
	}
	bool setConnectionSetNumber(unsigned int num)
	{
		numConnection = num;
		return true;
	}
};



typedef std::unique_ptr<Module> ParsedIRmodule;
typedef std::vector<CompactBBInfo* > CompactBBInfoList;
typedef std::vector<CoarseBBConnectionMetaData* > CoarseBBConnectionMetaDataList;

typedef std::vector<BBNode* > BBNodeList;

class Analyzer
{

public:
	void debug_calllist();

public:
typedef enum{
	COARSE_GRAINED = 0,
	FINE_GRAINED = 1
}Analysis_ty;

private:
	Analysis_ty m_analysis_ty;
	MetaDataSet* p_MetaDataSet;
	ParsedIRmodule* p_IRmodule;

private:
	/* monitor code generator */
	CompactBBInfoList* p_CompactBBInfoList;
	CoarseBBConnectionMetaDataList* p_coarseBBConnectionMetaDataList;
	BBNodeList* p_bbNodeList;

	/* signal code implator */
	CompactImplantedBBList* p_CompactImplantedBBList;

public:

	class Data
	{
	public:
		Function *f;
		BasicBlock *bb;
		Instruction *inst;

		Data(
			Function *f, 
			BasicBlock *bb, 
			Instruction *inst)
			:f(f), bb(bb), inst(inst){}
	};
	

public:
	

public:
	Analyzer(Analyzer::Analysis_ty);
	~Analyzer();

/* Take ParsedIRmodule as input */	
public:
	bool takeInput(ParsedIRmodule &m);


/* numberofbasicblock */
public:
	unsigned int numberofbasicblock();
	bool generate_module();
	bool fault_injection();
	bool branch_injection_from_to(llvm::BasicBlock* from, llvm::BasicBlock* to);
	bool select_two_basicblock(llvm::BasicBlock** from, llvm::BasicBlock** to);
	unsigned int getRandomNumber(unsigned int numberofbasicblocks);
	//bool getBasicBlockArray(llvm::BasicBlock*** BasicBlockArray, unsigned int numberofbasicblocks);
	bool getBasicBlockArray(std::vector<llvm::BasicBlock*>& BasicBlockArray, unsigned int numberofbasicblocks);
	bool freeBasicBlockArray(llvm::BasicBlock** arr);


/* Preprocess */
public:	
	bool Preprocess();

/* Preprocess1 */
private:
	bool Preprocess1();
private:
	bool splitBBModuleOnce(std::unique_ptr<Module> &m);
	int splitBBModuleChecker(std::unique_ptr<Module> &m);

/* Preprcoess2 */
private:
	bool Preprocess2();
private:
	bool isPathUncountedFunction(const std::string&);


/* Preprcoess3 */
private:
	bool Preprocess3();
private:
	bool BasicBlockBranchAndFunctionCallImpl();
	bool BasicBlockBranchAndFunctionCallImpl2();
	bool BasicBlockBranchAndFunctionCallImpl3();
	bool makePathsInEachFunction();

private:
	bool makeParentFunctionSet();
	bool makeSiblingFunctionSet();


/* Process */
public:
	bool Process();

private:
	bool AnalysisForSignalCodeImplanter();

private:
	bool AnalysisForMonitoringCodeGenerator();
	bool CoarseGrainedAnalysisForMonitoringCodeGenerator();
	bool FineGrainedAnalysisForMonitoringCodeGenerator();
	bool FineGrainedAnalysisForMonitoringCodeGenerator2();


/* GetFunctions */

public:
	MetaDataSet* getMetaDataSet();
	ParsedIRmodule* getIRmodule();
	wBasicBlock* getProgramEntryBlock();
	CompactImplantedBBList* getCompactImplantedBBList();
	Analysis_ty getAnalysisType();	

public:
	BBNodeList* getBBNodeList();
	CompactBBInfoList* getCompactBBInfoList();
	CoarseBBConnectionMetaDataList* getCoarseBBConnectionMetaDataList();

/* DebugFunctions */	
public:
	/* Create Wrapper class */	
	bool ShowPathsInEachFunc();

	/* [debug] show Analyzer element */
	bool DebugWrapperModule();

	bool Debug_Show_Monitor_CompactBBInfo();
	bool Debug_Show_Signal_CompactBBInfo();
};


#endif
