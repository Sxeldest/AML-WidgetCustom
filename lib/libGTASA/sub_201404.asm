; =========================================================
; Game Engine Function: sub_201404
; Address            : 0x201404 - 0x2016C2
; =========================================================

201404:  PUSH            {R4-R7,LR}
201406:  ADD             R7, SP, #0xC
201408:  PUSH.W          {R8-R11}
20140C:  SUB             SP, SP, #4
20140E:  VPUSH           {D8-D15}
201412:  SUB             SP, SP, #0x38
201414:  MOV             R4, SP
201416:  BFC.W           R4, #0, #4
20141A:  MOV             SP, R4
20141C:  LDRB            R3, [R0,#0xB]
20141E:  ADD.W           R8, R3, #7
201422:  MOVS            R3, #0
201424:  CMP.W           R3, R8,LSR#3
201428:  BEQ             loc_20149A
20142A:  ADDS            R5, R1, #1
20142C:  ADD.W           R6, R1, R8,LSR#3
201430:  CMP             R6, R5
201432:  MOV             R3, R5
201434:  IT HI
201436:  MOVHI           R3, R6
201438:  SUB.W           R9, R3, R1
20143C:  CMP.W           R9, #0x10
201440:  BCC             loc_201484
201442:  BIC.W           LR, R9, #0xF
201446:  CMP.W           LR, #0
20144A:  BEQ             loc_201484
20144C:  CMP             R6, R5
20144E:  IT HI
201450:  MOVHI           R5, R6
201452:  SUBS            R3, R5, R1
201454:  ADD             R3, R2
201456:  CMP             R3, R1
201458:  IT HI
20145A:  CMPHI           R5, R2
20145C:  BHI             loc_201484
20145E:  ADD.W           R12, R2, LR
201462:  ADD.W           R3, R1, LR
201466:  MOV             R4, LR
201468:  MOV             R5, R1
20146A:  VLD1.8          {D16-D17}, [R5]
20146E:  SUBS            R4, #0x10
201470:  VLD1.8          {D18-D19}, [R2]!
201474:  VADD.I8         Q8, Q9, Q8
201478:  VST1.8          {D16-D17}, [R5]!
20147C:  BNE             loc_20146A
20147E:  CMP             R9, LR
201480:  BNE             loc_201488
201482:  B               loc_20149E
201484:  MOV             R3, R1
201486:  MOV             R12, R2
201488:  LDRB            R2, [R3]
20148A:  LDRB.W          R5, [R12],#1
20148E:  ADD             R2, R5
201490:  STRB.W          R2, [R3],#1
201494:  CMP             R3, R6
201496:  BCC             loc_201488
201498:  B               loc_20149E
20149A:  MOV             R12, R2
20149C:  MOV             R3, R1
20149E:  LDR             R5, [R0,#4]
2014A0:  ADD.W           LR, R1, R5
2014A4:  CMP             R3, LR
2014A6:  BCS.W           loc_2016B0
2014AA:  SUBS            R6, R5, R3
2014AC:  MOV.W           R0, R8,LSR#3
2014B0:  ADDS            R4, R1, R6
2014B2:  RSB.W           R11, R0, #0
2014B6:  CMP             R4, #0x10
2014B8:  BCC.W           loc_201666
2014BC:  BIC.W           R2, R4, #0xF
2014C0:  CMP             R2, #0
2014C2:  BEQ.W           loc_201666
2014C6:  STR             R2, [SP,#0x98+var_90]
2014C8:  ADD.W           R2, R3, R11
2014CC:  CMP             R2, LR
2014CE:  MOV.W           R2, #0
2014D2:  IT CC
2014D4:  MOVCC           R2, #1
2014D6:  MOV.W           R10, #0
2014DA:  STR             R2, [SP,#0x98+var_78]
2014DC:  SUBS            R2, R5, R0
2014DE:  ADD             R2, R1
2014E0:  MOVS            R5, #0
2014E2:  CMP             R3, R2
2014E4:  ADD.W           R2, R12, R4
2014E8:  IT CC
2014EA:  MOVCC           R5, #1
2014EC:  SUBS            R0, R6, R0
2014EE:  CMP             R3, R2
2014F0:  STR             R4, [SP,#0x98+var_8C]
2014F2:  ADD             R0, R1
2014F4:  IT CC
2014F6:  MOVCC.W         R10, #1
2014FA:  CMP             R12, LR
2014FC:  MOV.W           R2, #0
201500:  ADD.W           R9, R12, R11
201504:  IT CC
201506:  MOVCC           R2, #1
201508:  CMP             R9, LR
20150A:  MOV.W           R4, #0
20150E:  ADD             R0, R12
201510:  IT CC
201512:  MOVCC           R4, #1
201514:  MOV.W           R8, #0
201518:  CMP             R3, R0
20151A:  IT CC
20151C:  MOVCC.W         R8, #1
201520:  TST.W           R8, R4
201524:  BNE.W           loc_201666
201528:  LDR             R0, [SP,#0x98+var_78]
20152A:  ANDS            R0, R5
20152C:  IT EQ
20152E:  ANDSEQ.W        R0, R10, R2
201532:  BNE.W           loc_201666
201536:  LDR             R2, [SP,#0x98+var_90]
201538:  ADD.W           R10, R12, R2
20153C:  ADD.W           R8, R3, R2
201540:  MOV             R6, R2
201542:  MOV             R0, R3
201544:  ADD             R4, SP, #0x98+var_78
201546:  VLD1.8          {D16-D17}, [R0],R11
20154A:  ADD.W           R1, R12, R11
20154E:  SUBS            R6, #0x10
201550:  VST1.64         {D16-D17}, [R4@128]
201554:  VLD1.8          {D20-D21}, [R0]
201558:  ADD             R0, SP, #0x98+var_88
20155A:  VLD1.8          {D18-D19}, [R1]
20155E:  VMOVL.U8        Q13, D20
201562:  VMOVL.U8        Q4, D21
201566:  VLD1.8          {D22-D23}, [R12]!
20156A:  VMOVL.U8        Q12, D18
20156E:  VMOVL.U8        Q3, D19
201572:  VMOVL.U8        Q15, D22
201576:  VMOVL.U8        Q5, D23
20157A:  VSUBL.U16       Q14, D27, D25
20157E:  VABDL.U16       Q1, D31, D25
201582:  VSUBL.U16       Q0, D31, D25
201586:  VABDL.U16       Q2, D27, D25
20158A:  VADD.I32        Q14, Q0, Q14
20158E:  VSUBL.U16       Q6, D10, D6
201592:  VABS.S32        Q14, Q14
201596:  VMIN.S32        Q0, Q2, Q1
20159A:  VABDL.U16       Q7, D10, D6
20159E:  VCGT.S32        Q1, Q1, Q2
2015A2:  VCGT.S32        Q8, Q0, Q14
2015A6:  VSUBL.U16       Q0, D8, D6
2015AA:  VSUBL.U16       Q14, D11, D7
2015AE:  VADD.I32        Q0, Q6, Q0
2015B2:  VABDL.U16       Q6, D8, D6
2015B6:  VST1.64         {D16-D17}, [R0@128]
2015BA:  VABS.S32        Q0, Q0
2015BE:  ADD             R0, SP, #0x98+var_88
2015C0:  VABDL.U16       Q2, D26, D24
2015C4:  VMIN.S32        Q8, Q6, Q7
2015C8:  VSUBL.U16       Q13, D26, D24
2015CC:  VMOVN.I32       D3, Q1
2015D0:  VCGT.S32        Q0, Q8, Q0
2015D4:  VSUBL.U16       Q8, D9, D7
2015D8:  VADD.I32        Q8, Q14, Q8
2015DC:  VABDL.U16       Q14, D9, D7
2015E0:  VABDL.U16       Q3, D11, D7
2015E4:  VABS.S32        Q8, Q8
2015E8:  VMIN.S32        Q4, Q14, Q3
2015EC:  VCGT.S32        Q14, Q3, Q14
2015F0:  VCGT.S32        Q3, Q7, Q6
2015F4:  VCGT.S32        Q8, Q4, Q8
2015F8:  VABDL.U16       Q4, D30, D24
2015FC:  VSUBL.U16       Q12, D30, D24
201600:  VMOVN.I32       D29, Q14
201604:  VADD.I32        Q12, Q12, Q13
201608:  VCGT.S32        Q5, Q4, Q2
20160C:  VABS.S32        Q12, Q12
201610:  VMIN.S32        Q2, Q2, Q4
201614:  VMOVN.I32       D28, Q3
201618:  VMOVN.I32       D17, Q8
20161C:  VCGT.S32        Q12, Q2, Q12
201620:  VMOVN.I16       D27, Q14
201624:  VLD1.64         {D28-D29}, [R0@128]
201628:  VMOVN.I32       D2, Q5
20162C:  ADD             R0, SP, #0x98+var_78
20162E:  VMOVN.I32       D16, Q0
201632:  VMOVN.I32       D29, Q14
201636:  VMOVN.I16       D26, Q1
20163A:  VMOVN.I32       D28, Q12
20163E:  VMOVN.I16       D17, Q8
201642:  VBSL            Q13, Q11, Q10
201646:  VMOVN.I16       D16, Q14
20164A:  VBSL            Q8, Q9, Q13
20164E:  VLD1.64         {D18-D19}, [R0@128]
201652:  VADD.I8         Q8, Q8, Q9
201656:  VST1.8          {D16-D17}, [R3]!
20165A:  BNE.W           loc_201542
20165E:  LDR             R0, [SP,#0x98+var_8C]
201660:  CMP             R2, R0
201662:  BNE             loc_20166A
201664:  B               loc_2016B0
201666:  MOV             R8, R3
201668:  MOV             R10, R12
20166A:  LDRB.W          R3, [R11,R10]
20166E:  LDRB.W          R6, [R11,R8]
201672:  LDRB.W          R2, [R10]
201676:  SUBS            R0, R6, R3
201678:  ADD.W           R10, R10, #1
20167C:  MOV             R5, R0
20167E:  IT MI
201680:  NEGMI           R5, R0
201682:  SUBS            R1, R2, R3
201684:  MOV             R4, R1
201686:  IT MI
201688:  NEGMI           R4, R1
20168A:  CMP             R5, R4
20168C:  ITT LT
20168E:  MOVLT           R6, R2
201690:  MOVLT           R4, R5
201692:  ADDS            R0, R0, R1
201694:  LDRB.W          R2, [R8]
201698:  IT MI
20169A:  NEGMI           R0, R0
20169C:  CMP             R0, R4
20169E:  IT LT
2016A0:  MOVLT           R6, R3
2016A2:  ADDS            R0, R6, R2
2016A4:  STRB.W          R0, [R8]
2016A8:  ADD.W           R8, R8, #1
2016AC:  CMP             LR, R8
2016AE:  BNE             loc_20166A
2016B0:  SUB.W           R4, R7, #-var_60
2016B4:  MOV             SP, R4
2016B6:  VPOP            {D8-D15}
2016BA:  ADD             SP, SP, #4
2016BC:  POP.W           {R8-R11}
2016C0:  POP             {R4-R7,PC}
