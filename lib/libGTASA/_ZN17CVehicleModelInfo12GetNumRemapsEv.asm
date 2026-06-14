; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo12GetNumRemapsEv
; Address            : 0x388D24 - 0x388D3E
; =========================================================

388D24:  ADD.W           R0, R0, #0x394
388D28:  MOVS            R1, #0
388D2A:  ADDS            R2, R1, #1
388D2C:  CMP             R1, #3
388D2E:  BGT             loc_388D3A
388D30:  LDR.W           R1, [R0,R1,LSL#2]
388D34:  CMP             R1, #0
388D36:  MOV             R1, R2
388D38:  BNE             loc_388D2A
388D3A:  SUBS            R0, R2, #1
388D3C:  BX              LR
