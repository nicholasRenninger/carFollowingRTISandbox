#!/bin/zsh

# relative paths are based on this directory structure:
# .
# └── carFollowingRTISandbox
#     ├── carfollowingRTI
#     │   ├── MOHA
#     │   │   ├── data
#     │   │   ├── ori
#     │   │   ├── parameters
#     │   │   ├── sub_function
#     │   │   └── train_cluster
#     │   ├── MatlabCode_IFAC
#     │   │   ├── results
#     │   │   ├── test
#     │   │   ├── test_Higgs
#     │   │   ├── test_sym
#     │   │   ├── train
#     │   │   ├── train_Higgs
#     │   │   └── train_sym
#     │   ├── data
#     │   ├── rti
#     │   │   └── build
#     │   └── video
#     ├── conda
#     └── runScripts
#         ├── runRTI.sh
#         │
#         ...

CARFOLLOWINGRTISANDBOX_PATH="$HOME/Google Drive/Grad School/specification learning/code/carFollowingRTISandbox/carfollowingRTI"

# specifying input file to feed to rti
# INPUT_FILE="$CARFOLLOWINGRTISANDBOX_PATH/MOHA/data/I80_1/rti_train_I80_1.txt"
INPUT_FILE="$CARFOLLOWINGRTISANDBOX_PATH/rti/build/test.data"

# from RTI Docs:
# 
# 1 specifies the used method (1 for likelihood ratio, 2 for chi-squared)
# 0.05 is the significance level used in the tests
# filename is a file in the following format:

# int int                                     (number_of_strings size_of_alphabet)
# int char int char int char int ... char int (length_of_string symbol1 time_delay1 s2 t2 .. sn tn)
$CARFOLLOWINGRTISANDBOX_PATH/rti/build/rti 1 0.05 $INPUT_FILE