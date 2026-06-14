; =========================================================
; Game Engine Function: __dynamic_cast
; Address            : 0x21F4B4 - 0x21F588
; =========================================================

21F4B4:  PUSH            {R4-R7,LR}
21F4B6:  ADD             R7, SP, #0xC
21F4B8:  PUSH.W          {R11}
21F4BC:  SUB             SP, SP, #0x48
21F4BE:  MOV             R5, R0
21F4C0:  LDR             R0, =(__stack_chk_guard_ptr - 0x21F4CA)
21F4C2:  VMOV.I32        Q8, #0
21F4C6:  ADD             R0, PC; __stack_chk_guard_ptr
21F4C8:  LDR             R0, [R0]; __stack_chk_guard
21F4CA:  LDR             R0, [R0]
21F4CC:  STR             R0, [SP,#0x58+var_14]
21F4CE:  LDR             R0, [R5]
21F4D0:  LDRD.W          R12, R0, [R0,#-8]
21F4D4:  ADD             R4, SP, #0x58+var_50
21F4D6:  ADD.W           R6, R4, #0x10
21F4DA:  MOVS            R4, #0xF
21F4DC:  VST1.64         {D16-D17}, [R6]!
21F4E0:  VST1.64         {D16-D17}, [R6],R4
21F4E4:  MOVS            R4, #0
21F4E6:  STRD.W          R5, R1, [SP,#0x58+var_4C]
21F4EA:  ADD             R5, R12
21F4EC:  STR             R4, [R6]
21F4EE:  STR.W           R4, [SP,#0x58+var_1D]
21F4F2:  STR             R3, [SP,#0x58+var_44]
21F4F4:  STR             R2, [SP,#0x58+var_50]
21F4F6:  LDR             R1, [R2,#4]
21F4F8:  LDR             R2, [R0,#4]
21F4FA:  CMP             R2, R1
21F4FC:  BEQ             loc_21F534
21F4FE:  LDR             R1, [R0]
21F500:  MOV             R2, R5
21F502:  MOVS            R3, #1
21F504:  LDR             R6, [R1,#0x18]
21F506:  STR             R4, [SP,#0x58+var_58]
21F508:  ADD             R1, SP, #0x58+var_50
21F50A:  BLX             R6
21F50C:  LDR             R0, [SP,#0x58+var_2C]
21F50E:  CMP             R0, #1
21F510:  BEQ             loc_21F552
21F512:  CBNZ            R0, loc_21F56C
21F514:  LDRD.W          R0, R1, [SP,#0x58+var_34]
21F518:  MOVS            R3, #0
21F51A:  LDR             R2, [SP,#0x58+var_28]
21F51C:  CMP             R1, #1
21F51E:  LDR             R4, [SP,#0x58+var_3C]
21F520:  EOR.W           R0, R0, #1
21F524:  IT NE
21F526:  MOVNE           R4, R3
21F528:  EOR.W           R1, R2, #1
21F52C:  ORRS            R0, R1
21F52E:  IT NE
21F530:  MOVNE           R4, R3
21F532:  B               loc_21F56C
21F534:  MOVS            R1, #1
21F536:  MOV             R3, R5
21F538:  STR             R1, [SP,#0x38]
21F53A:  LDR             R2, [R0]
21F53C:  LDR             R6, [R2,#0x14]
21F53E:  MOV             R2, R5
21F540:  STRD.W          R1, R4, [SP,#0x58+var_58]
21F544:  ADD             R1, SP, #0x58+var_50
21F546:  BLX             R6
21F548:  LDR             R0, [SP,#0x58+var_38]
21F54A:  CMP             R0, #1
21F54C:  IT EQ
21F54E:  MOVEQ           R4, R5
21F550:  B               loc_21F56C
21F552:  LDR             R0, [SP,#0x58+var_38]
21F554:  CMP             R0, #1
21F556:  BEQ             loc_21F56A
21F558:  LDR             R0, [SP,#0x58+var_28]
21F55A:  MOVS            R4, #0
21F55C:  CBNZ            R0, loc_21F56C
21F55E:  LDR             R0, [SP,#0x58+var_34]
21F560:  CMP             R0, #1
21F562:  ITT EQ
21F564:  LDREQ           R0, [SP,#0x58+var_30]
21F566:  CMPEQ           R0, #1
21F568:  BNE             loc_21F56C
21F56A:  LDR             R4, [SP,#0x58+var_40]
21F56C:  LDR             R0, [SP,#0x58+var_14]
21F56E:  LDR             R1, =(__stack_chk_guard_ptr - 0x21F574)
21F570:  ADD             R1, PC; __stack_chk_guard_ptr
21F572:  LDR             R1, [R1]; __stack_chk_guard
21F574:  LDR             R1, [R1]
21F576:  CMP             R1, R0
21F578:  ITTTT EQ
21F57A:  MOVEQ           R0, R4
21F57C:  ADDEQ           SP, SP, #0x48 ; 'H'
21F57E:  POPEQ.W         {R11}
21F582:  POPEQ           {R4-R7,PC}
21F584:  BLX             __stack_chk_fail
