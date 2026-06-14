; =========================================================
; Game Engine Function: _ZNK7CWanted17CanCopJoinPursuitEP7CCopPed
; Address            : 0x422418 - 0x422524
; =========================================================

422418:  PUSH            {R4-R7,LR}
42241A:  ADD             R7, SP, #0xC
42241C:  PUSH.W          {R8-R11}
422420:  SUB             SP, SP, #0x4C
422422:  MOV             R5, R1
422424:  LDRB            R1, [R0,#0x1E]
422426:  LSLS            R1, R1, #0x1D
422428:  BEQ             loc_422438
42242A:  MOV.W           R8, #0
42242E:  MOV             R0, R8
422430:  ADD             SP, SP, #0x4C ; 'L'
422432:  POP.W           {R8-R11}
422436:  POP             {R4-R7,PC}
422438:  ADD.W           R1, R0, #0x1F4
42243C:  ADD             R6, SP, #0x68+var_48
42243E:  VLD1.32         {D16-D17}, [R1]
422442:  ADD.W           R1, R0, #0x204
422446:  MOV.W           R8, #0
42244A:  VLD1.32         {D18-D19}, [R1]
42244E:  MOV             R1, R6
422450:  VLDR            D20, [R0,#0x214]
422454:  VST1.64         {D16-D17}, [R1]!
422458:  VST1.64         {D18-D19}, [R1]
42245C:  VSTR            D20, [SP,#0x68+var_28]
422460:  LDRB            R4, [R0,#0x19]
422462:  CMP             R4, #0
422464:  BEQ             loc_42242E
422466:  ADD.W           R1, R6, #0x24 ; '$'
42246A:  STR             R1, [SP,#0x68+var_58]
42246C:  ADD.W           R1, R6, #0x20 ; ' '
422470:  STR             R1, [SP,#0x68+var_5C]
422472:  ADD.W           R1, R6, #0x1C
422476:  STR             R1, [SP,#0x68+var_60]
422478:  ADD.W           R1, R6, #0x18
42247C:  STR             R1, [SP,#0x68+var_64]
42247E:  ADD.W           R1, R6, #0x14
422482:  STR             R1, [SP,#0x68+var_4C]
422484:  ADD.W           R1, R6, #0x10
422488:  STR             R1, [SP,#0x68+var_50]
42248A:  ADD.W           R1, R6, #0xC
42248E:  STR             R1, [SP,#0x68+var_54]
422490:  LDRB.W          R9, [R0,#0x18]
422494:  ADD.W           R10, R6, #8
422498:  ORR.W           R11, R6, #4
42249C:  B               loc_4224A6
42249E:  STR.W           R8, [R0]
4224A2:  SUB.W           R9, R9, #1
4224A6:  UXTB.W          R0, R9
4224AA:  CMP             R0, R4
4224AC:  BCC             loc_42251E
4224AE:  MOV             R0, R5; this
4224B0:  MOV             R1, R6; CCopPed *
4224B2:  BLX             j__ZN7CWanted27ComputePursuitCopToDisplaceEP7CCopPedPS1_; CWanted::ComputePursuitCopToDisplace(CCopPed *,CCopPed **)
4224B6:  CMP             R0, #0
4224B8:  BEQ             loc_42242A
4224BA:  LDR             R1, [SP,#0x68+var_48]
4224BC:  CMP             R1, R0
4224BE:  BEQ             loc_4224FA
4224C0:  LDR             R1, [SP,#0x68+var_44]
4224C2:  CMP             R1, R0
4224C4:  BEQ             loc_4224FE
4224C6:  LDR             R1, [SP,#0x68+var_40]
4224C8:  CMP             R1, R0
4224CA:  BEQ             loc_422502
4224CC:  LDR             R1, [SP,#0x68+var_3C]
4224CE:  CMP             R1, R0
4224D0:  BEQ             loc_422506
4224D2:  LDR             R1, [SP,#0x68+var_38]
4224D4:  CMP             R1, R0
4224D6:  BEQ             loc_42250A
4224D8:  LDR             R1, [SP,#0x68+var_34]
4224DA:  CMP             R1, R0
4224DC:  BEQ             loc_42250E
4224DE:  LDR             R1, [SP,#0x68+var_30]
4224E0:  CMP             R1, R0
4224E2:  BEQ             loc_422512
4224E4:  LDR             R1, [SP,#0x68+var_2C]
4224E6:  CMP             R1, R0
4224E8:  BEQ             loc_422516
4224EA:  LDR             R1, [SP,#0x68+var_28]
4224EC:  CMP             R1, R0
4224EE:  BEQ             loc_42251A
4224F0:  LDR             R1, [SP,#0x68+var_28+4]
4224F2:  CMP             R1, R0
4224F4:  BNE             loc_4224A6
4224F6:  LDR             R0, [SP,#0x68+var_58]
4224F8:  B               loc_42249E
4224FA:  ADD             R0, SP, #0x68+var_48
4224FC:  B               loc_42249E
4224FE:  MOV             R0, R11
422500:  B               loc_42249E
422502:  MOV             R0, R10
422504:  B               loc_42249E
422506:  LDR             R0, [SP,#0x68+var_54]
422508:  B               loc_42249E
42250A:  LDR             R0, [SP,#0x68+var_50]
42250C:  B               loc_42249E
42250E:  LDR             R0, [SP,#0x68+var_4C]
422510:  B               loc_42249E
422512:  LDR             R0, [SP,#0x68+var_64]
422514:  B               loc_42249E
422516:  LDR             R0, [SP,#0x68+var_60]
422518:  B               loc_42249E
42251A:  LDR             R0, [SP,#0x68+var_5C]
42251C:  B               loc_42249E
42251E:  MOV.W           R8, #1
422522:  B               loc_42242E
