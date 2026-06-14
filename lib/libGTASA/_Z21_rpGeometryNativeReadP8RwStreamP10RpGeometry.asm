; =========================================================
; Game Engine Function: _Z21_rpGeometryNativeReadP8RwStreamP10RpGeometry
; Address            : 0x2207B4 - 0x220D14
; =========================================================

2207B4:  PUSH            {R4-R7,LR}
2207B6:  ADD             R7, SP, #0xC
2207B8:  PUSH.W          {R8-R11}
2207BC:  SUB             SP, SP, #0x74
2207BE:  STR             R0, [SP,#0x90+var_58]
2207C0:  LDR             R0, [R1,#8]
2207C2:  TST.W           R0, #0x1000000
2207C6:  BNE             loc_2207CC
2207C8:  MOV             R6, R1
2207CA:  B               loc_220D0A
2207CC:  STR             R1, [SP,#0x90+var_8C]
2207CE:  LDR             R1, [R1,#0x1C]
2207D0:  CMP             R1, #2
2207D2:  BLT             loc_2207E4
2207D4:  LDR             R2, [SP,#0x90+var_8C]
2207D6:  BIC.W           R0, R0, #0x84
2207DA:  MOVS            R1, #1
2207DC:  ORR.W           R0, R0, #4
2207E0:  STR             R1, [R2,#0x1C]
2207E2:  STR             R0, [R2,#8]
2207E4:  BLX             j__Z15emu_ArraysResetv; emu_ArraysReset(void)
2207E8:  LDR             R0, [SP,#0x90+var_58]
2207EA:  ADD             R1, SP, #0x90+var_20
2207EC:  MOVS            R2, #4
2207EE:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
2207F2:  LDR             R0, [SP,#0x90+var_20]
2207F4:  STR             R0, [SP,#0x90+var_5C]
2207F6:  CMP             R0, #0
2207F8:  BEQ.W           loc_220BD2
2207FC:  MOVS            R1, #0
2207FE:  MOV.W           R0, #0xFFFFFFFF
220802:  STR             R1, [SP,#0x90+var_38]
220804:  MOVS            R1, #0
220806:  STR             R1, [SP,#0x90+var_7C]
220808:  MOVS            R1, #0
22080A:  STR             R1, [SP,#0x90+var_80]
22080C:  MOVS            R1, #0
22080E:  STR             R1, [SP,#0x90+var_74]
220810:  MOVS            R1, #0
220812:  STR             R1, [SP,#0x90+var_78]
220814:  MOVS            R1, #0
220816:  STR             R1, [SP,#0x90+var_84]
220818:  MOVS            R1, #0
22081A:  STR             R1, [SP,#0x90+var_60]
22081C:  MOVS            R1, #0
22081E:  STR             R1, [SP,#0x90+var_2C]
220820:  MOVS            R1, #0
220822:  STR             R1, [SP,#0x90+var_4C]
220824:  MOVS            R1, #0
220826:  STR             R1, [SP,#0x90+var_34]
220828:  MOVS            R1, #0
22082A:  STR             R1, [SP,#0x90+var_68]
22082C:  MOVS            R1, #0
22082E:  STR             R1, [SP,#0x90+var_6C]
220830:  MOVS            R1, #0
220832:  STR             R1, [SP,#0x90+var_44]
220834:  MOVS            R1, #0
220836:  STR             R0, [SP,#0x90+var_70]
220838:  MOV.W           R0, #0xFFFFFFFF
22083C:  STR             R1, [SP,#0x90+var_64]
22083E:  MOVS            R1, #0
220840:  STR             R0, [SP,#0x90+var_88]
220842:  MOV.W           R9, #0
220846:  STR             R1, [SP,#0x90+p]
220848:  MOVS            R1, #0
22084A:  MOVS            R0, #0
22084C:  MOV.W           R11, #0
220850:  MOVS            R4, #0
220852:  STR             R1, [SP,#0x90+var_48]
220854:  LDR.W           R10, [SP,#0x90+var_58]
220858:  ADD             R5, SP, #0x90+var_20
22085A:  STR             R0, [SP,#0x90+var_30]
22085C:  MOVS            R2, #4
22085E:  MOV             R1, R5
220860:  STR.W           R11, [SP,#0x90+var_40]
220864:  MOV             R0, R10
220866:  STR             R4, [SP,#0x90+var_28]
220868:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
22086C:  LDR             R0, [SP,#0x90+var_20]
22086E:  MOV             R1, R5
220870:  STR             R0, [SP,#0x90+var_24]
220872:  MOV             R0, R10
220874:  MOVS            R2, #4
220876:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
22087A:  MOV             R0, R10
22087C:  MOV             R1, R5
22087E:  MOVS            R2, #4
220880:  LDR             R4, [SP,#0x90+var_20]
220882:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
220886:  MOV             R0, R10
220888:  MOV             R1, R5
22088A:  MOVS            R2, #4
22088C:  LDR.W           R11, [SP,#0x90+var_20]
220890:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
220894:  MOV             R0, R10
220896:  MOV             R1, R5
220898:  MOVS            R2, #4
22089A:  LDR.W           R8, [SP,#0x90+var_20]
22089E:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
2208A2:  MOV             R0, R10
2208A4:  MOV             R1, R5
2208A6:  MOVS            R2, #4
2208A8:  LDR             R6, [SP,#0x90+var_20]
2208AA:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
2208AE:  LDR             R5, [SP,#0x90+var_20]
2208B0:  CMP.W           R11, #0
2208B4:  IT NE
2208B6:  MOVNE.W         R11, #1
2208BA:  CMP             R4, #4; switch 5 cases
2208BC:  STR             R5, [SP,#0x90+var_3C]
2208BE:  BHI             def_2208C8; jumptable 002208C8 default case
2208C0:  MOVW            R2, #0x1402
2208C4:  MOV.W           R3, #0x1400
2208C8:  TBB.W           [PC,R4]; switch jump
2208CC:  DCB 3; jump table for switch statement
2208CD:  DCB 0x67
2208CE:  DCB 0x65
2208CF:  DCB 0x9E
2208D0:  DCB 0x9C
2208D1:  ALIGN 2
2208D2:  LDR             R0, [SP,#0x90+var_24]; jumptable 002208C8 case 0
2208D4:  MOV             R1, R8; int
2208D6:  MOVW            R2, #0x1406; unsigned int
2208DA:  MOV             R3, R11; unsigned __int8
2208DC:  STR             R5, [SP,#0x90+var_90]; int
2208DE:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
2208E2:  LDR             R4, [SP,#0x90+var_2C]
2208E4:  LDR             R0, [SP,#0x90+var_4C]
2208E6:  ADDS            R1, R4, #1
2208E8:  STR             R1, [SP,#0x90+var_50]
2208EA:  CMP             R0, R1
2208EC:  BCS.W           loc_220AE8
2208F0:  LSLS            R0, R1, #2
2208F2:  MOV             R1, #0xAAAAAAAB
2208FA:  UMULL.W         R0, R1, R0, R1
2208FE:  MOVS            R0, #3
220900:  ADD.W           R0, R0, R1,LSR#1
220904:  STR             R0, [SP,#0x90+var_4C]
220906:  LSLS            R0, R0, #2; byte_count
220908:  BLX             malloc
22090C:  MOV             R1, R0
22090E:  LDR             R0, [SP,#0x90+var_38]
220910:  CMP             R0, #0
220912:  MOV             R0, R1
220914:  STR             R0, [SP,#0x90+var_60]
220916:  BEQ             loc_22092C
220918:  LDR             R5, [SP,#0x90+var_80]
22091A:  MOV             R0, R1; void *
22091C:  LSLS            R2, R4, #2; size_t
22091E:  MOV             R1, R5; void *
220920:  BLX             memcpy_0
220924:  MOV             R0, R5; p
220926:  BLX             free
22092A:  LDR             R1, [SP,#0x90+var_60]
22092C:  MOVS            R0, #4
22092E:  B               loc_22098A
220930:  LDR             R0, [SP,#0x90+var_24]; jumptable 002208C8 default case
220932:  MOV             R1, R8; int
220934:  MOVS            R2, #0; unsigned int
220936:  MOV             R3, R11; unsigned __int8
220938:  STR             R5, [SP,#0x90+var_90]; int
22093A:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
22093E:  LDR             R4, [SP,#0x90+var_2C]
220940:  LDR             R0, [SP,#0x90+var_4C]
220942:  ADDS            R1, R4, #1
220944:  STR             R1, [SP,#0x90+var_50]
220946:  CMP             R0, R1
220948:  BCS.W           loc_220AEC
22094C:  LSLS            R0, R1, #2
22094E:  MOV             R1, #0xAAAAAAAB
220956:  UMULL.W         R0, R1, R0, R1
22095A:  MOVS            R0, #3
22095C:  ADD.W           R0, R0, R1,LSR#1
220960:  STR             R0, [SP,#0x90+var_4C]
220962:  LSLS            R0, R0, #2; byte_count
220964:  BLX             malloc
220968:  MOV             R1, R0
22096A:  LDR             R0, [SP,#0x90+var_38]
22096C:  CMP             R0, #0
22096E:  MOV             R0, R1
220970:  STR             R0, [SP,#0x90+var_60]
220972:  BEQ             loc_220988
220974:  LDR             R5, [SP,#0x90+var_7C]
220976:  MOV             R0, R1; void *
220978:  LSLS            R2, R4, #2; size_t
22097A:  MOV             R1, R5; void *
22097C:  BLX             memcpy_0
220980:  MOV             R0, R5; p
220982:  BLX             free
220986:  LDR             R1, [SP,#0x90+var_60]
220988:  MOVS            R0, #1
22098A:  STR             R1, [SP,#0x90+var_74]
22098C:  STRD.W          R1, R1, [SP,#0x90+var_84]
220990:  STRD.W          R1, R1, [SP,#0x90+var_7C]
220994:  B               loc_220AF0
220996:  MOVW            R3, #0x1401; jumptable 002208C8 case 2
22099A:  LDR             R0, [SP,#0x90+var_24]; jumptable 002208C8 case 1
22099C:  MOV             R2, R3; unsigned int
22099E:  MOV             R1, R8; int
2209A0:  MOV             R3, R11; unsigned __int8
2209A2:  STR             R5, [SP,#0x90+var_90]; int
2209A4:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
2209A8:  LDR             R4, [SP,#0x90+var_2C]
2209AA:  LDR             R0, [SP,#0x90+var_4C]
2209AC:  ADD.W           R11, R4, #1
2209B0:  CMP             R0, R11
2209B2:  BCS             loc_220A74
2209B4:  MOVW            R1, #0xAAAB
2209B8:  MOV.W           R0, R11,LSL#2
2209BC:  MOVT            R1, #0xAAAA
2209C0:  UMULL.W         R0, R1, R0, R1
2209C4:  MOVS            R0, #3
2209C6:  ADD.W           R0, R0, R1,LSR#1
2209CA:  STR             R0, [SP,#0x90+var_4C]
2209CC:  LSLS            R0, R0, #2; byte_count
2209CE:  BLX             malloc
2209D2:  MOV             R1, R0
2209D4:  LDR             R0, [SP,#0x90+var_38]
2209D6:  MOV             R10, R6
2209D8:  CMP             R0, #0
2209DA:  MOV             R0, R1
2209DC:  STR             R0, [SP,#0x90+var_60]
2209DE:  BEQ             loc_2209F6
2209E0:  LSLS            R2, R4, #2; size_t
2209E2:  LDR             R4, [SP,#0x90+var_74]
2209E4:  MOV             R0, R1; void *
2209E6:  MOV             R1, R4; void *
2209E8:  BLX             memcpy_0
2209EC:  MOV             R0, R4; p
2209EE:  LDR             R4, [SP,#0x90+var_2C]
2209F0:  BLX             free
2209F4:  LDR             R1, [SP,#0x90+var_60]
2209F6:  MOV             R0, R1
2209F8:  STR             R1, [SP,#0x90+var_74]
2209FA:  STRD.W          R1, R1, [SP,#0x90+var_84]
2209FE:  STRD.W          R1, R1, [SP,#0x90+var_7C]
220A02:  B               loc_220A78
220A04:  MOVW            R2, #0x1403; jumptable 002208C8 case 4
220A08:  LDR             R0, [SP,#0x90+var_24]; jumptable 002208C8 case 3
220A0A:  MOV             R1, R8; int
220A0C:  MOV             R3, R11; unsigned __int8
220A0E:  STR             R5, [SP,#0x90+var_90]; int
220A10:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
220A14:  LDR             R4, [SP,#0x90+var_2C]
220A16:  LDR             R0, [SP,#0x90+var_4C]
220A18:  ADDS            R1, R4, #1
220A1A:  STR             R1, [SP,#0x90+var_50]
220A1C:  CMP             R0, R1
220A1E:  BCS             loc_220AD2
220A20:  LSLS            R0, R1, #2
220A22:  MOV             R1, #0xAAAAAAAB
220A2A:  UMULL.W         R0, R1, R0, R1
220A2E:  MOVS            R0, #3
220A30:  ADD.W           R0, R0, R1,LSR#1
220A34:  STR             R0, [SP,#0x90+var_4C]
220A36:  LSLS            R0, R0, #2; byte_count
220A38:  BLX             malloc
220A3C:  MOV             R1, R0
220A3E:  LDR             R0, [SP,#0x90+var_38]
220A40:  LDR.W           R11, [SP,#0x90+var_40]
220A44:  MOV             R10, R6
220A46:  LDR             R5, [SP,#0x90+var_28]
220A48:  CMP             R0, #0
220A4A:  MOV             R0, R1
220A4C:  STR             R0, [SP,#0x90+var_60]
220A4E:  BEQ             loc_220A66
220A50:  LSLS            R2, R4, #2; size_t
220A52:  LDR             R4, [SP,#0x90+var_78]
220A54:  MOV             R0, R1; void *
220A56:  MOV             R1, R4; void *
220A58:  BLX             memcpy_0
220A5C:  MOV             R0, R4; p
220A5E:  LDR             R4, [SP,#0x90+var_2C]
220A60:  BLX             free
220A64:  LDR             R1, [SP,#0x90+var_60]
220A66:  STR             R1, [SP,#0x90+var_74]
220A68:  MOVS            R0, #2
220A6A:  STRD.W          R1, R1, [SP,#0x90+var_84]
220A6E:  STRD.W          R1, R1, [SP,#0x90+var_7C]
220A72:  B               loc_220AF8
220A74:  LDR             R0, [SP,#0x90+var_38]
220A76:  MOV             R10, R6
220A78:  MOV             R1, R0
220A7A:  LDR             R6, [SP,#0x90+var_30]
220A7C:  STR             R1, [SP,#0x90+var_38]
220A7E:  MOVS            R1, #4
220A80:  STR.W           R1, [R0,R4,LSL#2]
220A84:  LDR             R0, [SP,#0x90+var_28]
220A86:  ADDS            R4, R0, #1
220A88:  LDR             R0, [SP,#0x90+var_48]
220A8A:  CMP             R0, R4
220A8C:  BCS             loc_220AD6
220A8E:  MOVW            R1, #0xAAAB
220A92:  LSLS            R0, R4, #2
220A94:  MOVT            R1, #0xAAAA
220A98:  UMULL.W         R0, R1, R0, R1
220A9C:  MOVS            R0, #3
220A9E:  ADD.W           R0, R0, R1,LSR#1
220AA2:  STR             R0, [SP,#0x90+var_48]
220AA4:  LSLS            R0, R0, #2; byte_count
220AA6:  BLX             malloc
220AAA:  MOV             R5, R0
220AAC:  LDR             R0, [SP,#0x90+var_34]
220AAE:  CBZ             R0, loc_220AC6
220AB0:  LDR             R0, [SP,#0x90+var_28]
220AB2:  LDR             R6, [SP,#0x90+var_68]
220AB4:  LSLS            R2, R0, #2; size_t
220AB6:  MOV             R0, R5; void *
220AB8:  MOV             R1, R6; void *
220ABA:  BLX             memcpy_0
220ABE:  MOV             R0, R6; p
220AC0:  LDR             R6, [SP,#0x90+var_30]
220AC2:  BLX             free
220AC6:  MOV             R0, R5
220AC8:  MOV.W           R8, #1
220ACC:  STRD.W          R0, R0, [SP,#0x90+var_6C]
220AD0:  B               loc_220ADC
220AD2:  MOVS            R0, #2
220AD4:  B               loc_220AEE
220AD6:  LDR             R0, [SP,#0x90+var_34]
220AD8:  MOV.W           R8, #1
220ADC:  STR.W           R11, [SP,#0x90+var_2C]
220AE0:  LDR.W           R11, [SP,#0x90+var_40]
220AE4:  LDR             R5, [SP,#0x90+var_28]
220AE6:  B               loc_220B5A
220AE8:  MOVS            R0, #4
220AEA:  B               loc_220AEE
220AEC:  MOVS            R0, #1
220AEE:  LDR             R1, [SP,#0x90+var_38]
220AF0:  LDR.W           R11, [SP,#0x90+var_40]
220AF4:  MOV             R10, R6
220AF6:  LDR             R5, [SP,#0x90+var_28]
220AF8:  MOV             R2, R1
220AFA:  STR             R2, [SP,#0x90+var_38]
220AFC:  STR.W           R0, [R1,R4,LSL#2]
220B00:  ADDS            R4, R5, #1
220B02:  LDR             R0, [SP,#0x90+var_48]
220B04:  CMP             R0, R4
220B06:  BCS             loc_220B52
220B08:  MOVW            R1, #0xAAAB
220B0C:  LSLS            R0, R4, #2
220B0E:  MOVT            R1, #0xAAAA
220B12:  UMULL.W         R0, R1, R0, R1
220B16:  MOVS            R0, #3
220B18:  ADD.W           R0, R0, R1,LSR#1
220B1C:  STR             R0, [SP,#0x90+var_48]
220B1E:  LSLS            R0, R0, #2; byte_count
220B20:  BLX             malloc
220B24:  MOV             R1, R0
220B26:  LDR             R0, [SP,#0x90+var_34]
220B28:  CMP             R0, #0
220B2A:  MOV             R0, R1
220B2C:  STR             R0, [SP,#0x90+var_68]
220B2E:  BEQ             loc_220B48
220B30:  LSLS            R2, R5, #2; size_t
220B32:  LDR             R5, [SP,#0x90+var_6C]
220B34:  MOV             R0, R1; void *
220B36:  MOV             R1, R5; void *
220B38:  BLX             memcpy_0
220B3C:  MOV             R0, R5; p
220B3E:  MOV             R10, R6
220B40:  LDR             R5, [SP,#0x90+var_28]
220B42:  BLX             free
220B46:  LDR             R1, [SP,#0x90+var_68]
220B48:  MOV             R0, R1
220B4A:  STR             R1, [SP,#0x90+var_6C]
220B4C:  LDR             R1, [SP,#0x90+var_50]
220B4E:  STR             R1, [SP,#0x90+var_2C]
220B50:  B               loc_220B58
220B52:  LDR             R0, [SP,#0x90+var_50]
220B54:  STR             R0, [SP,#0x90+var_2C]
220B56:  LDR             R0, [SP,#0x90+var_34]
220B58:  LDR             R6, [SP,#0x90+var_30]
220B5A:  MOV             R1, R0
220B5C:  STR             R1, [SP,#0x90+var_34]
220B5E:  STR.W           R8, [R0,R5,LSL#2]
220B62:  LDR             R0, [SP,#0x90+var_44]
220B64:  CMP             R0, R6
220B66:  BHI             loc_220BA8
220B68:  MOVW            R1, #0xAAAB
220B6C:  ADD.W           R0, R9, #4
220B70:  MOVT            R1, #0xAAAA
220B74:  UMULL.W         R0, R1, R0, R1
220B78:  MOVS            R0, #3
220B7A:  ADD.W           R0, R0, R1,LSR#1
220B7E:  STR             R0, [SP,#0x90+var_44]
220B80:  LSLS            R0, R0, #2; byte_count
220B82:  BLX             malloc
220B86:  CMP.W           R11, #0
220B8A:  MOV             R1, R0
220B8C:  STR             R1, [SP,#0x90+p]
220B8E:  BEQ             loc_220BA4
220B90:  LDR             R5, [SP,#0x90+var_64]
220B92:  MOV             R2, R9; size_t
220B94:  LDR             R0, [SP,#0x90+p]; void *
220B96:  MOV             R1, R5; void *
220B98:  BLX             memcpy_0
220B9C:  MOV             R0, R5; p
220B9E:  BLX             free
220BA2:  LDR             R0, [SP,#0x90+p]
220BA4:  MOV             R11, R0
220BA6:  STR             R0, [SP,#0x90+var_64]
220BA8:  LDR             R2, [SP,#0x90+var_3C]
220BAA:  ADDS            R0, R6, #1
220BAC:  STR.W           R2, [R11,R6,LSL#2]
220BB0:  LDR             R1, [SP,#0x90+var_24]
220BB2:  CMP             R1, #3
220BB4:  BEQ             loc_220BC0
220BB6:  CMP             R1, #6
220BB8:  ITT EQ
220BBA:  MOVEQ           R1, R2
220BBC:  STREQ           R1, [SP,#0x90+var_70]
220BBE:  B               loc_220BC4
220BC0:  MOV             R1, R2
220BC2:  STR             R1, [SP,#0x90+var_88]
220BC4:  LDR             R1, [SP,#0x90+var_5C]
220BC6:  ADD.W           R9, R9, #4
220BCA:  CMP             R1, R0
220BCC:  BNE.W           loc_220854
220BD0:  B               loc_220BFA
220BD2:  MOV.W           R0, #0xFFFFFFFF
220BD6:  MOV.W           R11, #0
220BDA:  STR             R0, [SP,#0x90+var_88]
220BDC:  MOVS            R0, #0
220BDE:  STR             R0, [SP,#0x90+p]
220BE0:  MOVS            R0, #0
220BE2:  STR             R0, [SP,#0x90+var_6C]
220BE4:  MOVS            R0, #0
220BE6:  STR             R0, [SP,#0x90+var_34]
220BE8:  MOVS            R0, #0
220BEA:  STR             R0, [SP,#0x90+var_60]
220BEC:  MOVS            R0, #0
220BEE:  STR             R0, [SP,#0x90+var_84]
220BF0:  MOVS            R0, #0
220BF2:  STR             R0, [SP,#0x90+var_38]
220BF4:  MOV.W           R0, #0xFFFFFFFF
220BF8:  STR             R0, [SP,#0x90+var_70]
220BFA:  LDR             R6, [SP,#0x90+var_8C]
220BFC:  LDR             R0, [R6,#0x14]
220BFE:  MUL.W           R9, R0, R10
220C02:  MOV             R0, R9; byte_count
220C04:  BLX             malloc
220C08:  MOV             R8, R0
220C0A:  LDR             R0, [SP,#0x90+var_58]; int
220C0C:  MOV             R1, R8; void *
220C0E:  MOV             R2, R9; size_t
220C10:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
220C14:  CMP             R0, #0
220C16:  BEQ             loc_220CA4
220C18:  LDR             R0, =(modelNightBoost_ptr - 0x220C22)
220C1A:  MOVS            R1, #0
220C1C:  LDR             R3, [R6,#0x14]
220C1E:  ADD             R0, PC; modelNightBoost_ptr
220C20:  LDR.W           R12, [SP,#0x90+p]
220C24:  LDR             R0, [R0]; modelNightBoost
220C26:  LDRB            R2, [R0]
220C28:  LDR             R0, [SP,#0x90+var_70]
220C2A:  ADDS            R0, #1
220C2C:  IT NE
220C2E:  MOVNE           R1, #1
220C30:  CMP             R2, #0
220C32:  IT NE
220C34:  MOVNE           R2, #1
220C36:  ANDS            R1, R2
220C38:  MOV             R2, R3
220C3A:  IT NE
220C3C:  MOVNE           R2, #0
220C3E:  CMP             R3, #0
220C40:  IT NE
220C42:  CMPNE           R1, #0
220C44:  BEQ             loc_220C72
220C46:  LDR             R1, [SP,#0x90+var_70]
220C48:  MOVS            R3, #0
220C4A:  ADD             R1, R8
220C4C:  ADDS            R1, #1
220C4E:  LDRB.W          R2, [R1,#-1]
220C52:  ADDS            R3, #1
220C54:  LDRB            R5, [R1]
220C56:  LDRB            R4, [R1,#1]
220C58:  ADDS            R2, #0xC
220C5A:  STRB.W          R2, [R1,#-1]
220C5E:  ADD.W           R2, R5, #0xC
220C62:  STRB            R2, [R1]
220C64:  ADD.W           R2, R4, #0x10
220C68:  STRB            R2, [R1,#1]
220C6A:  ADD             R1, R10
220C6C:  LDR             R2, [R6,#0x14]
220C6E:  CMP             R3, R2
220C70:  BCC             loc_220C4E
220C72:  LDR             R5, [SP,#0x90+var_88]
220C74:  ADDS            R1, R5, #1
220C76:  BEQ             loc_220CCC
220C78:  CMP             R0, #0
220C7A:  MOV             R4, R12
220C7C:  BEQ             loc_220CD2
220C7E:  LDR             R0, =(modelForceColorAlpha_ptr - 0x220C84)
220C80:  ADD             R0, PC; modelForceColorAlpha_ptr
220C82:  LDR             R0, [R0]; modelForceColorAlpha
220C84:  LDRB            R0, [R0]
220C86:  CBZ             R0, loc_220CD2
220C88:  CBZ             R2, loc_220CD0
220C8A:  ADD.W           R0, R8, #3
220C8E:  MOVS            R1, #0
220C90:  MOVS            R3, #0xFF
220C92:  LDR             R2, [SP,#0x90+var_70]
220C94:  ADDS            R1, #1
220C96:  STRB            R3, [R2,R0]
220C98:  STRB            R3, [R5,R0]
220C9A:  ADD             R0, R10
220C9C:  LDR             R2, [R6,#0x14]
220C9E:  CMP             R1, R2
220CA0:  BCC             loc_220C92
220CA2:  B               loc_220CD2
220CA4:  LDR             R0, [SP,#0x90+p]; p
220CA6:  CMP.W           R11, #0
220CAA:  IT NE
220CAC:  BLXNE           free
220CB0:  LDR             R0, [SP,#0x90+var_34]
220CB2:  LDR             R4, [SP,#0x90+var_38]
220CB4:  CMP             R0, #0
220CB6:  LDR             R0, [SP,#0x90+var_6C]; p
220CB8:  IT NE
220CBA:  BLXNE           free
220CBE:  CMP             R4, #0
220CC0:  ITT NE
220CC2:  LDRNE           R0, [SP,#0x90+var_84]; p
220CC4:  BLXNE           free
220CC8:  MOVS            R6, #0
220CCA:  B               loc_220D0A
220CCC:  MOV             R4, R12
220CCE:  B               loc_220CD2
220CD0:  MOVS            R2, #0; unsigned int
220CD2:  MOV             R0, R8; void *
220CD4:  MOV             R1, R9; size_t
220CD6:  MOV             R3, R10; unsigned int
220CD8:  BLX             j__Z16emu_ArraysVertexPvjjj; emu_ArraysVertex(void *,uint,uint,uint)
220CDC:  MOVS            R0, #0; unsigned __int8
220CDE:  MOVS            R1, #1; unsigned __int8
220CE0:  BLX             j__Z15emu_ArraysStorehh; emu_ArraysStore(uchar,uchar)
220CE4:  CMP.W           R11, #0
220CE8:  STR             R0, [R6,#0x54]
220CEA:  ITT NE
220CEC:  MOVNE           R0, R4; p
220CEE:  BLXNE           free
220CF2:  LDR             R0, [SP,#0x90+var_34]
220CF4:  LDR             R4, [SP,#0x90+var_60]
220CF6:  CMP             R0, #0
220CF8:  LDR             R0, [SP,#0x90+var_6C]; p
220CFA:  IT NE
220CFC:  BLXNE           free
220D00:  LDR             R0, [SP,#0x90+var_38]
220D02:  CBZ             R0, loc_220D0A
220D04:  MOV             R0, R4; p
220D06:  BLX             free
220D0A:  MOV             R0, R6
220D0C:  ADD             SP, SP, #0x74 ; 't'
220D0E:  POP.W           {R8-R11}
220D12:  POP             {R4-R7,PC}
