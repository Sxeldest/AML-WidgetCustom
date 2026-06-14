; =========================================================
; Game Engine Function: _ZN9CPathFind4SaveEv
; Address            : 0x48CED4 - 0x48CF50
; =========================================================

48CED4:  PUSH            {R4-R7,LR}
48CED6:  ADD             R7, SP, #0xC
48CED8:  PUSH.W          {R8}
48CEDC:  MOV             R4, R0
48CEDE:  MOVS            R0, #4; byte_count
48CEE0:  BLX             malloc
48CEE4:  MOVW            R6, #0x35A8
48CEE8:  MOV             R5, R0
48CEEA:  LDR             R0, [R4,R6]
48CEEC:  MOVS            R1, #byte_4; void *
48CEEE:  STR             R0, [R5]
48CEF0:  MOV             R0, R5; this
48CEF2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48CEF6:  MOV             R0, R5; p
48CEF8:  BLX             free
48CEFC:  LDR             R0, [R4,R6]
48CEFE:  CMP             R0, #1
48CF00:  BLT             loc_48CF48
48CF02:  ADD.W           R8, R4, R6
48CF06:  MOVW            R0, #0x35AC
48CF0A:  ADDS            R6, R4, R0
48CF0C:  MOVS            R5, #0
48CF0E:  MOVS            R0, #0x1C; byte_count
48CF10:  BLX             malloc
48CF14:  MOV             R4, R0
48CF16:  ADD.W           R0, R6, #0xC
48CF1A:  VLD1.8          {D18-D19}, [R0]
48CF1E:  ADD.W           R0, R4, #0xC
48CF22:  MOVS            R1, #dword_1C; void *
48CF24:  VLD1.8          {D16-D17}, [R6]
48CF28:  VST1.8          {D18-D19}, [R0]
48CF2C:  MOV             R0, R4; this
48CF2E:  VST1.8          {D16-D17}, [R4]
48CF32:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48CF36:  MOV             R0, R4; p
48CF38:  BLX             free
48CF3C:  LDR.W           R0, [R8]
48CF40:  ADDS            R5, #1
48CF42:  ADDS            R6, #0x1C
48CF44:  CMP             R5, R0
48CF46:  BLT             loc_48CF0E
48CF48:  MOVS            R0, #1
48CF4A:  POP.W           {R8}
48CF4E:  POP             {R4-R7,PC}
