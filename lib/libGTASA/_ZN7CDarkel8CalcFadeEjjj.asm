; =========================================================
; Game Engine Function: _ZN7CDarkel8CalcFadeEjjj
; Address            : 0x304978 - 0x3049B6
; =========================================================

304978:  CMP             R0, R1
30497A:  MOV.W           R3, #0
30497E:  IT CS
304980:  CMPCS           R2, R0
304982:  BCC             loc_3049B2
304984:  ADD.W           R3, R1, #0x1F4
304988:  CMP             R3, R0
30498A:  BLS             loc_304990
30498C:  SUBS            R0, R0, R1
30498E:  B               loc_3049A0
304990:  SUB.W           R1, R2, #0x1F4
304994:  CMP             R1, R0
304996:  ITTT CS
304998:  MOVCS           R3, #0xFF
30499A:  UXTBCS          R0, R3
30499C:  BXCS            LR
30499E:  SUBS            R0, R2, R0
3049A0:  MOVW            R1, #0x4DD3
3049A4:  RSB.W           R0, R0, R0,LSL#8
3049A8:  MOVT            R1, #0x1062
3049AC:  UMULL.W         R0, R1, R0, R1
3049B0:  LSRS            R3, R1, #5
3049B2:  UXTB            R0, R3
3049B4:  BX              LR
