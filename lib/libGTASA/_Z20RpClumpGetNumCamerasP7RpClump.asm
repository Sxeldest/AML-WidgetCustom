; =========================================================
; Game Engine Function: _Z20RpClumpGetNumCamerasP7RpClump
; Address            : 0x213E7C - 0x213EA0
; =========================================================

213E7C:  LDR             R1, =(dword_6BD590 - 0x213E82)
213E7E:  ADD             R1, PC; dword_6BD590
213E80:  LDR             R2, [R1]
213E82:  ADD.W           R1, R0, #0x18
213E86:  MOVS            R0, #0
213E88:  RSB.W           R12, R2, #0
213E8C:  MOV             R3, R1
213E8E:  LDR             R3, [R3]
213E90:  CMP             R3, R1
213E92:  ITTT NE
213E94:  ADDNE.W         R2, R3, R12
213E98:  ADDNE           R0, #1
213E9A:  CMPNE           R2, #4
213E9C:  BNE             loc_213E8E
213E9E:  BX              LR
