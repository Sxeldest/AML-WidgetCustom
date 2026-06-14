; =========================================================
; Game Engine Function: _ZN22CScriptResourceManager10InitialiseEv
; Address            : 0x335134 - 0x335150
; =========================================================

335134:  MOVS            R1, #0
335136:  MOV.W           R12, #0xFFFFFFFF
33513A:  MOVS            R3, #0
33513C:  STR.W           R12, [R0,R3]
335140:  ADDS            R2, R0, R3
335142:  ADDS            R3, #0xC
335144:  CMP.W           R3, #0x384
335148:  STRH            R1, [R2,#8]
33514A:  STR             R1, [R2,#4]
33514C:  BNE             loc_33513C
33514E:  BX              LR
