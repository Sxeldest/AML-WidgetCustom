; =========================================================
; Game Engine Function: sub_4824BC
; Address            : 0x4824BC - 0x4824CC
; =========================================================

4824BC:  LDR             R1, =(dword_6AF47C - 0x4824C2)
4824BE:  ADD             R1, PC; dword_6AF47C
4824C0:  LDR             R1, [R1]
4824C2:  CMP             R1, #1
4824C4:  ITT GE
4824C6:  MOVGE           R2, #0
4824C8:  STRGE           R2, [R0,R1]
4824CA:  BX              LR
