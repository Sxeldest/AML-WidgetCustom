; =========================================================
; Game Engine Function: _Z12_rpMeshWritePK12RpMeshHeaderPKvP8RwStreamPK14RpMaterialList
; Address            : 0x2181BA - 0x21831C
; =========================================================

2181BA:  PUSH            {R4-R7,LR}
2181BC:  ADD             R7, SP, #0xC
2181BE:  PUSH.W          {R8-R11}
2181C2:  SUB.W           SP, SP, #0x428
2181C6:  SUB             SP, SP, #4
2181C8:  STR             R1, [SP,#0x448+var_43C]
2181CA:  MOV             R5, R0
2181CC:  STR             R3, [SP,#0x448+var_444]
2181CE:  MOV             R4, R2
2181D0:  LDR             R0, [R5]
2181D2:  SUB.W           R1, R7, #-var_28
2181D6:  STR.W           R0, [R7,#var_28]
2181DA:  MOVS            R2, #0xC
2181DC:  LDRH            R0, [R5,#4]
2181DE:  STR.W           R0, [R7,#var_24]
2181E2:  LDR             R0, [R5,#8]
2181E4:  STR.W           R0, [R7,#var_20]
2181E8:  MOV             R0, R4
2181EA:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
2181EE:  CMP             R0, #0
2181F0:  BEQ.W           loc_21830C
2181F4:  LDRH            R0, [R5,#4]
2181F6:  CMP             R0, #0
2181F8:  BEQ.W           loc_21830E
2181FC:  ADD.W           R8, R5, #0x14
218200:  ADD             R5, SP, #0x448+var_430
218202:  ADD.W           R9, SP, #0x448+var_438
218206:  STR             R0, [SP,#0x448+var_440]
218208:  LDRD.W          R0, R1, [R8,#4]
21820C:  STR.W           R0, [R7,#var_30]
218210:  LDR             R0, [SP,#0x448+var_444]
218212:  BLX             j__Z32_rpMaterialListFindMaterialIndexPK14RpMaterialListPK10RpMaterial; _rpMaterialListFindMaterialIndex(RpMaterialList const*,RpMaterial const*)
218216:  CMP             R0, #0
218218:  SUB.W           R1, R7, #-var_30
21821C:  IT LE
21821E:  MOVLE           R0, #0
218220:  MOVS            R2, #8
218222:  STR.W           R0, [R7,#var_2C]
218226:  MOV             R0, R4
218228:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
21822C:  CMP             R0, #0
21822E:  BEQ             loc_21830C
218230:  LDR             R0, [SP,#0x448+var_43C]
218232:  LDRB            R0, [R0]
218234:  CMP             R0, #8
218236:  BEQ             loc_218252
218238:  CMP             R0, #7
21823A:  ITTT EQ
21823C:  LDREQ           R0, [SP,#0x448+var_43C]
21823E:  LDRBEQ          R0, [R0,#0xB]
218240:  MOVSEQ.W        R0, R0,LSL#31
218244:  BNE             loc_2182FE
218246:  LDRD.W          R6, R11, [R8]
21824A:  CMP.W           R11, #0
21824E:  BNE             loc_218264
218250:  B               loc_2182FE
218252:  LDR             R0, [SP,#0x448+var_43C]
218254:  LDRB            R0, [R0,#0xB]
218256:  LDRD.W          R6, R11, [R8]
21825A:  LSLS            R0, R0, #0x1F
21825C:  BNE             loc_2182F2
21825E:  CMP.W           R11, #0
218262:  BEQ             loc_2182FE
218264:  CMP.W           R11, #0x100
218268:  MOV             R10, R11
21826A:  IT CS
21826C:  MOVCS.W         R10, #0x100
218270:  CMP.W           R10, #0
218274:  BEQ             loc_2182DA
218276:  CMP.W           R10, #4
21827A:  BCS             loc_218280
21827C:  MOVS            R0, #0
21827E:  B               loc_2182CC
218280:  ANDS.W          R0, R10, #0x1FC
218284:  BEQ             loc_21829A
218286:  ADD.W           R1, R6, R10,LSL#1
21828A:  CMP             R5, R1
21828C:  ITT CC
21828E:  ADDCC.W         R1, R5, R10,LSL#2
218292:  CMPCC           R6, R1
218294:  BCS             loc_21829E
218296:  MOVS            R0, #0
218298:  B               loc_2182CC
21829A:  MOVS            R0, #0
21829C:  B               loc_2182CC
21829E:  ADD.W           R12, R6, R0,LSL#1
2182A2:  ADD             R2, SP, #0x448+var_430
2182A4:  MOV             LR, R4
2182A6:  MOV             R3, R0
2182A8:  LDR             R4, [R6,#4]
2182AA:  SUBS            R3, #4
2182AC:  LDR             R1, [R6]
2182AE:  ADD.W           R6, R6, #8
2182B2:  STRD.W          R1, R4, [SP,#0x448+var_438]
2182B6:  VLD1.16         {D16}, [R9@64]
2182BA:  VMOVL.U16       Q8, D16
2182BE:  VST1.32         {D16-D17}, [R2]!
2182C2:  BNE             loc_2182A8
2182C4:  CMP             R10, R0
2182C6:  MOV             R6, R12
2182C8:  MOV             R4, LR
2182CA:  BEQ             loc_2182DA
2182CC:  LDRH.W          R1, [R6],#2
2182D0:  STR.W           R1, [R5,R0,LSL#2]
2182D4:  ADDS            R0, #1
2182D6:  CMP             R0, R10
2182D8:  BCC             loc_2182CC
2182DA:  MOV.W           R2, R10,LSL#2
2182DE:  MOV             R0, R4
2182E0:  MOV             R1, R5
2182E2:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
2182E6:  CMP             R0, #0
2182E8:  IT NE
2182EA:  SUBNE.W         R11, R11, R10
2182EE:  BNE             loc_21825E
2182F0:  B               loc_21830C
2182F2:  MOV.W           R2, R11,LSL#1; size_t
2182F6:  MOV             R0, R4; int
2182F8:  MOV             R1, R6; void *
2182FA:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
2182FE:  LDR             R0, [SP,#0x448+var_440]
218300:  ADD.W           R8, R8, #0x10
218304:  SUBS            R0, #1
218306:  BNE.W           loc_218206
21830A:  B               loc_21830E
21830C:  MOVS            R4, #0
21830E:  MOV             R0, R4
218310:  ADD.W           SP, SP, #0x428
218314:  ADD             SP, SP, #4
218316:  POP.W           {R8-R11}
21831A:  POP             {R4-R7,PC}
