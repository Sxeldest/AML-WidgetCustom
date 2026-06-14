; =========================================================
; Game Engine Function: _ZN4CPed17AttachPedToEntityEP7CEntity7CVectortf11eWeaponType
; Address            : 0x4A784C - 0x4A79BE
; =========================================================

4A784C:  PUSH            {R4-R7,LR}
4A784E:  ADD             R7, SP, #0xC
4A7850:  PUSH.W          {R8-R10}
4A7854:  VPUSH           {D8}
4A7858:  MOV             R8, R1
4A785A:  MOV             R6, R3
4A785C:  MOV             R4, R2
4A785E:  MOV             R5, R0
4A7860:  CMP.W           R8, #0
4A7864:  BEQ             loc_4A78B2
4A7866:  LDRB.W          R0, [R5,#0x485]
4A786A:  LSLS            R0, R0, #0x1F
4A786C:  BNE             loc_4A78B2
4A786E:  ADD.W           R1, R5, #0x100; CEntity **
4A7872:  MOV             R0, R8; this
4A7874:  LDR.W           R9, [R7,#arg_0]
4A7878:  VLDR            S16, [R7,#arg_8]
4A787C:  LDR.W           R10, [R7,#arg_4]
4A7880:  STR.W           R8, [R5,#0x100]
4A7884:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4A7888:  ADDW            R0, R5, #0x784
4A788C:  STR.W           R4, [R5,#0x774]
4A7890:  STR.W           R6, [R5,#0x778]
4A7894:  STR.W           R9, [R5,#0x77C]
4A7898:  VSTR            S16, [R0]
4A789C:  LDR.W           R4, [R5,#0x59C]
4A78A0:  STRH.W          R10, [R5,#0x780]
4A78A4:  CMP             R4, #1
4A78A6:  BHI             loc_4A78B8
4A78A8:  LDR             R0, [R5,#0x1C]
4A78AA:  BIC.W           R0, R0, #1
4A78AE:  STR             R0, [R5,#0x1C]
4A78B0:  B               loc_4A78C8
4A78B2:  MOV.W           R8, #0
4A78B6:  B               loc_4A79B2
4A78B8:  LDRB.W          R0, [R8,#0x3A]
4A78BC:  AND.W           R0, R0, #7
4A78C0:  CMP             R0, #2
4A78C2:  IT EQ
4A78C4:  STREQ.W         R8, [R5,#0x12C]
4A78C8:  LDR.W           R0, [R5,#0x710]
4A78CC:  CMP             R0, #0x37 ; '7'
4A78CE:  BNE             loc_4A790E
4A78D0:  LDRSB.W         R0, [R5,#0x71C]
4A78D4:  LDR             R1, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x4A78DE)
4A78D6:  RSB.W           R0, R0, R0,LSL#3
4A78DA:  ADD             R1, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
4A78DC:  ADD.W           R0, R5, R0,LSL#2
4A78E0:  LDR             R1, [R1]; CTheScripts::pActiveScripts ...
4A78E2:  LDR.W           R2, [R0,#0x5A4]
4A78E6:  STR.W           R2, [R5,#0x710]
4A78EA:  LDR.W           R0, [R0,#0x5B0]
4A78EE:  STR.W           R0, [R5,#0x78C]
4A78F2:  LDR             R0, [R1]; CTheScripts::pActiveScripts
4A78F4:  CBZ             R0, loc_4A790E
4A78F6:  ADDS            R0, #8; char *
4A78F8:  ADR             R1, aHeist5; "heist5"
4A78FA:  BLX             strcmp
4A78FE:  CBNZ            R0, loc_4A790E
4A7900:  MOV.W           R0, #0x190
4A7904:  STR.W           R0, [R5,#0x78C]
4A7908:  MOVS            R0, #0x26 ; '&'
4A790A:  STR.W           R0, [R5,#0x710]
4A790E:  LDR             R6, [R7,#arg_C]
4A7910:  CMP             R4, #1
4A7912:  BHI             loc_4A7940
4A7914:  CBZ             R6, loc_4A7924
4A7916:  MOV             R0, R5
4A7918:  MOV             R1, R6
4A791A:  MOVW            R2, #0x7530
4A791E:  MOVS            R3, #0
4A7920:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
4A7924:  LDR.W           R0, [R5,#0x444]
4A7928:  MOV             R1, R6
4A792A:  STRB.W          R6, [R0,#0x20]
4A792E:  MOV             R0, R5
4A7930:  BLX             j__ZN10CPlayerPed23MakeChangesForNewWeaponE11eWeaponType; CPlayerPed::MakeChangesForNewWeapon(eWeaponType)
4A7934:  CMP             R6, #0x2B ; '+'
4A7936:  BNE             loc_4A7960
4A7938:  LDR             R0, =(TheCamera_ptr - 0x4A7940)
4A793A:  MOVS            R1, #0x2E ; '.'
4A793C:  ADD             R0, PC; TheCamera_ptr
4A793E:  B               loc_4A799C
4A7940:  MOV             R0, R5
4A7942:  MOV             R1, R6
4A7944:  MOVW            R2, #0x7530
4A7948:  MOVS            R3, #0
4A794A:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
4A794E:  MOV             R0, R6
4A7950:  MOVS            R1, #1
4A7952:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A7956:  LDR             R1, [R0,#0x14]; int
4A7958:  MOV             R0, R5; this
4A795A:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
4A795E:  B               loc_4A79AC
4A7960:  LDRH.W          R0, [R8,#0x26]
4A7964:  CMP.W           R0, #0x152
4A7968:  BNE             loc_4A7996
4A796A:  MOV             R0, R6
4A796C:  MOVS            R1, #1
4A796E:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A7972:  LDRB            R0, [R0,#0x18]
4A7974:  LSLS            R0, R0, #0x1D
4A7976:  BMI             loc_4A7996
4A7978:  LDR             R0, =(TheCamera_ptr - 0x4A7984)
4A797A:  MOVS            R1, #0x41 ; 'A'; __int16
4A797C:  MOVS            R2, #0; __int16
4A797E:  MOVS            R3, #0; __int16
4A7980:  ADD             R0, PC; TheCamera_ptr
4A7982:  LDR             R0, [R0]; TheCamera ; this
4A7984:  BLX             j__ZN7CCamera22SetNewPlayerWeaponModeEsss; CCamera::SetNewPlayerWeaponMode(short,short,short)
4A7988:  LDR.W           R0, [R5,#0x444]
4A798C:  LDRH            R1, [R0,#0x34]
4A798E:  ORR.W           R1, R1, #8
4A7992:  STRH            R1, [R0,#0x34]
4A7994:  B               loc_4A79A6
4A7996:  LDR             R0, =(TheCamera_ptr - 0x4A799E)
4A7998:  MOVS            R1, #0x2D ; '-'; __int16
4A799A:  ADD             R0, PC; TheCamera_ptr
4A799C:  LDR             R0, [R0]; TheCamera ; this
4A799E:  MOVS            R2, #0; __int16
4A79A0:  MOVS            R3, #0; __int16
4A79A2:  BLX             j__ZN7CCamera22SetNewPlayerWeaponModeEsss; CCamera::SetNewPlayerWeaponMode(short,short,short)
4A79A6:  MOVS            R0, #0xC
4A79A8:  STR.W           R0, [R5,#0x44C]
4A79AC:  MOV             R0, R5; this
4A79AE:  BLX             j__ZN4CPed19PositionAttachedPedEv; CPed::PositionAttachedPed(void)
4A79B2:  MOV             R0, R8
4A79B4:  VPOP            {D8}
4A79B8:  POP.W           {R8-R10}
4A79BC:  POP             {R4-R7,PC}
