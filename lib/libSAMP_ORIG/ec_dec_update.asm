; =========================================================
; Game Engine Function: ec_dec_update
; Address            : 0xB5A2A - 0xB5AB0
; =========================================================

B5A2A:  PUSH            {R4-R7,LR}
B5A2C:  ADD             R7, SP, #0xC
B5A2E:  PUSH.W          {R8}
B5A32:  SUBS            R5, R3, R2
B5A34:  LDRD.W          R4, R6, [R0,#0x20]
B5A38:  MOVW            R12, #1
B5A3C:  CMP             R1, #0
B5A3E:  MLS.W           R3, R6, R5, R4
B5A42:  MOVT            R12, #0x80
B5A46:  STR             R3, [R0,#0x20]
B5A48:  BEQ             loc_B5A54
B5A4A:  SUBS            R1, R2, R1
B5A4C:  ADD.W           R2, R0, #0x1C
B5A50:  MULS            R1, R6
B5A52:  B               loc_B5A60
B5A54:  MUL.W           R1, R6, R5
B5A58:  MOV             R2, R0
B5A5A:  LDR.W           R6, [R2,#0x1C]!
B5A5E:  SUBS            R1, R6, R1
B5A60:  CMP             R1, R12
B5A62:  STR             R1, [R2]
B5A64:  BCS             loc_B5AAA
B5A66:  LDR.W           LR, [R0,#4]
B5A6A:  LDRD.W          R2, R8, [R0,#0x14]
B5A6E:  LDR             R5, [R0,#0x28]
B5A70:  ADDS            R2, #8
B5A72:  LSLS            R1, R1, #8
B5A74:  CMP             R8, LR
B5A76:  STR             R2, [R0,#0x14]
B5A78:  STR             R1, [R0,#0x1C]
B5A7A:  BCS             loc_B5A8C
B5A7C:  LDR             R6, [R0]
B5A7E:  ADD.W           R4, R8, #1
B5A82:  STR             R4, [R0,#0x18]
B5A84:  LDRB.W          R6, [R6,R8]
B5A88:  MOV             R8, R4
B5A8A:  B               loc_B5A8E
B5A8C:  MOVS            R6, #0
B5A8E:  ORR.W           R4, R6, R5,LSL#8
B5A92:  STR             R6, [R0,#0x28]
B5A94:  ADDS            R2, #8
B5A96:  CMP             R1, R12
B5A98:  UBFX.W          R4, R4, #1, #8
B5A9C:  MOV             R5, R6
B5A9E:  BFI.W           R4, R3, #8, #0x17
B5AA2:  EOR.W           R3, R4, #0xFF
B5AA6:  STR             R3, [R0,#0x20]
B5AA8:  BCC             loc_B5A72
B5AAA:  POP.W           {R8}
B5AAE:  POP             {R4-R7,PC}
