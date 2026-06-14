; =========================================================
; Game Engine Function: png_get_pHYs
; Address            : 0x1F3D56 - 0x1F3D9A
; =========================================================

1F3D56:  MOV             R12, R0
1F3D58:  CMP.W           R12, #0
1F3D5C:  MOV.W           R0, #0
1F3D60:  IT NE
1F3D62:  CMPNE           R1, #0
1F3D64:  BEQ             locret_1F3D98
1F3D66:  LDRB            R0, [R1,#8]
1F3D68:  LSLS            R0, R0, #0x18
1F3D6A:  ITT PL
1F3D6C:  MOVPL           R0, #0
1F3D6E:  BXPL            LR
1F3D70:  CBZ             R2, loc_1F3D7C
1F3D72:  LDR.W           R0, [R1,#0xC0]
1F3D76:  STR             R0, [R2]
1F3D78:  MOVS            R0, #0x80
1F3D7A:  B               loc_1F3D7E
1F3D7C:  MOVS            R0, #0
1F3D7E:  CMP             R3, #0
1F3D80:  LDR             R2, [SP,#arg_0]
1F3D82:  ITTT NE
1F3D84:  LDRNE.W         R0, [R1,#0xC4]
1F3D88:  STRNE           R0, [R3]
1F3D8A:  MOVNE           R0, #0x80
1F3D8C:  CMP             R2, #0
1F3D8E:  ITTT NE
1F3D90:  LDRBNE.W        R0, [R1,#0xC8]
1F3D94:  STRNE           R0, [R2]
1F3D96:  MOVNE           R0, #0x80
1F3D98:  BX              LR
