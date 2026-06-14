; =========================================================
; Game Engine Function: sub_A33D0
; Address            : 0xA33D0 - 0xA3416
; =========================================================

A33D0:  PUSH            {R4,R6,R7,LR}
A33D2:  ADD             R7, SP, #8
A33D4:  LDR             R0, =(word_1ACFF8 - 0xA33DA)
A33D6:  ADD             R0, PC; word_1ACFF8
A33D8:  LDRH            R1, [R0]
A33DA:  CBNZ            R1, loc_A3410
A33DC:  LDR             R1, =(unk_531F8 - 0xA33EA)
A33DE:  MOV             R2, #0xFFFFF0CC
A33E6:  ADD             R1, PC; unk_531F8
A33E8:  VLD1.64         {D16-D17}, [R1]
A33EC:  MOV.W           R1, #0x4E00
A33F0:  VST1.64         {D16-D17}, [R0]!
A33F4:  LDR             R4, =(unk_538AE - 0xA33FA)
A33F6:  ADD             R4, PC; unk_538AE
A33F8:  ADDS            R3, R4, R2
A33FA:  ADDS            R2, #2
A33FC:  LDRH.W          R3, [R3,#0xF34]
A3400:  ADD             R1, R3
A3402:  STRH.W          R1, [R0],#4
A3406:  STRH.W          R1, [R0,#-2]
A340A:  BNE             loc_A33F8
A340C:  MOVS            R1, #0
A340E:  STRH            R1, [R0]
A3410:  LDR             R0, =(word_1ACFF8 - 0xA3416)
A3412:  ADD             R0, PC; word_1ACFF8
A3414:  POP             {R4,R6,R7,PC}
