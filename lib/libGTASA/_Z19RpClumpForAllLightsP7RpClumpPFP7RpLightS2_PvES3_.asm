; =========================================================
; Game Engine Function: _Z19RpClumpForAllLightsP7RpClumpPFP7RpLightS2_PvES3_
; Address            : 0x213E3C - 0x213E76
; =========================================================

213E3C:  PUSH            {R4-R7,LR}
213E3E:  ADD             R7, SP, #0xC
213E40:  PUSH.W          {R8-R10}
213E44:  MOV             R8, R0
213E46:  LDR.W           R9, =(dword_6BD594 - 0x213E56)
213E4A:  MOV             R5, R8
213E4C:  MOV             R10, R2
213E4E:  LDR.W           R0, [R5,#0x10]!
213E52:  ADD             R9, PC; dword_6BD594
213E54:  MOV             R6, R1
213E56:  CMP             R0, R5
213E58:  BEQ             loc_213E6E
213E5A:  LDR.W           R1, [R9]
213E5E:  LDR             R4, [R0]
213E60:  SUBS            R0, R0, R1
213E62:  MOV             R1, R10
213E64:  SUBS            R0, #4
213E66:  BLX             R6
213E68:  CMP             R0, #0
213E6A:  MOV             R0, R4
213E6C:  BNE             loc_213E56
213E6E:  MOV             R0, R8
213E70:  POP.W           {R8-R10}
213E74:  POP             {R4-R7,PC}
