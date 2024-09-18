######################################################################
# Project: TMVA - Toolkit for Multivariate Data Analysis             #
# Code   : Example usage for TMVA analyses                           #
###################################################################### 
BINS = 	TMVAClassification_v6 \
		TMVAClassification_v6b \
		TMVAClassification_bjet_gt_0_v2
#        TMVAClassificationCategory \
#        TMVAClassificationApplication \
#        TMVAClassificationCategoryApplication \
#        TMVARegression \
#        TMVARegressionApplication \
#        TMVAMulticlass \
#        TMVAMulticlassApplication \
#        TMVAMultipleBackgroundExample \
#			TMVAGAexample \
#			TMVAGAexample2 \


CXX = g++
CCFLAGS = $(shell root-config --cflags)
#-ggdb


LD = g++
LDFLAGS = 

LIBS = $(shell root-config --libs) -lMLP -lMinuit -lTreePlayer -lTMVA -lTMVAGui -lXMLIO  -lMLP -lm


default : $(BINS)

$(BINS): % : %.C 
	@echo -n "Building $@ ... "
	$(CXX) $(CCFLAGS) $< $(LIBS) -o $@
	@echo "Done"


clean: 
	rm -f *.o	$(BINS)

