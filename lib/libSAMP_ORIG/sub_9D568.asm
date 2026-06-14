; =========================================================
; Game Engine Function: sub_9D568
; Address            : 0x9D568 - 0x9D616
; =========================================================

9D568:  PUSH            {R4,R5,R7,LR}
9D56A:  ADD             R7, SP, #8
9D56C:  VPUSH           {D8}
9D570:  SUB             SP, SP, #0x20
9D572:  MOV             R4, R0
9D574:  LDR             R0, =(__stack_chk_guard_ptr - 0x9D57E)
9D576:  CMP.W           R3, #0x1000000
9D57A:  ADD             R0, PC; __stack_chk_guard_ptr
9D57C:  LDR             R0, [R0]; __stack_chk_guard
9D57E:  LDR             R0, [R0]
9D580:  STR             R0, [SP,#0x30+var_14]
9D582:  BCC             loc_9D5FC
9D584:  MOV             R5, R3
9D586:  LDRB.W          R3, [R4,#0x24]
9D58A:  VMOV.F32        S2, #0.5
9D58E:  VLDR            S0, [R7,#arg_0]
9D592:  VLDR            S6, [R1,#4]
9D596:  LSLS            R3, R3, #0x1F
9D598:  VLDR            S4, [R1]
9D59C:  VMOV            R3, S0
9D5A0:  LDR             R0, [R7,#arg_4]
9D5A2:  ADD             R1, SP, #0x30+var_1C
9D5A4:  VLDR            S16, [R7,#arg_8]
9D5A8:  VADD.F32        S6, S6, S2
9D5AC:  VADD.F32        S2, S4, S2
9D5B0:  ITE EQ
9D5B2:  VLDREQ          S4, =-0.49
9D5B6:  VMOVNE.F32      S4, #-0.5
9D5BA:  VLDR            S0, [R2]
9D5BE:  VADD.F32        S0, S0, S4
9D5C2:  VSTR            S6, [SP,#0x30+var_18]
9D5C6:  VSTR            S2, [SP,#0x30+var_1C]
9D5CA:  VLDR            S2, [R2,#4]
9D5CE:  ADD             R2, SP, #0x30+var_24
9D5D0:  STR             R0, [SP,#0x30+var_30]
9D5D2:  MOV             R0, R4
9D5D4:  VADD.F32        S2, S2, S4
9D5D8:  VSTR            S0, [SP,#0x30+var_24]
9D5DC:  VSTR            S2, [SP,#0x30+var_20]
9D5E0:  BL              sub_9D108
9D5E4:  LDR             R2, [R4,#0x58]; int
9D5E6:  MOVS            R0, #1
9D5E8:  LDR             R1, [R4,#0x60]; int
9D5EA:  MOV             R3, R5; int
9D5EC:  STR             R0, [SP,#0x30+var_30]; int
9D5EE:  MOV             R0, R4; int
9D5F0:  VSTR            S16, [SP,#0x30+var_2C]
9D5F4:  BL              sub_9C2AC
9D5F8:  MOVS            R0, #0
9D5FA:  STR             R0, [R4,#0x58]
9D5FC:  LDR             R0, [SP,#0x30+var_14]
9D5FE:  LDR             R1, =(__stack_chk_guard_ptr - 0x9D604)
9D600:  ADD             R1, PC; __stack_chk_guard_ptr
9D602:  LDR             R1, [R1]; __stack_chk_guard
9D604:  LDR             R1, [R1]
9D606:  CMP             R1, R0
9D608:  ITTT EQ
9D60A:  ADDEQ           SP, SP, #0x20 ; ' '
9D60C:  VPOPEQ          {D8}
9D610:  POPEQ           {R4,R5,R7,PC}
9D612:  BLX             __stack_chk_fail
