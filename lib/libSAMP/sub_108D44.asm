; =========================================================
; Game Engine Function: sub_108D44
; Address            : 0x108D44 - 0x108D5E
; =========================================================

108D44:  LDR             R2, =(unk_262CF0 - 0x108D4C)
108D46:  MOVS            R1, #0
108D48:  ADD             R2, PC; unk_262CF0
108D4A:  LDR.W           R3, [R2,R1,LSL#2]
108D4E:  CMP             R3, R0
108D50:  BEQ             loc_108D5A
108D52:  ADDS            R1, #1
108D54:  CMP             R1, #0xD2
108D56:  BNE             loc_108D4A
108D58:  MOVS            R1, #0
108D5A:  UXTB            R0, R1
108D5C:  BX              LR
