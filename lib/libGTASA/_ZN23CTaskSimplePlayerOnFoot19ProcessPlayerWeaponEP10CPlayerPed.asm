; =========================================================
; Game Engine Function: _ZN23CTaskSimplePlayerOnFoot19ProcessPlayerWeaponEP10CPlayerPed
; Address            : 0x537798 - 0x538C14
; =========================================================

537798:  PUSH            {R4-R7,LR}
53779A:  ADD             R7, SP, #0xC
53779C:  PUSH.W          {R8-R11}
5377A0:  SUB             SP, SP, #4
5377A2:  VPUSH           {D8-D10}
5377A6:  SUB             SP, SP, #0x90
5377A8:  MOV             R11, R0
5377AA:  LDR.W           R0, =(_ZN11CTheScripts14bDrawCrossHairE_ptr - 0x5377B4)
5377AE:  MOV             R4, R1
5377B0:  ADD             R0, PC; _ZN11CTheScripts14bDrawCrossHairE_ptr
5377B2:  LDR             R0, [R0]; CTheScripts::bDrawCrossHair ...
5377B4:  LDR             R0, [R0]; CTheScripts::bDrawCrossHair
5377B6:  CMP             R0, #2
5377B8:  BEQ.W           loc_538520
5377BC:  MOV             R0, R4; this
5377BE:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
5377C2:  STR             R0, [SP,#0xC8+var_94]
5377C4:  ADDW            R6, R4, #0x5A4
5377C8:  LDRSB.W         R0, [R4,#0x71C]
5377CC:  RSB.W           R0, R0, R0,LSL#3
5377D0:  LDR.W           R5, [R6,R0,LSL#2]
5377D4:  MOV             R0, R4; this
5377D6:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
5377DA:  MOV             R1, R0
5377DC:  MOV             R0, R5
5377DE:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5377E2:  LDRSB.W         R1, [R4,#0x71C]
5377E6:  MOV             R8, R0
5377E8:  LDR.W           R0, [R4,#0x720]
5377EC:  MOV.W           R10, #0
5377F0:  RSB.W           R1, R1, R1,LSL#3
5377F4:  CMP             R0, #0
5377F6:  LDR.W           R5, [R6,R1,LSL#2]
5377FA:  BEQ             loc_53780A
5377FC:  LDRB.W          R1, [R0,#0x3A]
537800:  AND.W           R1, R1, #7
537804:  CMP             R1, #3
537806:  IT EQ
537808:  MOVEQ           R10, R0
53780A:  LDR.W           R9, [R4,#0x724]
53780E:  CMP.W           R9, #0
537812:  BEQ             loc_537822
537814:  LDRB.W          R1, [R9,#0x3A]
537818:  AND.W           R1, R1, #7
53781C:  CMP             R1, #3
53781E:  IT EQ
537820:  MOVEQ           R10, R9
537822:  MOVS            R1, #0
537824:  CBZ             R0, loc_537834
537826:  LDRB.W          R2, [R0,#0x3A]
53782A:  AND.W           R2, R2, #7
53782E:  CMP             R2, #2
537830:  IT EQ
537832:  MOVEQ           R1, R0
537834:  CMP.W           R9, #0
537838:  BEQ             loc_537852
53783A:  LDRB.W          R2, [R9,#0x3A]
53783E:  AND.W           R2, R2, #7
537842:  CMP             R2, #2
537844:  MOV             R2, R1
537846:  IT EQ
537848:  MOVEQ           R2, R9
53784A:  STR             R2, [SP,#0xC8+var_9C]
53784C:  IT NE
53784E:  MOVNE           R9, R1
537850:  B               loc_537856
537852:  MOV             R9, R1
537854:  STR             R1, [SP,#0xC8+var_9C]
537856:  LDR.W           R1, [R4,#0x444]
53785A:  LDRB.W          R1, [R1,#0x34]
53785E:  LSLS            R1, R1, #0x1D
537860:  BPL             loc_537878
537862:  CBNZ            R0, loc_537878
537864:  LDR.W           R0, =(TheCamera_ptr - 0x53786C)
537868:  ADD             R0, PC; TheCamera_ptr
53786A:  LDR             R0, [R0]; TheCamera ; this
53786C:  BLX             j__ZN7CCamera21ClearPlayerWeaponModeEv; CCamera::ClearPlayerWeaponMode(void)
537870:  LDR.W           R0, [R4,#0x59C]; this
537874:  BLX             j__ZN14CWeaponEffects14ClearCrossHairEi; CWeaponEffects::ClearCrossHair(int)
537878:  LDR.W           R0, [R8,#0x18]
53787C:  MOVS            R1, #0x64 ; 'd'
53787E:  MOVS            R2, #1; bool
537880:  MOVS            R3, #0; bool
537882:  TST.W           R0, #1
537886:  IT NE
537888:  MOVNE           R1, #0x5F ; '_'
53788A:  STRB.W          R1, [R4,#0x71E]
53788E:  MOV             R1, R4; CPed *
537890:  LDR             R0, [SP,#0xC8+var_94]; this
537892:  BLX             j__ZN4CPad14WeaponJustDownEP4CPedbb; CPad::WeaponJustDown(CPed *,bool,bool)
537896:  CMP             R0, #1
537898:  BNE             loc_5378B8
53789A:  CMP.W           R10, #0
53789E:  BEQ             loc_5378A8
5378A0:  MOV             R0, R4; this
5378A2:  BLX             j__ZN10CPlayerPed28PlayerHasJustAttackedSomeoneEv; CPlayerPed::PlayerHasJustAttackedSomeone(void)
5378A6:  B               loc_5378B8
5378A8:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
5378AC:  CMP             R0, #2
5378AE:  BNE             loc_5378B8
5378B0:  LDR.W           R0, [R4,#0x7A4]
5378B4:  CMP             R0, #0
5378B6:  BNE             loc_5378A0
5378B8:  LDR.W           R0, [R4,#0x738]
5378BC:  STR             R5, [SP,#0xC8+var_98]
5378BE:  CBNZ            R0, loc_5378D2
5378C0:  CMP             R5, #0x21 ; '!'
5378C2:  NOP
5378C4:  NOP
5378C6:  LDR.W           R0, [R8,#0x18]
5378CA:  ANDS.W          R0, R0, #4
5378CE:  BNE.W           loc_537A68
5378D2:  CMP             R5, #0x24 ; '$'
5378D4:  BNE             loc_5378EC
5378D6:  LDR             R0, [SP,#0xC8+var_94]; this
5378D8:  MOVS            R1, #0; bool
5378DA:  MOVS            R5, #0
5378DC:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
5378E0:  CMP             R0, #0
5378E2:  ITT EQ
5378E4:  LDREQ.W         R0, [R4,#0x444]
5378E8:  STRDEQ.W        R5, R5, [R0,#0x94]
5378EC:  LDR.W           R0, [R8]
5378F0:  CMP             R0, #5
5378F2:  BEQ             loc_53798C
5378F4:  CMP             R0, #0
5378F6:  BNE             loc_5379E8
5378F8:  CMP.W           R10, #0
5378FC:  STRD.W          R11, R8, [SP,#0xC8+var_A4]
537900:  BEQ.W           loc_537ABC
537904:  LDR.W           R0, [R4,#0x444]
537908:  CMP.W           R10, #0
53790C:  VLDR            S0, =1.9
537910:  MOV             R11, R10
537912:  VLDR            S2, [R0,#0x14]
537916:  IT NE
537918:  MOVNE.W         R11, #1
53791C:  VCMPE.F32       S2, S0
537920:  VMRS            APSR_nzcv, FPSCR
537924:  BGE.W           loc_537AF6
537928:  LDR.W           R0, [R4,#0x450]
53792C:  CMP             R0, #7
53792E:  BEQ.W           loc_537AF6
537932:  LDR.W           R0, [R4,#0x440]
537936:  MOVS            R1, #0; int
537938:  ADDS            R0, #4; this
53793A:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
53793E:  CMP             R0, #0
537940:  BNE.W           loc_537AF6
537944:  LDR.W           R0, [R8,#0x1C]
537948:  CMP             R0, #0
53794A:  BEQ.W           loc_537AF6
53794E:  LDR.W           R1, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x53795A)
537952:  ADD.W           R0, R0, R0,LSL#2
537956:  ADD             R1, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
537958:  LDR             R1, [R1]; CAnimManager::ms_aAnimAssocGroups ...
53795A:  LDR             R1, [R1]; CAnimManager::ms_aAnimAssocGroups
53795C:  LDR.W           R0, [R1,R0,LSL#2]
537960:  CMP             R0, #0
537962:  ITT NE
537964:  LDRBNE          R0, [R0,#0x10]
537966:  CMPNE           R0, #0
537968:  BEQ.W           loc_537AF6
53796C:  LDR.W           R0, [R4,#0x440]; this
537970:  MOV             R1, R10; CPed *
537972:  MOVS            R2, #0; bool
537974:  BLX             j__ZN16CPedIntelligence18TestForStealthKillEP4CPedb; CPedIntelligence::TestForStealthKill(CPed *,bool)
537978:  CMP             R0, #1
53797A:  BNE.W           loc_537AF6
53797E:  LDRB.W          R0, [R4,#0x487]
537982:  LSLS            R0, R0, #0x1D
537984:  BMI.W           loc_538974
537988:  MOVS            R5, #0
53798A:  B               loc_537B0E
53798C:  LDR             R0, [SP,#0xC8+var_94]; this
53798E:  MOV             R1, R4; CPed *
537990:  MOVS            R2, #0; bool
537992:  MOVS            R3, #1; bool
537994:  BLX             j__ZN4CPad14WeaponJustDownEP4CPedbb; CPad::WeaponJustDown(CPed *,bool,bool)
537998:  CMP             R0, #1
53799A:  BNE.W           def_537A18; jumptable 00537A18 default case
53799E:  LDRSB.W         R0, [R4,#0x71C]
5379A2:  RSB.W           R0, R0, R0,LSL#3
5379A6:  ADD.W           R0, R4, R0,LSL#2
5379AA:  LDR.W           R1, [R0,#0x5A4]; unsigned int
5379AE:  SUB.W           R2, R1, #0x2C ; ','
5379B2:  CMP             R2, #2
5379B4:  BCS.W           loc_537C9C
5379B8:  LDR.W           R6, [R4,#0x440]
5379BC:  LDR             R0, [R6,#0x10]
5379BE:  CMP             R0, #0
5379C0:  BNE.W           def_537A18; jumptable 00537A18 default case
5379C4:  MOVS            R0, #(byte_9+3); this
5379C6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5379CA:  MOV             R5, R0
5379CC:  BLX             j__ZN22CTaskComplexUseGogglesC2Ev; CTaskComplexUseGoggles::CTaskComplexUseGoggles(void)
5379D0:  ADDS            R0, R6, #4; this
5379D2:  MOV             R1, R5; CTask *
5379D4:  MOVS            R2, #3; int
5379D6:  MOVS            R3, #0; bool
5379D8:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
5379DC:  LDR.W           R0, [R4,#0x444]
5379E0:  MOVS            R1, #1
5379E2:  STRB.W          R1, [R0,#0x85]
5379E6:  B               def_537A18; jumptable 00537A18 default case
5379E8:  LDR.W           R0, [R4,#0x450]
5379EC:  CMP             R0, #7
5379EE:  BEQ             loc_537A42
5379F0:  LDR.W           R0, [R4,#0x444]
5379F4:  LDRB.W          R1, [R4,#0x71C]
5379F8:  LDRB.W          R0, [R0,#0x20]
5379FC:  CMP             R0, R1
5379FE:  BNE             loc_537A42
537A00:  LDR             R0, [SP,#0xC8+var_94]; this
537A02:  MOV             R1, R4; CPed *
537A04:  MOVS            R2, #1; bool
537A06:  BLX             j__ZN4CPad9GetWeaponEP4CPedb; CPad::GetWeapon(CPed *,bool)
537A0A:  CBZ             R0, loc_537A42
537A0C:  LDR.W           R0, [R8]
537A10:  SUBS            R0, #1; switch 4 cases
537A12:  CMP             R0, #3
537A14:  BHI.W           def_537A18; jumptable 00537A18 default case
537A18:  TBH.W           [PC,R0,LSL#1]; switch jump
537A1C:  DCW 4; jump table for switch statement
537A1E:  DCW 0x1DF
537A20:  DCW 4
537A22:  DCW 0x222
537A24:  STR.W           R11, [SP,#0xC8+var_A4]; jumptable 00537A18 cases 1,3
537A28:  MOV             R0, R4; this
537A2A:  LDR.W           R1, [R4,#0x720]; CPed *
537A2E:  BLX             j__ZN17CTaskSimpleUseGun17RequirePistolWhipEP4CPedP7CEntity; CTaskSimpleUseGun::RequirePistolWhip(CPed *,CEntity *)
537A32:  CMP             R0, #0
537A34:  STR.W           R8, [SP,#0xC8+var_A0]
537A38:  BEQ.W           loc_537EE8
537A3C:  MOV.W           R8, #5
537A40:  B               loc_537F6C
537A42:  LDR.W           R0, [R4,#0x440]; this
537A46:  BLX             j__ZNK16CPedIntelligence12GetTaskThrowEv; CPedIntelligence::GetTaskThrow(void)
537A4A:  CMP             R0, #0
537A4C:  BEQ.W           def_537A18; jumptable 00537A18 default case
537A50:  LDR.W           R0, [R4,#0x440]
537A54:  MOVS            R1, #0; int
537A56:  ADDS            R0, #4; this
537A58:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
537A5C:  MOVS            R1, #1; bool
537A5E:  MOVS            R2, #0; CEntity *
537A60:  MOVS            R3, #0; CVector *
537A62:  BLX             j__ZN26CTaskSimpleThrowProjectile12ControlThrowEbP7CEntityP7CVector; CTaskSimpleThrowProjectile::ControlThrow(bool,CEntity *,CVector *)
537A66:  B               def_537A18; jumptable 00537A18 default case
537A68:  LDR.W           R0, =(TheCamera_ptr - 0x537A70)
537A6C:  ADD             R0, PC; TheCamera_ptr
537A6E:  LDR             R0, [R0]; TheCamera ; this
537A70:  BLX             j__ZN7CCamera24Using1stPersonWeaponModeEv; CCamera::Using1stPersonWeaponMode(void)
537A74:  CMP             R0, #0
537A76:  BEQ.W           loc_537C50
537A7A:  LDR.W           R0, =(TheCamera_ptr - 0x537A82)
537A7E:  ADD             R0, PC; TheCamera_ptr
537A80:  LDR             R0, [R0]; TheCamera ; this
537A82:  BLX             j__ZN7CCamera24Using1stPersonWeaponModeEv; CCamera::Using1stPersonWeaponMode(void)
537A86:  CMP             R0, #0
537A88:  BNE.W           loc_5378EC
537A8C:  BLX             j__ZN4CPad25WeaponUsesTargetingButtonEv; CPad::WeaponUsesTargetingButton(void)
537A90:  CMP             R0, #1
537A92:  BNE.W           loc_5378EC
537A96:  LDR.W           R0, [R4,#0x440]; this
537A9A:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
537A9E:  CBZ             R0, loc_537AAC
537AA0:  LDR.W           R0, [R4,#0x440]; this
537AA4:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
537AA8:  BLX             j__ZN17CTaskSimpleUseGun23PlayerPassiveControlGunEv; CTaskSimpleUseGun::PlayerPassiveControlGun(void)
537AAC:  LDR.W           R0, [R4,#0x444]
537AB0:  LDRH            R1, [R0,#0x34]
537AB2:  BIC.W           R1, R1, #4
537AB6:  STRH            R1, [R0,#0x34]
537AB8:  B.W             loc_538520
537ABC:  LDR             R5, [SP,#0xC8+var_94]
537ABE:  MOVS            R1, #0; bool
537AC0:  MOV             R0, R5; this
537AC2:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
537AC6:  CBNZ            R0, loc_537ADA
537AC8:  LDR.W           R0, [R4,#0x440]
537ACC:  MOVS            R1, #0; int
537ACE:  ADDS            R0, #4; this
537AD0:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
537AD4:  CMP             R0, #0
537AD6:  BEQ.W           loc_537D18
537ADA:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
537ADE:  CMP             R0, #2
537AE0:  BNE             loc_537AEE
537AE2:  LDR.W           R10, [R4,#0x7A4]
537AE6:  CMP.W           R10, #0
537AEA:  BNE.W           loc_537904
537AEE:  MOV.W           R11, #0
537AF2:  MOV.W           R10, #0
537AF6:  LDR             R0, [R4,#0x18]
537AF8:  MOVW            R1, #0x15B
537AFC:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
537B00:  MOV             R5, R0
537B02:  CMP             R5, #0
537B04:  ITTE NE
537B06:  MOVNE.W         R0, #0xC0000000
537B0A:  STRNE           R0, [R5,#0x18]
537B0C:  MOVEQ           R5, #0
537B0E:  LDR             R0, [SP,#0xC8+var_94]; this
537B10:  BLX             j__ZN4CPad19MeleeAttackJustDownEv; CPad::MeleeAttackJustDown(void)
537B14:  CMP             R5, #0
537B16:  MOV             R8, R0
537B18:  IT NE
537B1A:  CMPNE.W         R8, #0
537B1E:  BEQ             loc_537C18
537B20:  VMOV.F32        S0, #0.5
537B24:  VLDR            S2, [R5,#0x18]
537B28:  MOVS            R0, #0
537B2A:  VCMPE.F32       S2, S0
537B2E:  VMRS            APSR_nzcv, FPSCR
537B32:  IT GT
537B34:  MOVGT           R0, #1
537B36:  AND.W           R0, R0, R11
537B3A:  CMP             R0, #1
537B3C:  BNE             loc_537C18
537B3E:  LDR.W           R0, [R4,#0x440]; this
537B42:  MOV             R1, R10; CPed *
537B44:  MOVS            R2, #1; bool
537B46:  BLX             j__ZN16CPedIntelligence18TestForStealthKillEP4CPedb; CPedIntelligence::TestForStealthKill(CPed *,bool)
537B4A:  CMP             R0, #0
537B4C:  BEQ             loc_537C18
537B4E:  MOVS            R0, #dword_20; this
537B50:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
537B54:  MOV             R5, R0
537B56:  LDR             R0, [SP,#0xC8+var_A0]
537B58:  MOVS            R1, #1
537B5A:  MOV             R2, R10
537B5C:  LDR             R3, [R0,#0x1C]
537B5E:  MOV             R0, R5
537B60:  BLX             j__ZN22CTaskSimpleStealthKillC2EbP4CPed12AssocGroupId; CTaskSimpleStealthKill::CTaskSimpleStealthKill(bool,CPed *,AssocGroupId)
537B64:  LDR.W           R0, [R4,#0x440]
537B68:  MOV             R1, R5; CTask *
537B6A:  MOVS            R2, #3; int
537B6C:  MOVS            R3, #0; bool
537B6E:  ADDS            R0, #4; this
537B70:  MOV.W           R11, #3
537B74:  MOV.W           R8, #0
537B78:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
537B7C:  LDRSB.W         R0, [R4,#0x71C]
537B80:  MOV             R1, R4
537B82:  MOVS            R2, #0
537B84:  RSB.W           R0, R0, R0,LSL#3
537B88:  LDR.W           R3, [R6,R0,LSL#2]
537B8C:  ADD             R0, SP, #0xC8+var_50
537B8E:  STRD.W          R11, R8, [SP,#0xC8+var_C8]
537B92:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
537B96:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x537BA4)
537B9A:  ADD             R5, SP, #0xC8+var_90
537B9C:  LDRSB.W         R1, [R4,#0x71C]
537BA0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
537BA2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
537BA4:  LDR             R2, [R0]; int
537BA6:  RSB.W           R0, R1, R1,LSL#3
537BAA:  LDR.W           R1, [R10,#0x484]
537BAE:  LDR.W           R3, [R6,R0,LSL#2]; int
537BB2:  UBFX.W          R0, R1, #8, #1
537BB6:  STRD.W          R11, R8, [SP,#0xC8+var_C8]; int
537BBA:  MOV             R1, R4; this
537BBC:  STRD.W          R8, R0, [SP,#0xC8+var_C0]; int
537BC0:  MOV             R0, R5; int
537BC2:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
537BC6:  MOV             R1, R10; CPed *
537BC8:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
537BCC:  CMP             R0, #1
537BCE:  BNE             loc_537C00
537BD0:  ADD.W           R2, R5, #0x34 ; '4'
537BD4:  ADD             R0, SP, #0xC8+var_50; int
537BD6:  MOV             R1, R10; this
537BD8:  MOVS            R3, #0
537BDA:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
537BDE:  LDR.W           R0, [R10,#0x440]
537BE2:  MOV             R1, R5; CEvent *
537BE4:  MOVS            R2, #0; bool
537BE6:  ADDS            R0, #0x68 ; 'h'; this
537BE8:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
537BEC:  MOVS            R0, #0x12
537BEE:  MOV             R1, R10
537BF0:  MOV             R2, R4
537BF2:  BLX             j__ZN6CCrime11ReportCrimeE10eCrimeTypeP7CEntityP4CPed; CCrime::ReportCrime(eCrimeType,CEntity *,CPed *)
537BF6:  ADD.W           R0, R4, #0x398; this
537BFA:  MOVS            R1, #0x9C; int
537BFC:  BLX             j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
537C00:  MOV             R0, R4; this
537C02:  BLX             j__ZN10CPlayerPed17ClearWeaponTargetEv; CPlayerPed::ClearWeaponTarget(void)
537C06:  ADD             R0, SP, #0xC8+var_90; this
537C08:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
537C0C:  ADD             R0, SP, #0xC8+var_50; this
537C0E:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
537C12:  LDRD.W          R11, R8, [SP,#0xC8+var_A4]
537C16:  B               def_537A18; jumptable 00537A18 default case
537C18:  CMP.W           R8, #1
537C1C:  BEQ             loc_537C7C
537C1E:  LDR.W           R11, [SP,#0xC8+var_A4]
537C22:  UXTB.W          R0, R8
537C26:  CMP             R0, #2
537C28:  BNE             loc_537C86
537C2A:  LDRSB.W         R0, [R4,#0x71C]
537C2E:  MOVS            R1, #1
537C30:  RSB.W           R0, R0, R0,LSL#3
537C34:  ADD.W           R0, R4, R0,LSL#2
537C38:  LDR.W           R0, [R0,#0x5A4]
537C3C:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
537C40:  LDRB            R0, [R0,#0x19]
537C42:  MOV.W           R8, #0xC
537C46:  LSLS            R0, R0, #0x1E
537C48:  IT MI
537C4A:  MOVMI.W         R8, #0xB
537C4E:  B               loc_538080
537C50:  LDR             R0, [SP,#0xC8+var_94]; this
537C52:  BLX             j__ZN4CPad17GetEnterTargetingEv; CPad::GetEnterTargeting(void)
537C56:  CMP             R0, #0
537C58:  BEQ             loc_537CF2
537C5A:  SUB.W           R0, R5, #0x22 ; '"'; switch 10 cases
537C5E:  CMP             R0, #9
537C60:  BHI.W           def_537C64; jumptable 00537C64 default case, cases 37-42
537C64:  TBB.W           [PC,R0]; switch jump
537C68:  DCB 5; jump table for switch statement
537C69:  DCB 0x8A
537C6A:  DCB 0x8F
537C6B:  DCB 0x9F
537C6C:  DCB 0x9F
537C6D:  DCB 0x9F
537C6E:  DCB 0x9F
537C6F:  DCB 0x9F
537C70:  DCB 0x9F
537C71:  DCB 0xA4
537C72:  LDR.W           R0, =(TheCamera_ptr - 0x537C7C); jumptable 00537C64 case 34
537C76:  MOVS            R1, #7
537C78:  ADD             R0, PC; TheCamera_ptr
537C7A:  B               loc_537DB8
537C7C:  MOV.W           R8, #0xB
537C80:  LDR.W           R11, [SP,#0xC8+var_A4]
537C84:  B               loc_538080
537C86:  LDR             R5, [SP,#0xC8+var_94]
537C88:  MOV             R0, R5; this
537C8A:  BLX             j__ZN4CPad8GetBlockEv; CPad::GetBlock(void)
537C8E:  CBZ             R0, loc_537CC4
537C90:  MOV.W           R8, #2
537C94:  B               loc_538080
537C96:  ALIGN 4
537C98:  DCFS 1.9
537C9C:  CMP             R1, #0x28 ; '('
537C9E:  BNE.W           def_537A18; jumptable 00537A18 default case
537CA2:  LDR             R1, [R4,#0x14]
537CA4:  MOVS            R2, #0
537CA6:  STRD.W          R2, R2, [SP,#0xC8+var_C8]; CEntity *
537CAA:  ADDW            R0, R0, #0x5A4; this
537CAE:  STR             R2, [SP,#0xC8+var_C0]; CVector *
537CB0:  ADD.W           R2, R1, #0x30 ; '0'
537CB4:  CMP             R1, #0
537CB6:  MOV             R1, R4; CEntity *
537CB8:  IT EQ
537CBA:  ADDEQ           R2, R4, #4; CVector *
537CBC:  MOV             R3, R2; CVector *
537CBE:  BLX             j__ZN7CWeapon4FireEP7CEntityP7CVectorS3_S1_S3_S3_; CWeapon::Fire(CEntity *,CVector *,CVector *,CEntity *,CVector *,CVector *)
537CC2:  B               def_537A18; jumptable 00537A18 default case
537CC4:  MOV             R0, R5; this
537CC6:  BLX             j__ZN4CPad14GetMeleeAttackEv; CPad::GetMeleeAttack(void)
537CCA:  LDR             R1, [SP,#0xC8+var_98]
537CCC:  ADD.W           R6, R4, #0x440
537CD0:  CMP             R1, #9
537CD2:  BNE.W           loc_5385BC
537CD6:  CMP             R0, #0
537CD8:  BEQ.W           loc_5385BC
537CDC:  LDR             R0, [R6]
537CDE:  MOVS            R1, #0; int
537CE0:  ADDS            R0, #4; this
537CE2:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
537CE6:  CMP             R0, #0
537CE8:  BEQ.W           loc_5385BC
537CEC:  MOV.W           R8, #0xB
537CF0:  B               loc_538080
537CF2:  LDR             R0, [SP,#0xC8+var_94]; this
537CF4:  MOVS            R1, #0; bool
537CF6:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
537CFA:  CMP             R0, #1
537CFC:  BNE.W           loc_537A7A
537D00:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x537D0C)
537D04:  LDR.W           R1, [R11,#0x24]
537D08:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
537D0A:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
537D0C:  LDR             R0, [R0]; CTimer::m_FrameCounter
537D0E:  SUBS            R0, #1
537D10:  CMP             R1, R0
537D12:  BCS.W           loc_537A7A
537D16:  B               loc_537C5A
537D18:  ADD.W           R0, R4, #0x440
537D1C:  MOVW            R1, #0x133; int
537D20:  MOV             R10, R0
537D22:  LDR             R0, [R0]
537D24:  ADDS            R0, #4; this
537D26:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
537D2A:  MOV             R6, R0
537D2C:  LDR.W           R0, =(TheCamera_ptr - 0x537D34)
537D30:  ADD             R0, PC; TheCamera_ptr
537D32:  LDR             R0, [R0]; TheCamera ; this
537D34:  BLX             j__ZN7CCamera24Using1stPersonWeaponModeEv; CCamera::Using1stPersonWeaponMode(void)
537D38:  MOV.W           R8, #0
537D3C:  CMP             R0, #0
537D3E:  BNE.W           loc_537F18
537D42:  CMP             R6, #0
537D44:  BNE.W           loc_537F18
537D48:  LDR.W           R0, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x537D52)
537D4C:  MOV             R6, R10
537D4E:  ADD             R0, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
537D50:  LDR             R0, [R0]; CRopes::PlayerControlsCrane ...
537D52:  LDR             R0, [R0]; CRopes::PlayerControlsCrane
537D54:  CMP             R0, #0
537D56:  BNE.W           loc_538050
537D5A:  MOV             R0, R5; this
537D5C:  BLX             j__ZN4CPad19MeleeAttackJustDownEv; CPad::MeleeAttackJustDown(void)
537D60:  CMP             R0, #0
537D62:  BEQ.W           loc_53804C
537D66:  MOVS            R0, #0x24 ; '$'
537D68:  MOVS            R1, #0
537D6A:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
537D6E:  MOV.W           R8, #0xB
537D72:  CMP             R0, #0
537D74:  IT NE
537D76:  MOVNE.W         R8, #0xC
537D7A:  B               loc_538050
537D7C:  LDR.W           R0, =(TheCamera_ptr - 0x537D86); jumptable 00537C64 case 35
537D80:  MOVS            R1, #8
537D82:  ADD             R0, PC; TheCamera_ptr
537D84:  B               loc_537DB8
537D86:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x537D92); jumptable 00537C64 case 36
537D8A:  LDR.W           R1, =(TheCamera_ptr - 0x537D98)
537D8E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
537D90:  LDR.W           R3, [R4,#0x444]
537D94:  ADD             R1, PC; TheCamera_ptr
537D96:  LDR             R2, [R0]; CTimer::m_snTimeInMilliseconds ...
537D98:  LDR             R0, [R1]; TheCamera
537D9A:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds
537D9C:  MOVS            R2, #0
537D9E:  STRD.W          R1, R2, [R3,#0x94]
537DA2:  MOVS            R1, #0x33 ; '3'
537DA4:  B               loc_537DBA
537DA6:  LDR.W           R0, =(TheCamera_ptr - 0x537DB0); jumptable 00537C64 default case, cases 37-42
537DAA:  MOVS            R1, #0x22 ; '"'
537DAC:  ADD             R0, PC; TheCamera_ptr
537DAE:  B               loc_537DB8
537DB0:  LDR.W           R0, =(TheCamera_ptr - 0x537DBA); jumptable 00537C64 case 43
537DB4:  MOVS            R1, #0x2E ; '.'; __int16
537DB6:  ADD             R0, PC; TheCamera_ptr
537DB8:  LDR             R0, [R0]; TheCamera ; this
537DBA:  MOVS            R2, #0; __int16
537DBC:  MOVS            R3, #0; __int16
537DBE:  BLX             j__ZN7CCamera22SetNewPlayerWeaponModeEsss; CCamera::SetNewPlayerWeaponMode(short,short,short)
537DC2:  MOV             R0, R4
537DC4:  MOVS            R1, #0xC
537DC6:  ADD             SP, SP, #0x90
537DC8:  VPOP            {D8-D10}
537DCC:  ADD             SP, SP, #4
537DCE:  POP.W           {R8-R11}
537DD2:  POP.W           {R4-R7,LR}
537DD6:  B.W             sub_18D928
537DDA:  LDRSB.W         R0, [R4,#0x71C]; jumptable 00537A18 case 2
537DDE:  RSB.W           R0, R0, R0,LSL#3
537DE2:  ADD.W           R0, R4, R0,LSL#2
537DE6:  LDR.W           R1, [R0,#0x5A4]
537DEA:  SUBS            R1, #0x23 ; '#'
537DEC:  CMP             R1, #1
537DEE:  BHI.W           loc_537F1C
537DF2:  STR.W           R11, [SP,#0xC8+var_A4]
537DF6:  LDR.W           R1, [R4,#0x440]
537DFA:  LDR.W           R6, [R0,#0x5A8]
537DFE:  ADDS            R0, R1, #4; this
537E00:  MOVS            R1, #0; int
537E02:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
537E06:  LDR.W           R11, [R4,#0x440]
537E0A:  MOVS            R5, #2
537E0C:  CMP             R6, #2
537E0E:  IT EQ
537E10:  MOVEQ           R5, #1
537E12:  CMP             R0, #0
537E14:  BEQ.W           loc_53893A
537E18:  ADD.W           R0, R11, #4; this
537E1C:  MOVS            R1, #0; int
537E1E:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
537E22:  LDR             R1, [R0]
537E24:  LDR             R1, [R1,#0x14]
537E26:  BLX             R1
537E28:  MOV             R1, R0
537E2A:  LDR.W           R0, [R4,#0x440]; this
537E2E:  MOVW            R2, #0x3F9
537E32:  CMP             R1, R2
537E34:  BNE.W           loc_5389B8
537E38:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
537E3C:  LDR.W           R11, [SP,#0xC8+var_A4]
537E40:  CMP             R0, #0
537E42:  BEQ.W           def_537A18; jumptable 00537A18 default case
537E46:  LDR.W           R0, [R4,#0x440]
537E4A:  MOVS            R1, #0; int
537E4C:  ADDS            R0, #4; this
537E4E:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
537E52:  LDR.W           R2, [R4,#0x720]; CEntity *
537E56:  MOV             R1, R4; CPed *
537E58:  MOV             R3, R5; signed __int8
537E5A:  BLX             j__ZN17CTaskSimpleUseGun10ControlGunEP4CPedP7CEntitya; CTaskSimpleUseGun::ControlGun(CPed *,CEntity *,signed char)
537E5E:  B               def_537A18; jumptable 00537A18 default case
537E60:  LDR.W           R0, =(TheCamera_ptr - 0x537E68); jumptable 00537A18 case 4
537E64:  ADD             R0, PC; TheCamera_ptr
537E66:  LDR             R0, [R0]; TheCamera
537E68:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
537E6C:  ADD.W           R1, R1, R1,LSL#5
537E70:  ADD.W           R0, R0, R1,LSL#4
537E74:  LDRH.W          R0, [R0,#0x17E]
537E78:  CMP             R0, #0x2E ; '.'
537E7A:  BNE.W           def_537A18; jumptable 00537A18 default case
537E7E:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x537E8A)
537E82:  LDRSB.W         R1, [R4,#0x71C]
537E86:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
537E88:  RSB.W           R1, R1, R1,LSL#3
537E8C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
537E8E:  ADD.W           R1, R4, R1,LSL#2
537E92:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
537E94:  LDR.W           R1, [R1,#0x5B4]
537E98:  CMP             R0, R1
537E9A:  BLS.W           def_537A18; jumptable 00537A18 default case
537E9E:  MOVW            R0, #0x999A
537EA2:  MOVS            R6, #0
537EA4:  MOVT            R0, #0x3F19
537EA8:  STRD.W          R6, R6, [SP,#0xC8+var_90]
537EAC:  STR             R0, [SP,#0xC8+var_88]
537EAE:  ADD             R5, SP, #0xC8+var_90
537EB0:  LDR             R1, [R4,#0x14]
537EB2:  ADD             R0, SP, #0xC8+var_50
537EB4:  MOV             R2, R5
537EB6:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
537EBA:  VLDR            D16, [SP,#0xC8+var_50]
537EBE:  MOV             R1, R4; CEntity *
537EC0:  LDR             R0, [SP,#0xC8+var_48]
537EC2:  MOV             R2, R5; CVector *
537EC4:  STR             R0, [SP,#0xC8+var_88]
537EC6:  MOVS            R3, #0; CVector *
537EC8:  VSTR            D16, [SP,#0xC8+var_90]
537ECC:  LDRSB.W         R0, [R4,#0x71C]
537ED0:  STRD.W          R6, R6, [SP,#0xC8+var_C8]; CEntity *
537ED4:  STR             R6, [SP,#0xC8+var_C0]; CVector *
537ED6:  RSB.W           R0, R0, R0,LSL#3
537EDA:  ADD.W           R0, R4, R0,LSL#2
537EDE:  ADDW            R0, R0, #0x5A4; this
537EE2:  BLX             j__ZN7CWeapon4FireEP7CEntityP7CVectorS3_S1_S3_S3_; CWeapon::Fire(CEntity *,CVector *,CVector *,CEntity *,CVector *,CVector *)
537EE6:  B               def_537A18; jumptable 00537A18 default case
537EE8:  LDRSB.W         R0, [R4,#0x71C]
537EEC:  RSB.W           R0, R0, R0,LSL#3
537EF0:  ADD.W           R0, R4, R0,LSL#2
537EF4:  LDR.W           R0, [R0,#0x5A8]
537EF8:  CMP             R0, #2
537EFA:  BNE             loc_537F68
537EFC:  LDR             R0, [SP,#0xC8+var_94]; this
537EFE:  MOVS            R1, #0; bool
537F00:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
537F04:  CMP             R0, #0
537F06:  ITT EQ
537F08:  LDREQ.W         R0, [R4,#0x720]
537F0C:  CMPEQ           R0, #0
537F0E:  BEQ.W           loc_5389D4
537F12:  MOV.W           R8, #1
537F16:  B               loc_537F6C
537F18:  MOV             R6, R10
537F1A:  B               loc_538050
537F1C:  LDR.W           R0, [R4,#0x440]
537F20:  MOVS            R1, #0; int
537F22:  ADDS            R0, #4; this
537F24:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
537F28:  CMP             R0, #0
537F2A:  BNE.W           loc_538882
537F2E:  LDR             R0, [SP,#0xC8+var_94]; this
537F30:  MOV             R1, R4; CPed *
537F32:  MOVS            R2, #1; bool
537F34:  MOVS            R3, #1; bool
537F36:  BLX             j__ZN4CPad14WeaponJustDownEP4CPedbb; CPad::WeaponJustDown(CPed *,bool,bool)
537F3A:  CMP             R0, #1
537F3C:  BNE.W           loc_538882
537F40:  MOVS            R0, #dword_24; this
537F42:  LDR.W           R6, [R4,#0x440]
537F46:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
537F4A:  MOV             R5, R0
537F4C:  MOVS            R0, #0
537F4E:  STR             R0, [SP,#0xC8+var_C8]
537F50:  MOV             R0, R5
537F52:  MOVS            R1, #0
537F54:  MOVS            R2, #0
537F56:  MOVS            R3, #0
537F58:  BLX             j__ZN26CTaskSimpleThrowProjectileC2EP7CEntity7CVector; CTaskSimpleThrowProjectile::CTaskSimpleThrowProjectile(CEntity *,CVector)
537F5C:  ADDS            R0, R6, #4; this
537F5E:  MOV             R1, R5; CTask *
537F60:  MOVS            R2, #0; int
537F62:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
537F66:  B               def_537A18; jumptable 00537A18 default case
537F68:  MOV.W           R8, #2
537F6C:  LDR.W           R0, [R4,#0x440]
537F70:  MOVS            R1, #0; int
537F72:  MOV.W           R11, #0
537F76:  ADDS            R0, #4; this
537F78:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
537F7C:  LDR.W           R5, [R4,#0x440]
537F80:  CBZ             R0, loc_537FC2
537F82:  ADDS            R0, R5, #4; this
537F84:  MOVS            R1, #0; int
537F86:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
537F8A:  LDR             R1, [R0]
537F8C:  LDR             R1, [R1,#0x14]
537F8E:  BLX             R1
537F90:  MOV             R1, R0
537F92:  LDR.W           R0, [R4,#0x440]; this
537F96:  MOVW            R2, #0x3F9
537F9A:  CMP             R1, R2
537F9C:  BNE             loc_537FF6
537F9E:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
537FA2:  LDR.W           R11, [SP,#0xC8+var_A4]
537FA6:  CBZ             R0, loc_53800E
537FA8:  LDR.W           R0, [R4,#0x440]
537FAC:  MOVS            R1, #0; int
537FAE:  ADDS            R0, #4; this
537FB0:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
537FB4:  LDR.W           R2, [R4,#0x720]; CEntity *
537FB8:  MOV             R1, R4; CPed *
537FBA:  MOV             R3, R8; signed __int8
537FBC:  BLX             j__ZN17CTaskSimpleUseGun10ControlGunEP4CPedP7CEntitya; CTaskSimpleUseGun::ControlGun(CPed *,CEntity *,signed char)
537FC0:  B               loc_53800E
537FC2:  MOVS            R0, #off_3C; this
537FC4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
537FC8:  LDR.W           R1, [R4,#0x720]
537FCC:  MOV             R6, R0
537FCE:  MOVS            R0, #1
537FD0:  STRD.W          R11, R8, [SP,#0xC8+var_C8]
537FD4:  STRD.W          R0, R11, [SP,#0xC8+var_C0]
537FD8:  MOV             R0, R6
537FDA:  MOVS            R2, #0
537FDC:  MOVS            R3, #0
537FDE:  BLX             j__ZN17CTaskSimpleUseGunC2EP7CEntity7CVectorash; CTaskSimpleUseGun::CTaskSimpleUseGun(CEntity *,CVector,signed char,short,uchar)
537FE2:  ADDS            R0, R5, #4; this
537FE4:  MOV             R1, R6; CTask *
537FE6:  MOVS            R2, #0; int
537FE8:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
537FEC:  LDR.W           R0, [R4,#0x444]
537FF0:  STR.W           R11, [R0,#0x2C]
537FF4:  B               loc_53800A
537FF6:  ADDS            R0, #4; this
537FF8:  MOVS            R1, #0; int
537FFA:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
537FFE:  LDR             R1, [R0]
538000:  MOVS            R2, #1
538002:  MOVS            R3, #0
538004:  LDR             R6, [R1,#0x1C]
538006:  MOV             R1, R4
538008:  BLX             R6
53800A:  LDR.W           R11, [SP,#0xC8+var_A4]
53800E:  LDR             R0, [SP,#0xC8+var_94]; this
538010:  MOVS            R1, #0; bool
538012:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
538016:  CMP             R0, #0
538018:  BNE             loc_5380D6
53801A:  LDRSB.W         R0, [R4,#0x71C]
53801E:  LDR.W           R8, [SP,#0xC8+var_A0]
538022:  RSB.W           R0, R0, R0,LSL#3
538026:  ADD.W           R0, R4, R0,LSL#2
53802A:  LDR.W           R0, [R0,#0x5A4]
53802E:  CMP             R0, #0x2A ; '*'
538030:  BNE             def_537A18; jumptable 00537A18 default case
538032:  LDR.W           R0, =(_ZN7CWeapon24ms_fExtinguisherAimAngleE_ptr - 0x53803A)
538036:  ADD             R0, PC; _ZN7CWeapon24ms_fExtinguisherAimAngleE_ptr
538038:  LDR             R0, [R0]; CWeapon::ms_fExtinguisherAimAngle ...
53803A:  VLDR            S0, [R0]
53803E:  LDR.W           R0, [R4,#0x444]
538042:  VNEG.F32        S0, S0
538046:  VSTR            S0, [R0,#0x54]
53804A:  B               def_537A18; jumptable 00537A18 default case
53804C:  MOV.W           R8, #0
538050:  MOV             R0, R5; this
538052:  BLX             j__ZN4CPad8GetBlockEv; CPad::GetBlock(void)
538056:  LDR             R1, [R4,#0x18]
538058:  CMP             R0, #0
53805A:  IT NE
53805C:  MOVNE.W         R8, #2
538060:  MOV             R0, R1
538062:  MOVW            R1, #0x15B
538066:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
53806A:  CMP             R0, #0
53806C:  MOV.W           R10, #0
538070:  ITT NE
538072:  MOVNE.W         R1, #0xC0000000
538076:  STRNE           R1, [R0,#0x18]
538078:  MOVS.W          R0, R8,LSL#24
53807C:  BEQ.W           loc_5385BC
538080:  LDR.W           R0, [R4,#0x440]
538084:  MOVS            R1, #0; int
538086:  ADDS            R0, #4; this
538088:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
53808C:  LDR.W           R5, [R4,#0x440]
538090:  CBZ             R0, loc_5380B4
538092:  MOV             R0, R5; this
538094:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
538098:  CBZ             R0, loc_5380D6
53809A:  LDR.W           R0, [R4,#0x440]
53809E:  MOVS            R1, #0; int
5380A0:  ADDS            R0, #4; this
5380A2:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5380A6:  LDR.W           R1, [R4,#0x720]; CEntity *
5380AA:  SXTB.W          R2, R8; signed __int8
5380AE:  BLX             j__ZN16CTaskSimpleFight12ControlFightEP7CEntitya; CTaskSimpleFight::ControlFight(CEntity *,signed char)
5380B2:  B               loc_5380D6
5380B4:  MOVS            R0, #word_28; this
5380B6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5380BA:  LDR.W           R1, [R4,#0x720]; CEntity *
5380BE:  SXTB.W          R2, R8; int
5380C2:  MOV.W           R3, #0x7D0; unsigned int
5380C6:  MOV             R6, R0
5380C8:  BLX             j__ZN16CTaskSimpleFightC2EP7CEntityij; CTaskSimpleFight::CTaskSimpleFight(CEntity *,int,uint)
5380CC:  ADDS            R0, R5, #4; this
5380CE:  MOV             R1, R6; CTask *
5380D0:  MOVS            R2, #0; int
5380D2:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
5380D6:  LDR.W           R8, [SP,#0xC8+var_A0]
5380DA:  LDRSB.W         R0, [R4,#0x71C]; jumptable 00537A18 default case
5380DE:  RSB.W           R0, R0, R0,LSL#3
5380E2:  ADD.W           R0, R4, R0,LSL#2
5380E6:  LDR.W           R0, [R0,#0x5A8]
5380EA:  CMP             R0, #2
5380EC:  BNE             loc_53811C
5380EE:  LDRB.W          R0, [R8,#0x19]
5380F2:  LSLS            R0, R0, #0x1B
5380F4:  BPL             loc_53811C
5380F6:  LDR.W           R0, [R4,#0x440]; this
5380FA:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
5380FE:  CMP             R0, #0
538100:  BEQ.W           loc_5383F6
538104:  LDR.W           R0, [R4,#0x440]
538108:  MOVS            R1, #0; int
53810A:  ADDS            R0, #4; this
53810C:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
538110:  LDR.W           R2, [R4,#0x720]; CEntity *
538114:  MOV             R1, R4; CPed *
538116:  MOVS            R3, #4; signed __int8
538118:  BLX             j__ZN17CTaskSimpleUseGun10ControlGunEP4CPedP7CEntitya; CTaskSimpleUseGun::ControlGun(CPed *,CEntity *,signed char)
53811C:  LDR.W           R0, [R4,#0x720]
538120:  CBNZ            R0, loc_538134
538122:  MOVS            R0, #0x24 ; '$'
538124:  MOVS            R1, #0
538126:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
53812A:  CMP             R0, #1
53812C:  ITT EQ
53812E:  MOVEQ           R0, R4; this
538130:  BLXEQ           j__ZN10CPlayerPed20HandleMeleeTargetingEv; CPlayerPed::HandleMeleeTargeting(void)
538134:  LDR.W           R0, [R4,#0x738]
538138:  LDR             R5, [SP,#0xC8+var_98]
53813A:  CBZ             R0, loc_53814A
53813C:  CMP             R5, #0x21 ; '!'
53813E:  BEQ             loc_538182
538140:  LDR.W           R0, [R8,#0x18]
538144:  ANDS.W          R0, R0, #4
538148:  BNE             loc_538182
53814A:  LDR.W           R0, [R4,#0x444]
53814E:  LDRB.W          R1, [R4,#0x71C]
538152:  LDRB.W          R0, [R0,#0x20]
538156:  CMP             R0, R1
538158:  BNE             loc_538182
53815A:  LDR.W           R0, [R4,#0x450]
53815E:  CMP             R0, #7
538160:  ITT NE
538162:  LDRNE.W         R0, [R8]
538166:  CMPNE           R0, #2
538168:  BEQ             loc_538182
53816A:  SUB.W           R0, R5, #0x28 ; '('
53816E:  CMP             R0, #5
538170:  BHI.W           loc_538658
538174:  MOVS            R1, #1
538176:  LSL.W           R0, R1, R0
53817A:  TST.W           R0, #0x31
53817E:  BEQ.W           loc_538658
538182:  LDR.W           R0, [R4,#0x444]
538186:  LDRB.W          R1, [R4,#0x71C]
53818A:  LDRB.W          R0, [R0,#0x20]
53818E:  CMP             R0, R1
538190:  BNE             loc_538206
538192:  LDR.W           R0, [R4,#0x450]
538196:  CMP             R0, #7
538198:  BEQ             loc_538206
53819A:  LDR.W           R0, =(TheCamera_ptr - 0x5381A2)
53819E:  ADD             R0, PC; TheCamera_ptr
5381A0:  LDR             R0, [R0]; TheCamera ; this
5381A2:  BLX             j__ZN7CCamera24Using1stPersonWeaponModeEv; CCamera::Using1stPersonWeaponMode(void)
5381A6:  CMP             R0, #1
5381A8:  BNE             loc_538206
5381AA:  LDR.W           R0, =(TheCamera_ptr - 0x5381B2)
5381AE:  ADD             R0, PC; TheCamera_ptr
5381B0:  LDR             R0, [R0]; TheCamera ; this
5381B2:  BLX             j__ZN7CCamera17IsTargetingActiveEv; CCamera::IsTargetingActive(void)
5381B6:  CMP             R0, #0
5381B8:  ITT EQ
5381BA:  LDREQ.W         R0, [R4,#0x100]
5381BE:  CMPEQ           R0, #0
5381C0:  BEQ             loc_538206
5381C2:  LDR.W           R0, [R4,#0x440]
5381C6:  MOVS            R1, #0; int
5381C8:  MOV             R6, R8
5381CA:  MOV.W           R8, #0
5381CE:  ADDS            R0, #4; this
5381D0:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5381D4:  LDR.W           R5, [R4,#0x440]
5381D8:  CMP             R0, #0
5381DA:  BEQ.W           loc_5385FE
5381DE:  MOV             R0, R5; this
5381E0:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
5381E4:  CMP             R0, #0
5381E6:  MOV             R8, R6
5381E8:  BEQ.W           loc_538338
5381EC:  LDR.W           R0, [R4,#0x440]
5381F0:  MOVS            R1, #0; int
5381F2:  ADDS            R0, #4; this
5381F4:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5381F8:  LDR.W           R2, [R4,#0x720]; CEntity *
5381FC:  MOV             R1, R4; CPed *
5381FE:  MOVS            R3, #1; signed __int8
538200:  BLX             j__ZN17CTaskSimpleUseGun10ControlGunEP4CPedP7CEntitya; CTaskSimpleUseGun::ControlGun(CPed *,CEntity *,signed char)
538204:  B               loc_538338
538206:  LDR.W           R0, [R4,#0x720]
53820A:  CBNZ            R0, loc_538220
53820C:  LDR.W           R0, [R4,#0x444]
538210:  LDRB.W          R0, [R0,#0x34]
538214:  LSLS            R0, R0, #0x1C
538216:  BMI             loc_538220
538218:  ADD.W           R5, R4, #0x440
53821C:  LDR             R6, [SP,#0xC8+var_94]
53821E:  B               loc_538258
538220:  LDR.W           R0, [R4,#0x440]; this
538224:  ADD.W           R5, R4, #0x440
538228:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
53822C:  LDR             R6, [SP,#0xC8+var_94]
53822E:  CBZ             R0, loc_538258
538230:  LDR.W           R0, [R4,#0x440]; this
538234:  LDR.W           R1, [R4,#0x444]
538238:  VLDR            S16, [R1,#0x10]
53823C:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
538240:  VMOV.F32        S0, #-0.5
538244:  MOVS            R1, #0; CEntity *
538246:  VCMPE.F32       S16, S0
53824A:  VMRS            APSR_nzcv, FPSCR
53824E:  ITE GE
538250:  MOVGE           R2, #0xF
538252:  MOVLT           R2, #0x10; signed __int8
538254:  BLX             j__ZN16CTaskSimpleFight12ControlFightEP7CEntitya; CTaskSimpleFight::ControlFight(CEntity *,signed char)
538258:  LDR             R0, [R5]; this
53825A:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
53825E:  CMP             R0, #0
538260:  BEQ             loc_538318
538262:  MOV             R0, R6; this
538264:  MOV             R1, R4; CPed *
538266:  MOVS            R2, #0; bool
538268:  BLX             j__ZN4CPad9GetWeaponEP4CPedb; CPad::GetWeapon(CPed *,bool)
53826C:  CBZ             R0, loc_53827A
53826E:  LDR             R0, [R5]; this
538270:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
538274:  BLX             j__ZN17CTaskSimpleUseGun23PlayerPassiveControlGunEv; CTaskSimpleUseGun::PlayerPassiveControlGun(void)
538278:  B               loc_5382BA
53827A:  MOV             R0, R6; this
53827C:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
538280:  CMP             R0, #0x32 ; '2'
538282:  BGT             loc_5382A8
538284:  MOV             R0, R6; this
538286:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
53828A:  CMN.W           R0, #0x32 ; '2'
53828E:  BLT             loc_5382A8
538290:  MOV             R0, R6; this
538292:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
538296:  CMP             R0, #0x32 ; '2'
538298:  BGT             loc_5382A8
53829A:  MOV             R0, R6; this
53829C:  MOV             R9, #0xFFFFFFCE
5382A0:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
5382A4:  CMP             R0, R9
5382A6:  BGE             loc_53826E
5382A8:  LDR             R0, [R5]; this
5382AA:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
5382AE:  LDR.W           R2, [R4,#0x720]; CEntity *
5382B2:  MOV             R1, R4; CPed *
5382B4:  MOVS            R3, #7; signed __int8
5382B6:  BLX             j__ZN17CTaskSimpleUseGun10ControlGunEP4CPedP7CEntitya; CTaskSimpleUseGun::ControlGun(CPed *,CEntity *,signed char)
5382BA:  LDRB.W          R0, [R8,#0x18]
5382BE:  LSLS            R0, R0, #0x1E
5382C0:  BMI             loc_5382FA
5382C2:  LDR.W           R0, =(TheCamera_ptr - 0x5382CA)
5382C6:  ADD             R0, PC; TheCamera_ptr
5382C8:  LDR             R1, [R0]; TheCamera
5382CA:  LDRB.W          R0, [R1,#(byte_951FFF - 0x951FA8)]
5382CE:  ADD.W           R0, R0, R0,LSL#5
5382D2:  ADD.W           R1, R1, R0,LSL#4
5382D6:  LDRH.W          R1, [R1,#0x17E]
5382DA:  CMP             R1, #4
5382DC:  BNE             loc_5382FA
5382DE:  LDR.W           R1, =(TheCamera_ptr - 0x5382E6)
5382E2:  ADD             R1, PC; TheCamera_ptr
5382E4:  LDR             R1, [R1]; TheCamera
5382E6:  ADD.W           R0, R1, R0,LSL#4
5382EA:  LDRD.W          R2, R1, [R0,#0x2D8]; x
5382EE:  EOR.W           R0, R2, #0x80000000; y
5382F2:  BLX             atan2f
5382F6:  STR.W           R0, [R4,#0x560]
5382FA:  LDR.W           R0, [R4,#0x720]
5382FE:  CBNZ            R0, loc_53830C
538300:  LDR.W           R0, [R4,#0x444]
538304:  LDRB.W          R0, [R0,#0x34]
538308:  LSLS            R0, R0, #0x1C
53830A:  BPL             loc_538318
53830C:  LDR             R0, [R5]; this
53830E:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
538312:  MOV             R1, R4; CPed *
538314:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
538318:  LDR.W           R0, [R4,#0x720]
53831C:  CMP             R0, #0
53831E:  ITT NE
538320:  MOVNE           R0, R4; this
538322:  BLXNE           j__ZN10CPlayerPed17ClearWeaponTargetEv; CPlayerPed::ClearWeaponTarget(void)
538326:  MOV             R0, R4; this
538328:  BLX             j__ZN10CPlayerPed25Clear3rdPersonMouseTargetEv; CPlayerPed::Clear3rdPersonMouseTarget(void)
53832C:  LDR.W           R0, [R4,#0x444]
538330:  LDRH            R1, [R0,#0x34]
538332:  BIC.W           R1, R1, #8
538336:  STRH            R1, [R0,#0x34]
538338:  LDR.W           R0, [R4,#0x444]
53833C:  MOVS            R3, #4
53833E:  LDRH.W          R1, [R4,#0x720]
538342:  LDRH            R2, [R0,#0x34]
538344:  AND.W           R1, R3, R1,LSL#2
538348:  BIC.W           R2, R2, #4
53834C:  ORRS            R1, R2
53834E:  STRH            R1, [R0,#0x34]
538350:  LDR.W           R5, [R4,#0x720]
538354:  CMP             R5, #0
538356:  BEQ.W           loc_5384E0
53835A:  LDRB.W          R0, [R5,#0x3A]
53835E:  AND.W           R0, R0, #7
538362:  CMP             R0, #3
538364:  BNE             loc_53837C
538366:  LDRB.W          R0, [R5,#0x48E]
53836A:  LSLS            R0, R0, #0x1B
53836C:  BMI             loc_538380
53836E:  LDR.W           R0, [R5,#0x44C]
538372:  MOVS            R6, #0
538374:  CMP             R0, #0x37 ; '7'
538376:  IT EQ
538378:  MOVEQ           R6, #1
53837A:  B               loc_538382
53837C:  MOVS            R6, #0
53837E:  B               loc_538382
538380:  MOVS            R6, #1
538382:  LDR.W           R0, [R8]
538386:  CBNZ            R0, loc_538394
538388:  LDR.W           R0, [R4,#0x440]; this
53838C:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
538390:  CBNZ            R6, loc_5383A8
538392:  CBZ             R0, loc_5383A8
538394:  LDRB.W          R0, [R4,#0x487]
538398:  LSLS            R0, R0, #0x1D
53839A:  BMI.W           loc_5384E0
53839E:  LDRB.W          R0, [R8,#0x18]
5383A2:  LSLS            R0, R0, #0x1E
5383A4:  BPL.W           loc_5384E0
5383A8:  LDR             R0, [R4,#0x14]
5383AA:  LDR             R1, [R5,#0x14]
5383AC:  ADD.W           R2, R0, #0x30 ; '0'
5383B0:  CMP             R0, #0
5383B2:  IT EQ
5383B4:  ADDEQ           R2, R4, #4
5383B6:  ADD.W           R3, R1, #0x30 ; '0'
5383BA:  CMP             R1, #0
5383BC:  VLDR            S0, [R2]
5383C0:  VLDR            S2, [R2,#4]
5383C4:  VLDR            S4, [R2,#8]
5383C8:  IT EQ
5383CA:  ADDEQ           R3, R5, #4
5383CC:  VLDR            S6, [R3]
5383D0:  CMP             R0, #0
5383D2:  VLDR            S8, [R3,#4]
5383D6:  VLDR            S10, [R3,#8]
5383DA:  VSUB.F32        S20, S6, S0
5383DE:  VSUB.F32        S18, S8, S2
5383E2:  VSUB.F32        S16, S10, S4
5383E6:  BEQ             loc_538430
5383E8:  VLDR            S4, [R0,#0x10]
5383EC:  VLDR            S2, [R0,#0x14]
5383F0:  VLDR            S0, [R0,#0x18]
5383F4:  B               loc_538450
5383F6:  LDRB.W          R0, [R4,#0x487]
5383FA:  LSLS            R0, R0, #0x1D
5383FC:  BMI.W           loc_53852E
538400:  LDR.W           R1, [R8,#0x18]
538404:  LDR             R0, [R4,#0x18]
538406:  ANDS.W          R1, R1, #0x1000
53840A:  IT NE
53840C:  MOVNE           R1, #0xE2
53840E:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
538412:  CMP             R0, #0
538414:  BNE.W           loc_53811C
538418:  LDRD.W          R2, R1, [R8,#0x18]; int
53841C:  MOV.W           R3, #0x40800000
538420:  LDR             R0, [R4,#0x18]; int
538422:  ANDS.W          R2, R2, #0x1000
538426:  IT NE
538428:  MOVNE           R2, #0xE2; unsigned int
53842A:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
53842E:  B               loc_53811C
538430:  LDR             R6, [R4,#0x10]
538432:  MOV             R0, R6; x
538434:  BLX             sinf
538438:  MOV             R8, R0
53843A:  MOV             R0, R6; x
53843C:  BLX             cosf
538440:  VMOV            S2, R0
538444:  EOR.W           R0, R8, #0x80000000
538448:  VLDR            S0, =0.0
53844C:  VMOV            S4, R0
538450:  VMUL.F32        S4, S20, S4
538454:  VMUL.F32        S2, S18, S2
538458:  VMUL.F32        S0, S16, S0
53845C:  VADD.F32        S2, S2, S4
538460:  VADD.F32        S0, S0, S2
538464:  VCMPE.F32       S0, #0.0
538468:  VMRS            APSR_nzcv, FPSCR
53846C:  BLE             loc_5384E0
53846E:  LDR.W           R0, =(g_ikChainMan_ptr - 0x538478)
538472:  MOV             R1, R4; CPed *
538474:  ADD             R0, PC; g_ikChainMan_ptr
538476:  LDR             R0, [R0]; g_ikChainMan ; this
538478:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
53847C:  CBZ             R0, loc_538490
53847E:  LDR.W           R0, =(g_ikChainMan_ptr - 0x538488)
538482:  MOV             R1, R4; CPed *
538484:  ADD             R0, PC; g_ikChainMan_ptr
538486:  LDR             R0, [R0]; g_ikChainMan ; this
538488:  BLX             j__ZN16IKChainManager_c15GetLookAtEntityEP4CPed; IKChainManager_c::GetLookAtEntity(CPed *)
53848C:  CMP             R0, R5
53848E:  BEQ             loc_53851C
538490:  LDRB.W          R0, [R5,#0x3A]
538494:  MOV.W           R3, #0xFFFFFFFF
538498:  LDR.W           R12, =(g_ikChainMan_ptr - 0x5384B0)
53849C:  MOVS            R1, #0
53849E:  AND.W           R0, R0, #7
5384A2:  MOV.W           LR, #3
5384A6:  CMP             R0, #3
5384A8:  MOVW            R0, #:lower16:unk_98967F
5384AC:  ADD             R12, PC; g_ikChainMan_ptr
5384AE:  IT EQ
5384B0:  MOVEQ           R3, #5
5384B2:  MOVT            R0, #:upper16:unk_98967F
5384B6:  MOV.W           R6, #0x1F4
5384BA:  STRD.W          R0, R3, [SP,#0xC8+var_C8]; int
5384BE:  MOV.W           R2, #0x3E800000
5384C2:  ADD             R0, SP, #0xC8+var_B8
5384C4:  STRD.W          R1, R1, [SP,#0xC8+var_C0]; int
5384C8:  STM.W           R0, {R2,R6,LR}
5384CC:  MOV             R2, R4; CPed *
5384CE:  MOV             R3, R5; int
5384D0:  LDR.W           R0, [R12]; g_ikChainMan ; int
5384D4:  STR             R1, [SP,#0xC8+var_AC]; int
5384D6:  ADR.W           R1, aProcplyrweapon; "ProcPlyrWeapon"
5384DA:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
5384DE:  B               loc_53851C
5384E0:  LDR.W           R0, [R11,#0x30]
5384E4:  CBZ             R0, loc_53851C
5384E6:  LDR.W           R0, =(g_ikChainMan_ptr - 0x5384F0)
5384EA:  MOV             R1, R4; CPed *
5384EC:  ADD             R0, PC; g_ikChainMan_ptr
5384EE:  LDR             R0, [R0]; g_ikChainMan ; this
5384F0:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
5384F4:  CBZ             R0, loc_53851C
5384F6:  LDR.W           R0, =(g_ikChainMan_ptr - 0x538500)
5384FA:  MOV             R1, R4; CPed *
5384FC:  ADD             R0, PC; g_ikChainMan_ptr
5384FE:  LDR             R0, [R0]; g_ikChainMan ; this
538500:  BLX             j__ZN16IKChainManager_c15GetLookAtEntityEP4CPed; IKChainManager_c::GetLookAtEntity(CPed *)
538504:  LDR.W           R1, [R11,#0x30]
538508:  CMP             R0, R1
53850A:  BNE             loc_53851C
53850C:  LDR.W           R0, =(g_ikChainMan_ptr - 0x538518)
538510:  MOV             R1, R4; CPed *
538512:  MOVS            R2, #0xFA; int
538514:  ADD             R0, PC; g_ikChainMan_ptr
538516:  LDR             R0, [R0]; g_ikChainMan ; this
538518:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
53851C:  STR.W           R5, [R11,#0x30]
538520:  ADD             SP, SP, #0x90
538522:  VPOP            {D8-D10}
538526:  ADD             SP, SP, #4
538528:  POP.W           {R8-R11}
53852C:  POP             {R4-R7,PC}
53852E:  LDR.W           R0, [R8,#0x18]
538532:  AND.W           R0, R0, #0x3000
538536:  CMP.W           R0, #0x3000
53853A:  BNE.W           loc_53811C
53853E:  LDR.W           R0, [R4,#0x440]; this
538542:  MOVS            R1, #1; bool
538544:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
538548:  CMP             R0, #0
53854A:  BEQ.W           loc_53811C
53854E:  LDR.W           R0, [R4,#0x440]; this
538552:  MOVS            R1, #1; bool
538554:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
538558:  VLDR            S0, [R0,#0x1C]
53855C:  VCMP.F32        S0, #0.0
538560:  VMRS            APSR_nzcv, FPSCR
538564:  BNE.W           loc_53811C
538568:  VLDR            S0, [R0,#0x20]
53856C:  VCMP.F32        S0, #0.0
538570:  VMRS            APSR_nzcv, FPSCR
538574:  BNE.W           loc_53811C
538578:  LDR             R1, [R0,#0x10]
53857A:  CMP             R1, #0
53857C:  BEQ.W           loc_53811C
538580:  VMOV.F32        S0, #1.0
538584:  VLDR            S2, [R1,#0x18]
538588:  VCMPE.F32       S2, S0
53858C:  VMRS            APSR_nzcv, FPSCR
538590:  BLT.W           loc_53811C
538594:  LDRB            R1, [R0,#0x19]
538596:  CMP             R1, #0
538598:  BNE.W           loc_53811C
53859C:  LDRSH.W         R0, [R0,#0xE]
5385A0:  CMP             R0, #0
5385A2:  BGT.W           loc_53811C
5385A6:  LDR.W           R1, [R8,#0x18]
5385AA:  MOV             R5, R11
5385AC:  LDR             R0, [R4,#0x18]
5385AE:  MOV             R6, R8
5385B0:  TST.W           R1, #0x2000
5385B4:  BNE.W           loc_538BD6
5385B8:  MOVS            R1, #0
5385BA:  B               loc_538BDE
5385BC:  LDR             R0, [R6]; this
5385BE:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
5385C2:  CMP             R0, #0
5385C4:  BEQ.W           loc_5380D6
5385C8:  LDR             R0, [R6]
5385CA:  MOVS            R1, #0; int
5385CC:  ADDS            R0, #4; this
5385CE:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5385D2:  MOV             R5, R0
5385D4:  LDR.W           R0, [R4,#0x450]
5385D8:  LDR.W           R8, [SP,#0xC8+var_A0]
5385DC:  CMP             R0, #1
5385DE:  BNE.W           loc_538816
5385E2:  LDR             R0, [SP,#0xC8+var_94]; this
5385E4:  MOVS            R1, #0; int
5385E6:  BLX             j__ZN4CPad9GetSprintEi; CPad::GetSprint(int)
5385EA:  CMP             R0, #1
5385EC:  BNE.W           loc_538816
5385F0:  LDR.W           R1, [R4,#0x720]; CEntity *
5385F4:  MOV             R0, R5; this
5385F6:  MOVS            R2, #0xF; signed __int8
5385F8:  BLX             j__ZN16CTaskSimpleFight12ControlFightEP7CEntitya; CTaskSimpleFight::ControlFight(CEntity *,signed char)
5385FC:  B               def_537A18; jumptable 00537A18 default case
5385FE:  MOVS            R0, #off_3C; this
538600:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
538604:  LDR.W           R1, [R4,#0x720]
538608:  MOV             R9, R0
53860A:  MOVS            R0, #1
53860C:  MOVS            R2, #0
53860E:  STRD.W          R8, R0, [SP,#0xC8+var_C8]
538612:  MOVS            R3, #0
538614:  STRD.W          R0, R8, [SP,#0xC8+var_C0]
538618:  MOV             R0, R9
53861A:  BLX             j__ZN17CTaskSimpleUseGunC2EP7CEntity7CVectorash; CTaskSimpleUseGun::CTaskSimpleUseGun(CEntity *,CVector,signed char,short,uchar)
53861E:  ADDS            R0, R5, #4; this
538620:  MOV             R1, R9; CTask *
538622:  MOVS            R2, #0; int
538624:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
538628:  MOV             R8, R6
53862A:  B               loc_538338
53862C:  DCD _ZN11CTheScripts14bDrawCrossHairE_ptr - 0x5377B4
538630:  DCD TheCamera_ptr - 0x53786C
538634:  DCD _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x53795A
538638:  DCD TheCamera_ptr - 0x537A70
53863C:  DCD TheCamera_ptr - 0x537A82
538640:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x537BA4
538644:  DCD TheCamera_ptr - 0x537C7C
538648:  DCD _ZN6CTimer14m_FrameCounterE_ptr - 0x537D0C
53864C:  DCD TheCamera_ptr - 0x537D34
538650:  DCFS 0.0
538654:  DCFS 100.0
538658:  LDR.W           R0, =(TheCamera_ptr - 0x538660)
53865C:  ADD             R0, PC; TheCamera_ptr
53865E:  LDR             R0, [R0]; TheCamera ; this
538660:  BLX             j__ZN7CCamera24Using1stPersonWeaponModeEv; CCamera::Using1stPersonWeaponMode(void)
538664:  CMP             R0, #0
538666:  BNE.W           loc_538182
53866A:  LDR.W           R0, =(TheCamera_ptr - 0x538674)
53866E:  MOV             R1, R4; CPlayerPed *
538670:  ADD             R0, PC; TheCamera_ptr
538672:  LDR             R0, [R0]; TheCamera ; this
538674:  BLX             j__ZN7CCamera17IsTargetingActiveEP10CPlayerPed; CCamera::IsTargetingActive(CPlayerPed *)
538678:  CBNZ            R0, loc_538694
53867A:  CMP             R5, #4
53867C:  BEQ             loc_538688
53867E:  LDR.W           R0, [R8]
538682:  CMP             R0, #0
538684:  BEQ.W           loc_538182
538688:  LDR             R0, [SP,#0xC8+var_94]; this
53868A:  BLX             j__ZN4CPad17GetEnterTargetingEv; CPad::GetEnterTargeting(void)
53868E:  CMP             R0, #0
538690:  BEQ.W           loc_538182
538694:  MOV             R0, R4; CPlayerPed *
538696:  MOV             R1, R10; CPed *
538698:  BLX             j__Z26CheckForTargetToPutHandsUpP10CPlayerPedP4CPed; CheckForTargetToPutHandsUp(CPlayerPed *,CPed *)
53869C:  CMP.W           R10, #0
5386A0:  BEQ             loc_5386BC
5386A2:  LDRSB.W         R0, [R4,#0x71C]
5386A6:  MOV             R1, R10; CEntity *
5386A8:  RSB.W           R0, R0, R0,LSL#3
5386AC:  ADD.W           R0, R4, R0,LSL#2
5386B0:  ADDW            R2, R0, #0x5A4; CWeapon *
5386B4:  MOV             R0, R4; this
5386B6:  BLX             j__ZN10CPlayerPed24DoesTargetHaveToBeBrokenEP7CEntityP7CWeapon; CPlayerPed::DoesTargetHaveToBeBroken(CEntity *,CWeapon *)
5386BA:  CBNZ            R0, loc_53870A
5386BC:  LDR             R0, [SP,#0xC8+var_9C]
5386BE:  CBZ             R0, loc_5386DA
5386C0:  LDRSB.W         R0, [R4,#0x71C]
5386C4:  MOV             R1, R9; CEntity *
5386C6:  RSB.W           R0, R0, R0,LSL#3
5386CA:  ADD.W           R0, R4, R0,LSL#2
5386CE:  ADDW            R2, R0, #0x5A4; CWeapon *
5386D2:  MOV             R0, R4; this
5386D4:  BLX             j__ZN10CPlayerPed24DoesTargetHaveToBeBrokenEP7CEntityP7CWeapon; CPlayerPed::DoesTargetHaveToBeBroken(CEntity *,CWeapon *)
5386D8:  CBNZ            R0, loc_53870A
5386DA:  LDRB.W          R0, [R4,#0x484]
5386DE:  LSLS            R0, R0, #0x19
5386E0:  BMI             loc_538716
5386E2:  LDRSB.W         R0, [R4,#0x71C]
5386E6:  MOV             R6, R5
5386E8:  RSB.W           R0, R0, R0,LSL#3
5386EC:  ADD.W           R0, R4, R0,LSL#2
5386F0:  LDR.W           R5, [R0,#0x5A4]
5386F4:  MOV             R0, R4; this
5386F6:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
5386FA:  MOV             R1, R0
5386FC:  MOV             R0, R5
5386FE:  MOV             R5, R6
538700:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
538704:  LDRB            R0, [R0,#0x18]
538706:  LSLS            R0, R0, #0x1F
538708:  BNE             loc_538716
53870A:  MOV             R0, R4; this
53870C:  BLX             j__ZN10CPlayerPed17ClearWeaponTargetEv; CPlayerPed::ClearWeaponTarget(void)
538710:  MOV             R0, R4; this
538712:  BLX             j__ZN10CPlayerPed22FindWeaponLockOnTargetEv; CPlayerPed::FindWeaponLockOnTarget(void)
538716:  SUB.W           R0, R5, #0x21 ; '!'; this
53871A:  CMP             R0, #5
53871C:  BHI.W           loc_538924
538720:  MOVS            R1, #1
538722:  LSL.W           R0, R1, R0
538726:  TST.W           R0, #0x31
53872A:  BEQ.W           loc_538924
53872E:  LDR.W           R0, [R4,#0x444]
538732:  LDR.W           R2, [R8,#0x18]
538736:  LDRH            R1, [R0,#0x34]
538738:  AND.W           R0, R2, #1; this
53873C:  TST.W           R1, #8
538740:  BNE             loc_538838
538742:  CMP             R0, #0
538744:  BEQ             loc_538838
538746:  LDR             R0, [SP,#0xC8+var_9C]
538748:  CMP             R0, #0
53874A:  IT EQ
53874C:  CMPEQ.W         R10, #0
538750:  BNE             loc_53875C
538752:  ORR.W           R0, R5, #4
538756:  CMP             R0, #0x25 ; '%'
538758:  BNE.W           loc_538A26
53875C:  LDR             R0, [SP,#0xC8+var_94]; this
53875E:  MOV             R1, R4; CPed *
538760:  MOVS            R2, #0; bool *
538762:  BLX             j__ZN4CPad18AimWeaponLeftRightEP4CPedPb; CPad::AimWeaponLeftRight(CPed *,bool *)
538766:  BIC.W           R0, R0, #0x80000000
53876A:  VLDR            S0, =100.0
53876E:  VMOV            S2, R0; this
538772:  VCMPE.F32       S2, S0
538776:  VMRS            APSR_nzcv, FPSCR
53877A:  BLE             loc_538784
53877C:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
538780:  CMP             R0, #1
538782:  BNE             loc_5387DA
538784:  LDR             R0, [SP,#0xC8+var_9C]
538786:  CMP             R0, #0
538788:  IT EQ
53878A:  CMPEQ.W         R10, #0
53878E:  BEQ             loc_5387CE
538790:  CMP.W           R10, #0
538794:  BEQ             loc_5387DA
538796:  MOV             R0, R10
538798:  MOVS            R0, #(stderr+1); this
53879A:  NOP
53879C:  CMP             R0, #1
53879E:  BNE             loc_5387CE
5387A0:  BLX             j__ZN13CLocalisation15KickingWhenDownEv; CLocalisation::KickingWhenDown(void)
5387A4:  LDR.W           R1, [R10,#0x44C]
5387A8:  CMP             R0, #0
5387AA:  BIC.W           R1, R1, #1
5387AE:  IT EQ
5387B0:  CMPEQ           R1, #0x36 ; '6'
5387B2:  BEQ             loc_5387CE
5387B4:  CMP             R1, #0x36 ; '6'
5387B6:  BNE             loc_5387DA
5387B8:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5387C4)
5387BC:  LDR.W           R1, [R10,#0x758]
5387C0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5387C2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5387C4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5387C6:  SUBS            R0, R0, R1
5387C8:  CMP.W           R0, #0x12C
5387CC:  BLS             loc_5387DA
5387CE:  MOV             R0, R4; this
5387D0:  BLX             j__ZN10CPlayerPed17ClearWeaponTargetEv; CPlayerPed::ClearWeaponTarget(void)
5387D4:  MOV             R0, R4; this
5387D6:  BLX             j__ZN10CPlayerPed22FindWeaponLockOnTargetEv; CPlayerPed::FindWeaponLockOnTarget(void)
5387DA:  LDR.W           R0, [R4,#0x720]
5387DE:  CMP             R0, #0
5387E0:  BEQ.W           loc_538AA0
5387E4:  LDR             R5, [SP,#0xC8+var_94]
5387E6:  MOV             R0, R5; this
5387E8:  BLX             j__ZN4CPad23ShiftTargetLeftJustDownEv; CPad::ShiftTargetLeftJustDown(void)
5387EC:  CMP             R0, #1
5387EE:  BNE             loc_5387FC
5387F0:  LDR.W           R1, [R4,#0x720]; CEntity *
5387F4:  MOV             R0, R4; this
5387F6:  MOVS            R2, #1; bool
5387F8:  BLX             j__ZN10CPlayerPed26FindNextWeaponLockOnTargetEP7CEntityb; CPlayerPed::FindNextWeaponLockOnTarget(CEntity *,bool)
5387FC:  MOV             R0, R5; this
5387FE:  BLX             j__ZN4CPad24ShiftTargetRightJustDownEv; CPad::ShiftTargetRightJustDown(void)
538802:  CMP             R0, #1
538804:  BNE.W           loc_538A54
538808:  LDR.W           R1, [R4,#0x720]; CEntity *
53880C:  MOV             R0, R4; this
53880E:  MOVS            R2, #0; bool
538810:  BLX             j__ZN10CPlayerPed26FindNextWeaponLockOnTargetEP7CEntityb; CPlayerPed::FindNextWeaponLockOnTarget(CEntity *,bool)
538814:  B               loc_538A54
538816:  LDR.W           R0, [R4,#0x444]
53881A:  LDRB.W          R2, [R4,#0x71C]
53881E:  LDR.W           R1, [R4,#0x720]; CEntity *
538822:  LDRB.W          R0, [R0,#0x20]
538826:  CMP             R0, R2
538828:  MOV             R0, R5; this
53882A:  ITE EQ
53882C:  MOVEQ           R2, #0
53882E:  MOVNE           R2, #1; signed __int8
538830:  BLX             j__ZN16CTaskSimpleFight12ControlFightEP7CEntitya; CTaskSimpleFight::ControlFight(CEntity *,signed char)
538834:  B.W             def_537A18; jumptable 00537A18 default case
538838:  LSLS            R1, R1, #0x1C
53883A:  BPL             loc_5388DE
53883C:  CMP             R0, #0
53883E:  BEQ             loc_5388DE
538840:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
538844:  CMP             R0, #2
538846:  BEQ             loc_5388DE
538848:  LDR             R0, [SP,#0xC8+var_94]; this
53884A:  BLX             j__ZN4CPad23ShiftTargetLeftJustDownEv; CPad::ShiftTargetLeftJustDown(void)
53884E:  CBNZ            R0, loc_53885A
538850:  LDR             R0, [SP,#0xC8+var_94]; this
538852:  BLX             j__ZN4CPad24ShiftTargetRightJustDownEv; CPad::ShiftTargetRightJustDown(void)
538856:  CMP             R0, #1
538858:  BNE             loc_5388DE
53885A:  LDR             R6, [SP,#0xC8+var_94]
53885C:  LDR.W           R5, [R4,#0x720]
538860:  MOV             R0, R6; this
538862:  BLX             j__ZN4CPad23ShiftTargetLeftJustDownEv; CPad::ShiftTargetLeftJustDown(void)
538866:  MOV             R2, R0
538868:  CMP             R5, #0
53886A:  BEQ.W           loc_538B8A
53886E:  CMP             R2, #1
538870:  BNE             loc_53887E
538872:  LDR.W           R1, [R4,#0x720]; CEntity *
538876:  MOV             R0, R4; this
538878:  MOVS            R2, #1; bool
53887A:  BLX             j__ZN10CPlayerPed26FindNextWeaponLockOnTargetEP7CEntityb; CPlayerPed::FindNextWeaponLockOnTarget(CEntity *,bool)
53887E:  MOV             R0, R6
538880:  B               loc_5387FE
538882:  LDR.W           R0, [R4,#0x440]
538886:  MOVS            R1, #0; int
538888:  ADDS            R0, #4; this
53888A:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
53888E:  CBZ             R0, loc_5388AC
538890:  LDR.W           R0, [R4,#0x440]
538894:  MOVS            R1, #0; int
538896:  ADDS            R0, #4; this
538898:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
53889C:  LDR             R1, [R0]
53889E:  LDR             R1, [R1,#0x14]
5388A0:  BLX             R1
5388A2:  MOVW            R1, #0x3FA
5388A6:  CMP             R0, R1
5388A8:  BNE.W           loc_5389EA
5388AC:  LDR.W           R0, [R4,#0x440]; this
5388B0:  BLX             j__ZNK16CPedIntelligence12GetTaskThrowEv; CPedIntelligence::GetTaskThrow(void)
5388B4:  CMP             R0, #0
5388B6:  BEQ.W           def_537A18; jumptable 00537A18 default case
5388BA:  LDR.W           R0, [R4,#0x440]
5388BE:  MOVS            R1, #0; int
5388C0:  ADDS            R0, #4; this
5388C2:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5388C6:  MOV             R5, R0
5388C8:  LDR             R0, [SP,#0xC8+var_94]; this
5388CA:  MOV             R1, R4; CPed *
5388CC:  MOVS            R2, #1; bool
5388CE:  MOVS            R3, #1; bool
5388D0:  BLX             j__ZN4CPad14WeaponJustDownEP4CPedbb; CPad::WeaponJustDown(CPed *,bool,bool)
5388D4:  EOR.W           R1, R0, #1
5388D8:  MOV             R0, R5
5388DA:  B.W             loc_537A5E
5388DE:  LDRB.W          R0, [R8,#0x18]
5388E2:  LSLS            R0, R0, #0x1C
5388E4:  BPL             loc_5388FA
5388E6:  LDR.W           R0, [R4,#0x720]
5388EA:  CBNZ            R0, loc_5388FA
5388EC:  LDR.W           R0, [R4,#0x444]; this
5388F0:  LDRH            R1, [R0,#0x34]
5388F2:  TST.W           R1, #8
5388F6:  BEQ.W           loc_538A4E
5388FA:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
5388FE:  CMP             R0, #2
538900:  BNE.W           loc_538A54
538904:  LDR.W           R0, [R4,#0x444]
538908:  LDRB.W          R0, [R0,#0x34]
53890C:  LSLS            R0, R0, #0x1C
53890E:  BPL.W           loc_538A54
538912:  LDR.W           R1, [R8]
538916:  MOV             R0, R4; this
538918:  CMP             R1, #0
53891A:  IT NE
53891C:  MOVNE           R1, #1; bool
53891E:  BLX             j__ZN10CPlayerPed27Compute3rdPersonMouseTargetEb; CPlayerPed::Compute3rdPersonMouseTarget(bool)
538922:  B               loc_538A54
538924:  BLX             j__ZN14MobileSettings12IsLockOnModeEv; MobileSettings::IsLockOnMode(void)
538928:  CMP             R0, #0
53892A:  BEQ             loc_538A06
53892C:  LDR             R0, [SP,#0xC8+var_9C]
53892E:  CMP             R0, #0
538930:  IT EQ
538932:  CMPEQ.W         R10, #0
538936:  BEQ             loc_538A1E
538938:  B               loc_53872E
53893A:  MOVS            R0, #off_3C; this
53893C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
538940:  LDR.W           R1, [R4,#0x720]
538944:  MOV             R6, R8
538946:  MOV             R8, R0
538948:  MOVS            R2, #0
53894A:  MOVS            R0, #1
53894C:  STRD.W          R2, R5, [SP,#0xC8+var_C8]
538950:  STRD.W          R0, R2, [SP,#0xC8+var_C0]
538954:  MOV             R0, R8
538956:  MOVS            R2, #0
538958:  MOVS            R3, #0
53895A:  BLX             j__ZN17CTaskSimpleUseGunC2EP7CEntity7CVectorash; CTaskSimpleUseGun::CTaskSimpleUseGun(CEntity *,CVector,signed char,short,uchar)
53895E:  ADD.W           R0, R11, #4; this
538962:  MOV             R1, R8; CTask *
538964:  MOVS            R2, #0; int
538966:  MOV             R8, R6
538968:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
53896C:  LDR.W           R11, [SP,#0xC8+var_A4]
538970:  B.W             def_537A18; jumptable 00537A18 default case
538974:  LDR.W           R0, [R4,#0x440]; this
538978:  MOVS            R1, #1; bool
53897A:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
53897E:  CMP             R0, #0
538980:  BEQ.W           loc_538BBE
538984:  LDR.W           R0, [R4,#0x440]; this
538988:  MOVS            R1, #1; bool
53898A:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
53898E:  VLDR            S0, [R0,#0x1C]
538992:  VCMP.F32        S0, #0.0
538996:  VMRS            APSR_nzcv, FPSCR
53899A:  BNE             loc_5389AC
53899C:  VLDR            S0, [R0,#0x20]
5389A0:  VCMP.F32        S0, #0.0
5389A4:  VMRS            APSR_nzcv, FPSCR
5389A8:  BEQ.W           loc_538B90
5389AC:  LDR             R0, [R4,#0x18]
5389AE:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClump; RpAnimBlendClumpGetFirstAssociation(RpClump *)
5389B2:  MOV             R5, R0
5389B4:  B.W             loc_537B0E
5389B8:  ADDS            R0, #4; this
5389BA:  MOVS            R1, #0; int
5389BC:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5389C0:  LDR             R1, [R0]
5389C2:  MOVS            R2, #1
5389C4:  MOVS            R3, #0
5389C6:  LDR             R6, [R1,#0x1C]
5389C8:  MOV             R1, R4
5389CA:  BLX             R6
5389CC:  LDR.W           R11, [SP,#0xC8+var_A4]
5389D0:  B.W             def_537A18; jumptable 00537A18 default case
5389D4:  LDR.W           R0, [R4,#0x444]
5389D8:  LDRB.W          R0, [R0,#0x34]
5389DC:  LSLS            R0, R0, #0x1C
5389DE:  BMI.W           loc_537F12
5389E2:  LDR.W           R11, [SP,#0xC8+var_A4]
5389E6:  B.W             def_537A18; jumptable 00537A18 default case
5389EA:  LDR.W           R0, [R4,#0x440]
5389EE:  MOVS            R1, #0; int
5389F0:  ADDS            R0, #4; this
5389F2:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5389F6:  LDR             R1, [R0]
5389F8:  MOVS            R2, #1
5389FA:  MOVS            R3, #0
5389FC:  LDR             R6, [R1,#0x1C]
5389FE:  MOV             R1, R4
538A00:  BLX             R6
538A02:  B.W             def_537A18; jumptable 00537A18 default case
538A06:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
538A0A:  LDR             R1, [SP,#0xC8+var_9C]
538A0C:  CMP             R1, #0
538A0E:  IT EQ
538A10:  CMPEQ.W         R10, #0
538A14:  BNE.W           loc_53872E
538A18:  CMP             R0, #1
538A1A:  BNE.W           loc_53872E
538A1E:  MOV             R0, R4; this
538A20:  BLX             j__ZN10CPlayerPed22FindWeaponLockOnTargetEv; CPlayerPed::FindWeaponLockOnTarget(void)
538A24:  B               loc_53872E
538A26:  LDR             R0, [SP,#0xC8+var_94]; this
538A28:  BLX             j__ZN4CPad17GetEnterTargetingEv; CPad::GetEnterTargeting(void)
538A2C:  CMP             R0, #1
538A2E:  BEQ             loc_538A42
538A30:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x538A3A)
538A32:  LDR.W           R1, [R11,#0x24]
538A36:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
538A38:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
538A3A:  LDR             R0, [R0]; CTimer::m_FrameCounter
538A3C:  SUBS            R0, #1
538A3E:  CMP             R1, R0
538A40:  BCS             loc_538A54
538A42:  MOV             R0, R4; this
538A44:  BLX             j__ZN10CPlayerPed22FindWeaponLockOnTargetEv; CPlayerPed::FindWeaponLockOnTarget(void)
538A48:  LDR.W           R0, [R4,#0x444]
538A4C:  LDRH            R1, [R0,#0x34]
538A4E:  ORR.W           R1, R1, #8
538A52:  STRH            R1, [R0,#0x34]
538A54:  LDR.W           R0, [R4,#0x720]
538A58:  CBZ             R0, loc_538AA0
538A5A:  LDR.W           R0, [R8]
538A5E:  CBNZ            R0, loc_538A68
538A60:  LDRB.W          R0, [R4,#0x487]
538A64:  LSLS            R0, R0, #0x1D
538A66:  BPL             loc_538A74
538A68:  LDR.W           R0, [R4,#0x444]
538A6C:  LDRH            R1, [R0,#0x34]
538A6E:  BIC.W           R1, R1, #8
538A72:  STRH            R1, [R0,#0x34]
538A74:  LDR             R0, =(TheCamera_ptr - 0x538A80)
538A76:  MOVS            R1, #0x35 ; '5'; __int16
538A78:  MOVS            R2, #0; __int16
538A7A:  MOVS            R3, #0; __int16
538A7C:  ADD             R0, PC; TheCamera_ptr
538A7E:  LDR             R0, [R0]; TheCamera ; this
538A80:  BLX             j__ZN7CCamera22SetNewPlayerWeaponModeEsss; CCamera::SetNewPlayerWeaponMode(short,short,short)
538A84:  LDR.W           R2, [R4,#0x720]
538A88:  MOV             R9, R8
538A8A:  CBZ             R2, loc_538AB8
538A8C:  LDR             R0, =(TheCamera_ptr - 0x538A94)
538A8E:  LDR             R3, [R2,#0x14]
538A90:  ADD             R0, PC; TheCamera_ptr
538A92:  ADD.W           R1, R3, #0x30 ; '0'
538A96:  CMP             R3, #0
538A98:  LDR             R0, [R0]; TheCamera
538A9A:  IT EQ
538A9C:  ADDEQ           R1, R2, #4
538A9E:  B               loc_538B2E
538AA0:  LDR.W           R0, [R8]
538AA4:  CMP             R0, #5
538AA6:  BHI             loc_538A74
538AA8:  MOVS            R1, #1
538AAA:  LSL.W           R0, R1, R0
538AAE:  TST.W           R0, #0x25
538AB2:  BNE.W           loc_538338
538AB6:  B               loc_538A74
538AB8:  LDR             R5, [R4,#0x14]
538ABA:  VLDR            D16, [R5,#0x10]
538ABE:  LDR             R0, [R5,#0x18]
538AC0:  STR             R0, [SP,#0xC8+var_88]
538AC2:  VSTR            D16, [SP,#0xC8+var_90]
538AC6:  LDR.W           R0, [R4,#0x444]
538ACA:  LDR             R0, [R0,#0x54]; x
538ACC:  BLX             sinf
538AD0:  VMOV            S2, R0
538AD4:  VLDR            S0, [SP,#0xC8+var_88]
538AD8:  VMOV.F32        S4, #5.0
538ADC:  ADD.W           R0, R5, #0x30 ; '0'
538AE0:  VADD.F32        S0, S2, S0
538AE4:  VLDR            S2, [SP,#0xC8+var_90]
538AE8:  CMP             R5, #0
538AEA:  VLDR            S6, [SP,#0xC8+var_90+4]
538AEE:  ADD             R1, SP, #0xC8+var_90; CVector *
538AF0:  VMUL.F32        S2, S2, S4
538AF4:  VMUL.F32        S0, S0, S4
538AF8:  VMUL.F32        S4, S6, S4
538AFC:  VSTR            S0, [SP,#0xC8+var_88]
538B00:  IT EQ
538B02:  ADDEQ           R0, R4, #4
538B04:  VLDR            S8, [R0]
538B08:  VLDR            S12, [R0,#8]
538B0C:  VADD.F32        S2, S8, S2
538B10:  VLDR            S10, [R0,#4]
538B14:  LDR             R0, =(TheCamera_ptr - 0x538B1E)
538B16:  VADD.F32        S0, S12, S0
538B1A:  ADD             R0, PC; TheCamera_ptr
538B1C:  LDR             R0, [R0]; TheCamera ; this
538B1E:  VSTR            S2, [SP,#0xC8+var_90]
538B22:  VADD.F32        S2, S10, S4
538B26:  VSTR            S2, [SP,#0xC8+var_90+4]
538B2A:  VSTR            S0, [SP,#0xC8+var_88]
538B2E:  BLX             j__ZN7CCamera17UpdateAimingCoorsERK7CVector; CCamera::UpdateAimingCoors(CVector const&)
538B32:  LDR.W           R0, [R4,#0x440]
538B36:  MOVS            R1, #0; int
538B38:  MOV.W           R8, #0
538B3C:  ADDS            R0, #4; this
538B3E:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
538B42:  LDR.W           R5, [R4,#0x440]
538B46:  CBZ             R0, loc_538B5A
538B48:  MOV             R0, R5; this
538B4A:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
538B4E:  CMP             R0, #0
538B50:  MOV             R8, R9
538B52:  BNE.W           loc_5381EC
538B56:  B.W             loc_538338
538B5A:  MOVS            R0, #off_3C; this
538B5C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
538B60:  LDR.W           R1, [R4,#0x720]
538B64:  MOV             R6, R0
538B66:  MOVS            R0, #1
538B68:  MOVS            R2, #0
538B6A:  STRD.W          R8, R0, [SP,#0xC8+var_C8]
538B6E:  MOVS            R3, #0
538B70:  STRD.W          R0, R8, [SP,#0xC8+var_C0]
538B74:  MOV             R0, R6
538B76:  BLX             j__ZN17CTaskSimpleUseGunC2EP7CEntity7CVectorash; CTaskSimpleUseGun::CTaskSimpleUseGun(CEntity *,CVector,signed char,short,uchar)
538B7A:  ADDS            R0, R5, #4; this
538B7C:  MOV             R1, R6; CTask *
538B7E:  MOVS            R2, #0; int
538B80:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
538B84:  MOV             R8, R9
538B86:  B.W             loc_538338
538B8A:  MOV             R0, R4
538B8C:  MOVS            R1, #0
538B8E:  B               loc_538810
538B90:  LDR             R1, [R0,#0x10]
538B92:  CMP             R1, #0
538B94:  BEQ.W           loc_5389AC
538B98:  VMOV.F32        S0, #1.0
538B9C:  VLDR            S2, [R1,#0x18]
538BA0:  VCMPE.F32       S2, S0
538BA4:  VMRS            APSR_nzcv, FPSCR
538BA8:  BLT.W           loc_5389AC
538BAC:  LDRB            R1, [R0,#0x19]
538BAE:  CMP             R1, #0
538BB0:  BNE.W           loc_5389AC
538BB4:  LDRSH.W         R0, [R0,#0xE]
538BB8:  CMP             R0, #1
538BBA:  BGE.W           loc_5389AC
538BBE:  LDR.W           R1, [R8,#0x1C]; int
538BC2:  MOVW            R2, #0x15B; unsigned int
538BC6:  LDR             R0, [R4,#0x18]; int
538BC8:  MOV.W           R3, #0x41000000
538BCC:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
538BD0:  MOV             R5, R0
538BD2:  B.W             loc_537B0E
538BD6:  ANDS.W          R1, R1, #0x1000
538BDA:  IT NE
538BDC:  MOVNE           R1, #0xE3
538BDE:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
538BE2:  CMP             R0, #0
538BE4:  MOV             R11, R5
538BE6:  MOV             R8, R6
538BE8:  BNE.W           loc_53811C
538BEC:  LDRD.W          R2, R1, [R8,#0x18]; int
538BF0:  LDR             R0, [R4,#0x18]; int
538BF2:  TST.W           R2, #0x2000
538BF6:  BNE             loc_538BFC
538BF8:  MOVS            R2, #0
538BFA:  B               loc_538C04
538BFC:  ANDS.W          R2, R2, #0x1000
538C00:  IT NE
538C02:  MOVNE           R2, #0xE3; unsigned int
538C04:  MOV.W           R3, #0x40800000
538C08:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
538C0C:  MOV             R11, R5
538C0E:  MOV             R8, R6
538C10:  B.W             loc_53811C
