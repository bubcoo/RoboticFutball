
TYPE
    MpAlarmXErrorEnum : 
        ( (* Error numbers of library MpAlarmX *)
        mpALARMX_NO_ERROR := 0, (* No error *)
        mpALARMX_ERR_ACTIVATION := -1064239103, (* Could not create component [Error: 1, 0xc0910001] *)
        mpALARMX_ERR_MPLINK_NULL := -1064239102, (* MpLink is NULL pointer [Error: 2, 0xc0910002] *)
        mpALARMX_ERR_MPLINK_INVALID := -1064239101, (* MpLink connection not allowed [Error: 3, 0xc0910003] *)
        mpALARMX_ERR_MPLINK_CHANGED := -1064239100, (* MpLink modified [Error: 4, 0xc0910004] *)
        mpALARMX_ERR_MPLINK_CORRUPT := -1064239099, (* Invalid MpLink contents [Error: 5, 0xc0910005] *)
        mpALARMX_ERR_MPLINK_IN_USE := -1064239098, (* MpLink already in use [Error: 6, 0xc0910006] *)
        mpALARMX_ERR_CONFIG_NULL := -1064239096, (* Configuration structure is null pointer [Error: 8, 0xc0910008] *)
        mpALARMX_ERR_CONFIG_INVALID := -1064239091, (* Invalid Configuration [Error: 13, 0xc091000d] *)
        mpALARMX_ERR_NAME_NULL := -1064116224, (* The specified name is NULL [Error: 57344, 0xc092e000] *)
        mpALARMX_ERR_NAME_EMPTY := -1064116223, (* The specified name is empty [Error: 57345, 0xc092e001] *)
        mpALARMX_WRN_MISSING_UICONNECT := -2137858045, (* UIConnect is NULL [Warning: 57347, 0x8092e003] *)
        mpALARMX_ERR_ALARM_NOT_ACTIVE := -1064116220, (* The alarm is unknown and cannot be reset [Error: 57348, 0xc092e004] *)
        mpALARMX_ERR_ALARM_NOT_SELECTED := -1064116219, (* No alarm is selected [Error: 57349, 0xc092e005] *)
        mpALARMX_ERR_ACK_NOT_ALLOWED := -1064116218, (* The alarm cannot be acknowledged at this position in the component tree [Error: 57350, 0xc092e006] *)
        mpALARMX_ERR_INVALID_FILE_DEV := -1064116217, (* The specified device name in NULL [Error: 57351, 0xc092e007] *)
        mpALARMX_INF_WAIT_CORE_FB := 1083367432, (* Waiting for parent component [Informational: 57352, 0x4092e008] *)
        mpALARMX_ERR_CORE_INST_EXISTS := -1064116215, (* Another core component was already found in this component group [Error: 57353, 0xc092e009] *)
        mpALARMX_ERR_MEMORY_INIT := -1064116214, (* The history memory could not be initialized. See log for furher details [Error: 57354, 0xc092e00a] *)
        mpALARMX_ERR_WRITE_EXPORT_FILE := -1064116213, (* Error while writing to the history export file [Error: 57355, 0xc092e00b] *)
        mpALARMX_ERR_NAME_NOT_FOUND := -1064116212 (* The specified alarm name was not found [Error: 57356, 0xc092e00c] *)
        );
END_TYPE
