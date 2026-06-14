; =========================================================
; Game Engine Function: ec_dec_bit_logp
; Address            : 0xB5AB0 - 0xB5B30
; =========================================================

B5AB0:  PUSH            {R4-R7,LR}
B5AB2:  ADD             R7, SP, #0xC
B5AB4:  PUSH.W          {R8,R9,R11}
B5AB8:  LDRD.W          R4, R2, [R0,#0x1C]
B5ABC:  MOV.W           R12, #0
B5AC0:  MOV             LR, #0x800001
B5AC8:  LSR.W           R3, R4, R1
B5ACC:  CMP             R2, R3
B5ACE:  IT CC
B5AD0:  MOVCC.W         R12, #1
B5AD4:  CMP             R2, R3
B5AD6:  ITTT CS
B5AD8:  SUBCS           R2, R2, R3
B5ADA:  STRCS           R2, [R0,#0x20]
B5ADC:  SUBCS           R3, R4, R3
B5ADE:  CMP             R3, LR
B5AE0:  STR             R3, [R0,#0x1C]
B5AE2:  BCS             loc_B5B28
B5AE4:  LDR.W           R8, [R0,#4]
B5AE8:  LDRD.W          R4, R9, [R0,#0x14]
B5AEC:  LDR             R1, [R0,#0x28]
B5AEE:  ADDS            R4, #8
B5AF0:  LSLS            R3, R3, #8
B5AF2:  CMP             R9, R8
B5AF4:  STR             R4, [R0,#0x14]
B5AF6:  STR             R3, [R0,#0x1C]
B5AF8:  BCS             loc_B5B0A
B5AFA:  LDR             R6, [R0]
B5AFC:  ADD.W           R5, R9, #1
B5B00:  STR             R5, [R0,#0x18]
B5B02:  LDRB.W          R6, [R6,R9]
B5B06:  MOV             R9, R5
B5B08:  B               loc_B5B0C
B5B0A:  MOVS            R6, #0
B5B0C:  ORR.W           R1, R6, R1,LSL#8
B5B10:  STR             R6, [R0,#0x28]
B5B12:  ADDS            R4, #8
B5B14:  CMP             R3, LR
B5B16:  UBFX.W          R1, R1, #1, #8
B5B1A:  BFI.W           R1, R2, #8, #0x17
B5B1E:  EOR.W           R2, R1, #0xFF
B5B22:  MOV             R1, R6
B5B24:  STR             R2, [R0,#0x20]
B5B26:  BCC             loc_B5AF0
B5B28:  MOV             R0, R12
B5B2A:  POP.W           {R8,R9,R11}
B5B2E:  POP             {R4-R7,PC}
