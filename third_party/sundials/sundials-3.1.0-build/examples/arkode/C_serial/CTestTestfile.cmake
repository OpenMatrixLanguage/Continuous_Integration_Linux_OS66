# CMake generated Testfile for 
# Source directory: /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/arkode/C_serial
# Build directory: /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/arkode/C_serial
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ark_analytic "/soft/net/python" "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/test/testRunner" "--verbose" "--testname=ark_analytic" "--executablename=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/arkode/C_serial/ark_analytic" "--outputdir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/Testing/output" "--nodiff" "--answerdir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/arkode/C_serial" "--answerfile=ark_analytic.out")
add_test(ark_robertson "/soft/net/python" "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/test/testRunner" "--verbose" "--testname=ark_robertson" "--executablename=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/arkode/C_serial/ark_robertson" "--outputdir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/Testing/output" "--nodiff" "--answerdir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/arkode/C_serial" "--answerfile=ark_robertson.out")
