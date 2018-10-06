#include <unistd.h>
#include <fcntl.h>
#include <iostream>
#include <ostream>
#include <fstream>
#include <vector>
#include <utility>
#include <llvm/IRReader/IRReader.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/Bitcode/BitcodeWriter.h>
#include <llvm/Bitcode/BitcodeReader.h>

#include "Analyzer.hpp"


/* 2018-04-11 ~ 2018-04-16 */
/* 2018-04-26 ~ */
/*

   KIHO CHOI
   posjkh22@gmail.com
   ACES Lab.
   KyungPook National University

*/

/*
	exit() function -> unreachable
	call void @exit(i32 -1) #6
  	unreachable
*/


//#define COARSE_GRAINED

using namespace llvm;

int main(int argc, char *argv[])
{

	/* IRParser */
	std::cout << std::endl;
	std::cout << "[1]IR Parse analysis starts!" << std::endl;
	StringRef filename = argv[1];
	LLVMContext context;
	SMDiagnostic error;
	std::unique_ptr<Module> m = parseIRFile(filename, error, context);

	std::cout << "[1]IR Parse analysis finished!" << std::endl;

	/* Analyzer */
	std::cout << "[2]Pre-analysis starts!" << std::endl;
	
	
#ifdef COARSE_GRAINED
	Analyzer machine(Analyzer::COARSE_GRAINED);
#else
	Analyzer machine(Analyzer::FINE_GRAINED);
#endif

	machine.takeInput(m);
	machine.Preprocess();

	/* numberofbasicblock */
	//machine.numberofbasicblock();
	machine.fault_injection();

	/*
	machine.DebugWrapperModule();
	std::cout << "[2]Pre-analysis finished!\n" << std::endl;

	machine.debug_calllist();

	
	std::cout << "[3]Main-analysis starts!" << std::endl;
	if(machine.Process() != true)
		std::cout << " -Analyzer.Process Error" << std::endl;
	*/
	
	return 0;
}
