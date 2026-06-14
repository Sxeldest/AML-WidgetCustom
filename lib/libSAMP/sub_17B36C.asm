; =========================================================
; Game Engine Function: sub_17B36C
; Address            : 0x17B36C - 0x17B4C4
; =========================================================

17B36C:  PUSH            {R4-R7,LR}
17B36E:  ADD             R7, SP, #0xC
17B370:  PUSH.W          {R8,R9,R11}
17B374:  SUB             SP, SP, #0x20
17B376:  MOV             R5, R0
17B378:  LDR             R0, =(off_234E80 - 0x17B386)
17B37A:  MOVW            R3, #0x1550
17B37E:  VLDR            S6, [R1]
17B382:  ADD             R0, PC; off_234E80
17B384:  VLDR            S8, [R1,#4]
17B388:  MOVW            R2, #0x19AC
17B38C:  ADD             R6, SP, #0x38+var_28
17B38E:  LDR             R0, [R0]; dword_381B58
17B390:  MOV.W           R9, #0
17B394:  LDR             R0, [R0]
17B396:  ADDS            R4, R0, R3
17B398:  LDR.W           R8, [R0,R2]
17B39C:  MOVS            R2, #0
17B39E:  VLDR            S0, [R4]
17B3A2:  VLDR            S2, [R4,#4]
17B3A6:  VLDR            S4, [R4,#0x378]
17B3AA:  VADD.F32        S0, S0, S0
17B3AE:  VADD.F32        S2, S2, S2
17B3B2:  LDRD.W          R0, R1, [R1]
17B3B6:  VADD.F32        S8, S4, S8
17B3BA:  STRD.W          R0, R1, [SP,#0x38+var_28]
17B3BE:  VADD.F32        S4, S4, S6
17B3C2:  MOV             R0, R6
17B3C4:  MOV             R1, R5
17B3C6:  VADD.F32        S2, S8, S2
17B3CA:  VADD.F32        S0, S4, S0
17B3CE:  VSTR            S2, [SP,#0x38+var_1C]
17B3D2:  VSTR            S0, [SP,#0x38+var_20]
17B3D6:  BL              sub_167164
17B3DA:  SUB.W           R2, R7, #-var_29
17B3DE:  SUB.W           R3, R7, #-var_2A
17B3E2:  MOV             R0, R6
17B3E4:  MOV             R1, R5
17B3E6:  STR.W           R9, [SP,#0x38+var_38]
17B3EA:  BL              sub_17AD64
17B3EE:  MOV             R5, R0
17B3F0:  LDRB.W          R0, [R7,#var_29]
17B3F4:  MOVS            R1, #0x16
17B3F6:  LDRB.W          R2, [R7,#var_2A]
17B3FA:  CMP             R0, #0
17B3FC:  IT EQ
17B3FE:  MOVEQ           R1, #0x15
17B400:  MOV             R0, R1
17B402:  IT NE
17B404:  MOVNE           R0, #0x17
17B406:  CMP             R2, #0
17B408:  IT EQ
17B40A:  MOVEQ           R0, R1
17B40C:  MOV.W           R1, #0x3F800000
17B410:  BL              sub_16586C
17B414:  VLDR            S0, [SP,#0x38+var_28]
17B418:  VMOV.F32        S4, #0.5
17B41C:  VLDR            S6, [SP,#0x38+var_20]
17B420:  MOV             R3, R0; int
17B422:  VLDR            S2, [SP,#0x38+var_24]
17B426:  VLDR            S8, [SP,#0x38+var_1C]
17B42A:  VADD.F32        S6, S0, S6
17B42E:  LDRB.W          R0, [R7,#var_2A]
17B432:  VADD.F32        S8, S2, S8
17B436:  LDRB.W          R1, [R7,#var_29]
17B43A:  ORRS            R0, R1
17B43C:  VMUL.F32        S6, S6, S4
17B440:  VMUL.F32        S8, S8, S4
17B444:  VSTR            S6, [SP,#0x38+var_34]
17B448:  VSTR            S8, [SP,#0x38+var_30]
17B44C:  BEQ             loc_17B474
17B44E:  VMOV.F32        S0, #1.0
17B452:  VLDR            S2, [R4,#0x378]
17B456:  LDR.W           R0, [R8,#0x27C]; int
17B45A:  MOVS            R1, #0xC
17B45C:  STR             R1, [SP,#0x38+var_38]; int
17B45E:  ADD             R1, SP, #0x38+var_34; int
17B460:  VMLA.F32        S0, S2, S4
17B464:  VMOV            R2, S0; int
17B468:  BL              sub_17457C
17B46C:  VLDR            S0, [SP,#0x38+var_28]
17B470:  VLDR            S2, [SP,#0x38+var_24]
17B474:  VLDR            S4, [R4]
17B478:  MOVS            R2, #1
17B47A:  VLDR            S6, [R4,#4]
17B47E:  VADD.F32        S0, S0, S4
17B482:  LDRB.W          R3, [R8,#0x7D]
17B486:  VADD.F32        S2, S2, S6
17B48A:  CMP             R3, #0
17B48C:  MOV.W           R3, #0x3F800000
17B490:  IT EQ
17B492:  MOVEQ           R2, #3
17B494:  VMOV            R0, S0
17B498:  VMOV            R1, S2
17B49C:  BL              sub_166320
17B4A0:  BL              sub_16EB58
17B4A4:  CBZ             R0, loc_17B4BA
17B4A6:  MOVS            R1, #0
17B4A8:  MOVS            R0, #0
17B4AA:  MOVT            R1, #0xBF80
17B4AE:  BL              sub_16EB10
17B4B2:  CBZ             R0, loc_17B4BA
17B4B4:  MOV             R0, R8
17B4B6:  BL              sub_167F9C
17B4BA:  MOV             R0, R5
17B4BC:  ADD             SP, SP, #0x20 ; ' '
17B4BE:  POP.W           {R8,R9,R11}
17B4C2:  POP             {R4-R7,PC}
