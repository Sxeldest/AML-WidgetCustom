; =========================================================
; Game Engine Function: _ZN26CTaskComplexUseMobilePhone16RemovePhoneModelEP4CPed
; Address            : 0x4F0CF0 - 0x4F0D20
; =========================================================

4F0CF0:  PUSH            {R4,R6,R7,LR}
4F0CF2:  ADD             R7, SP, #8
4F0CF4:  MOV             R4, R1
4F0CF6:  MOV.W           R1, #0x14A; int
4F0CFA:  MOV             R0, R4; this
4F0CFC:  BLX             j__ZN4CPed17RemoveWeaponModelEi; CPed::RemoveWeaponModel(int)
4F0D00:  LDR.W           R1, [R4,#0x710]
4F0D04:  MOV             R0, R4
4F0D06:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
4F0D0A:  LDR.W           R0, [R4,#0x444]
4F0D0E:  MOVS            R1, #0x37 ; '7'
4F0D10:  STR.W           R1, [R4,#0x710]
4F0D14:  CMP             R0, #0
4F0D16:  ITT NE
4F0D18:  MOVNE           R1, #0
4F0D1A:  STRBNE.W        R1, [R0,#0x85]
4F0D1E:  POP             {R4,R6,R7,PC}
