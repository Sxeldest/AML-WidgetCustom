; =========================================================
; Game Engine Function: _Z25RtAnimAnimationStreamReadP8RwStream
; Address            : 0x1EB090 - 0x1EB19C
; =========================================================

1EB090:  PUSH            {R4-R7,LR}
1EB092:  ADD             R7, SP, #0xC
1EB094:  PUSH.W          {R8-R11}
1EB098:  SUB             SP, SP, #0x14
1EB09A:  ADD             R1, SP, #0x30+var_20
1EB09C:  MOVS            R2, #4
1EB09E:  MOV             R9, R0
1EB0A0:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1EB0A4:  MOVS            R5, #0
1EB0A6:  CMP             R0, #0
1EB0A8:  BEQ             loc_1EB192
1EB0AA:  LDR             R0, [SP,#0x30+var_20]
1EB0AC:  CMP.W           R0, #0x100
1EB0B0:  BNE             loc_1EB192
1EB0B2:  ADD             R1, SP, #0x30+var_24
1EB0B4:  MOV             R0, R9
1EB0B6:  MOVS            R2, #4
1EB0B8:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1EB0BC:  CMP             R0, #0
1EB0BE:  BEQ             loc_1EB190
1EB0C0:  LDR             R0, =(RtAnimInterpolatorInfoBlockNumEntries_ptr - 0x1EB0C6)
1EB0C2:  ADD             R0, PC; RtAnimInterpolatorInfoBlockNumEntries_ptr
1EB0C4:  LDR             R0, [R0]; RtAnimInterpolatorInfoBlockNumEntries
1EB0C6:  LDR             R0, [R0]
1EB0C8:  CMP             R0, #1
1EB0CA:  BLT             loc_1EB190
1EB0CC:  LDR             R2, =(RtAnimInterpolatorInfoBlock_ptr - 0x1EB0D4)
1EB0CE:  LDR             R1, [SP,#0x30+var_24]
1EB0D0:  ADD             R2, PC; RtAnimInterpolatorInfoBlock_ptr
1EB0D2:  LDR             R2, [R2]; RtAnimInterpolatorInfoBlock
1EB0D4:  ADD.W           R6, R2, #0x20 ; ' '
1EB0D8:  MOVS            R2, #0
1EB0DA:  LDR.W           R3, [R6,#-0x20]
1EB0DE:  CMP             R3, R1
1EB0E0:  BEQ             loc_1EB0EC
1EB0E2:  ADDS            R2, #1
1EB0E4:  ADDS            R6, #0x30 ; '0'
1EB0E6:  CMP             R2, R0
1EB0E8:  BLT             loc_1EB0DA
1EB0EA:  B               loc_1EB190
1EB0EC:  CMP             R6, #0x20 ; ' '
1EB0EE:  BEQ             loc_1EB190
1EB0F0:  ADD             R1, SP, #0x30+var_28
1EB0F2:  MOV             R0, R9
1EB0F4:  MOVS            R2, #4
1EB0F6:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1EB0FA:  CMP             R0, #0
1EB0FC:  BEQ             loc_1EB190
1EB0FE:  ADD             R1, SP, #0x30+var_2C
1EB100:  MOV             R0, R9
1EB102:  MOVS            R2, #4
1EB104:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1EB108:  CMP             R0, #0
1EB10A:  BEQ             loc_1EB190
1EB10C:  MOV             R1, SP
1EB10E:  MOV             R0, R9
1EB110:  MOVS            R2, #4
1EB112:  BLX             j__Z16RwStreamReadRealP8RwStreamPfj; RwStreamReadReal(RwStream *,float *,uint)
1EB116:  CBZ             R0, loc_1EB190
1EB118:  LDR             R0, =(RtAnimInterpolatorInfoBlockNumEntries_ptr - 0x1EB11E)
1EB11A:  ADD             R0, PC; RtAnimInterpolatorInfoBlockNumEntries_ptr
1EB11C:  LDR             R0, [R0]; RtAnimInterpolatorInfoBlockNumEntries
1EB11E:  LDR             R0, [R0]
1EB120:  CMP             R0, #1
1EB122:  BLT             loc_1EB190
1EB124:  LDR             R2, =(RtAnimInterpolatorInfoBlock_ptr - 0x1EB130)
1EB126:  MOVS            R5, #0
1EB128:  LDRD.W          R10, R11, [SP,#0x30+var_30]
1EB12C:  ADD             R2, PC; RtAnimInterpolatorInfoBlock_ptr
1EB12E:  LDRD.W          R8, R1, [SP,#0x30+var_28]
1EB132:  LDR             R4, [R2]; RtAnimInterpolatorInfoBlock
1EB134:  MOVS            R2, #0
1EB136:  LDR             R3, [R4]
1EB138:  CMP             R3, R1
1EB13A:  BEQ             loc_1EB146
1EB13C:  ADDS            R2, #1
1EB13E:  ADDS            R4, #0x30 ; '0'
1EB140:  CMP             R2, R0
1EB142:  BLT             loc_1EB136
1EB144:  B               loc_1EB192
1EB146:  CBZ             R4, loc_1EB190
1EB148:  LDR             R0, =(RwEngineInstance_ptr - 0x1EB150)
1EB14A:  LDR             R1, [R4,#8]
1EB14C:  ADD             R0, PC; RwEngineInstance_ptr
1EB14E:  LDR             R2, [R4,#0x2C]
1EB150:  LDR             R0, [R0]; RwEngineInstance
1EB152:  MLA.W           R1, R1, R8, R2
1EB156:  LDR             R0, [R0]
1EB158:  LDR.W           R2, [R0,#0x12C]
1EB15C:  ADD.W           R0, R1, #0x18
1EB160:  BLX             R2
1EB162:  MOV             R5, R0
1EB164:  ADD.W           R0, R5, #0x18
1EB168:  STM.W           R5, {R4,R8,R11}
1EB16C:  STRD.W          R10, R0, [R5,#0xC]
1EB170:  LDR             R1, [R4,#0x2C]
1EB172:  CMP             R1, #1
1EB174:  BLT             loc_1EB17E
1EB176:  LDR             R1, [R4,#8]
1EB178:  MLA.W           R0, R1, R8, R0
1EB17C:  B               loc_1EB180
1EB17E:  MOVS            R0, #0
1EB180:  CMP             R5, #0
1EB182:  STR             R0, [R5,#0x14]
1EB184:  BEQ             loc_1EB190
1EB186:  LDR             R2, [R6]
1EB188:  MOV             R0, R9
1EB18A:  MOV             R1, R5
1EB18C:  BLX             R2
1EB18E:  B               loc_1EB192
1EB190:  MOVS            R5, #0
1EB192:  MOV             R0, R5
1EB194:  ADD             SP, SP, #0x14
1EB196:  POP.W           {R8-R11}
1EB19A:  POP             {R4-R7,PC}
