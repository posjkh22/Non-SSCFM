

TARGET 		= RuntimeChecker
SRC			= $(PWD)/src
LIB			= $(PWD)/lib
INCLUDE		= $(PWD)/include

MONITOR		= $(PWD)/monitor
SIGNAL 	 	= $(PWD)/signal
SAMPLE 	 	= $(PWD)/sample 

INPUT 		= main
OUTPUT		= outputs

run:
	$(PWD)/$(TARGET) $(INPUT).bc
	llvm-dis $(OUTPUT)/translated.bc -o $(OUTPUT)/translated.ll
	llvm-dis $(INPUT).bc -o $(OUTPUT)/$(INPUT).ll

link: result_clean
	clang++ -std=c++11 \
	$(LIB)/main.o \
	$(LIB)/MetaDataSet.o \
	$(LIB)/wFunction.o \
	$(LIB)/wBasicBlock.o \
	$(LIB)/wInstruction.o \
	$(LIB)/Analyzer.o \
	$(LIB)/MonitoringCodeGenerator.o \
	$(LIB)/SignalCodeImplanter.o \
	-o $(TARGET) \
	`llvm-config --cxxflags --libs --ldflags --system-libs`
	cp -f $(TARGET) ./benchmarks/fft/
	cp -f $(TARGET) ./benchmarks/dijkstra/
	cp -f $(TARGET) ./benchmarks/dhrystone/
	cp -f $(TARGET) ./benchmarks/whetstone/
	cp -f $(TARGET) ./benchmarks/simple/

all: clean \
		main \
		Analyzer \
		MetaDataSet \
		wFunction \
		wBasicBlock \
		wInstruction \
		MonitoringCodeGenerator \
		SignalCodeImplanter
	clang++ -std=c++11 \
	$(LIB)/main.o \
	$(LIB)/MetaDataSet.o \
	$(LIB)/wFunction.o \
	$(LIB)/wBasicBlock.o \
	$(LIB)/wInstruction.o \
	$(LIB)/Analyzer.o \
	$(LIB)/MonitoringCodeGenerator.o \
	$(LIB)/SignalCodeImplanter.o \
	-o $(TARGET) \
	`llvm-config --cxxflags --libs --ldflags --system-libs`
	cp -f $(TARGET) ./benchmarks/fft/
	cp -f $(TARGET) ./benchmarks/dijkstra/
	cp -f $(TARGET) ./benchmarks/dhrystone/
	cp -f $(TARGET) ./benchmarks/whetstone/
	cp -f $(TARGET) ./benchmarks/dijkstra/
	cp -f $(TARGET) ./benchmarks/simple/
#-ljsoncpp -L../json/lib \
	
	
main:
	clang++ -std=c++11 -c main.cpp  \
	-o $(LIB)/main.o \
	`llvm-config --cxxflags` \
	-I$(INCLUDE)

Analyzer:
	clang++ -std=c++11 \
	-c $(SRC)/Analyzer.cpp \
	-o $(LIB)/Analyzer.o \
	`llvm-config --cxxflags` \
	-I$(INCLUDE)

MetaDataSet:
	clang++ -std=c++11 \
	-c $(SRC)/MetaDataSet.cpp \
	-o $(LIB)/MetaDataSet.o \
	`llvm-config --cxxflags` \
	-I$(INCLUDE)

MonitoringCodeGenerator:
	clang++ -std=c++11 \
	-c $(SRC)/MonitoringCodeGenerator.cpp \
	-o $(LIB)/MonitoringCodeGenerator.o \
	`llvm-config --cxxflags` \
	-I$(INCLUDE)

SignalCodeImplanter:
	clang++ -std=c++11 \
	-c $(SRC)/SignalCodeImplanter.cpp \
	-o $(LIB)/SignalCodeImplanter.o \
	`llvm-config --cxxflags` \
	-I$(INCLUDE) \
	-Wunused-variable

wFunction:
	clang++ -std=c++11 \
	-c $(SRC)/wFunction.cpp \
	-o $(LIB)/wFunction.o \
	`llvm-config --cxxflags` \
	-I$(INCLUDE)
	
wBasicBlock:
	clang++ -std=c++11 \
	-c $(SRC)/wBasicBlock.cpp \
	-o $(LIB)/wBasicBlock.o \
	`llvm-config --cxxflags` \
	-I$(INCLUDE)

wInstruction:
	clang++ -std=c++11 \
	-c $(SRC)/wInstruction.cpp \
	-o $(LIB)/wInstruction.o \
	-I$(INCLUDE) \
	`llvm-config --cxxflags`


clean:
	rm -f $(TARGET) $(LIB)/*.o $(OUTPUT)/*  Analysis* DebugProcessedModule CoarseAnalysisForFunctionConnection

result_clean:
	rm -f test_out DebugProcessedModule CoarseAnalysisForFunctionConnection

