function param = loadNI2;
%LOADNI calls loadlibrary with the appropriate input arguments.
%
% This function will call loadlibrary if needed with the predefined protocal file.
% This file is automatically generated by the loadlibrarygui.
%
%   See also
%   LOADLIBRARY, UNLOADLIBRARY, UNLOADNI

%
%
% $Author: $
% $Revision: $
% $Date: 12-Feb-2004 10:05:04 $
%
% Local Functions Defined:
%
%
% $Notes:
%
%
%
%
% $EndNotes
%
% $Description:
%
%
%
%
% $EndDescription


% If Library is loaded already unload it.

if libisloaded('NI')
    fprintf('\nLib is loaded\n')
	unloadNI;
end;

warningSetting1 = warning('off','MATLAB:loadlibrary:functionnotfound');
warningSetting2 = warning('off','MATLAB:loadlibrary:typenotfound');
warningSetting3 = warning('off','MATLAB:loadlibrary:enumexists');

% Load the library. 
loadlibrary('C:\WINDOWS\system32\nidaq32.dll',@NI,'alias','NI');

if nargout
    %C:\Program Files\National Instruments\NI-DAQ\Include
	param = loadNIzero('C:\Program Files\National Instruments\NI-DAQ\Include\nidaq.h');
end

warning(warningSetting1);
warning(warningSetting2);