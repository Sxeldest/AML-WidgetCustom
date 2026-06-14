; =========================================================
; Game Engine Function: sub_101244
; Address            : 0x101244 - 0x101256
; =========================================================

101244:  LDR             R2, =(_ZTSZ24CPed_GetWeaponSkill_hookP9_PED_TYPEE3$_5 - 0x10124E); type descriptor name
101246:  LDR             R3, [R1,#4]
101248:  MOVS            R1, #0
10124A:  ADD             R2, PC; type descriptor name
10124C:  CMP             R3, R2
10124E:  IT EQ
101250:  ADDEQ           R1, R0, #4
101252:  MOV             R0, R1
101254:  BX              LR
