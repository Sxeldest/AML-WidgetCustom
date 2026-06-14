; =========================================================
; Game Engine Function: sub_2011FE
; Address            : 0x2011FE - 0x2013A2
; =========================================================

2011FE:  PUSH            {R4-R7,LR}
201200:  ADD             R7, SP, #0xC
201202:  PUSH.W          {R8-R10}
201206:  LDRB            R3, [R0,#0xB]
201208:  LDR.W           R12, [R0,#4]
20120C:  MOVS            R0, #0
20120E:  ADDS            R3, #7
201210:  SUB.W           LR, R12, R3,LSR#3
201214:  MOV.W           R10, R3,LSR#3
201218:  CMP.W           R0, R3,LSR#3
20121C:  BEQ             loc_201286
20121E:  ADD.W           R0, R2, R10
201222:  CMP             R3, #0x7F
201224:  BLS             loc_20125E
201226:  ANDS.W          R8, R10, #0x30 ; '0'
20122A:  BEQ             loc_20125E
20122C:  CMP             R0, R1
20122E:  ITT HI
201230:  ADDHI.W         R3, R1, R10
201234:  CMPHI           R3, R2
201236:  BHI             loc_20125E
201238:  ADD.W           R6, R2, R8
20123C:  ADD.W           R4, R1, R8
201240:  MOV             R5, R8
201242:  MOV             R3, R1
201244:  VLD1.8          {D16-D17}, [R2]!
201248:  SUBS            R5, #0x10
20124A:  VLD1.8          {D18-D19}, [R3]
20124E:  VSRA.U8         Q9, Q8, #1
201252:  VST1.8          {D18-D19}, [R3]!
201256:  BNE             loc_201244
201258:  CMP             R10, R8
20125A:  BNE             loc_201266
20125C:  B               loc_20127C
20125E:  MOV.W           R8, #0
201262:  MOV             R4, R1
201264:  MOV             R6, R2
201266:  SUB.W           R2, R10, R8
20126A:  LDRB.W          R3, [R6],#1
20126E:  SUBS            R2, #1
201270:  LDRB            R5, [R4]
201272:  ADD.W           R3, R5, R3,LSR#1
201276:  STRB.W          R3, [R4],#1
20127A:  BNE             loc_20126A
20127C:  ADD             R1, R10
20127E:  CMP.W           LR, #0
201282:  BNE             loc_201290
201284:  B               loc_20139C
201286:  MOV             R0, R2
201288:  CMP.W           LR, #0
20128C:  BEQ.W           loc_20139C
201290:  RSB.W           R2, R10, #0
201294:  CMP.W           LR, #0xF
201298:  BHI             loc_2012A0
20129A:  MOV.W           R9, #0
20129E:  B               loc_201378
2012A0:  BIC.W           R8, LR, #0xF
2012A4:  MOV.W           R9, #0
2012A8:  CMP.W           R8, #0
2012AC:  BEQ             loc_201378
2012AE:  SUB.W           R4, R12, R10,LSL#1
2012B2:  ADD.W           R5, R1, LR
2012B6:  ADDS            R3, R1, R2
2012B8:  ADD             R4, R1
2012BA:  CMP             R3, R5
2012BC:  MOV.W           R3, #0
2012C0:  IT CC
2012C2:  MOVCC           R3, #1
2012C4:  CMP             R1, R4
2012C6:  MOV.W           R4, #0
2012CA:  ADD.W           R6, R0, LR
2012CE:  IT CC
2012D0:  MOVCC           R4, #1
2012D2:  CMP             R0, R5
2012D4:  MOV.W           R5, #0
2012D8:  IT CC
2012DA:  MOVCC           R5, #1
2012DC:  CMP             R1, R6
2012DE:  MOV.W           R6, #0
2012E2:  IT CC
2012E4:  MOVCC           R6, #1
2012E6:  TST             R6, R5
2012E8:  IT EQ
2012EA:  ANDSEQ.W        R3, R3, R4
2012EE:  BNE             loc_201378
2012F0:  MOV             R9, R8
2012F2:  ADD.W           R6, R0, R8
2012F6:  ADD.W           R5, R1, R8
2012FA:  MOV             R4, R9
2012FC:  MOV             R3, R1
2012FE:  VLD1.8          {D18-D19}, [R0]!
201302:  SUBS            R4, #0x10
201304:  VLD1.8          {D16-D17}, [R3],R2
201308:  VMOVL.U8        Q11, D19
20130C:  VMOVL.U8        Q9, D18
201310:  VLD1.8          {D20-D21}, [R3]
201314:  VMOVL.U8        Q13, D17
201318:  VMOVL.U8        Q8, D16
20131C:  VMOVL.U8        Q12, D21
201320:  VMOVL.U8        Q10, D20
201324:  VMOVL.U16       Q15, D27
201328:  VMOVL.U16       Q0, D17
20132C:  VADDL.U16       Q14, D25, D23
201330:  VADDL.U16       Q11, D24, D22
201334:  VMOVL.U16       Q12, D26
201338:  VADDL.U16       Q13, D21, D19
20133C:  VADDL.U16       Q9, D20, D18
201340:  VMOVL.U16       Q8, D16
201344:  VSRA.U32        Q15, Q14, #1
201348:  VSRA.U32        Q0, Q13, #1
20134C:  VSRA.U32        Q12, Q11, #1
201350:  VSRA.U32        Q8, Q9, #1
201354:  VMOVN.I32       D19, Q15
201358:  VMOVN.I32       D21, Q0
20135C:  VMOVN.I32       D18, Q12
201360:  VMOVN.I32       D20, Q8
201364:  VMOVN.I16       D17, Q9
201368:  VMOVN.I16       D16, Q10
20136C:  VST1.8          {D16-D17}, [R1]!
201370:  BNE             loc_2012FC
201372:  CMP             LR, R8
201374:  BNE             loc_20137C
201376:  B               loc_20139C
201378:  MOV             R5, R1
20137A:  MOV             R6, R0
20137C:  SUB.W           R0, R12, R9
201380:  SUB.W           R0, R0, R10
201384:  LDRB            R1, [R2,R5]
201386:  SUBS            R0, #1
201388:  LDRB.W          R3, [R6],#1
20138C:  LDRB            R4, [R5]
20138E:  ADD             R1, R3
201390:  ADD.W           R1, R4, R1,LSR#1
201394:  STRB            R1, [R5]
201396:  ADD.W           R5, R5, #1
20139A:  BNE             loc_201384
20139C:  POP.W           {R8-R10}
2013A0:  POP             {R4-R7,PC}
