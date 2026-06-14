; =========================================================
; Game Engine Function: sub_21A400
; Address            : 0x21A400 - 0x21A4B2
; =========================================================

21A400:  PUSH            {R4-R7,LR}
21A402:  ADD             R7, SP, #0xC
21A404:  PUSH.W          {R11}
21A408:  SUB             SP, SP, #0x30
21A40A:  MOV             R4, R1
21A40C:  LDR             R1, =(__stack_chk_guard_ptr - 0x21A412)
21A40E:  ADD             R1, PC; __stack_chk_guard_ptr
21A410:  LDR             R1, [R1]; __stack_chk_guard
21A412:  LDR             R1, [R1]
21A414:  STR             R1, [SP,#0x40+var_14]
21A416:  LDRD.W          R2, R0, [R0,#8]
21A41A:  SUBS            R0, R0, R2
21A41C:  ADDS            R0, #1
21A41E:  CMP             R0, #9
21A420:  BCC             loc_21A498
21A422:  ADD             R1, SP, #0x40+var_34
21A424:  MOVS            R0, #0
21A426:  CMP             R0, #8
21A428:  BEQ             loc_21A45C
21A42A:  LDRB            R3, [R2,R0]
21A42C:  SUB.W           R5, R3, #0x3A ; ':'
21A430:  CMN.W           R5, #0xA
21A434:  IT CC
21A436:  ADDCC           R3, #9
21A438:  ADDS            R5, R2, R0
21A43A:  LDRB            R5, [R5,#1]
21A43C:  SUB.W           R6, R5, #0x3A ; ':'
21A440:  CMN.W           R6, #0xA
21A444:  MOV             R6, #0xFFFFFFD0
21A448:  IT CC
21A44A:  MOVCC           R6, #0xFFFFFFA9
21A44E:  ADD             R5, R6
21A450:  ADD.W           R3, R5, R3,LSL#4
21A454:  STRB.W          R3, [R1],#1
21A458:  ADDS            R0, #2
21A45A:  B               loc_21A426
21A45C:  ADD             R0, SP, #0x40+var_34
21A45E:  BL              sub_20F088
21A462:  ADD             R5, SP, #0x40+var_30
21A464:  VMOV.I32        Q8, #0
21A468:  VLDR            S0, [SP,#0x40+var_34]
21A46C:  MOVS            R1, #0
21A46E:  MOV             R0, R5
21A470:  STR             R1, [SP,#0x40+var_1C]
21A472:  VST1.64         {D16-D17}, [R0]!
21A476:  MOVS            R2, #0x18
21A478:  VCVT.F64.F32    D16, S0
21A47C:  STR             R1, [R0]
21A47E:  MOV             R0, R5
21A480:  MOVS            R1, #0x18
21A482:  VSTR            D16, [SP,#0x40+var_40]
21A486:  LDR             R3, =(aAf - 0x21A48C); "%af" ...
21A488:  ADD             R3, PC; "%af"
21A48A:  BL              sub_21A4C4
21A48E:  ADDS            R2, R5, R0
21A490:  MOV             R0, R4
21A492:  MOV             R1, R5
21A494:  BL              sub_216F98
21A498:  LDR             R0, [SP,#0x40+var_14]
21A49A:  LDR             R1, =(__stack_chk_guard_ptr - 0x21A4A0)
21A49C:  ADD             R1, PC; __stack_chk_guard_ptr
21A49E:  LDR             R1, [R1]; __stack_chk_guard
21A4A0:  LDR             R1, [R1]
21A4A2:  CMP             R1, R0
21A4A4:  ITTT EQ
21A4A6:  ADDEQ           SP, SP, #0x30 ; '0'
21A4A8:  POPEQ.W         {R11}
21A4AC:  POPEQ           {R4-R7,PC}
21A4AE:  BLX             __stack_chk_fail
