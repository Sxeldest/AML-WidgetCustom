; =========================================================
; Game Engine Function: _ZN4CPed23DoWeHaveWeaponAvailableE11eWeaponType
; Address            : 0x4A52CE - 0x4A52FC
; =========================================================

4A52CE:  PUSH            {R4,R5,R7,LR}
4A52D0:  ADD             R7, SP, #8
4A52D2:  MOV             R4, R1
4A52D4:  MOV             R5, R0
4A52D6:  MOV             R0, R4
4A52D8:  MOVS            R1, #1
4A52DA:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A52DE:  LDR             R0, [R0,#0x14]
4A52E0:  ADDS            R1, R0, #1
4A52E2:  BEQ             loc_4A52F8
4A52E4:  RSB.W           R0, R0, R0,LSL#3
4A52E8:  ADD.W           R0, R5, R0,LSL#2
4A52EC:  LDR.W           R0, [R0,#0x5A4]
4A52F0:  CMP             R0, R4
4A52F2:  ITT EQ
4A52F4:  MOVEQ           R0, #1
4A52F6:  POPEQ           {R4,R5,R7,PC}
4A52F8:  MOVS            R0, #0
4A52FA:  POP             {R4,R5,R7,PC}
