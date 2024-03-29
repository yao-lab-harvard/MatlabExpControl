' PIErrors.bas
'
' This file defines symbols for each error code used in C/C++ programs.
'
' This file is automagically generated from the central error code list.
' DO NOT ADD ERROR CODES IN THIS FILE! Use the error list and the generation tool instead!

Attribute VB_Name = "MPiErrors"
Option Explicit

'
' Dll Errors - DLL errors occured in GCS DLL
'
Public Const PI_UNKNOWN_AXIS_IDENTIFIER = -1001                'Unknown axis identifier
Public Const PI_NR_NAV_OUT_OF_RANGE = -1002                'Number for NAV out of range--must be in [1,10000]
Public Const PI_INVALID_SGA = -1003                'Invalid value for SGA--must be one of {1, 10, 100, 1000}
Public Const PI_UNEXPECTED_RESPONSE = -1004                'Controller sent unexpected response
Public Const PI_NO_MANUAL_PAD = -1005                'No manual control pad installed, calls to SMA and related commands are not allowed
Public Const PI_INVALID_MANUAL_PAD_KNOB = -1006                'Invalid number for manual control pad knob
Public Const PI_INVALID_MANUAL_PAD_AXIS = -1007                'Axis not currently controlled by a manual control pad
Public Const PI_CONTROLLER_BUSY = -1008                'Controller is busy with some lengthy operation (e.g. reference move, fast scan algorithm)
Public Const PI_THREAD_ERROR = -1009                'Internal error--could not start thread
Public Const PI_IN_MACRO_MODE = -1010                'Controller is (already) in macro mode--command not valid in macro mode
Public Const PI_NOT_IN_MACRO_MODE = -1011                'Controller not in macro mode--command not valid unless macro mode active
Public Const PI_MACRO_FILE_ERROR = -1012                'Could not open file to write or read macro
Public Const PI_NO_MACRO_OR_EMPTY = -1013                'No macro with given name on controller, or macro is empty
Public Const PI_MACRO_EDITOR_ERROR = -1014                'Internal error in macro editor
Public Const PI_INVALID_ARGUMENT = -1015                'One or more arguments given to function is invalid (empty string, index out of range, ...)
Public Const PI_AXIS_ALREADY_EXISTS = -1016                'Axis identifier is already in use by a connected stage
Public Const PI_INVALID_AXIS_IDENTIFIER = -1017                'Invalid axis identifier
Public Const PI_COM_ARRAY_ERROR = -1018                'Could not access array data in COM server
Public Const PI_COM_ARRAY_RANGE_ERROR = -1019                'Range of array does not fit the number of parameters
Public Const PI_INVALID_SPA_CMD_ID = -1020                'Invalid parameter ID given to SPA or SPA?
Public Const PI_NR_AVG_OUT_OF_RANGE = -1021                'Number for AVG out of range--must be >0
Public Const PI_WAV_SAMPLES_OUT_OF_RANGE = -1022                'Incorrect number of samples given to WAV
Public Const PI_WAV_FAILED = -1023                'Generation of wave failed
Public Const PI_MOTION_ERROR = -1024                'Motion error while axis in motion, call CLR to resume operation
Public Const PI_RUNNING_MACRO = -1025                'Controller is (already) running a macro
Public Const PI_PZT_CONFIG_FAILED = -1026                'Configuration of PZT stage or amplifier failed
Public Const PI_PZT_CONFIG_INVALID_PARAMS = -1027                'Current settings are not valid for desired configuration
Public Const PI_UNKNOWN_CHANNEL_IDENTIFIER = -1028                'Unknown channel identifier
Public Const PI_WAVE_PARAM_FILE_ERROR = -1029                'Error while reading/writing wave generator parameter file
Public Const PI_UNKNOWN_WAVE_SET = -1030                'Could not find description of wave form. Maybe WG.INI is missing?
Public Const PI_WAVE_EDITOR_FUNC_NOT_LOADED = -1031                'The WGWaveEditor DLL function was not found at startup
Public Const PI_USER_CANCELLED = -1032                'The user cancelled a dialog
Public Const PI_C844_ERROR = -1033                'Error from C-844 Controller
Public Const PI_DLL_NOT_LOADED = -1034                'DLL necessary to call function not loaded, or function not found in DLL
Public Const PI_PARAMETER_FILE_PROTECTED = -1035                'The open parameter file is protected and cannot be edited
Public Const PI_NO_PARAMETER_FILE_OPENED = -1036                'There is no parameter file open
Public Const PI_STAGE_DOES_NOT_EXIST = -1037                'Selected stage does not exist
Public Const PI_PARAMETER_FILE_ALREADY_OPENED = -1038                'There is already a parameter file open. Close it before opening a new file
Public Const PI_PARAMETER_FILE_OPEN_ERROR = -1039                'Could not open parameter file
Public Const PI_INVALID_CONTROLLER_VERSION = -1040                'The version of the connected controller is invalid
Public Const PI_PARAM_SET_ERROR = -1041                'Parameter could not be set with SPA--parameter not defined for this controller!
Public Const PI_NUMBER_OF_POSSIBLE_WAVES_EXCEEDED = -1042                'The maximum number of wave definitions has been exceeded
Public Const PI_NUMBER_OF_POSSIBLE_GENERATORS_EXCEEDED = -1043                'The maximum number of wave generators has been exceeded
Public Const PI_NO_WAVE_FOR_AXIS_DEFINED = -1044                'No wave defined for specified axis
Public Const PI_CANT_STOP_OR_START_WAV = -1045                'Wave output to axis already stopped/started
Public Const PI_REFERENCE_ERROR = -1046                'Not all axes could be referenced
Public Const PI_REQUIRED_WAVE_NOT_FOUND = -1047                'Could not find parameter set required by frequency relation
Public Const PI_INVALID_SPP_CMD_ID = -1048                'Command ID given to SPP or SPP? is not valid
Public Const PI_STAGE_NAME_ISNT_UNIQUE = -1049                'A stage name given to CST is not unique
Public Const PI_FILE_TRANSFER_BEGIN_MISSING = -1050                'A uuencoded file transfered did not start with \"begin\" followed by the proper filename
Public Const PI_FILE_TRANSFER_ERROR_TEMP_FILE = -1051                'Could not create/read file on host PC
Public Const PI_FILE_TRANSFER_CRC_ERROR = -1052                'Checksum error when transfering a file to/from the controller
Public Const PI_COULDNT_FIND_PISTAGES_DAT = -1053                'The PiStages.dat database could not be found. This file is required to connect a stage with the CST command
Public Const PI_NO_WAVE_RUNNING = -1054                'No wave being output to specified axis
Public Const PI_INVALID_PASSWORD = -1055                'Invalid password
Public Const PI_OPM_COM_ERROR = -1056                'Error during communication with OPM (Optical Power Meter), maybe no OPM connected
Public Const PI_WAVE_EDITOR_WRONG_PARAMNUM = -1057                'WaveEditor: Error during wave creation, incorrect number of parameters
Public Const PI_WAVE_EDITOR_FREQUENCY_OUT_OF_RANGE = -1058                'WaveEditor: Frequency out of range
Public Const PI_WAVE_EDITOR_WRONG_IP_VALUE = -1059                'WaveEditor: Error during wave creation, incorrect index for integer parameter
Public Const PI_WAVE_EDITOR_WRONG_DP_VALUE = -1060                'WaveEditor: Error during wave creation, incorrect index for floating point parameter
Public Const PI_WAVE_EDITOR_WRONG_ITEM_VALUE = -1061                'WaveEditor: Error during wave creation, could not calculate value
Public Const PI_WAVE_EDITOR_MISSING_GRAPH_COMPONENT = -1062                'WaveEditor: Graph display component not installed
Public Const PI_EXT_PROFILE_UNALLOWED_CMD = -1063                'User Profile Mode: Command is not allowed, check for required preparatory commands
Public Const PI_EXT_PROFILE_EXPECTING_MOTION_ERROR = -1064                'User Profile Mode: First target position in User Profile is too far from current position
Public Const PI_EXT_PROFILE_ACTIVE = -1065                'Controller is (already) in User Profile Mode
Public Const PI_EXT_PROFILE_INDEX_OUT_OF_RANGE = -1066                'User Profile Mode: Block or Data Set index out of allowed range
Public Const PI_PROFILE_GENERATOR_NO_PROFILE = -1067                'ProfileGenerator: No profile has been created yet
Public Const PI_PROFILE_GENERATOR_OUT_OF_LIMITS = -1068                'ProfileGenerator: Generated profile exceeds limits of one or both axes
Public Const PI_PROFILE_GENERATOR_UNKNOWN_PARAMETER = -1069                'ProfileGenerator: Unknown parameter ID in Set/Get Parameter command
Public Const PI_PROFILE_GENERATOR_PAR_OUT_OF_RANGE = -1070                'ProfileGenerator: Parameter out of allowed range
Public Const PI_EXT_PROFILE_OUT_OF_MEMORY = -1071                'User Profile Mode: Out of memory
Public Const PI_EXT_PROFILE_WRONG_CLUSTER = -1072                'User Profile Mode: Cluster is not assigned to this axis
Public Const PI_EXT_PROFILE_UNKNOWN_CLUSTER_IDENTIFIER = -1073                'Unknown cluster identifier
Public Const PI_INVALID_DEVICE_DRIVER_VERSION = -1074                'The installed device driver doesn't match the required version. Please see the documentation to determine the required device driver version.
Public Const PI_INVALID_LIBRARY_VERSION = -1075                'The library used doesn't match the required version. Please see the documentation to determine the required library version.
Public Const PI_INTERFACE_LOCKED = -1076                'The interface is currently locked by another function. Please try again later.
'
'  End of Dll Errors
'

'
' Controller Errors - Errors set by the controller or the GCS DLL
'
Public Const PI_CNTR_NO_ERROR = 0                'No error
Public Const PI_CNTR_PARAM_SYNTAX = 1                'Parameter syntax error
Public Const PI_CNTR_UNKNOWN_COMMAND = 2                'Unknown command
Public Const PI_CNTR_COMMAND_TOO_LONG = 3                'Command length out of limits or command buffer overrun
Public Const PI_CNTR_SCAN_ERROR = 4                'Error while scanning
Public Const PI_CNTR_MOVE_WITHOUT_REF_OR_NO_SERVO = 5                'Unallowable move attempted on unreferenced axis, or move attempted with servo off
Public Const PI_CNTR_INVALID_SGA_PARAM = 6                'Parameter for SGA not valid
Public Const PI_CNTR_POS_OUT_OF_LIMITS = 7                'Position out of limits
Public Const PI_CNTR_VEL_OUT_OF_LIMITS = 8                'Velocity out of limits
Public Const PI_CNTR_SET_PIVOT_NOT_POSSIBLE = 9                'Attempt to set pivot point while U,V and W not all 0
Public Const PI_CNTR_STOP = 10                'Controller was stopped by command
Public Const PI_CNTR_SST_OR_SCAN_RANGE = 11                'Parameter for SST or for one of the embedded scan algorithms out of range
Public Const PI_CNTR_INVALID_SCAN_AXES = 12                'Invalid axis combination for fast scan
Public Const PI_CNTR_INVALID_NAV_PARAM = 13                'Parameter for NAV out of range
Public Const PI_CNTR_INVALID_ANALOG_INPUT = 14                'Invalid analog channel
Public Const PI_CNTR_INVALID_AXIS_IDENTIFIER = 15                'Invalid axis identifier
Public Const PI_CNTR_INVALID_STAGE_NAME = 16                'Unknown stage name
Public Const PI_CNTR_PARAM_OUT_OF_RANGE = 17                'Parameter out of range
Public Const PI_CNTR_INVALID_MACRO_NAME = 18                'Invalid macro name
Public Const PI_CNTR_MACRO_RECORD = 19                'Error while recording macro
Public Const PI_CNTR_MACRO_NOT_FOUND = 20                'Macro not found
Public Const PI_CNTR_AXIS_HAS_NO_BRAKE = 21                'Axis has no brake
Public Const PI_CNTR_DOUBLE_AXIS = 22                'Axis identifier specified more than once
Public Const PI_CNTR_ILLEGAL_AXIS = 23                'Illegal axis
Public Const PI_CNTR_PARAM_NR = 24                'Incorrect number of parameters
Public Const PI_CNTR_INVALID_REAL_NR = 25                'Invalid floating point number
Public Const PI_CNTR_MISSING_PARAM = 26                'Parameter missing
Public Const PI_CNTR_SOFT_LIMIT_OUT_OF_RANGE = 27                'Soft limit out of range
Public Const PI_CNTR_NO_MANUAL_PAD = 28                'No manual pad found
Public Const PI_CNTR_NO_JUMP = 29                'No more step-response values
Public Const PI_CNTR_INVALID_JUMP = 30                'No step-response values recorded
Public Const PI_CNTR_AXIS_HAS_NO_REFERENCE = 31                'Axis has no reference sensor
Public Const PI_CNTR_STAGE_HAS_NO_LIM_SWITCH = 32                'Axis has no limit switch
Public Const PI_CNTR_NO_RELAY_CARD = 33                'No relay card installed
Public Const PI_CNTR_CMD_NOT_ALLOWED_FOR_STAGE = 34                'Command not allowed for selected stage(s)
Public Const PI_CNTR_NO_DIGITAL_INPUT = 35                'No digital input installed
Public Const PI_CNTR_NO_DIGITAL_OUTPUT = 36                'No digital output configured
Public Const PI_CNTR_NO_MCM = 37                'No more MCM responses
Public Const PI_CNTR_INVALID_MCM = 38                'No MCM values recorded
Public Const PI_CNTR_INVALID_CNTR_NUMBER = 39                'Controller number invalid
Public Const PI_CNTR_NO_JOYSTICK_CONNECTED = 40                'No joystick configured
Public Const PI_CNTR_INVALID_EGE_AXIS = 41                'Invalid axis for electronic gearing, axis can not be slave
Public Const PI_CNTR_SLAVE_POSITION_OUT_OF_RANGE = 42                'Position of slave axis is out of range
Public Const PI_CNTR_COMMAND_EGE_SLAVE = 43                'Slave axis cannot be commanded directly when electronic gearing is enabled
Public Const PI_CNTR_JOYSTICK_CALIBRATION_FAILED = 44                'Calibration of joystick failed
Public Const PI_CNTR_REFERENCING_FAILED = 45                'Referencing failed
Public Const PI_CNTR_OPM_MISSING = 46                'OPM (Optical Power Meter) missing
Public Const PI_CNTR_OPM_NOT_INITIALIZED = 47                'OPM (Optical Power Meter) not initialized or cannot be initialized
Public Const PI_CNTR_OPM_COM_ERROR = 48                'OPM (Optical Power Meter) Communication Error
Public Const PI_CNTR_MOVE_TO_LIMIT_SWITCH_FAILED = 49                'Move to limit switch failed
Public Const PI_CNTR_REF_WITH_REF_DISABLED = 50                'Attempt to reference axis with referencing disabled
Public Const PI_CNTR_AXIS_UNDER_JOYSTICK_CONTROL = 51                'Selected axis is controlled by joystick
Public Const PI_CNTR_COMMUNICATION_ERROR = 52                'Controller detected communication error
Public Const PI_CNTR_DYNAMIC_MOVE_IN_PROCESS = 53                'MOV! motion still in progress
Public Const PI_CNTR_UNKNOWN_PARAMETER = 54                'Unknown parameter
Public Const PI_CNTR_NO_REP_RECORDED = 55                'No commands were recorded with REP
Public Const PI_CNTR_INVALID_PASSWORD = 56                'Password invalid
Public Const PI_CNTR_INVALID_RECORDER_CHAN = 57                'Data Record Table does not exist
Public Const PI_CNTR_INVALID_RECORDER_SRC_OPT = 58                'Source does not exist; number too low or too high
Public Const PI_CNTR_INVALID_RECORDER_SRC_CHAN = 59                'Source Record Table number too low or too high
Public Const PI_CNTR_PARAM_PROTECTION = 60                'Protected Param: current Command Level (CCL) too low
Public Const PI_CNTR_AUTOZERO_RUNNING = 61                'Command execution not possible while Autozero is running
Public Const PI_CNTR_NO_LINEAR_AXIS = 62                'Autozero requires at least one linear axis
Public Const PI_CNTR_INIT_RUNNING = 63                'Initialization still in progress
Public Const PI_CNTR_READ_ONLY_PARAMETER = 64                'Parameter is read-only
Public Const PI_CNTR_PAM_NOT_FOUND = 65                'Parameter not found in non-volatile memory
Public Const PI_CNTR_VOL_OUT_OF_LIMITS = 66                'Voltage out of limits
Public Const PI_CNTR_WAVE_TOO_LARGE = 67                'Not enough memory available for requested wave curve
Public Const PI_CNTR_NOT_ENOUGH_DDL_MEMORY = 68                'not enough memory available for DDL table; DDL can not be started
Public Const PI_CNTR_DDL_TIME_DELAY_TOO_LARGE = 69                'time delay larger than DDL table; DDL can not be started
Public Const PI_CNTR_DIFFERENT_ARRAY_LENGTH = 70                'GCS-Array doesn't support different lengths; request arrays with different lengths separately
Public Const PI_CNTR_GEN_SINGLE_MODE_RESTART = 71                'Attempt to restart the generator while it is running in single step mode
Public Const PI_CNTR_ANALOG_TARGET_ACTIVE = 72                'MOV, MVR, SVA, SVR, STE, IMP and WGO not allowed when analog target is active
Public Const PI_CNTR_WAVE_GENERATOR_ACTIVE = 73                'MOV, MVR, SVA, SVR, STE and IMP not allowed when wave generator is active
Public Const PI_LABVIEW_ERROR = 100                'PI LabVIEW driver reports error. See source control for details.
Public Const PI_CNTR_NO_AXIS = 200                'No stage connected to axis
Public Const PI_CNTR_NO_AXIS_PARAM_FILE = 201                'File with axis parameters not found
Public Const PI_CNTR_INVALID_AXIS_PARAM_FILE = 202                'Invalid axis parameter file
Public Const PI_CNTR_NO_AXIS_PARAM_BACKUP = 203                'Backup file with axis parameters not found
Public Const PI_CNTR_RESERVED_204 = 204                'PI internal error code 204
Public Const PI_CNTR_SMO_WITH_SERVO_ON = 205                'SMO with servo on
Public Const PI_CNTR_UUDECODE_INCOMPLETE_HEADER = 206                'uudecode: incomplete header
Public Const PI_CNTR_UUDECODE_NOTHING_TO_DECODE = 207                'uudecode: nothing to decode
Public Const PI_CNTR_UUDECODE_ILLEGAL_FORMAT = 208                'uudecode: illegal UUE format
Public Const PI_CNTR_CRC32_ERROR = 209                'CRC32 error
Public Const PI_CNTR_ILLEGAL_FILENAME = 210                'Illegal file name (must be 8-0 format)
Public Const PI_CNTR_FILE_NOT_FOUND = 211                'File not found on controller
Public Const PI_CNTR_FILE_WRITE_ERROR = 212                'Error writing file on controller
Public Const PI_CNTR_DTR_HINDERS_VELOCITY_CHANGE = 213                'VEL command not allowed in DTR Command Mode
Public Const PI_CNTR_POSITION_UNKNOWN = 214                'Position calculations failed
Public Const PI_CNTR_CONN_POSSIBLY_BROKEN = 215                'The connection between controller and stage may be broken
Public Const PI_CNTR_ON_LIMIT_SWITCH = 216                'The connected stage has driven into a limit switch, call CLR to resume operation
Public Const PI_CNTR_UNEXPECTED_STRUT_STOP = 217                'Strut test command failed because of an unexpected strut stop
Public Const PI_CNTR_POSITION_BASED_ON_ESTIMATION = 218                'While MOV! is running position can only be estimated!
Public Const PI_CNTR_POSITION_BASED_ON_INTERPOLATION = 219                'Position was calculated during MOV motion
Public Const PI_CNTR_SEND_BUFFER_OVERFLOW = 301                'Send buffer overflow
Public Const PI_CNTR_VOLTAGE_OUT_OF_LIMITS = 302                'Voltage out of limits
Public Const PI_CNTR_VOLTAGE_SET_WHEN_SERVO_ON = 303                'Attempt to set voltage when servo on
Public Const PI_CNTR_RECEIVING_BUFFER_OVERFLOW = 304                'Received command is too long
Public Const PI_CNTR_EEPROM_ERROR = 305                'Error while reading/writing EEPROM
Public Const PI_CNTR_I2C_ERROR = 306                'Error on I2C bus
Public Const PI_CNTR_RECEIVING_TIMEOUT = 307                'Timeout while receiving command
Public Const PI_CNTR_TIMEOUT = 308                'A lengthy operation has not finished in the expected time
Public Const PI_CNTR_MACRO_OUT_OF_SPACE = 309                'Insufficient space to store macro
Public Const PI_CNTR_EUI_OLDVERSION_CFGDATA = 310                'Configuration data has old version number
Public Const PI_CNTR_EUI_INVALID_CFGDATA = 311                'Invalid configuration data
Public Const PI_CNTR_HARDWARE_ERROR = 333                'Internal hardware error
Public Const PI_CNTR_UNKNOWN_ERROR = 555                'BasMac: unknown controller error
Public Const PI_CNTR_NOT_ENOUGH_MEMORY = 601                'Not enough memory
Public Const PI_CNTR_HW_VOLTAGE_ERROR = 602                'Hardware voltage error
Public Const PI_CNTR_HW_TEMPERATURE_ERROR = 603                'Hardware temperature out of range
Public Const PI_CNTR_TOO_MANY_NESTED_MACROS = 1000                'Too many nested macros
Public Const PI_CNTR_MACRO_ALREADY_DEFINED = 1001                'Macro already defined
Public Const PI_CNTR_NO_MACRO_RECORDING = 1002                'Macro recording not activated
Public Const PI_CNTR_INVALID_MAC_PARAM = 1003                'Invalid parameter for MAC
Public Const PI_CNTR_MACRO_DELETE_ERROR = 1004                'Deleting macro failed
Public Const PI_CNTR_ALREADY_HAS_SERIAL_NUMBER = 2000                'Controller already has a serial number
Public Const PI_CNTR_SECTOR_ERASE_FAILED = 4000                'Sector erase failed
Public Const PI_CNTR_FLASH_PROGRAM_FAILED = 4001                'Flash program failed
Public Const PI_CNTR_FLASH_READ_FAILED = 4002                'Flash read failed
Public Const PI_CNTR_HW_MATCHCODE_ERROR = 4003                'HW match code missing/invalid
Public Const PI_CNTR_FW_MATCHCODE_ERROR = 4004                'FW match code missing/invalid
Public Const PI_CNTR_HW_VERSION_ERROR = 4005                'HW version missing/invalid
Public Const PI_CNTR_FW_VERSION_ERROR = 4006                'FW version missing/invalid
Public Const PI_CNTR_FW_UPDATE_ERROR = 4007                'FW update failed
'
'  End of Controller Errors
'

'
' Interface Errors - Interface errors occuring while communicating with the controller
'
Public Const COM_NO_ERROR = 0                'No error occurred during function call
Public Const COM_ERROR = -1                'Error during com operation (could not be specified)
Public Const SEND_ERROR = -2                'Error while sending data
Public Const REC_ERROR = -3                'Error while receiving data
Public Const NOT_CONNECTED_ERROR = -4                'Not connected (no port with given ID open)
Public Const COM_BUFFER_OVERFLOW = -5                'Buffer overflow
Public Const CONNECTION_FAILED = -6                'Error while opening port
Public Const COM_TIMEOUT = -7                'Timeout error
Public Const COM_MULTILINE_RESPONSE = -8                'There are more lines waiting in buffer
Public Const COM_INVALID_ID = -9                'There is no interface or DLL handle with the given ID
Public Const COM_NOTIFY_EVENT_ERROR = -10                'Event/message for notification could not be opened
Public Const COM_NOT_IMPLEMENTED = -11                'Function not supported by this interface type
Public Const COM_ECHO_ERROR = -12                'Error while sending \"echoed\" data
Public Const COM_GPIB_EDVR = -13                'IEEE488: System error
Public Const COM_GPIB_ECIC = -14                'IEEE488: Function requires GPIB board to be CIC
Public Const COM_GPIB_ENOL = -15                'IEEE488: Write function detected no listeners
Public Const COM_GPIB_EADR = -16                'IEEE488: Interface board not addressed correctly
Public Const COM_GPIB_EARG = -17                'IEEE488: Invalid argument to function call
Public Const COM_GPIB_ESAC = -18                'IEEE488: Function requires GPIB board to be SAC
Public Const COM_GPIB_EABO = -19                'IEEE488: I/O operation aborted
Public Const COM_GPIB_ENEB = -20                'IEEE488: Interface board not found
Public Const COM_GPIB_EDMA = -21                'IEEE488: Error performing DMA
Public Const COM_GPIB_EOIP = -22                'IEEE488: I/O operation started before previous operation completed
Public Const COM_GPIB_ECAP = -23                'IEEE488: No capability for intended operation
Public Const COM_GPIB_EFSO = -24                'IEEE488: File system operation error
Public Const COM_GPIB_EBUS = -25                'IEEE488: Command error during device call
Public Const COM_GPIB_ESTB = -26                'IEEE488: Serial poll-status byte lost
Public Const COM_GPIB_ESRQ = -27                'IEEE488: SRQ remains asserted
Public Const COM_GPIB_ETAB = -28                'IEEE488: Return buffer full
Public Const COM_GPIB_ELCK = -29                'IEEE488: Address or board locked
Public Const COM_RS_INVALID_DATA_BITS = -30                'RS-232: 5 data bits with 2 stop bits is an invalid combination, as is 6, 7, or 8 data bits with 1.5 stop bits
Public Const COM_ERROR_RS_SETTINGS = -31                'RS-232: Error configuring the COM port
Public Const COM_INTERNAL_RESOURCES_ERROR = -32                'Error dealing with internal system resources (events, threads, ...)
Public Const COM_DLL_FUNC_ERROR = -33                'A DLL or one of the required functions could not be loaded
Public Const COM_FTDIUSB_INVALID_HANDLE = -34                'FTDIUSB: invalid handle
Public Const COM_FTDIUSB_DEVICE_NOT_FOUND = -35                'FTDIUSB: device not found
Public Const COM_FTDIUSB_DEVICE_NOT_OPENED = -36                'FTDIUSB: device not opened
Public Const COM_FTDIUSB_IO_ERROR = -37                'FTDIUSB: IO error
Public Const COM_FTDIUSB_INSUFFICIENT_RESOURCES = -38                'FTDIUSB: insufficient resources
Public Const COM_FTDIUSB_INVALID_PARAMETER = -39                'FTDIUSB: invalid parameter
Public Const COM_FTDIUSB_INVALID_BAUD_RATE = -40                'FTDIUSB: invalid baud rate
Public Const COM_FTDIUSB_DEVICE_NOT_OPENED_FOR_ERASE = -41                'FTDIUSB: device not opened for erase
Public Const COM_FTDIUSB_DEVICE_NOT_OPENED_FOR_WRITE = -42                'FTDIUSB: device not opened for write
Public Const COM_FTDIUSB_FAILED_TO_WRITE_DEVICE = -43                'FTDIUSB: failed to write device
Public Const COM_FTDIUSB_EEPROM_READ_FAILED = -44                'FTDIUSB: EEPROM read failed
Public Const COM_FTDIUSB_EEPROM_WRITE_FAILED = -45                'FTDIUSB: EEPROM write failed
Public Const COM_FTDIUSB_EEPROM_ERASE_FAILED = -46                'FTDIUSB: EEPROM erase failed
Public Const COM_FTDIUSB_EEPROM_NOT_PRESENT = -47                'FTDIUSB: EEPROM not present
Public Const COM_FTDIUSB_EEPROM_NOT_PROGRAMMED = -48                'FTDIUSB: EEPROM not programmed
Public Const COM_FTDIUSB_INVALID_ARGS = -49                'FTDIUSB: invalid arguments
Public Const COM_FTDIUSB_NOT_SUPPORTED = -50                'FTDIUSB: not supported
Public Const COM_FTDIUSB_OTHER_ERROR = -51                'FTDIUSB: other error
Public Const COM_PORT_ALREADY_OPEN = -52                'Error while opening the COM port: was already open
Public Const COM_PORT_CHECKSUM_ERROR = -53                'Checksum error in received data from COM port
Public Const COM_SOCKET_NOT_READY = -54                'Socket not ready, you should call the function again
Public Const COM_SOCKET_PORT_IN_USE = -55                'Port is used by another socket
Public Const COM_SOCKET_NOT_CONNECTED = -56                'Socket not connected (or not valid)
Public Const COM_SOCKET_TERMINATED = -57                'Connection terminated (by peer)
Public Const COM_SOCKET_NO_RESPONSE = -58                'Can't connect to peer
Public Const COM_SOCKET_INTERRUPTED = -59                'Operation was interrupted by a nonblocked signal
'
'  End of Interface Errors
'


