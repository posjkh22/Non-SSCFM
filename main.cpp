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
#include "MonitoringCodeGenerator.hpp"
#include "SignalCodeImplanter.hpp"


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


using namespace llvm;


int main(int argc, char *argv[]) {


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
	//Analyzer machine(Analyzer::COARSE_GRAINED);
	Analyzer machine(Analyzer::FINE_GRAINED);
	machine.takeInput(m);
	machine.Preprocess();
	machine.DebugWrapperModule();
	std::cout << "[2]Pre-analysis finished!\n" << std::endl;

	machine.debug_calllist();

	
	std::cout << "[3]Main-analysis starts!" << std::endl;
	if(machine.Process() != true)
		std::cout << " -Analyzer.Process Error" << std::endl;
	
	/* Monitoring Code */
	//machine.Debug_Show_Signal_CompactBBInfo();
	//machine.Debug_Show_Monitor_CompactBBInfo();
	std::cout << "[3]Main-analysis finished!\n" << std::endl;
	

	std::cout << "[4]Signalcode implanter starts!" << std::endl;
	SignalCodeImplanter code_implanter_machine(context);
	code_implanter_machine.TakeAnalysisResults(&machine);
	code_implanter_machine.run();
	std::cout << "[4]Signalcode implanter finished!\n" << std::endl;

	
	std::cout << "[5]MonitoringCode generator starts!" << std::endl;
	MonitoringCodeGenerator monitor_gen_machine;
	monitor_gen_machine.TakeAnalysisResults(&machine);
	monitor_gen_machine.run();
	std::cout << "[5]MonitoringCode generator finished!\n" << std::endl;

	
	
	return 0;
}
