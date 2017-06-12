:: this batch script starts up a Zookeeper server, pauses, then starts a Kafka server and a command-line window in the kafka directory.
:: to have it work properly, change the hard-coded directories to match those where kafka is located; needs to be alongside the /bin folder.
:: also ensure that the *_init.bat scripts are in the same directory.

@echo off

start zoo_init.bat
echo Wait for zookeeper to finish loading before proceeding...
pause

start kafka_init.bat

cd "C:\tools\kafka\bin\windows"
start cmd