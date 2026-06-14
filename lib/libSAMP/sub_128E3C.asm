; =========================================================
; Game Engine Function: sub_128E3C
; Address            : 0x128E3C - 0x128EA4
; =========================================================

128E3C:  PUSH            {R4,R5,R7,LR}
128E3E:  ADD             R7, SP, #8
128E40:  LDR             R0, =(off_23494C - 0x128E52)
128E42:  MOV             R5, #unk_2D4178
128E4A:  MOVW            R1, #0x4E1F
128E4E:  ADD             R0, PC; off_23494C
128E50:  MOVS            R2, #2
128E52:  MOVS            R3, #0
128E54:  LDR             R4, [R0]; dword_23DF24
128E56:  LDR             R0, [R4]
128E58:  ADD             R0, R5
128E5A:  SUBS            R0, #0xFA
128E5C:  BL              sub_164250
128E60:  LDR             R0, [R4]
128E62:  MOVW            R1, #0x4E1F
128E66:  MOVS            R2, #2
128E68:  MOVS            R3, #0
128E6A:  ADD             R0, R5
128E6C:  BL              sub_164250
128E70:  LDR             R0, [R4]
128E72:  MOVW            R1, #0x63E7
128E76:  MOVS            R2, #0
128E78:  MOVS            R3, #0
128E7A:  ADD             R0, R5
128E7C:  ADDS            R0, #0x28 ; '('
128E7E:  BL              sub_164250
128E82:  LDR             R0, [R4]
128E84:  MOVS            R1, #0xB3
128E86:  MOVS            R2, #1
128E88:  ADD             R0, R5
128E8A:  STRB.W          R1, [R0,#0x2E]
128E8E:  MOVW            R1, #:lower16:unk_7CE1C
128E92:  LDR             R0, [R4]
128E94:  MOVT            R1, #:upper16:unk_7CE1C
128E98:  ADD             R0, R5
128E9A:  ADDS            R0, #0x14
128E9C:  POP.W           {R4,R5,R7,LR}
128EA0:  B.W             sub_1642C2
