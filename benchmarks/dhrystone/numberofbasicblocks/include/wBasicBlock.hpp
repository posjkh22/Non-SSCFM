#ifndef WBASICBLOCK
#define WBASICBLOCK

#include <list>
#include <llvm/IR/Function.h>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Instruction.h>
#include <iostream>
#include <llvm/IRReader/IRReader.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/Bitcode/BitcodeWriter.h>
#include "wFunction.hpp"
#include "wInstruction.hpp"

using namespace llvm;

class wBasicBlock;
class wFunction;

class wBasicBlock 
{
public:
	typedef enum bb_type{
		RETURN = 0,  		// 0
		ONE_BRANCH = 1, 	// 1
		TWO_BRANCH = 2,  	// 2
		CALL = 3
	}BB_type;

private:
	BasicBlock *bb;
	std::string *name;
	std::list<wInstruction *> wInstList;
	std::list<wFunction *> wFuncCallList;
	BB_type type;
	bool hasFunctionCall;

	wInstruction* CurrentInstruction;
	wBasicBlock* ReturnBlock;
	std::pair<wBasicBlock* , wBasicBlock *> *BranchBlock;

private:
	unsigned int ID;

public:
	unsigned int getID();
	bool setID(unsigned int);

private:
	wFunction *Parent;

public:
	bool setParent(wFunction *);
	wFunction *getParent();


public:
	wBasicBlock():hasFunctionCall(false){}
	
public:
	bool setName(std::string);
	std::string *getName();
	bool setwBasicBlock(BasicBlock *);
	BasicBlock *getBasicBlock();
	bool setType(BB_type);
	BB_type getType();
	bool setCurrentInstruction(wInstruction *);
	wInstruction *getCurrentInstruction();

	unsigned int getNumFuncCall();
	std::list<wFunction *> *getFuncCallList();
	bool pushFuncCallList(wFunction *);
	bool setCall(bool);
	bool hasCall();


	Function *getParentFunction();
	wFunction *getFuncCall();

	wBasicBlock* getFuncCallEntryBB();

	bool pushInstList(wInstruction *);
	bool setReturnBlock(wBasicBlock *);
	wBasicBlock *getReturnBlock();
	bool setBranchBlock(std::pair<wBasicBlock* , wBasicBlock* > *);
	std::pair<wBasicBlock *, wBasicBlock *> *getBranchBlock();
	std::list<wInstruction *> *getwInstList();

};

#endif
