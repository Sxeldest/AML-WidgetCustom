; =========================================================
; Game Engine Function: sub_104B1C
; Address            : 0x104B1C - 0x104BA0
; =========================================================

104B1C:  PUSH            {R4,R6,R7,LR}
104B1E:  ADD             R7, SP, #8
104B20:  LDR             R4, =(off_234AD4 - 0x104B32)
104B22:  UBFX.W          R12, R3, #5, #1
104B26:  LDRB.W          R0, [R0,#0x60]
104B2A:  CMP.W           R12, #0
104B2E:  ADD             R4, PC; off_234AD4
104B30:  LDR             R4, [R4]; unk_25B22C
104B32:  RSB.W           R0, R0, R0,LSL#3
104B36:  STRH.W          R1, [R4,R0,LSL#2]
104B3A:  ADD.W           R0, R4, R0,LSL#2
104B3E:  UXTB            R1, R3
104B40:  UBFX.W          R4, R1, #4, #1
104B44:  STRB            R4, [R0,#8]
104B46:  UBFX.W          R4, R1, #3, #1
104B4A:  STRB            R4, [R0,#7]
104B4C:  UBFX.W          R4, R1, #2, #1
104B50:  STRB            R4, [R0,#6]
104B52:  UBFX.W          R4, R1, #1, #1
104B56:  STRB            R4, [R0,#5]
104B58:  AND.W           R4, R3, #1
104B5C:  STRB.W          R12, [R0,#9]
104B60:  STRB            R4, [R0,#4]
104B62:  STRH            R2, [R0,#2]
104B64:  ITT EQ
104B66:  MOVEQ           R2, #0
104B68:  STRBEQ          R2, [R0,#0x1B]
104B6A:  UBFX.W          R2, R3, #0xE, #1
104B6E:  STRB            R2, [R0,#0x12]
104B70:  UBFX.W          R2, R3, #0xD, #1
104B74:  STRB            R2, [R0,#0x11]
104B76:  UBFX.W          R2, R3, #0xC, #1
104B7A:  STRB            R2, [R0,#0x10]
104B7C:  UBFX.W          R2, R3, #0xB, #1
104B80:  STRB            R2, [R0,#0xF]
104B82:  UBFX.W          R2, R3, #0xA, #1
104B86:  STRB            R2, [R0,#0xE]
104B88:  UBFX.W          R2, R3, #9, #1
104B8C:  STRB            R2, [R0,#0xD]
104B8E:  UBFX.W          R2, R3, #8, #1
104B92:  STRB            R2, [R0,#0xC]
104B94:  LSRS            R2, R1, #7
104B96:  UBFX.W          R1, R1, #6, #1
104B9A:  STRB            R2, [R0,#0xB]
104B9C:  STRB            R1, [R0,#0xA]
104B9E:  POP             {R4,R6,R7,PC}
