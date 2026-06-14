; =========================================================
; Game Engine Function: _ZN7CDarkel33DealWithWeaponChangeAtEndOfFrenzyEv
; Address            : 0x3037E8 - 0x3039DC
; =========================================================

3037E8:  PUSH            {R4-R7,LR}
3037EA:  ADD             R7, SP, #0xC
3037EC:  PUSH.W          {R11}
3037F0:  LDR             R0, =(_ZN7CDarkel10WeaponTypeE_ptr - 0x3037F8)
3037F2:  LDR             R1, =(_ZN7CDarkel21InterruptedWeaponTypeE_ptr - 0x3037FA)
3037F4:  ADD             R0, PC; _ZN7CDarkel10WeaponTypeE_ptr
3037F6:  ADD             R1, PC; _ZN7CDarkel21InterruptedWeaponTypeE_ptr
3037F8:  LDR             R0, [R0]; CDarkel::WeaponType ...
3037FA:  LDR             R1, [R1]; CDarkel::InterruptedWeaponType ...
3037FC:  LDR             R4, [R0]; CDarkel::WeaponType
3037FE:  LDR             R0, [R1]; CDarkel::InterruptedWeaponType
303800:  CMP             R4, #0x34 ; '4'
303802:  IT EQ
303804:  MOVEQ           R4, #0x1C
303806:  CBZ             R0, loc_303822
303808:  CMP             R4, #0x2E ; '.'
30380A:  BGT             loc_303822
30380C:  MOVS            R1, #1
30380E:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
303812:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x30381A)
303814:  LDR             R0, [R0,#0xC]
303816:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
303818:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
30381A:  LDR.W           R0, [R1,R0,LSL#2]; this
30381E:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
303822:  CMP             R4, #0x2E ; '.'
303824:  BGT             loc_303924
303826:  MOV             R0, R4
303828:  MOVS            R1, #1
30382A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
30382E:  LDRB            R0, [R0,#0x14]
303830:  RSB.W           R6, R0, R0,LSL#3
303834:  MOV.W           R0, #0xFFFFFFFF; int
303838:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30383C:  MOV             R5, R0
30383E:  MOV.W           R0, #0xFFFFFFFF; int
303842:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
303846:  ADD.W           R0, R0, R6,LSL#2
30384A:  MOVS            R1, #1
30384C:  LDR.W           R0, [R0,#0x5A4]
303850:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
303854:  LDR             R1, [R0,#0xC]; int
303856:  MOV             R0, R5; this
303858:  BLX             j__ZN4CPed17RemoveWeaponModelEi; CPed::RemoveWeaponModel(int)
30385C:  MOV.W           R0, #0xFFFFFFFF; int
303860:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
303864:  ADD.W           R0, R0, R6,LSL#2
303868:  MOVS            R5, #0
30386A:  STR.W           R5, [R0,#0x5A4]
30386E:  MOV.W           R0, #0xFFFFFFFF; int
303872:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
303876:  ADD.W           R0, R0, R6,LSL#2
30387A:  STR.W           R5, [R0,#0x5B0]
30387E:  MOV.W           R0, #0xFFFFFFFF; int
303882:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
303886:  ADD.W           R0, R0, R6,LSL#2
30388A:  STR.W           R5, [R0,#0x5AC]
30388E:  MOV.W           R0, #0xFFFFFFFF; int
303892:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
303896:  ADD.W           R0, R0, R6,LSL#2
30389A:  STR.W           R5, [R0,#0x5A8]
30389E:  MOV.W           R0, #0xFFFFFFFF; int
3038A2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3038A6:  MOVS            R2, #0
3038A8:  MOV             R1, R4; int
3038AA:  MOVT            R2, #0xC47A; float
3038AE:  BLX             j__ZN4CPed17RemoveWeaponAnimsEif; CPed::RemoveWeaponAnims(int,float)
3038B2:  MOV             R0, R4
3038B4:  MOVS            R1, #1
3038B6:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3038BA:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3038C2)
3038BC:  LDR             R0, [R0,#0xC]
3038BE:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3038C0:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3038C2:  LDR.W           R0, [R1,R0,LSL#2]
3038C6:  LDRSH.W         R0, [R0,#0x1E]
3038CA:  CMP             R0, #1
3038CC:  BLT             loc_3038E6
3038CE:  MOV             R0, R4
3038D0:  MOVS            R1, #1
3038D2:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3038D6:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3038DE)
3038D8:  LDR             R0, [R0,#0xC]
3038DA:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3038DC:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3038DE:  LDR.W           R0, [R1,R0,LSL#2]; this
3038E2:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
3038E6:  LDR             R0, =(_ZN7CDarkel29InterruptedWeaponTypeSelectedE_ptr - 0x3038EE)
3038E8:  MOVS            R1, #1
3038EA:  ADD             R0, PC; _ZN7CDarkel29InterruptedWeaponTypeSelectedE_ptr
3038EC:  LDR             R0, [R0]; CDarkel::InterruptedWeaponTypeSelected ...
3038EE:  LDR             R0, [R0]; CDarkel::InterruptedWeaponTypeSelected
3038F0:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3038F4:  LDR             R4, [R0,#0x14]
3038F6:  MOV.W           R0, #0xFFFFFFFF; int
3038FA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3038FE:  LDR.W           R0, [R0,#0x444]
303902:  STRB.W          R4, [R0,#0x20]
303906:  MOV.W           R0, #0xFFFFFFFF; int
30390A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30390E:  LDR             R1, =(_ZN7CDarkel21AmmoInterruptedWeaponE_ptr - 0x303916)
303910:  LDR             R2, =(_ZN7CDarkel21InterruptedWeaponTypeE_ptr - 0x303918)
303912:  ADD             R1, PC; _ZN7CDarkel21AmmoInterruptedWeaponE_ptr
303914:  ADD             R2, PC; _ZN7CDarkel21InterruptedWeaponTypeE_ptr
303916:  LDR             R1, [R1]; CDarkel::AmmoInterruptedWeapon ...
303918:  LDR             R3, [R2]; CDarkel::InterruptedWeaponType ...
30391A:  LDR             R2, [R1]; CDarkel::AmmoInterruptedWeapon
30391C:  LDR             R1, [R3]; CDarkel::InterruptedWeaponType
30391E:  MOVS            R3, #1
303920:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
303924:  MOV.W           R0, #0xFFFFFFFF; int
303928:  MOVS            R1, #0; bool
30392A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30392E:  CMP             R0, #0
303930:  BEQ             loc_3039D6
303932:  MOV.W           R0, #0xFFFFFFFF; int
303936:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30393A:  MOV             R4, R0
30393C:  MOV.W           R0, #0xFFFFFFFF; int
303940:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
303944:  LDRSB.W         R1, [R0,#0x71C]
303948:  RSB.W           R1, R1, R1,LSL#3
30394C:  ADD.W           R0, R0, R1,LSL#2
303950:  MOVS            R1, #1
303952:  LDR.W           R0, [R0,#0x5A4]
303956:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
30395A:  LDR             R1, [R0,#0xC]; int
30395C:  MOV             R0, R4; this
30395E:  BLX             j__ZN4CPed17RemoveWeaponModelEi; CPed::RemoveWeaponModel(int)
303962:  MOV.W           R0, #0xFFFFFFFF; int
303966:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30396A:  LDR.W           R4, [R0,#0x614]
30396E:  MOV.W           R0, #0xFFFFFFFF; int
303972:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
303976:  LDR.W           R0, [R0,#0x444]
30397A:  CMP             R4, #0
30397C:  ITE NE
30397E:  MOVNE           R1, #4
303980:  MOVEQ           R1, #0
303982:  STRB.W          R1, [R0,#0x20]
303986:  MOV.W           R0, #0xFFFFFFFF; int
30398A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30398E:  MOV             R4, R0
303990:  MOV.W           R0, #0xFFFFFFFF; int
303994:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
303998:  LDR.W           R0, [R0,#0x444]
30399C:  LDRSB.W         R1, [R0,#0x20]; int
3039A0:  MOV             R0, R4; this
3039A2:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
3039A6:  MOV.W           R0, #0xFFFFFFFF; int
3039AA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3039AE:  MOV             R4, R0
3039B0:  MOV.W           R0, #0xFFFFFFFF; int
3039B4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3039B8:  LDRSB.W         R1, [R0,#0x71C]
3039BC:  RSB.W           R1, R1, R1,LSL#3
3039C0:  ADD.W           R0, R0, R1,LSL#2
3039C4:  LDR.W           R1, [R0,#0x5A4]
3039C8:  MOV             R0, R4
3039CA:  POP.W           {R11}
3039CE:  POP.W           {R4-R7,LR}
3039D2:  B.W             j_j__ZN10CPlayerPed23MakeChangesForNewWeaponE11eWeaponType; j_CPlayerPed::MakeChangesForNewWeapon(eWeaponType)
3039D6:  POP.W           {R11}
3039DA:  POP             {R4-R7,PC}
