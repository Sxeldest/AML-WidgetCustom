; =========================================================
; Game Engine Function: sub_213D9C
; Address            : 0x213D9C - 0x213DAE
; =========================================================

213D9C:  LDR             R1, =(dword_6BD590 - 0x213DA4)
213D9E:  MOVS            R2, #0
213DA0:  ADD             R1, PC; dword_6BD590
213DA2:  LDR             R1, [R1]
213DA4:  STR             R2, [R0,R1]
213DA6:  ADD             R1, R0
213DA8:  STRD.W          R2, R2, [R1,#4]
213DAC:  BX              LR
