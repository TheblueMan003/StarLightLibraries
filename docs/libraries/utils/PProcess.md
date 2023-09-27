# template PProcess<>
Represent a task that run along side the main tick function.This process will only stop if `stop` is called as many time as `start` was called.Function to Override:- main: Main function that is repeated as long as the process is running- onStart: callback when the process is star. Cannot be called if the process was is running- onStop: callback when the process is stop. Cannot be called if the process was not running

## ` @load void reload()`
Restart the process on load. (JAVA Only)

## ` void crash()`
Detect maxCommandChainLength extended, and stop process if more than 10 in a row

## `public void start()`
Start the process

## ` @process.main void run()`
Main loop for the process (JAVA Only)

## ` @tick void mainLoop()`
Main loop for the process (Bedrock Only)

## `public void stop()`
Stop the process

## ` void waitFor(void=>void fct)`
Add a callback for when the process stop

## ` @process.count void __count__()`
Count the number of active process

## ` @process.stop void stopall()`
Stop the process

## ` virtual void onStop()`


## ` virtual void onStart()`


## ` virtual void onJoin()`


## ` virtual void onLeave()`


## ` virtual void beforAll()`


## ` virtual void afterAll()`





