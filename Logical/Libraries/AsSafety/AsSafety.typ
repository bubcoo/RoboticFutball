(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Library: AsSafety
 * File: AsSafety.typ
 * Author: B&R
 * Created: May 25, 2012
 ********************************************************************
 * Data types of library AsSafety
 ********************************************************************)

TYPE
	RemoteControlCmdTypeV1 : 	STRUCT  (*remote control command structure*)
		Version : UINT; (*used version*)
		Command : UINT; (*command*)
		Number : UINT; (*actual number*)
		Data : UINT; (*data*)
		Password : STRING[16]; (*password*)
		NewPassword : STRING[16]; (*new password*)
	END_STRUCT;
	DownloadCmdMaOpTypeV1 : 	STRUCT  (*machine options command structure*)
		Version : UINT; (*used version*)
		Password : STRING[16]; (*password*)
		UDID_Low : UDINT; (*UDID low from SafeLOGIC*)
		UDID_High : UINT; (*UDID high from SafeLOGIC*)
		Unlock : USINT; (*unlock data*)
		pDeviceListInput : UDINT; (*pointer to device list*)
		NumberDevicesInput : UINT; (*number of devices*)
		pMachineOptionsInput : UDINT; (*pointer to bit machine options*)
		pModuleFlagsInput : UDINT; (*pointer to module flags*)
		pAcknMachineOptions : UDINT; (*pointer to acknowledge information*)
		pDeviceListOutput : UDINT; (*pointer to device list from SafeLOGIC*)
		NumberDevicesOutput : UINT; (*number of devices from SafeLOGIC*)
		pMachineOptionsOutput : UDINT; (*pointer to bit machine options from SafeLOGIC*)
		pModuleFlagsOutput : UDINT; (*pointer to module flags from SafeLOGIC*)
	END_STRUCT;
	DownloadDeviceTypeV1 : 	STRUCT  (*safety device*)
		SADR : UINT; (*safety address*)
		UDID_Low : UDINT; (*UDID low*)
		UDID_High : UINT; (*UDID high*)
	END_STRUCT;
	ConfigurationDeviceTypeV1 : 	STRUCT  (*safety device from SafeLOGIC*)
		SADR : UINT; (*safety address*)
		UDID : ARRAY[0..5]OF USINT; (*UDID*)
	END_STRUCT;
	ConfigurationBitOptionsTypeV1 : 	STRUCT  (*bit machine options*)
		BitData : ARRAY[0..63]OF USINT; (*bit array*)
	END_STRUCT;
	ConfigurationModuleFlagsTypeV1 : 	STRUCT  (*module flags*)
		Optional : ARRAY[0..127]OF USINT; (*optional*)
		Startup : ARRAY[0..127]OF USINT; (*startup*)
		NotPresent : ARRAY[0..127]OF USINT; (*not present*)
	END_STRUCT;
	DownloadCmdExtMaOpTypeV1 : 	STRUCT  (*extended machine options command structure*)
		Version : UINT; (*used version*)
		Password : STRING[16]; (*password*)
		UDID_Low : UDINT; (*UDID low*)
		UDID_High : UINT; (*UDID high*)
		Unlock : USINT; (*unlock data*)
		pIntDataInput : UDINT; (*pointer to INT data*)
		NumberIntInput : UINT; (*number of INT channels*)
		pUintDataInput : UDINT; (*pointer to UINT data*)
		NumberUintInput : UINT; (*number of UINT channels*)
		pDintDataInput : UDINT; (*pointer to DINT data*)
		NumberDintInput : UINT; (*number of DINT channels*)
		pUdintDataInput : UDINT; (*pointer to UDINT data*)
		NumberUdintInput : UINT; (*number of UDINT channels*)
		pAcknMachineOptions : UDINT; (*pointer to acknowledge information*)
		pIntDataOutput : UDINT; (*pointer to INT data from SafeLOGIC*)
		NumberIntOutput : UINT; (*number of INT channels from SafeLOGIC*)
		pUintDataOutput : UDINT; (*pointer to UINT data from SafeLOGIC*)
		NumberUintOutput : UINT; (*number of UINT channels from SafeLOGIC*)
		pDintDataOutput : UDINT; (*pointer to DINT data from SafeLOGIC*)
		NumberDintOutput : UINT; (*number of DINT channels from SafeLOGIC*)
		pUdintDataOutput : UDINT; (*pointer to UDINT data from SafeLOGIC*)
		NumberUdintOutput : UINT; (*number of UDINT channels from SafeLOGIC*)
	END_STRUCT;
	ConfigurationIntOptionsTypeV1 : 	STRUCT  (*INT machine options*)
		ID : UINT; (*id*)
		Value : INT; (*value*)
	END_STRUCT;
	ConfigurationUintOptionsTypeV1 : 	STRUCT  (*UINT machine options*)
		ID : UINT; (*id*)
		Value : UINT; (*value*)
	END_STRUCT;
	ConfigurationDintOptionsTypeV1 : 	STRUCT  (*DINT machine options*)
		ID : UINT; (*id*)
		Value : DINT; (*value*)
	END_STRUCT;
	ConfigurationUdintOptionsTypeV1 : 	STRUCT  (*UDINT machine options*)
		ID : UINT; (*id*)
		Value : UDINT; (*value*)
	END_STRUCT;
	DownloadCmdTableTypeV1 : 	STRUCT  (*table command structure*)
		Version : UINT; (*used version*)
		Password : STRING[16]; (*password*)
		UDID_Low : UDINT; (*UDID low*)
		UDID_High : UINT; (*UDID high*)
		Unlock : USINT; (*unlock data*)
		pTableDataInput : UDINT; (*pointer to table data*)
		NumberTablesInput : UINT; (*number of tables*)
		pTableDataOutput : UDINT; (*pointer to table data from SafeLOGIC*)
		NumberTablesOutput : UINT; (*number of tables from SafeLOGIC*)
	END_STRUCT;
	DownloadCmdAddParaTypeV1 : 	STRUCT  (*additional paramater command structure*)
		Version : UINT; (*used version*)
		Password : STRING[16]; (*password*)
		UDID_Low : UDINT; (*UDID low*)
		UDID_High : UINT; (*UDID high*)
		Unlock : USINT; (*unlock data*)
		pParaListInput : UDINT; (*pointer to additional parameter data*)
		NumberParaSetsInput : UINT; (*number of parameter sets*)
		pParaDataOutput : UDINT; (*pointer to additional parameter data from SafeLOGIC*)
		NumberParaSetsOutput : UINT; (*number of parameter sets from SafeLOGIC*)
	END_STRUCT;
	DownloadTableTypeV1 : 	STRUCT  (*table data*)
		Device : STRING[80]; (*device for file*)
		File : STRING[80]; (*file name*)
	END_STRUCT;
	ConfigurationTableTypeV1 : 	STRUCT  (*table data from SafeLOGIC*)
		ID : UINT; (*table id*)
		Type : USINT; (*table type*)
		NumberOfCRCs : UINT; (*number of CRCs*)
		pCRCData : UDINT; (*pointer to CRC values*)
	END_STRUCT;
	DownloadAddParaTypeV1 : 	STRUCT  (*additional parameter data*)
		SADR : UINT; (*safety address*)
		ID : USINT; (*id*)
		pParaData : UDINT; (*pointer to additional parameter data*)
		Length : UDINT; (*length*)
		pAcknAddPara : UDINT; (*pointer to acknowledge information*)
	END_STRUCT;
	ConfigurationAddParaTypeV1 : 	STRUCT  (*additional parameter data from SafeLOGIC*)
		SADR : UINT; (*safety address*)
		ID : USINT; (*id*)
		pParaData : UDINT; (*pointer to additional parameter data*)
		Length : UDINT; (*length*)
		CRC : UDINT; (*CRC*)
		Timestamp : UDINT; (*timestamp*)
	END_STRUCT;
	DownloadCmdApplicationTypeV1 : 	STRUCT  (*application command structure*)
		Version : UINT; (*used version*)
		Password : STRING[16]; (*password*)
		UDID_Low : UDINT; (*UDID low*)
		UDID_High : UINT; (*UDID high*)
		ApplicationID : UINT; (*application id*)
		Device : STRING[80]; (*device for file*)
		File : STRING[80]; (*file name*)
		Unlock : USINT; (*unlock application*)
	END_STRUCT;
	ConfigurationCmdMaOpTypeV1 : 	STRUCT  (*machine options from SafeLOGIC command structure*)
		Version : UINT; (*used version*)
		Password : STRING[16]; (*password*)
		pDeviceListOutput : UDINT; (*pointer to device list from SafeLOGIC*)
		NumberDevicesOutput : UINT; (*number of devices from SafeLOGIC*)
		pMachineOptionsOutput : UDINT; (*pointer to bit machine options from SafeLOGIC*)
		pModuleFlagsOutput : UDINT; (*pointer to module flags from SafeLOGIC*)
	END_STRUCT;
	ConfigurationCmdExtMaOpTypeV1 : 	STRUCT  (*extended machine options from SafeLOGIC command structure*)
		Version : UINT; (*used version*)
		Password : STRING[16]; (*password*)
		pIntDataOutput : UDINT; (*pointer to INT data from SafeLOGIC*)
		NumberIntOutput : UINT; (*number of INT channels from SafeLOGIC*)
		pUintDataOutput : UDINT; (*pointer to UINT data from SafeLOGIC*)
		NumberUintOutput : UINT; (*number of UINT channels from SafeLOGIC*)
		pDintDataOutput : UDINT; (*pointer to DINT data from SafeLOGIC*)
		NumberDintOutput : UINT; (*number of DINT channels from SafeLOGIC*)
		pUdintDataOutput : UDINT; (*pointer to UDINT data from SafeLOGIC*)
		NumberUdintOutput : UINT; (*number of UDINT channels from SafeLOGIC*)
	END_STRUCT;
	ConfigurationCmdTableTypeV1 : 	STRUCT  (*table data from SafeLOGIC command structure*)
		Version : UINT; (*used version*)
		Password : STRING[16]; (*password*)
		pTableDataOutput : UDINT; (*pointer to table data from SafeLOGIC*)
		NumberTablesOutput : UINT; (*number of tables from SafeLOGIC*)
	END_STRUCT;
	ConfigurationCmdAddParaTypeV1 : 	STRUCT  (*additional parameter data from SafeLOGIC command structure*)
		Version : UINT; (*used version*)
		Password : STRING[16]; (*password*)
		pParaDataOutput : UDINT; (*pointer to additional parameter data from SafeLOGIC*)
		NumberParaSetsOutput : UINT; (*number of parameter sets from SafeLOGIC*)
	END_STRUCT;
	RemoteControlStatusTypeV1 : 	STRUCT  (*remote control status from SafeLOGIC*)
		Command : UINT; (*last received command*)
		Number : UINT; (*running number of last received command*)
		Status : UINT; (*status of command*)
		State : UINT; (*state of the last ENTER command*)
		EnterData : UINT; (*last received ENTER command that was correct executed*)
		EnterNumber : UINT; (*running number of the last received ENTER command*)
		EnterExecuteStatus : UINT; (*state of the last received ENTER command*)
		SafeOSState : USINT; (*status of the safety application*)
		SafeKEYChanged : USINT; (*SafeKEY has been exchanged*)
		LedTestActive : USINT; (*LED test active*)
		Scanning : USINT; (*module scan active*)
		openSAFETYstate : USINT; (*status of openSAFETY stack*)
		FailSafe : USINT; (*Fail-Safe status*)
		NumberOfMissingModules : UINT; (*number of missing modules*)
		NumberOfUDIDMismatches : UINT; (*number of mismatched modules*)
		NumberOfDifferentFirmware : UINT; (*number of modules with different firmware*)
		SADR : ARRAY[0..100]OF UINT; (*safety address array*)
		MissingModules : ARRAY[0..15]OF USINT; (*missing modules array*)
		UDIDMismatches : ARRAY[0..15]OF USINT; (*udid mismatch array*)
		DifferentFirmware : ARRAY[0..15]OF USINT; (*different firmware array*)
	END_STRUCT;
	DownloadAcknMaOpTypeV1 : 	STRUCT  (*acknowledge bit machine options structure*)
		AcknBitOptions : ARRAY[0..63]OF USINT; (*acknowledge bit*)
	END_STRUCT;
	DownloadAcknAddParaTypeV1 : 	STRUCT  (*acknowledge bit additional parameter*)
		AcknBitAddPara : ARRAY[0..63]OF USINT; (*acknowledge bit*)
	END_STRUCT;
	DownloadAcknExtMaOpTypeV1 : 	STRUCT  (*acknowledge extended machine options structure*)
		AcknIntOptions : ARRAY[0..63]OF BOOL; (*acknowledge INT*)
		AcknUintOptions : ARRAY[0..63]OF BOOL; (*acknowledge UINT*)
		AcknDintOptions : ARRAY[0..63]OF BOOL; (*acknowledge DINT*)
		AcknUdintOptions : ARRAY[0..63]OF BOOL; (*acknowledge UDINT*)
	END_STRUCT;
END_TYPE
