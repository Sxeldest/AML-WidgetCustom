; =========================================================
; Game Engine Function: sub_1070FC
; Address            : 0x1070FC - 0x10710E
; =========================================================

1070FC:  LDR             R2, =(_ZTSZN10CPlayerPed12StartJetpackEvE3$_4 - 0x107106); type descriptor name
1070FE:  LDR             R3, [R1,#4]
107100:  MOVS            R1, #0
107102:  ADD             R2, PC; type descriptor name
107104:  CMP             R3, R2
107106:  IT EQ
107108:  ADDEQ           R1, R0, #4
10710A:  MOV             R0, R1
10710C:  BX              LR
