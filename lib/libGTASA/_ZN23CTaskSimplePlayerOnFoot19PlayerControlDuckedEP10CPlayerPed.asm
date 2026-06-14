; =========================================================
; Game Engine Function: _ZN23CTaskSimplePlayerOnFoot19PlayerControlDuckedEP10CPlayerPed
; Address            : 0x539700 - 0x539AC2
; =========================================================

539700:  PUSH            {R4-R7,LR}
539702:  ADD             R7, SP, #0xC
539704:  PUSH.W          {R8-R10}
539708:  VPUSH           {D8-D11}
53970C:  SUB             SP, SP, #0x10
53970E:  MOV             R4, R1
539710:  MOVS            R1, #1; int
539712:  LDR.W           R0, [R4,#0x440]
539716:  ADDS            R0, #4; this
539718:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
53971C:  MOV             R5, R0
53971E:  CBZ             R5, loc_53978A
539720:  MOV             R0, R4; this
539722:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
539726:  MOV             R6, R0
539728:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
53972C:  VMOV            S0, R0
539730:  MOV             R0, R6; this
539732:  VCVT.F32.S32    S16, S0
539736:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
53973A:  VMOV            S0, R0
53973E:  VLDR            S2, =0.0078125
539742:  VCVT.F32.S32    S0, S0
539746:  LDR.W           R0, [R4,#0x100]
53974A:  VMUL.F32        S20, S16, S2
53974E:  CMP             R0, #0
539750:  VMUL.F32        S18, S0, S2
539754:  BEQ             loc_53975C
539756:  VLDR            S16, _ZTI8RwRaster; `typeinfo for'RwRaster
53975A:  B               loc_53977E
53975C:  VMUL.F32        S0, S20, S20
539760:  VMUL.F32        S2, S18, S18
539764:  VADD.F32        S0, S0, S2
539768:  VSQRT.F32       S16, S0
53976C:  VMOV.F32        S0, #1.0
539770:  VCMPE.F32       S16, S0
539774:  VMRS            APSR_nzcv, FPSCR
539778:  IT GT
53977A:  VMOVGT.F32      S16, S0
53977E:  LDRB            R0, [R5,#0x18]
539780:  CMP             R0, #0
539782:  ITT EQ
539784:  LDRBEQ          R0, [R5,#0x19]
539786:  CMPEQ           R0, #0
539788:  BEQ             loc_539796
53978A:  ADD             SP, SP, #0x10
53978C:  VPOP            {D8-D11}
539790:  POP.W           {R8-R10}
539794:  POP             {R4-R7,PC}
539796:  MOV             R0, R6; this
539798:  MOV             R1, R4; CPed *
53979A:  BLX             j__ZN4CPad12DuckJustDownEP4CPed; CPad::DuckJustDown(CPed *)
53979E:  CMP             R0, #0
5397A0:  BNE             loc_539884
5397A2:  MOV             R0, R6; this
5397A4:  BLX             j__ZN4CPad12JumpJustDownEv; CPad::JumpJustDown(void)
5397A8:  CMP             R0, #0
5397AA:  BNE             loc_539884
5397AC:  MOVS            R0, #0
5397AE:  MOVS            R1, #0; bool
5397B0:  STRD.W          R0, R0, [SP,#0x48+var_44]
5397B4:  MOVS            R2, #0; CVehicle *
5397B6:  STR             R0, [SP,#0x48+var_3C]
5397B8:  ADD             R0, SP, #0x48+var_44
5397BA:  STR             R0, [SP,#0x48+var_48]; float
5397BC:  MOV             R0, R6; this
5397BE:  MOVS            R3, #1; bool
5397C0:  BLX             j__ZN4CPad19ExitVehicleJustDownEbP8CVehiclebRK7CVector; CPad::ExitVehicleJustDown(bool,CVehicle *,bool,CVector const&)
5397C4:  CMP             R0, #1
5397C6:  BEQ             loc_539884
5397C8:  MOV             R0, R4; this
5397CA:  BLX             j__ZN15CTaskSimpleDuck10CanPedDuckEP4CPed; CTaskSimpleDuck::CanPedDuck(CPed *)
5397CE:  CMP             R0, #0
5397D0:  BEQ             loc_539884
5397D2:  LDR.W           R0, [R4,#0x720]
5397D6:  CBNZ            R0, loc_5397FA
5397D8:  MOV             R0, R6; this
5397DA:  MOVS            R1, #0; bool
5397DC:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
5397E0:  CBNZ            R0, loc_5397FA
5397E2:  LDR.W           R0, [R4,#0x444]
5397E6:  LDRB.W          R0, [R0,#0x34]
5397EA:  LSLS            R0, R0, #0x1C
5397EC:  BMI             loc_5397FA
5397EE:  MOV             R0, R6; this
5397F0:  MOVS            R1, #0; int
5397F2:  BLX             j__ZN4CPad9GetSprintEi; CPad::GetSprint(int)
5397F6:  CMP             R0, #1
5397F8:  BNE             loc_539814
5397FA:  LDRSB.W         R0, [R4,#0x71C]
5397FE:  RSB.W           R0, R0, R0,LSL#3
539802:  ADD.W           R0, R4, R0,LSL#2
539806:  ADDW            R0, R0, #0x5A4; this
53980A:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
53980E:  CMP             R0, #0
539810:  BEQ.W           loc_539976
539814:  VCMPE.F32       S16, #0.0
539818:  VMRS            APSR_nzcv, FPSCR
53981C:  BLE.W           loc_539A78
539820:  VMOV            R0, S20
539824:  MOVS            R1, #0; float
539826:  VMOV            R3, S18; float
53982A:  MOV.W           R9, #0
53982E:  EOR.W           R2, R0, #0x80000000; float
539832:  MOVS            R0, #0; this
539834:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
539838:  LDR             R1, =(TheCamera_ptr - 0x539842)
53983A:  VMOV            S0, R0
53983E:  ADD             R1, PC; TheCamera_ptr
539840:  LDR             R1, [R1]; TheCamera ; float
539842:  VLDR            S2, [R1,#0x14C]
539846:  VSUB.F32        S0, S0, S2
53984A:  VMOV            R0, S0; this
53984E:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
539852:  MOV             R6, R0
539854:  STR.W           R6, [R4,#0x560]
539858:  BLX             sinf
53985C:  MOV             R8, R0
53985E:  MOV             R0, R6; x
539860:  BLX             cosf
539864:  EOR.W           R1, R8, #0x80000000
539868:  MOV             R2, R0
53986A:  MOV             R0, R4
53986C:  MOVS            R3, #0
53986E:  STR.W           R9, [SP,#0x48+var_48]
539872:  BLX             j__ZN10CGameLogic34IsPlayerAllowedToGoInThisDirectionEP10CPlayerPed7CVectorf; CGameLogic::IsPlayerAllowedToGoInThisDirection(CPlayerPed *,CVector,float)
539876:  VLDR            S0, _ZTI8RwRaster; `typeinfo for'RwRaster
53987A:  CMP             R0, #0
53987C:  IT NE
53987E:  VMOVNE.F32      S0, S16
539882:  B               loc_539A7C
539884:  LDR.W           R0, [R4,#0x440]; this
539888:  BLX             j__ZN16CPedIntelligence22ClearTaskDuckSecondaryEv; CPedIntelligence::ClearTaskDuckSecondary(void)
53988C:  LDR.W           R0, [R4,#0x440]; this
539890:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
539894:  CBZ             R0, loc_5398EC
539896:  LDR.W           R0, [R4,#0x440]; this
53989A:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
53989E:  LDR             R0, [R0,#0x30]
5398A0:  LDRB            R0, [R0,#0x18]
5398A2:  LSLS            R0, R0, #0x1E
5398A4:  BMI             loc_5398EC
5398A6:  VMOV.F32        S0, #0.5
5398AA:  VCMPE.F32       S16, S0
5398AE:  VMRS            APSR_nzcv, FPSCR
5398B2:  BLE.W           loc_53978A
5398B6:  LDR             R0, [R4,#0x18]; int
5398B8:  MOVS            R1, #0; int
5398BA:  MOVS            R2, #0x32 ; '2'; unsigned int
5398BC:  MOV.W           R3, #0x40800000
5398C0:  MOVS            R5, #0
5398C2:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5398C6:  LDRH            R1, [R0,#0x2E]
5398C8:  ORR.W           R1, R1, #1
5398CC:  STRH            R1, [R0,#0x2E]
5398CE:  LDR.W           R0, [R4,#0x444]
5398D2:  MOV.W           R1, #0x3F800000
5398D6:  STR             R1, [R0,#0x14]
5398D8:  STRD.W          R1, R5, [SP,#0x48+var_44]
5398DC:  LDR.W           R0, [R4,#0x440]; this
5398E0:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
5398E4:  ADD             R1, SP, #0x48+var_44
5398E6:  BLX             j__ZN17CTaskSimpleUseGun14ControlGunMoveEP9CVector2D; CTaskSimpleUseGun::ControlGunMove(CVector2D *)
5398EA:  B               loc_53978A
5398EC:  MOV             R0, R6; this
5398EE:  MOVS            R1, #0; int
5398F0:  BLX             j__ZN4CPad9GetSprintEi; CPad::GetSprint(int)
5398F4:  VMOV.F32        S0, #0.5
5398F8:  VCMPE.F32       S16, S0
5398FC:  VMRS            APSR_nzcv, FPSCR
539900:  BLE             loc_539938
539902:  CMP             R0, #1
539904:  BNE             loc_539938
539906:  LDR.W           R1, [R4,#0x4E0]; int
53990A:  MOVS            R2, #1; unsigned int
53990C:  LDR             R0, [R4,#0x18]; int
53990E:  MOV.W           R3, #0x40800000
539912:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
539916:  LDRH            R1, [R0,#0x2E]
539918:  ORR.W           R1, R1, #1
53991C:  STRH            R1, [R0,#0x2E]
53991E:  LDR.W           R0, [R4,#0x444]
539922:  MOV.W           R1, #0x3FC00000
539926:  STR             R1, [R0,#0x14]
539928:  MOVS            R0, #6
53992A:  STR.W           R0, [R4,#0x53C]
53992E:  MOV             R0, R4
539930:  MOVS            R1, #6
539932:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
539936:  B               loc_53978A
539938:  VCMPE.F32       S16, S0
53993C:  VMRS            APSR_nzcv, FPSCR
539940:  BLE.W           loc_53978A
539944:  LDR.W           R1, [R4,#0x4E0]; int
539948:  MOVS            R2, #0; unsigned int
53994A:  LDR             R0, [R4,#0x18]; int
53994C:  MOV.W           R3, #0x40800000
539950:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
539954:  LDRH            R1, [R0,#0x2E]
539956:  ORR.W           R1, R1, #1
53995A:  STRH            R1, [R0,#0x2E]
53995C:  LDR.W           R0, [R4,#0x444]
539960:  MOV.W           R1, #0x3FC00000
539964:  STR             R1, [R0,#0x14]
539966:  MOVS            R0, #4
539968:  STR.W           R0, [R4,#0x53C]
53996C:  MOV             R0, R4
53996E:  MOVS            R1, #4
539970:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
539974:  B               loc_53978A
539976:  MOV             R0, R4; this
539978:  BLX             j__ZN10CGameLogic26IsPlayerUse2PlayerControlsEP10CPlayerPed; CGameLogic::IsPlayerUse2PlayerControls(CPlayerPed *)
53997C:  CMP             R0, #1
53997E:  BNE.W           loc_539AAA
539982:  VMOV            R0, S20
539986:  MOVS            R1, #0; float
539988:  VMOV            R3, S18; float
53998C:  MOV.W           R10, #0
539990:  EOR.W           R2, R0, #0x80000000; float
539994:  MOVS            R0, #0; this
539996:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
53999A:  LDR             R1, =(TheCamera_ptr - 0x5399A4)
53999C:  VMOV            S0, R0
5399A0:  ADD             R1, PC; TheCamera_ptr
5399A2:  LDR             R1, [R1]; TheCamera ; float
5399A4:  VLDR            S2, [R1,#0x14C]
5399A8:  VSUB.F32        S0, S0, S2
5399AC:  VMOV            R0, S0; this
5399B0:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
5399B4:  MOV             R8, R0
5399B6:  BLX             sinf
5399BA:  MOV             R6, R0
5399BC:  MOV             R0, R8; x
5399BE:  BLX             cosf
5399C2:  MOV             R9, R0
5399C4:  EOR.W           R1, R6, #0x80000000
5399C8:  MOV             R0, R4
5399CA:  MOV             R2, R9
5399CC:  MOVS            R3, #0
5399CE:  STR.W           R10, [SP,#0x48+var_48]
5399D2:  BLX             j__ZN10CGameLogic34IsPlayerAllowedToGoInThisDirectionEP10CPlayerPed7CVectorf; CGameLogic::IsPlayerAllowedToGoInThisDirection(CPlayerPed *,CVector,float)
5399D6:  LDR             R1, [R4,#0x14]
5399D8:  VMOV            S0, R6
5399DC:  VMOV            S14, R9
5399E0:  VLDR            S20, _ZTI8RwRaster; `typeinfo for'RwRaster
5399E4:  CMP             R0, #0
5399E6:  VLDR            S8, [R1,#0x10]
5399EA:  VLDR            S10, [R1,#0x14]
5399EE:  VLDR            S2, [R1]
5399F2:  VMUL.F32        S8, S8, S0
5399F6:  VLDR            S4, [R1,#4]
5399FA:  VMUL.F32        S10, S14, S10
5399FE:  VMUL.F32        S0, S2, S0
539A02:  VLDR            S6, [R1,#8]
539A06:  VMUL.F32        S2, S14, S4
539A0A:  VLDR            S12, [R1,#0x18]
539A0E:  VMUL.F32        S6, S6, S20
539A12:  VMUL.F32        S4, S12, S20
539A16:  IT NE
539A18:  VMOVNE.F32      S20, S16
539A1C:  LDR.W           R0, [R4,#0x720]
539A20:  VSUB.F32        S8, S10, S8
539A24:  CMP             R0, #0
539A26:  VSUB.F32        S0, S2, S0
539A2A:  VADD.F32        S16, S8, S4
539A2E:  VADD.F32        S22, S0, S6
539A32:  BEQ             loc_539A96
539A34:  LDR             R3, [R0,#0x14]
539A36:  ADD.W           R2, R1, #0x30 ; '0'
539A3A:  CMP             R1, #0
539A3C:  IT EQ
539A3E:  ADDEQ           R2, R4, #4
539A40:  ADD.W           R1, R3, #0x30 ; '0'
539A44:  CMP             R3, #0
539A46:  VLDR            S0, [R2]
539A4A:  VLDR            S2, [R2,#4]
539A4E:  IT EQ
539A50:  ADDEQ           R1, R0, #4
539A52:  VLDR            S4, [R1]
539A56:  VLDR            S6, [R1,#4]
539A5A:  VSUB.F32        S0, S4, S0
539A5E:  VSUB.F32        S2, S6, S2
539A62:  VMOV            R0, S0
539A66:  VMOV            R1, S2; x
539A6A:  EOR.W           R0, R0, #0x80000000; y
539A6E:  BLX             atan2f
539A72:  VMOV            S0, R0
539A76:  B               loc_539A9A
539A78:  VMOV.F32        S0, S16
539A7C:  VMOV            R0, S0
539A80:  LDR.W           R1, [R4,#0x444]
539A84:  VSTR            S0, [R1,#0x14]
539A88:  MOVS            R1, #0
539A8A:  EOR.W           R2, R0, #0x80000000
539A8E:  MOV             R0, R5
539A90:  BLX             j__ZN15CTaskSimpleDuck15ControlDuckMoveE9CVector2D; CTaskSimpleDuck::ControlDuckMove(CVector2D)
539A94:  B               loc_53978A
539A96:  VMOV            S0, R8
539A9A:  VNMUL.F32       S18, S20, S16
539A9E:  ADD.W           R0, R4, #0x560
539AA2:  VMUL.F32        S20, S20, S22
539AA6:  VSTR            S0, [R0]
539AAA:  VMOV            R1, S20
539AAE:  MOV             R0, R5
539AB0:  VMOV            R2, S18
539AB4:  BLX             j__ZN15CTaskSimpleDuck15ControlDuckMoveE9CVector2D; CTaskSimpleDuck::ControlDuckMove(CVector2D)
539AB8:  LDR.W           R0, [R4,#0x444]
539ABC:  MOVS            R1, #0
539ABE:  STR             R1, [R0,#0x14]
539AC0:  B               loc_53978A
