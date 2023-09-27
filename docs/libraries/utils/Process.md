# template Process<>
Represent a task that run along side the main tick function.Function to Override:- main: Main function that is repeated as long as the process is running- onStart: callback when the process is star. Cannot be called if the process was is running- onStop: callback when the process is stop. Cannot be called if the process was not running

## @load function reload
### Arguments:

### Return:
- void


Restart the process on load. (JAVA Only)

## function crash
### Arguments:

### Return:
- void


Detect maxCommandChainLength extended, and stop process if more than 10 in a row

## public function start
### Arguments:

### Return:
- void


Start the process

## @process.main function run
### Arguments:

### Return:
- void


Main loop for the process (JAVA Only)

## @tick function mainLoop
### Arguments:

### Return:
- void


Main loop for the process (Bedrock Only)

## public function stop
### Arguments:

### Return:
- void


Stop the process

## function waitFor
### Arguments:
- fct (`void=>void`)
### Return:
- void


Add a callback for when the process stop

## @process.count function __count__
### Arguments:

### Return:
- void


Count the number of active process

## @process.stop function stopall
### Arguments:

### Return:
- void


Stop the process

## virtual function onStop
### Arguments:

### Return:
- void




## virtual function onStart
### Arguments:

### Return:
- void







