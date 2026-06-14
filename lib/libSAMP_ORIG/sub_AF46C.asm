; =========================================================
; Game Engine Function: sub_AF46C
; Address            : 0xAF46C - 0xAF52E
; =========================================================

AF46C:  PUSH            {R4,R5,R7,LR}
AF46E:  ADD             R7, SP, #8
AF470:  SUB             SP, SP, #0x48
AF472:  MOV             R3, R2
AF474:  MOV             R2, R0
AF476:  LDR             R0, =(__stack_chk_guard_ptr - 0xAF47C)
AF478:  ADD             R0, PC; __stack_chk_guard_ptr
AF47A:  LDR             R0, [R0]; __stack_chk_guard
AF47C:  LDR             R0, [R0]
AF47E:  STR             R0, [SP,#0x50+var_C]
AF480:  LDRB            R0, [R2]
AF482:  CMP             R0, #0
AF484:  BEQ             loc_AF516
AF486:  MOV             R4, R1
AF488:  B               loc_AF498
AF48A:  CMP             R0, #0x25 ; '%'
AF48C:  IT EQ
AF48E:  ADDEQ           R2, #1
AF490:  LDRB.W          R0, [R2,#1]!
AF494:  CMP             R0, #0
AF496:  BEQ             loc_AF516
AF498:  CMP             R0, #0x25 ; '%'
AF49A:  BNE             loc_AF48A
AF49C:  LDRB            R1, [R2,#1]
AF49E:  CMP             R1, #0x25 ; '%'
AF4A0:  BEQ             loc_AF48A
AF4A2:  ADD             R5, SP, #0x50+s
AF4A4:  MOVS            R1, #0x40 ; '@'
AF4A6:  MOV             R0, R5; s
AF4A8:  BL              sub_886C0
AF4AC:  SUBS            R0, R5, #1
AF4AE:  LDRB.W          R1, [R0,#1]!; nptr
AF4B2:  CMP             R1, #0x20 ; ' '
AF4B4:  BEQ             loc_AF4AE
AF4B6:  BIC.W           R2, R4, #1
AF4BA:  CMP             R2, #8
AF4BC:  BNE             loc_AF4D0
AF4BE:  BLX             atof
AF4C2:  VMOV            D16, R0, R1
AF4C6:  VCVT.S32.F64    S0, D16
AF4CA:  VMOV            R3, S0
AF4CE:  B               loc_AF516
AF4D0:  SUB.W           R2, R1, #0x2D ; '-'
AF4D4:  CLZ.W           R2, R2
AF4D8:  LSRS            R2, R2, #5
AF4DA:  LDRB            R3, [R0,R2]
AF4DC:  SUBS            R3, #0x2B ; '+'
AF4DE:  CLZ.W           R3, R3
AF4E2:  LSRS            R3, R3, #5
AF4E4:  ADD             R2, R3
AF4E6:  LDRB            R4, [R0,R2]
AF4E8:  SUB.W           R3, R4, #0x30 ; '0'
AF4EC:  CMP             R3, #9
AF4EE:  BHI             loc_AF50E
AF4F0:  MOVS            R3, #0
AF4F2:  ADDS            R5, R0, R2
AF4F4:  ADD.W           R3, R3, R3,LSL#2
AF4F8:  ADDS            R2, #1
AF4FA:  LDRB            R5, [R5,#1]
AF4FC:  ADD.W           R3, R4, R3,LSL#1
AF500:  SUBS            R3, #0x30 ; '0'
AF502:  SUB.W           R4, R5, #0x30 ; '0'
AF506:  CMP             R4, #0xA
AF508:  MOV             R4, R5
AF50A:  BCC             loc_AF4F2
AF50C:  B               loc_AF510
AF50E:  MOVS            R3, #0
AF510:  CMP             R1, #0x2D ; '-'
AF512:  IT EQ
AF514:  NEGEQ           R3, R3
AF516:  LDR             R0, [SP,#0x50+var_C]
AF518:  LDR             R1, =(__stack_chk_guard_ptr - 0xAF51E)
AF51A:  ADD             R1, PC; __stack_chk_guard_ptr
AF51C:  LDR             R1, [R1]; __stack_chk_guard
AF51E:  LDR             R1, [R1]
AF520:  CMP             R1, R0
AF522:  ITTT EQ
AF524:  MOVEQ           R0, R3
AF526:  ADDEQ           SP, SP, #0x48 ; 'H'
AF528:  POPEQ           {R4,R5,R7,PC}
AF52A:  BLX             __stack_chk_fail
