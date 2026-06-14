; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo8AddRemapEPKc
; Address            : 0x388D3E - 0x388D5E
; =========================================================

388D3E:  MOVS            R3, #0
388D40:  ADDS            R2, R3, #1
388D42:  CMP             R3, #3
388D44:  BGT             loc_388D54
388D46:  ADD.W           R3, R0, R3,LSL#2
388D4A:  LDR.W           R3, [R3,#0x394]
388D4E:  CMP             R3, #0
388D50:  MOV             R3, R2
388D52:  BNE             loc_388D40
388D54:  ADD.W           R0, R0, R2,LSL#2
388D58:  STR.W           R1, [R0,#0x390]
388D5C:  BX              LR
