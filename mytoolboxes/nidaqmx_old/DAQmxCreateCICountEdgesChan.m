function status = DAQmxCreateCICountEdgesChan(taskHandle,counter,nameToAssignToChannel,...
    edge, initialCount, countDirection)

[status,a,b]=calllib('mynidaqmx','DAQmxCreateCICountEdgesChan',taskHandle,counter,...
    nameToAssignToChannel,edge, initialCount, countDirection);

