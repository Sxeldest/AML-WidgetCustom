; =========================================================
; Game Engine Function: _Z17RwImageStreamReadP8RwStream
; Address            : 0x1DA138 - 0x1DA2A8
; =========================================================

1DA138:  PUSH            {R4-R7,LR}
1DA13A:  ADD             R7, SP, #0xC
1DA13C:  PUSH.W          {R8-R10}
1DA140:  SUB             SP, SP, #0x20
1DA142:  ADD             R2, SP, #0x38+var_34
1DA144:  MOV             R3, SP
1DA146:  MOVS            R1, #1
1DA148:  MOV             R8, R0
1DA14A:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
1DA14E:  CBZ             R0, loc_1DA1A0
1DA150:  ADD             R5, SP, #0x38+var_30
1DA152:  MOV             R0, R8; int
1DA154:  MOVS            R2, #0x10; size_t
1DA156:  MOV             R1, R5; void *
1DA158:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1DA15C:  MOV             R0, R5; void *
1DA15E:  MOVS            R1, #0x10; unsigned int
1DA160:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
1DA164:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA170)
1DA166:  ADD.W           R10, SP, #0x38+var_30
1DA16A:  LDR             R1, =(dword_6BCF04 - 0x1DA172)
1DA16C:  ADD             R0, PC; RwEngineInstance_ptr
1DA16E:  ADD             R1, PC; dword_6BCF04
1DA170:  LDR             R0, [R0]; RwEngineInstance
1DA172:  LDR             R1, [R1]
1DA174:  LDR             R2, [R0]
1DA176:  LDM.W           R10, {R5,R6,R10}
1DA17A:  LDR             R0, [R2,R1]
1DA17C:  LDR.W           R1, [R2,#0x13C]
1DA180:  BLX             R1
1DA182:  MOV             R9, R0
1DA184:  MOVS            R4, #0
1DA186:  CMP.W           R9, #0
1DA18A:  BEQ             loc_1DA1A6
1DA18C:  LDR             R0, =(dword_682580 - 0x1DA198)
1DA18E:  MOV             R1, R9
1DA190:  STRD.W          R4, R4, [R9,#0x14]
1DA194:  ADD             R0, PC; dword_682580
1DA196:  STM.W           R9, {R4-R6,R10}
1DA19A:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
1DA19E:  B               loc_1DA1AA
1DA1A0:  MOV.W           R9, #0
1DA1A4:  B               loc_1DA29E
1DA1A6:  MOV.W           R9, #0
1DA1AA:  LDRD.W          R0, R10, [R9,#4]
1DA1AE:  LDR.W           R5, [R9,#0xC]
1DA1B2:  ADDS            R1, R5, #7
1DA1B4:  CMP             R5, #4
1DA1B6:  MOV.W           R1, R1,ASR#3
1DA1BA:  MUL.W           R0, R1, R0
1DA1BE:  LDR             R1, =(RwEngineInstance_ptr - 0x1DA1C4)
1DA1C0:  ADD             R1, PC; RwEngineInstance_ptr
1DA1C2:  LDR             R1, [R1]; RwEngineInstance
1DA1C4:  ADD.W           R0, R0, #3
1DA1C8:  BIC.W           R6, R0, #3
1DA1CC:  STR.W           R6, [R9,#0x10]
1DA1D0:  IT EQ
1DA1D2:  MOVEQ           R4, #0x40 ; '@'
1DA1D4:  CMP             R5, #8
1DA1D6:  LDR             R0, [R1]
1DA1D8:  IT EQ
1DA1DA:  MOVEQ.W         R4, #0x400
1DA1DE:  MLA.W           R4, R6, R10, R4
1DA1E2:  LDR.W           R1, [R0,#0x12C]
1DA1E6:  MOV             R0, R4
1DA1E8:  BLX             R1
1DA1EA:  CMP             R0, #0
1DA1EC:  STR.W           R0, [R9,#0x14]
1DA1F0:  BEQ             loc_1DA202
1DA1F2:  CMP             R5, #8
1DA1F4:  IT NE
1DA1F6:  CMPNE           R5, #4
1DA1F8:  BNE             loc_1DA21C
1DA1FA:  MUL.W           R1, R6, R10
1DA1FE:  ADD             R0, R1
1DA200:  B               loc_1DA21E
1DA202:  MOVS            R0, #0
1DA204:  MOV             R1, R4
1DA206:  STR             R0, [SP,#0x38+var_20]
1DA208:  MOVS            R0, #0x80000013; int
1DA20E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DA212:  STR             R0, [SP,#0x38+var_1C]
1DA214:  ADD             R0, SP, #0x38+var_20
1DA216:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DA21A:  B               loc_1DA22E
1DA21C:  MOVS            R0, #0
1DA21E:  LDR.W           R1, [R9]
1DA222:  STR.W           R0, [R9,#0x18]
1DA226:  ORR.W           R0, R1, #1
1DA22A:  STR.W           R0, [R9]
1DA22E:  LDR             R2, [SP,#0x38+var_24]
1DA230:  LDR.W           R6, [R9,#0x10]
1DA234:  CMP             R6, R2
1DA236:  BNE             loc_1DA24C
1DA238:  LDR.W           R0, [R9,#8]
1DA23C:  LDR.W           R1, [R9,#0x14]; void *
1DA240:  MUL.W           R2, R0, R6; size_t
1DA244:  MOV             R0, R8; int
1DA246:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1DA24A:  B               loc_1DA288
1DA24C:  LDR             R0, [SP,#0x38+var_2C]
1DA24E:  CMP             R0, #1
1DA250:  BLT             loc_1DA288
1DA252:  MOVS            R4, #1
1DA254:  MOVS            R5, #0
1DA256:  B               loc_1DA25E
1DA258:  LDR             R2, [SP,#0x38+var_24]; size_t
1DA25A:  ADD             R5, R6
1DA25C:  ADDS            R4, #1
1DA25E:  LDR.W           R0, [R9,#0x14]
1DA262:  CMP             R6, R2
1DA264:  ADD.W           R1, R0, R5; void *
1DA268:  MOV             R0, R8; int
1DA26A:  BLE             loc_1DA272
1DA26C:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1DA270:  B               loc_1DA282
1DA272:  MOV             R2, R6; size_t
1DA274:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1DA278:  LDR             R0, [SP,#0x38+var_24]
1DA27A:  SUBS            R1, R0, R6
1DA27C:  MOV             R0, R8
1DA27E:  BLX             j__Z12RwStreamSkipP8RwStreamj; RwStreamSkip(RwStream *,uint)
1DA282:  LDR             R0, [SP,#0x38+var_2C]
1DA284:  CMP             R4, R0
1DA286:  BLT             loc_1DA258
1DA288:  LDR.W           R0, [R9,#0xC]
1DA28C:  CMP             R0, #8
1DA28E:  BGT             loc_1DA29E
1DA290:  LDR.W           R1, [R9,#0x18]; void *
1DA294:  MOVS            R2, #4
1DA296:  LSLS            R2, R0; size_t
1DA298:  MOV             R0, R8; int
1DA29A:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1DA29E:  MOV             R0, R9
1DA2A0:  ADD             SP, SP, #0x20 ; ' '
1DA2A2:  POP.W           {R8-R10}
1DA2A6:  POP             {R4-R7,PC}
