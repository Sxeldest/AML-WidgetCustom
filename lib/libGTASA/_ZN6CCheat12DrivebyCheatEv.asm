; =========================================================
; Game Engine Function: _ZN6CCheat12DrivebyCheatEv
; Address            : 0x2FE460 - 0x2FE4B0
; =========================================================

2FE460:  PUSH            {R7,LR}
2FE462:  MOV             R7, SP
2FE464:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FE46C)
2FE466:  MOVS            R2, #0
2FE468:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FE46A:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FE46C:  LDRB.W          R1, [R0,#(byte_796845 - 0x7967F4)]
2FE470:  CMP             R1, #0
2FE472:  IT EQ
2FE474:  MOVEQ           R2, #1
2FE476:  STRB.W          R2, [R0,#(byte_796845 - 0x7967F4)]
2FE47A:  IT NE
2FE47C:  POPNE           {R7,PC}
2FE47E:  MOV.W           R0, #0xFFFFFFFF; int
2FE482:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FE486:  LDR.W           R0, [R0,#0x614]
2FE48A:  CBZ             R0, loc_2FE48E
2FE48C:  POP             {R7,PC}
2FE48E:  MOV.W           R0, #0xFFFFFFFF; int
2FE492:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FE496:  MOVS            R1, #0x1C
2FE498:  MOVS            R2, #0x96
2FE49A:  BLX             j__ZN4CPed17GiveDelayedWeaponE11eWeaponTypej; CPed::GiveDelayedWeapon(eWeaponType,uint)
2FE49E:  MOV.W           R0, #0xFFFFFFFF; int
2FE4A2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FE4A6:  MOVS            R1, #0x1C
2FE4A8:  POP.W           {R7,LR}
2FE4AC:  B.W             j_j__ZN4CPed16SetCurrentWeaponE11eWeaponType; j_CPed::SetCurrentWeapon(eWeaponType)
