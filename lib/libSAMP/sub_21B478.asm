; =========================================================
; Game Engine Function: sub_21B478
; Address            : 0x21B478 - 0x21B572
; =========================================================

21B478:  PUSH            {R4-R7,LR}
21B47A:  ADD             R7, SP, #0xC
21B47C:  PUSH.W          {R11}
21B480:  SUB             SP, SP, #0x10
21B482:  MOV             R4, R0
21B484:  LDR             R0, =(__stack_chk_guard_ptr - 0x21B48A)
21B486:  ADD             R0, PC; __stack_chk_guard_ptr
21B488:  LDR             R0, [R0]; __stack_chk_guard
21B48A:  LDR             R0, [R0]
21B48C:  STR             R0, [SP,#0x20+var_14]
21B48E:  LDRD.W          R0, R1, [R4]
21B492:  CMP             R1, R0
21B494:  BEQ             loc_21B4A0
21B496:  LDRB            R0, [R0]
21B498:  SUBS            R0, #0x3A ; ':'
21B49A:  CMN.W           R0, #0xA
21B49E:  BCS             loc_21B50C
21B4A0:  LDR             R1, =(aDn - 0x21B4A8); "dn" ...
21B4A2:  MOV             R0, R4
21B4A4:  ADD             R1, PC; "dn"
21B4A6:  ADDS            R2, R1, #2
21B4A8:  BL              sub_2155E4
21B4AC:  CBZ             R0, loc_21B4C8
21B4AE:  LDRD.W          R0, R1, [R4]
21B4B2:  CMP             R1, R0
21B4B4:  BEQ             loc_21B4C0
21B4B6:  LDRB            R0, [R0]
21B4B8:  SUBS            R0, #0x3A ; ':'
21B4BA:  CMN.W           R0, #0xA
21B4BE:  BCS             loc_21B52E
21B4C0:  MOV             R0, R4
21B4C2:  BL              sub_21B354
21B4C6:  B               loc_21B534
21B4C8:  LDR             R1, =(aOn_0 - 0x21B4D0); "on" ...
21B4CA:  MOV             R0, R4
21B4CC:  ADD             R1, PC; "on"
21B4CE:  ADDS            R2, R1, #2
21B4D0:  BL              sub_2155E4
21B4D4:  MOV             R0, R4
21B4D6:  MOVS            R1, #0
21B4D8:  BL              sub_21B6D4
21B4DC:  STR             R0, [SP,#0x20+var_18]
21B4DE:  CBZ             R0, loc_21B554
21B4E0:  MOV             R5, R0
21B4E2:  LDRD.W          R0, R1, [R4]
21B4E6:  CMP             R1, R0
21B4E8:  BEQ             loc_21B556
21B4EA:  LDRB            R0, [R0]
21B4EC:  CMP             R0, #0x49 ; 'I'
21B4EE:  BNE             loc_21B556
21B4F0:  MOV             R0, R4
21B4F2:  MOVS            R1, #0
21B4F4:  MOVS            R5, #0
21B4F6:  BL              sub_217130
21B4FA:  STR             R0, [SP,#0x20+var_1C]
21B4FC:  CBZ             R0, loc_21B556
21B4FE:  ADD             R1, SP, #0x20+var_18
21B500:  ADD             R2, SP, #0x20+var_1C
21B502:  MOV             R0, R4
21B504:  BL              sub_2173BC
21B508:  MOV             R5, R0
21B50A:  B               loc_21B556
21B50C:  LDR             R0, [SP,#0x20+var_14]
21B50E:  LDR             R1, =(__stack_chk_guard_ptr - 0x21B514)
21B510:  ADD             R1, PC; __stack_chk_guard_ptr
21B512:  LDR             R1, [R1]; __stack_chk_guard
21B514:  LDR             R1, [R1]
21B516:  CMP             R1, R0
21B518:  ITTTT EQ
21B51A:  MOVEQ           R0, R4
21B51C:  ADDEQ           SP, SP, #0x10
21B51E:  POPEQ.W         {R11}
21B522:  POPEQ.W         {R4-R7,LR}
21B526:  IT EQ
21B528:  BEQ.W           sub_21B3E0
21B52C:  B               loc_21B56E
21B52E:  MOV             R0, R4
21B530:  BL              sub_21B3E0
21B534:  MOV             R6, R0
21B536:  CBZ             R0, loc_21B554
21B538:  ADD.W           R0, R4, #0x198
21B53C:  MOVS            R1, #0xC
21B53E:  BL              sub_216EF0
21B542:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle8DtorNameE - 0x21B54C); `vtable for'`anonymous namespace'::itanium_demangle::DtorName ...
21B544:  MOV             R5, R0
21B546:  LDR             R0, =0x101012B
21B548:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::DtorName
21B54A:  STR             R6, [R5,#8]
21B54C:  ADDS            R1, #8
21B54E:  STRD.W          R1, R0, [R5]
21B552:  B               loc_21B556
21B554:  MOVS            R5, #0
21B556:  LDR             R0, [SP,#0x20+var_14]
21B558:  LDR             R1, =(__stack_chk_guard_ptr - 0x21B55E)
21B55A:  ADD             R1, PC; __stack_chk_guard_ptr
21B55C:  LDR             R1, [R1]; __stack_chk_guard
21B55E:  LDR             R1, [R1]
21B560:  CMP             R1, R0
21B562:  ITTTT EQ
21B564:  MOVEQ           R0, R5
21B566:  ADDEQ           SP, SP, #0x10
21B568:  POPEQ.W         {R11}
21B56C:  POPEQ           {R4-R7,PC}
21B56E:  BLX             __stack_chk_fail
