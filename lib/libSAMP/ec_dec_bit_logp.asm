; =========================================================
; Game Engine Function: ec_dec_bit_logp
; Address            : 0x193CD4 - 0x193D54
; =========================================================

193CD4:  PUSH            {R4-R7,LR}
193CD6:  ADD             R7, SP, #0xC
193CD8:  PUSH.W          {R8,R9,R11}
193CDC:  LDRD.W          R4, R2, [R0,#0x1C]
193CE0:  MOV.W           R12, #0
193CE4:  MOV             LR, #0x800001
193CEC:  LSR.W           R3, R4, R1
193CF0:  CMP             R2, R3
193CF2:  IT CC
193CF4:  MOVCC.W         R12, #1
193CF8:  CMP             R2, R3
193CFA:  ITTT CS
193CFC:  SUBCS           R2, R2, R3
193CFE:  STRCS           R2, [R0,#0x20]
193D00:  SUBCS           R3, R4, R3
193D02:  CMP             R3, LR
193D04:  STR             R3, [R0,#0x1C]
193D06:  BCS             loc_193D4C
193D08:  LDR.W           R8, [R0,#4]
193D0C:  LDRD.W          R4, R9, [R0,#0x14]
193D10:  LDR             R1, [R0,#0x28]
193D12:  ADDS            R4, #8
193D14:  LSLS            R3, R3, #8
193D16:  CMP             R9, R8
193D18:  STR             R4, [R0,#0x14]
193D1A:  STR             R3, [R0,#0x1C]
193D1C:  BCS             loc_193D2E
193D1E:  LDR             R6, [R0]
193D20:  ADD.W           R5, R9, #1
193D24:  STR             R5, [R0,#0x18]
193D26:  LDRB.W          R6, [R6,R9]
193D2A:  MOV             R9, R5
193D2C:  B               loc_193D30
193D2E:  MOVS            R6, #0
193D30:  ORR.W           R1, R6, R1,LSL#8
193D34:  STR             R6, [R0,#0x28]
193D36:  ADDS            R4, #8
193D38:  CMP             R3, LR
193D3A:  UBFX.W          R1, R1, #1, #8
193D3E:  BFI.W           R1, R2, #8, #0x17
193D42:  EOR.W           R2, R1, #0xFF
193D46:  MOV             R1, R6
193D48:  STR             R2, [R0,#0x20]
193D4A:  BCC             loc_193D14
193D4C:  MOV             R0, R12
193D4E:  POP.W           {R8,R9,R11}
193D52:  POP             {R4-R7,PC}
