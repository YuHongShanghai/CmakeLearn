# CMake generated Testfile for 
# Source directory: /Users/yuhong119hellobike.com/Desktop/CmakeLearn
# Build directory: /Users/yuhong119hellobike.com/Desktop/CmakeLearn/debug
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Runs "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/debug/Tutoriald" "25")
set_tests_properties(Runs PROPERTIES  _BACKTRACE_TRIPLES "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;41;add_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;0;")
add_test(Usage "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/debug/Tutoriald")
set_tests_properties(Usage PROPERTIES  PASS_REGULAR_EXPRESSION "Usage:.*number" _BACKTRACE_TRIPLES "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;43;add_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;0;")
add_test(StandardUse "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/debug/Tutoriald" "4")
set_tests_properties(StandardUse PROPERTIES  PASS_REGULAR_EXPRESSION "4 is 2" _BACKTRACE_TRIPLES "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;48;add_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;0;")
add_test(Comp4 "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/debug/Tutoriald" "4")
set_tests_properties(Comp4 PROPERTIES  PASS_REGULAR_EXPRESSION "4 is 2" _BACKTRACE_TRIPLES "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;54;add_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;61;do_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;0;")
add_test(Comp9 "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/debug/Tutoriald" "9")
set_tests_properties(Comp9 PROPERTIES  PASS_REGULAR_EXPRESSION "9 is 3" _BACKTRACE_TRIPLES "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;54;add_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;62;do_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;0;")
add_test(Comp5 "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/debug/Tutoriald" "5")
set_tests_properties(Comp5 PROPERTIES  PASS_REGULAR_EXPRESSION "5 is 2.236" _BACKTRACE_TRIPLES "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;54;add_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;63;do_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;0;")
add_test(Comp7 "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/debug/Tutoriald" "7")
set_tests_properties(Comp7 PROPERTIES  PASS_REGULAR_EXPRESSION "7 is 2.645" _BACKTRACE_TRIPLES "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;54;add_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;64;do_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;0;")
add_test(Comp25 "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/debug/Tutoriald" "25")
set_tests_properties(Comp25 PROPERTIES  PASS_REGULAR_EXPRESSION "25 is 5" _BACKTRACE_TRIPLES "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;54;add_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;65;do_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;0;")
add_test(Comp-25 "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/debug/Tutoriald" "-25")
set_tests_properties(Comp-25 PROPERTIES  PASS_REGULAR_EXPRESSION "-25 is (-nan|nan|0)" _BACKTRACE_TRIPLES "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;54;add_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;66;do_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;0;")
add_test(Comp0.0001 "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/debug/Tutoriald" "0.0001")
set_tests_properties(Comp0.0001 PROPERTIES  PASS_REGULAR_EXPRESSION "0.0001 is 0.01" _BACKTRACE_TRIPLES "/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;54;add_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;67;do_test;/Users/yuhong119hellobike.com/Desktop/CmakeLearn/CMakeLists.txt;0;")
subdirs("MathFunctions")
