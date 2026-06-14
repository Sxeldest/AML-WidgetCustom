; =========================================================
; Game Engine Function: sub_108E64
; Address            : 0x108E64 - 0x108E9A
; =========================================================

108E64:  MOVW            R2, #0x4E20
108E68:  CMP             R0, R2
108E6A:  BLS             loc_108E70
108E6C:  MOVS            R0, #0x2C ; ','
108E6E:  B               loc_108E88
108E70:  LDR             R2, =(off_23494C - 0x108E7E)
108E72:  MOV             R3, #0x6796D4
108E7A:  ADD             R2, PC; off_23494C
108E7C:  LDR             R2, [R2]; dword_23DF24
108E7E:  LDR             R2, [R2]
108E80:  LDR             R2, [R2,R3]
108E82:  LDR.W           R0, [R2,R0,LSL#2]
108E86:  ADDS            R0, #0x2C ; ','
108E88:  LDR             R0, [R0]
108E8A:  CBZ             R0, locret_108E98
108E8C:  LDR             R2, [R0,#0x18]
108E8E:  STR             R2, [R1]
108E90:  LDR             R2, [R0,#0x1C]
108E92:  STR             R2, [R1,#4]
108E94:  LDR             R0, [R0,#0x20]
108E96:  STR             R0, [R1,#8]
108E98:  BX              LR
