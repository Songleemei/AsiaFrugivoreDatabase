# The reporter options ensure that the build will fail if any of the tests fail
# This file directs the testing towards the testthat/ folder, whereby all files of form test-***.R are run.

library(testthat)

test_dir("testthat", reporter = c("check", "progress"))
