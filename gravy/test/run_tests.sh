#!/bin/bash

# Use with run_tests.sh 1800000 "2 3 5" to get 30min of checkers 2 3 and 5

# Timelimit
TIMELIMIT="$1"

# Which checker to run
CHECKER="$2"

# Test directory
TEST_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Current directory
DIR=`pwd`

# JAR 
JAR="$TEST_DIR/../dist/gravy.jar"

# Date
DATE=`date +"%Y.%m.%d.%H.%M"`

for checker in $CHECKER;
do

# Make the temp dir and go into it
cd "$DIR"
TEMPLATE="$DATE"_"checker=$checker"_"timelimit=$TIMELIMIT"_XXXX
RUN_DIR=`mktemp -p . -d "$TEMPLATE"`
chmod a+rx "$RUN_DIR"
cd $RUN_DIR

# Copy the jar
cp $JAR .

# Run the tests
(
for test in `find $TEST_DIR -name "*.bpl" | sort`
do 
  cp $test .
  TO_RUN=`basename $test`
  echo Running $TO_RUN
  java -Xmx4g -Xms4g -Xss4m -jar gravy.jar "$TO_RUN" -checker $checker -loopmode 1 -t $TIMELIMIT 
done
) >& run_tests.out &

done;
