function [errNo, amplitude_mv] = control_getControlFixOutputVoltage(tcp, axis)
% brief : This function gets the DC level output of the selected axis.
%
% param[in] tcp : TCP/IP connection ID
%           axis:  [0|1|2]
% param[out]
%           errNo: errNo
%           amplitude_mv: amplitude_mv in mV


data_send = sprintf('{"jsonrpc": "2.0", "method": "com.attocube.amc.control.getControlFixOutputVoltage", "params": [%i], "id": 1, "api": 2}', axis);

writeline(tcp, data_send);
data_receive = readline(tcp);
data = jsondecode(data_receive);

errNo = data.result (1);
amplitude_mv = data.result (2);


end

