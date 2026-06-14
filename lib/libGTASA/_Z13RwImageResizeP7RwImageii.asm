; =========================================================
; Game Engine Function: _Z13RwImageResizeP7RwImageii
; Address            : 0x1D9020 - 0x1D9140
; =========================================================

1D9020:  PUSH            {R4-R7,LR}
1D9022:  ADD             R7, SP, #0xC
1D9024:  PUSH.W          {R8-R11}
1D9028:  SUB             SP, SP, #0x1C
1D902A:  MOV             R4, R0
1D902C:  MOV             R6, R2
1D902E:  LDRB            R0, [R4]
1D9030:  LSLS            R0, R0, #0x1F
1D9032:  ITT NE
1D9034:  LDRNE           R0, [R4,#0x14]
1D9036:  CMPNE           R0, #0
1D9038:  BEQ             loc_1D9116
1D903A:  LDR             R5, [R4,#0xC]
1D903C:  MOVS            R0, #0
1D903E:  MOVS            R3, #0
1D9040:  LDR.W           R12, =(RwEngineInstance_ptr - 0x1D9064)
1D9044:  ADDS            R2, R5, #7
1D9046:  CMP             R5, #8
1D9048:  IT EQ
1D904A:  MOVEQ           R0, #1
1D904C:  CMP             R5, #4
1D904E:  MOV.W           R2, R2,ASR#3
1D9052:  STR             R1, [SP,#0x38+var_28]
1D9054:  MUL.W           R2, R1, R2
1D9058:  IT EQ
1D905A:  MOVEQ           R3, #1
1D905C:  ORRS.W          R11, R3, R0
1D9060:  ADD             R12, PC; RwEngineInstance_ptr
1D9062:  MOV.W           R1, #4
1D9066:  MOV             R10, R11
1D9068:  IT NE
1D906A:  LSLNE.W         R10, R1, R5
1D906E:  LDR.W           R0, [R12]; RwEngineInstance
1D9072:  ADDS            R1, R2, #3
1D9074:  BIC.W           R8, R1, #3
1D9078:  LDR             R0, [R0]
1D907A:  MLA.W           R9, R8, R6, R10
1D907E:  LDR.W           R1, [R0,#0x12C]
1D9082:  MOV             R0, R9
1D9084:  BLX             R1
1D9086:  CMP             R0, #0
1D9088:  BEQ             loc_1D9124
1D908A:  MUL.W           R1, R8, R6
1D908E:  CMP.W           R11, #0
1D9092:  STR             R0, [SP,#0x38+var_2C]
1D9094:  IT NE
1D9096:  ADDNE.W         R11, R0, R1
1D909A:  CMP             R5, #8
1D909C:  IT NE
1D909E:  CMPNE           R5, #4
1D90A0:  BNE             loc_1D90AC
1D90A2:  LDR             R1, [R4,#0x18]; void *
1D90A4:  MOV             R0, R11; void *
1D90A6:  MOV             R2, R10; size_t
1D90A8:  BLX             memcpy_1
1D90AC:  STR.W           R11, [SP,#0x38+var_34]
1D90B0:  LDRD.W          R0, R10, [R4,#4]
1D90B4:  LDR             R1, [SP,#0x38+var_28]
1D90B6:  CMP             R0, R1
1D90B8:  IT GT
1D90BA:  MOVGT           R0, R1
1D90BC:  CMP             R10, R6
1D90BE:  STR             R6, [SP,#0x38+var_30]
1D90C0:  IT GT
1D90C2:  MOVGT           R10, R6
1D90C4:  CMP.W           R10, #0
1D90C8:  BLE             loc_1D90F6
1D90CA:  LDR             R1, [R4,#0xC]
1D90CC:  MOV.W           R11, #0
1D90D0:  LDR             R5, [R4,#0x14]
1D90D2:  ADDS            R1, #7
1D90D4:  LDR.W           R9, [SP,#0x38+var_2C]
1D90D8:  ASRS            R1, R1, #3
1D90DA:  MUL.W           R6, R1, R0
1D90DE:  MOV             R0, R9; void *
1D90E0:  MOV             R1, R5; void *
1D90E2:  MOV             R2, R6; size_t
1D90E4:  BLX             memcpy_1
1D90E8:  LDR             R0, [R4,#0x10]
1D90EA:  ADD.W           R11, R11, #1
1D90EE:  ADD             R9, R8
1D90F0:  CMP             R11, R10
1D90F2:  ADD             R5, R0
1D90F4:  BLT             loc_1D90DE
1D90F6:  LDR             R0, =(RwEngineInstance_ptr - 0x1D90FC)
1D90F8:  ADD             R0, PC; RwEngineInstance_ptr
1D90FA:  LDR             R0, [R0]; RwEngineInstance
1D90FC:  LDR             R1, [R0]
1D90FE:  LDR             R0, [R4,#0x14]
1D9100:  LDR.W           R1, [R1,#0x130]
1D9104:  BLX             R1
1D9106:  STR.W           R8, [R4,#0x10]
1D910A:  LDR             R0, [SP,#0x38+var_2C]
1D910C:  STR             R0, [R4,#0x14]
1D910E:  LDR             R0, [SP,#0x38+var_34]
1D9110:  STR             R0, [R4,#0x18]
1D9112:  LDR             R6, [SP,#0x38+var_30]
1D9114:  LDR             R1, [SP,#0x38+var_28]
1D9116:  STRD.W          R1, R6, [R4,#4]
1D911A:  MOV             R0, R4
1D911C:  ADD             SP, SP, #0x1C
1D911E:  POP.W           {R8-R11}
1D9122:  POP             {R4-R7,PC}
1D9124:  MOVS            R0, #0
1D9126:  MOV             R1, R9
1D9128:  STR             R0, [SP,#0x38+var_24]
1D912A:  MOVS            R0, #0x80000013; int
1D9130:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D9134:  STR             R0, [SP,#0x38+var_20]
1D9136:  ADD             R0, SP, #0x38+var_24
1D9138:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D913C:  MOVS            R4, #0
1D913E:  B               loc_1D911A
