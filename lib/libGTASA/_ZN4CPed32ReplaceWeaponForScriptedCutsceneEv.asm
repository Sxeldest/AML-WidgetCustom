; =========================================================
; Game Engine Function: _ZN4CPed32ReplaceWeaponForScriptedCutsceneEv
; Address            : 0x4A5446 - 0x4A546C
; =========================================================

4A5446:  PUSH            {R4,R6,R7,LR}
4A5448:  ADD             R7, SP, #8
4A544A:  MOV             R4, R0
4A544C:  LDR.W           R0, [R4,#0x710]
4A5450:  CMP             R0, #0x37 ; '7'
4A5452:  IT EQ
4A5454:  POPEQ           {R4,R6,R7,PC}
4A5456:  MOVS            R1, #1
4A5458:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A545C:  LDR             R1, [R0,#0x14]; int
4A545E:  MOV             R0, R4; this
4A5460:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
4A5464:  MOVS            R0, #0x37 ; '7'
4A5466:  STR.W           R0, [R4,#0x710]
4A546A:  POP             {R4,R6,R7,PC}
