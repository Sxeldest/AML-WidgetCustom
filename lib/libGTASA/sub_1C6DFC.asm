; =========================================================
; Game Engine Function: sub_1C6DFC
; Address            : 0x1C6DFC - 0x1C6E0E
; =========================================================

1C6DFC:  LDR             R2, =(dword_6B7248 - 0x1C6E02)
1C6DFE:  ADD             R2, PC; dword_6B7248
1C6E00:  LDR             R2, [R2]
1C6E02:  LDR             R1, [R1,R2]
1C6E04:  CMP             R1, #0
1C6E06:  ITT NE
1C6E08:  MOVNE           R1, #1
1C6E0A:  STRNE           R1, [R0,R2]
1C6E0C:  BX              LR
