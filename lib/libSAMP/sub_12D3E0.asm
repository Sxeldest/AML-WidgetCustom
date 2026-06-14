; =========================================================
; Game Engine Function: sub_12D3E0
; Address            : 0x12D3E0 - 0x12D47E
; =========================================================

12D3E0:  PUSH            {R4-R7,LR}
12D3E2:  ADD             R7, SP, #0xC
12D3E4:  PUSH.W          {R8,R9,R11}
12D3E8:  SUB             SP, SP, #0x58
12D3EA:  ADD.W           R9, SP, #0x70+var_60
12D3EE:  MOV             R5, R1
12D3F0:  ADD.W           R4, R9, #4
12D3F4:  MOV             R8, R0
12D3F6:  MOVS            R1, #0x44 ; 'D'; n
12D3F8:  MOV             R6, R2
12D3FA:  MOV             R0, R4; int
12D3FC:  BLX             sub_22178C
12D400:  MOVS            R0, #1
12D402:  STR             R0, [SP,#0x70+var_60]
12D404:  MOV             R0, R4
12D406:  MOV             R1, R5
12D408:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
12D40C:  ADD.W           R0, R9, #0x28 ; '('
12D410:  VLD1.32         {D16-D17}, [R6]
12D414:  VST1.64         {D16-D17}, [R0]
12D418:  MOV             R0, SP
12D41A:  BL              sub_12D67C
12D41E:  LDRB.W          R0, [SP,#0x70+var_44]
12D422:  ADD.W           R5, R9, #0x1C
12D426:  LSLS            R0, R0, #0x1F
12D428:  ITT NE
12D42A:  LDRNE           R0, [SP,#0x70+var_3C]; void *
12D42C:  BLXNE           j__ZdlPv; operator delete(void *)
12D430:  LDR             R0, [SP,#0x70+var_68]
12D432:  VLDR            D16, [SP,#0x70+var_70]
12D436:  STR             R0, [R5,#8]
12D438:  VSTR            D16, [R5]
12D43C:  ADD.W           R0, R8, #0x60 ; '`'
12D440:  ADD             R1, SP, #0x70+var_60
12D442:  BL              sub_12D6B4
12D446:  MOV             R1, R4
12D448:  BL              sub_12D75C
12D44C:  LDRB.W          R0, [SP,#0x70+var_44]
12D450:  LSLS            R0, R0, #0x1F
12D452:  ITT NE
12D454:  LDRNE           R0, [SP,#0x70+var_3C]; void *
12D456:  BLXNE           j__ZdlPv; operator delete(void *)
12D45A:  LDRB.W          R0, [SP,#0x70+var_50]
12D45E:  LSLS            R0, R0, #0x1F
12D460:  ITT NE
12D462:  LDRNE           R0, [SP,#0x70+var_48]; void *
12D464:  BLXNE           j__ZdlPv; operator delete(void *)
12D468:  LDRB.W          R0, [SP,#0x70+var_5C]
12D46C:  LSLS            R0, R0, #0x1F
12D46E:  ITT NE
12D470:  LDRNE           R0, [SP,#0x70+var_54]; void *
12D472:  BLXNE           j__ZdlPv; operator delete(void *)
12D476:  ADD             SP, SP, #0x58 ; 'X'
12D478:  POP.W           {R8,R9,R11}
12D47C:  POP             {R4-R7,PC}
