; =========================================================
; Game Engine Function: ec_dec_icdf
; Address            : 0xB5B30 - 0xB5BB4
; =========================================================

B5B30:  PUSH            {R4-R7,LR}
B5B32:  ADD             R7, SP, #0xC
B5B34:  PUSH.W          {R8,R9,R11}
B5B38:  LDRD.W          R5, R3, [R0,#0x1C]
B5B3C:  MOVS            R6, #0
B5B3E:  LSR.W           R2, R5, R2
B5B42:  MOV             R4, R5
B5B44:  LDRB            R5, [R1,R6]
B5B46:  ADDS            R6, #1
B5B48:  MULS            R5, R2
B5B4A:  CMP             R3, R5
B5B4C:  BCC             loc_B5B42
B5B4E:  SUBS            R2, R4, R5
B5B50:  SUBS            R3, R3, R5
B5B52:  SUB.W           R12, R6, #1
B5B56:  CMP.W           R2, #0x800000
B5B5A:  STRD.W          R2, R3, [R0,#0x1C]
B5B5E:  BHI             loc_B5BAC
B5B60:  LDR.W           R8, [R0,#4]
B5B64:  MOVW            LR, #1
B5B68:  LDRD.W          R4, R9, [R0,#0x14]
B5B6C:  MOVT            LR, #0x80
B5B70:  LDR             R1, [R0,#0x28]
B5B72:  ADDS            R4, #8
B5B74:  LSLS            R2, R2, #8
B5B76:  CMP             R9, R8
B5B78:  STR             R4, [R0,#0x14]
B5B7A:  STR             R2, [R0,#0x1C]
B5B7C:  BCS             loc_B5B8E
B5B7E:  LDR             R6, [R0]
B5B80:  ADD.W           R5, R9, #1
B5B84:  STR             R5, [R0,#0x18]
B5B86:  LDRB.W          R6, [R6,R9]
B5B8A:  MOV             R9, R5
B5B8C:  B               loc_B5B90
B5B8E:  MOVS            R6, #0
B5B90:  ORR.W           R1, R6, R1,LSL#8
B5B94:  STR             R6, [R0,#0x28]
B5B96:  ADDS            R4, #8
B5B98:  CMP             R2, LR
B5B9A:  UBFX.W          R1, R1, #1, #8
B5B9E:  BFI.W           R1, R3, #8, #0x17
B5BA2:  EOR.W           R3, R1, #0xFF
B5BA6:  MOV             R1, R6
B5BA8:  STR             R3, [R0,#0x20]
B5BAA:  BCC             loc_B5B74
B5BAC:  MOV             R0, R12
B5BAE:  POP.W           {R8,R9,R11}
B5BB2:  POP             {R4-R7,PC}
