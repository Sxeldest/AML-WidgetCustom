; =========================================================
; Game Engine Function: _Z18RpClumpSetCallBackP7RpClumpPFS0_S0_PvE
; Address            : 0x214764 - 0x214772
; =========================================================

214764:  LDR             R2, =(nullsub_11+1 - 0x21476C)
214766:  CMP             R1, #0
214768:  ADD             R2, PC; nullsub_11
21476A:  IT NE
21476C:  MOVNE           R2, R1
21476E:  STR             R2, [R0,#0x28]
214770:  BX              LR
