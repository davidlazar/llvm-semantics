TEST_DIRECTORIES = handwritten $(shell find c-semantics-tests -type d)
TEST_TARGETS = $(foreach dir,  $(TEST_DIRECTORIES), $(dir)/results/krun-results.xml)

# regression tests
REGRESSION_DIRECTORIES = $(shell find regression/c-semantics-tests -type d) $(shell find regression/llvm-tests -type d)
REGRESSION_TARGETS = $(foreach dir,  $(REGRESSION_DIRECTORIES), $(dir)/results/krun-results.xml)

# regression tests
LLVM_DIRECTORIES = $(shell find llvm-tests -type d)
LLVM_TARGETS = $(foreach dir,  $(LLVM_DIRECTORIES), $(dir)/results/krun-results.xml)

ALL_DIRECTORIES = $(TEST_DIRECTORIES) $(REGRESSION_DIRECTORIES) $(LLVM_DIRECTORIES)
CLEAN_TARGETS = $(foreach dir, $(ALL_DIRECTORIES), clean-$(dir))

all: $(TEST_TARGETS)

test: $(TEST_TARGETS)

regression: $(REGRESSION_TARGETS)

llvm: $(LLVM_TARGETS)

%/results/krun-results.xml:
	@perl $(K_BASE)/tools/tester.pl -d $*/results -f "--k-definition=../dist/share/llvm --desk-file=../dist/share/llvm.desk --no-color" -n $* -timeout 50

clean: $(CLEAN_TARGETS)

clean-%:
	rm -f ./$*/results/*.xml ./$*/results/*.stderr ./$*/results/*.stdout ./$*/results/*.diff

clean-regression/%:
	rm -f regression/$*/results/*.xml regression/$*/results/*.stderr regression/$*/results/*.stdout regression/$*/results/*.diff
