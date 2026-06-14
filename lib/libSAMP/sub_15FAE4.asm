; =========================================================
; Game Engine Function: sub_15FAE4
; Address            : 0x15FAE4 - 0x15FBB6
; =========================================================

15FAE4:  PUSH            {R4-R7,LR}
15FAE6:  ADD             R7, SP, #0xC
15FAE8:  PUSH.W          {R8-R11}
15FAEC:  SUB             SP, SP, #4
15FAEE:  LDR             R4, [R0,#4]
15FAF0:  CMP             R4, #0
15FAF2:  BEQ             loc_15FBAA
15FAF4:  LDR.W           R9, [R1]
15FAF8:  MOV             R6, R0
15FAFA:  MOVW            R0, #0xE995
15FAFE:  MOVW            R2, #0xA654
15FB02:  MOVT            R0, #0x5BD1
15FB06:  MOVT            R2, #0x6F47
15FB0A:  MUL.W           R1, R9, R0
15FB0E:  EOR.W           R1, R1, R1,LSR#24
15FB12:  MULS            R1, R0
15FB14:  EORS            R1, R2
15FB16:  EOR.W           R1, R1, R1,LSR#13
15FB1A:  MULS            R0, R1
15FB1C:  MOV.W           R1, #0x33333333
15FB20:  EOR.W           R5, R0, R0,LSR#15
15FB24:  MOV.W           R0, #0x55555555
15FB28:  AND.W           R0, R0, R4,LSR#1
15FB2C:  SUBS            R0, R4, R0
15FB2E:  AND.W           R1, R1, R0,LSR#2
15FB32:  BIC.W           R0, R0, #0xCCCCCCCC
15FB36:  ADD             R0, R1
15FB38:  MOV.W           R1, #0x1010101
15FB3C:  ADD.W           R0, R0, R0,LSR#4
15FB40:  BIC.W           R0, R0, #0xF0F0F0F0
15FB44:  MULS            R0, R1
15FB46:  MOV.W           R10, R0,LSR#24
15FB4A:  CMP.W           R10, #1
15FB4E:  BHI             loc_15FB58
15FB50:  SUBS            R0, R4, #1
15FB52:  AND.W           R8, R5, R0
15FB56:  B               loc_15FB6A
15FB58:  CMP             R5, R4
15FB5A:  BCS             loc_15FB60
15FB5C:  MOV             R8, R5
15FB5E:  B               loc_15FB6A
15FB60:  MOV             R0, R5
15FB62:  MOV             R1, R4
15FB64:  BLX             sub_221798
15FB68:  MOV             R8, R1
15FB6A:  LDR             R0, [R6]
15FB6C:  LDR.W           R0, [R0,R8,LSL#2]
15FB70:  CBZ             R0, loc_15FBAA
15FB72:  LDR             R6, [R0]
15FB74:  CBZ             R6, loc_15FBAA
15FB76:  SUB.W           R11, R4, #1
15FB7A:  LDR             R0, [R6,#4]
15FB7C:  CMP             R5, R0
15FB7E:  BNE             loc_15FB88
15FB80:  LDR             R0, [R6,#8]
15FB82:  CMP             R0, R9
15FB84:  BNE             loc_15FBA4
15FB86:  B               loc_15FBAC
15FB88:  CMP.W           R10, #1
15FB8C:  BHI             loc_15FB94
15FB8E:  AND.W           R0, R0, R11
15FB92:  B               loc_15FBA0
15FB94:  CMP             R0, R4
15FB96:  BCC             loc_15FBA0
15FB98:  MOV             R1, R4
15FB9A:  BLX             sub_221798
15FB9E:  MOV             R0, R1
15FBA0:  CMP             R0, R8
15FBA2:  BNE             loc_15FBAA
15FBA4:  LDR             R6, [R6]
15FBA6:  CMP             R6, #0
15FBA8:  BNE             loc_15FB7A
15FBAA:  MOVS            R6, #0
15FBAC:  MOV             R0, R6
15FBAE:  ADD             SP, SP, #4
15FBB0:  POP.W           {R8-R11}
15FBB4:  POP             {R4-R7,PC}
