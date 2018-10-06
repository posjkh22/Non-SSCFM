
#ifndef MONITORINGCODEGENERATOR
#define MONITORINGCODEGENERATOR

#include "Analyzer.hpp"

typedef std::vector<CompactBBInfo* > CompactBBInfoList;


class MonitoringCodeGenerator
{

private:
	Analyzer* p_Analyzer;
	

public:
	MonitoringCodeGenerator();

public:
	bool TakeAnalysisResults(Analyzer* );

public:
	bool run();

private:
	bool Make_FineGrainedInitializer(CompactBBInfoList* );
	bool Make_FineGrainedInitializer2(BBNodeList* );
	bool Make_CoarseGrainedInitializer(CoarseBBConnectionMetaDataList* );


};


#endif
