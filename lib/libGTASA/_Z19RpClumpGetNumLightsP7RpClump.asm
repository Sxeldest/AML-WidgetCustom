; =========================================================
; Game Engine Function: _Z19RpClumpGetNumLightsP7RpClump
; Address            : 0x213E14 - 0x213E38
; =========================================================

213E14:  LDR             R1, =(dword_6BD594 - 0x213E1A)
213E16:  ADD             R1, PC; dword_6BD594
213E18:  LDR             R2, [R1]
213E1A:  ADD.W           R1, R0, #0x10
213E1E:  MOVS            R0, #0
213E20:  RSB.W           R12, R2, #0
213E24:  MOV             R3, R1
213E26:  LDR             R3, [R3]
213E28:  CMP             R3, R1
213E2A:  ITTT NE
213E2C:  ADDNE.W         R2, R3, R12
213E30:  ADDNE           R0, #1
213E32:  CMPNE           R2, #4
213E34:  BNE             loc_213E26
213E36:  BX              LR
