; =========================================================
; Game Engine Function: _ZN20CTaskSimpleGoToPoint10ProcessPedEP4CPed
; Address            : 0x51CB7C - 0x51CFC6
; =========================================================

51CB7C:  PUSH            {R4-R7,LR}
51CB7E:  ADD             R7, SP, #0xC
51CB80:  PUSH.W          {R8-R11}
51CB84:  SUB             SP, SP, #4
51CB86:  VPUSH           {D8-D13}; float
51CB8A:  MOV             R11, R1
51CB8C:  MOV             R5, R0
51CB8E:  LDR.W           R0, [R11,#0x534]
51CB92:  ADD.W           R9, R11, #4
51CB96:  LDR.W           R1, [R11,#0x14]
51CB9A:  ORR.W           R0, R0, #8
51CB9E:  LDRB.W          R2, [R11,#0x490]
51CBA2:  STR.W           R0, [R11,#0x534]
51CBA6:  CMP             R1, #0
51CBA8:  MOV             R0, R9
51CBAA:  IT NE
51CBAC:  ADDNE.W         R0, R1, #0x30 ; '0'
51CBB0:  LSLS            R1, R2, #0x19
51CBB2:  VLDR            S2, [R0]
51CBB6:  VLDR            S0, [R0,#4]
51CBBA:  BMI             loc_51CBDA
51CBBC:  VLDR            S4, [R5,#0x14]
51CBC0:  VLDR            S6, [R0,#8]
51CBC4:  VSUB.F32        S4, S6, S4
51CBC8:  VMOV.F32        S6, #2.0
51CBCC:  VABS.F32        S4, S4
51CBD0:  VCMPE.F32       S4, S6
51CBD4:  VMRS            APSR_nzcv, FPSCR
51CBD8:  BGE             loc_51CC46
51CBDA:  VLDR            S4, [R5,#0xC]
51CBDE:  VCMPE.F32       S2, S4
51CBE2:  VMRS            APSR_nzcv, FPSCR
51CBE6:  BGE             loc_51CBEC
51CBE8:  MOVS            R0, #1
51CBEA:  B               loc_51CBF8
51CBEC:  VCMPE.F32       S2, S4
51CBF0:  VMRS            APSR_nzcv, FPSCR
51CBF4:  BLE             loc_51CC08
51CBF6:  MOVS            R0, #2
51CBF8:  LDRB            R1, [R5,#0x1C]
51CBFA:  ORRS            R0, R1
51CBFC:  AND.W           R1, R1, #0xF0
51CC00:  AND.W           R0, R0, #0xF
51CC04:  ORRS            R0, R1
51CC06:  STRB            R0, [R5,#0x1C]
51CC08:  VLDR            S2, [R5,#0x10]
51CC0C:  VCMPE.F32       S0, S2
51CC10:  VMRS            APSR_nzcv, FPSCR
51CC14:  BGE             loc_51CC1A
51CC16:  MOVS            R0, #4
51CC18:  B               loc_51CC26
51CC1A:  VCMPE.F32       S0, S2
51CC1E:  VMRS            APSR_nzcv, FPSCR
51CC22:  BLE             loc_51CC34
51CC24:  MOVS            R0, #8
51CC26:  LDRB            R1, [R5,#0x1C]
51CC28:  ORRS            R0, R1
51CC2A:  LSRS            R1, R1, #4
51CC2C:  BFI.W           R0, R1, #4, #0x1C
51CC30:  STRB            R0, [R5,#0x1C]
51CC32:  B               loc_51CC36
51CC34:  LDRB            R0, [R5,#0x1C]
51CC36:  AND.W           R1, R0, #0xF
51CC3A:  CMP             R1, #0xF
51CC3C:  ITT EQ
51CC3E:  LDRBEQ          R1, [R5,#0x1D]
51CC40:  TSTEQ.W         R1, #0x10
51CC44:  BEQ             loc_51CCC0
51CC46:  ADDW            R8, R11, #0x484
51CC4A:  LDR.W           R0, [R8,#8]
51CC4E:  TST.W           R0, #8
51CC52:  BNE             loc_51CCA6
51CC54:  LSLS            R0, R0, #0x18
51CC56:  BMI             loc_51CCF0
51CC58:  LDR.W           R0, [R11,#0x14]
51CC5C:  ADD.W           R6, R5, #0xC
51CC60:  CMP             R0, #0
51CC62:  IT NE
51CC64:  ADDNE.W         R9, R0, #0x30 ; '0'
51CC68:  VLDR            D17, [R5,#0xC]
51CC6C:  MOV             R0, R9
51CC6E:  VLDR            S22, [R5,#0x14]
51CC72:  VLD1.32         {D16}, [R0]!
51CC76:  VSUB.F32        D8, D17, D16
51CC7A:  VLDR            S24, [R0]
51CC7E:  VMUL.F32        D0, D8, D8
51CC82:  VADD.F32        S26, S0, S1
51CC86:  VCMPE.F32       S26, #0.0
51CC8A:  VMRS            APSR_nzcv, FPSCR
51CC8E:  BLE             loc_51CD60
51CC90:  VSQRT.F32       S0, S26
51CC94:  VMOV.F32        S2, #1.0
51CC98:  VDIV.F32        S0, S2, S0
51CC9C:  VMUL.F32        S18, S17, S0
51CCA0:  VMUL.F32        S20, S16, S0
51CCA4:  B               loc_51CD68
51CCA6:  LDR.W           R0, [R11,#0x440]
51CCAA:  MOV             R1, R11; CPed *
51CCAC:  MOVS            R2, #0; int
51CCAE:  ADD.W           R0, R0, #0x190; this
51CCB2:  BLX             j__ZN13CEventScanner16ScanForEventsNowERK4CPedi; CEventScanner::ScanForEventsNow(CPed const&,int)
51CCB6:  MOV.W           R0, #0xFFFFFFFF
51CCBA:  MOV             R1, #0xFFFFFFF7
51CCBE:  B               loc_51CD08
51CCC0:  LSLS            R0, R0, #0x1B
51CCC2:  ORR.W           R1, R1, #4
51CCC6:  STRB            R1, [R5,#0x1D]
51CCC8:  BPL.W           loc_51CF6E
51CCCC:  LDR             R0, =(g_ikChainMan_ptr - 0x51CCD4)
51CCCE:  MOV             R1, R11; CPed *
51CCD0:  ADD             R0, PC; g_ikChainMan_ptr
51CCD2:  LDR             R0, [R0]; g_ikChainMan ; this
51CCD4:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
51CCD8:  CMP             R0, #0
51CCDA:  BEQ.W           loc_51CF6E
51CCDE:  LDR             R0, =(g_ikChainMan_ptr - 0x51CCE4)
51CCE0:  ADD             R0, PC; g_ikChainMan_ptr
51CCE2:  LDR             R0, [R0]; g_ikChainMan ; this
51CCE4:  MOV             R1, R11; CPed *
51CCE6:  MOVS            R2, #0xFA; int
51CCE8:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
51CCEC:  MOVS            R0, #1
51CCEE:  B               loc_51CF70
51CCF0:  LDR.W           R0, [R11,#0x440]
51CCF4:  MOV             R1, R11; CPed *
51CCF6:  MOVS            R2, #1; int
51CCF8:  ADD.W           R0, R0, #0x190; this
51CCFC:  BLX             j__ZN13CEventScanner16ScanForEventsNowERK4CPedi; CEventScanner::ScanForEventsNow(CPed const&,int)
51CD00:  MOV.W           R0, #0xFFFFFFFF
51CD04:  MOV             R1, #0xFFFFFF7F
51CD08:  LDM.W           R8, {R2-R4,R6}
51CD0C:  ANDS            R2, R0
51CD0E:  ANDS            R3, R0
51CD10:  ANDS            R0, R6
51CD12:  ANDS            R1, R4
51CD14:  STRD.W          R2, R3, [R8]
51CD18:  STRD.W          R1, R0, [R8,#8]
51CD1C:  LDRB            R0, [R5,#0x1C]
51CD1E:  TST.W           R0, #0x20
51CD22:  BEQ             loc_51CD4C
51CD24:  LSLS            R0, R0, #0x1B
51CD26:  BPL             loc_51CD44
51CD28:  LDR             R0, =(g_ikChainMan_ptr - 0x51CD30)
51CD2A:  MOV             R1, R11; CPed *
51CD2C:  ADD             R0, PC; g_ikChainMan_ptr
51CD2E:  LDR             R0, [R0]; g_ikChainMan ; this
51CD30:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
51CD34:  CBZ             R0, loc_51CD44
51CD36:  LDR             R0, =(g_ikChainMan_ptr - 0x51CD40)
51CD38:  MOV             R1, R11; CPed *
51CD3A:  MOVS            R2, #0xFA; int
51CD3C:  ADD             R0, PC; g_ikChainMan_ptr
51CD3E:  LDR             R0, [R0]; g_ikChainMan ; this
51CD40:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
51CD44:  LDRB            R0, [R5,#0x1C]
51CD46:  AND.W           R0, R0, #0xDF
51CD4A:  STRB            R0, [R5,#0x1C]
51CD4C:  MOV             R0, R5; this
51CD4E:  MOV             R1, R11; CPed *
51CD50:  BLX             j__ZN15CTaskSimpleGoTo7SetUpIKEP4CPed; CTaskSimpleGoTo::SetUpIK(CPed *)
51CD54:  LDRB            R0, [R5,#0x1D]
51CD56:  AND.W           R0, R0, #0xEF
51CD5A:  STRB            R0, [R5,#0x1D]
51CD5C:  MOVS            R0, #0
51CD5E:  B               loc_51CF70
51CD60:  VMOV.F32        S20, #1.0
51CD64:  VMOV.F32        S18, S17
51CD68:  LDR.W           R0, [R11,#0x440]; this
51CD6C:  MOVS            R1, #0; bool
51CD6E:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
51CD72:  LDR.W           R10, [R5,#8]
51CD76:  CBZ             R0, loc_51CDA0
51CD78:  LDR.W           R0, [R11,#0x440]; this
51CD7C:  MOVS            R1, #0; bool
51CD7E:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
51CD82:  MOVW            R2, #0xCCCD
51CD86:  CMP.W           R10, #4
51CD8A:  MOVT            R2, #0xBF8C
51CD8E:  MOV.W           R1, #0
51CD92:  ITT EQ
51CD94:  MOVEQ           R2, #0
51CD96:  MOVTEQ          R2, #0xBF40
51CD9A:  BLX             j__ZN15CTaskSimpleDuck15ControlDuckMoveE9CVector2D; CTaskSimpleDuck::ControlDuckMove(CVector2D)
51CD9E:  B               loc_51CE50
51CDA0:  MOV             R0, R11
51CDA2:  MOV             R1, R10
51CDA4:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
51CDA8:  MOV             R0, R11; this
51CDAA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
51CDAE:  CMP             R0, #1
51CDB0:  BNE             loc_51CE46
51CDB2:  MOVS            R0, #0; this
51CDB4:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
51CDB8:  LDRH.W          R0, [R0,#0x110]
51CDBC:  CBNZ            R0, loc_51CE36
51CDBE:  LDRSB.W         R0, [R11,#0x71C]
51CDC2:  MOVS            R1, #1
51CDC4:  RSB.W           R0, R0, R0,LSL#3
51CDC8:  ADD.W           R0, R11, R0,LSL#2
51CDCC:  LDR.W           R0, [R0,#0x5A4]
51CDD0:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
51CDD4:  LDRB            R0, [R0,#0x19]
51CDD6:  LSLS            R0, R0, #0x1E
51CDD8:  BMI             loc_51CE1E
51CDDA:  LDR.W           R0, [R11,#0x440]; this
51CDDE:  MOVS            R1, #0; bool
51CDE0:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
51CDE4:  CBZ             R0, loc_51CDF4
51CDE6:  LDR.W           R0, [R11,#0x440]; this
51CDEA:  MOVS            R1, #0; bool
51CDEC:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
51CDF0:  LDR             R0, [R0,#0x38]
51CDF2:  CBNZ            R0, loc_51CE1E
51CDF4:  LDR.W           R0, [R11,#0x444]
51CDF8:  LDRB.W          R0, [R0,#0x84]
51CDFC:  CBNZ            R0, loc_51CE1E
51CDFE:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x51CE08)
51CE00:  LDRB.W          R1, [R11,#0xBE]; unsigned int
51CE04:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
51CE06:  LDR.W           R10, [R11,#0x4E0]
51CE0A:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
51CE0C:  LDR             R4, [R0]; CAnimManager::ms_aAnimAssocGroups
51CE0E:  LDR             R0, =(g_surfaceInfos_ptr - 0x51CE14)
51CE10:  ADD             R0, PC; g_surfaceInfos_ptr
51CE12:  LDR             R0, [R0]; g_surfaceInfos ; this
51CE14:  BLX             j__ZN14SurfaceInfos_c12CantSprintOnEj; SurfaceInfos_c::CantSprintOn(uint)
51CE18:  CMP             R0, #0
51CE1A:  BEQ.W           loc_51CF82
51CE1E:  LDR.W           R0, [R11,#0x450]
51CE22:  CMP             R0, #7
51CE24:  BNE             loc_51CE2E
51CE26:  MOV             R0, R11
51CE28:  MOVS            R1, #6
51CE2A:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
51CE2E:  LDRB            R0, [R5,#0x1D]
51CE30:  LSLS            R0, R0, #0x1F
51CE32:  BNE.W           loc_51CF7C
51CE36:  MOV             R0, R11; this
51CE38:  MOVS            R1, #0; CVector *
51CE3A:  BLX             j__ZN10CPlayerPed23SetPlayerMoveBlendRatioEP7CVector; CPlayerPed::SetPlayerMoveBlendRatio(CVector *)
51CE3E:  MOV             R0, R11; this
51CE40:  BLX             j__ZN10CPlayerPed15SetRealMoveAnimEv; CPlayerPed::SetRealMoveAnim(void)
51CE44:  B               loc_51CE50
51CE46:  LDR.W           R0, [R11]
51CE4A:  LDR             R1, [R0,#0x60]
51CE4C:  MOV             R0, R11
51CE4E:  BLX             R1
51CE50:  VLDR            S0, [R5,#0x18]
51CE54:  LDRB            R0, [R5,#0x1D]
51CE56:  VMUL.F32        S0, S0, S0
51CE5A:  VLDR            D17, [R5,#0x20]
51CE5E:  VLDR            D16, [R6]
51CE62:  VLDR            D18, [R9]
51CE66:  LDR.W           R1, [R9,#8]
51CE6A:  STR             R1, [R5,#0x28]
51CE6C:  VSTR            D18, [R5,#0x20]
51CE70:  VCMPE.F32       S26, S0
51CE74:  VMRS            APSR_nzcv, FPSCR
51CE78:  BGE             loc_51CEBC
51CE7A:  ANDS.W          R1, R0, #0x10
51CE7E:  BNE             loc_51CEBC
51CE80:  VSUB.F32        S0, S24, S22
51CE84:  VMOV.F32        S2, #2.0
51CE88:  VABS.F32        S0, S0
51CE8C:  VCMPE.F32       S0, S2
51CE90:  VMRS            APSR_nzcv, FPSCR
51CE94:  BLT             loc_51CEA0
51CE96:  LDR.W           R2, [R8,#0xC]
51CE9A:  MOVS            R1, #0x40 ; '@'
51CE9C:  ANDS            R1, R2
51CE9E:  BEQ             loc_51CEBC
51CEA0:  VSUB.F32        D17, D16, D17
51CEA4:  VMUL.F32        D0, D8, D17
51CEA8:  VADD.F32        S0, S0, S1
51CEAC:  VCMPE.F32       S0, #0.0
51CEB0:  VMRS            APSR_nzcv, FPSCR
51CEB4:  BLT             loc_51CF4E
51CEB6:  ANDS.W          R1, R0, #8
51CEBA:  BEQ             loc_51CF4E
51CEBC:  LSLS            R1, R0, #0x1C
51CEBE:  IT PL
51CEC0:  MOVSPL.W        R1, R0,LSL#27
51CEC4:  BMI             loc_51CF16
51CEC6:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x51CED0)
51CEC8:  VLDR            D17, [R11,#0x48]
51CECC:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
51CECE:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
51CED0:  VLD1.32         {D18[]}, [R1@32]
51CED4:  VMUL.F32        D17, D18, D17
51CED8:  VLDR            D18, [R9]
51CEDC:  VADD.F32        D17, D17, D18
51CEE0:  VSUB.F32        D16, D16, D17
51CEE4:  VMUL.F32        D0, D8, D16
51CEE8:  VADD.F32        S0, S0, S1
51CEEC:  VCMPE.F32       S0, #0.0
51CEF0:  VMRS            APSR_nzcv, FPSCR
51CEF4:  BGT             loc_51CF16
51CEF6:  LDRB            R1, [R5,#0x1C]
51CEF8:  ORR.W           R0, R0, #4
51CEFC:  STRB            R0, [R5,#0x1D]
51CEFE:  LSLS            R0, R1, #0x1B
51CF00:  BPL             loc_51CF6E
51CF02:  LDR             R0, =(g_ikChainMan_ptr - 0x51CF0A)
51CF04:  MOV             R1, R11; CPed *
51CF06:  ADD             R0, PC; g_ikChainMan_ptr
51CF08:  LDR             R0, [R0]; g_ikChainMan ; this
51CF0A:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
51CF0E:  CBZ             R0, loc_51CF6E
51CF10:  LDR             R0, =(g_ikChainMan_ptr - 0x51CF16)
51CF12:  ADD             R0, PC; g_ikChainMan_ptr
51CF14:  B               loc_51CCE2
51CF16:  LSLS            R0, R0, #0x1E
51CF18:  BMI             loc_51CF34
51CF1A:  VMOV            R0, S20; this
51CF1E:  MOVS            R2, #0; float
51CF20:  VMOV            R1, S18; float
51CF24:  MOVS            R3, #0; float
51CF26:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
51CF2A:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
51CF2E:  STR.W           R0, [R11,#0x560]
51CF32:  B               loc_51CD1C
51CF34:  LDRB            R0, [R5,#0x1C]
51CF36:  LSLS            R0, R0, #0x1B
51CF38:  BPL             loc_51CF6E
51CF3A:  LDR             R0, =(g_ikChainMan_ptr - 0x51CF42)
51CF3C:  MOV             R1, R11; CPed *
51CF3E:  ADD             R0, PC; g_ikChainMan_ptr
51CF40:  LDR             R0, [R0]; g_ikChainMan ; this
51CF42:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
51CF46:  CBZ             R0, loc_51CF6E
51CF48:  LDR             R0, =(g_ikChainMan_ptr - 0x51CF4E)
51CF4A:  ADD             R0, PC; g_ikChainMan_ptr
51CF4C:  B               loc_51CCE2
51CF4E:  LDRB            R1, [R5,#0x1C]
51CF50:  ORR.W           R0, R0, #4
51CF54:  STRB            R0, [R5,#0x1D]
51CF56:  LSLS            R0, R1, #0x1B
51CF58:  BPL             loc_51CF6E
51CF5A:  LDR             R0, =(g_ikChainMan_ptr - 0x51CF62)
51CF5C:  MOV             R1, R11; CPed *
51CF5E:  ADD             R0, PC; g_ikChainMan_ptr
51CF60:  LDR             R0, [R0]; g_ikChainMan ; this
51CF62:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
51CF66:  CBZ             R0, loc_51CF6E
51CF68:  LDR             R0, =(g_ikChainMan_ptr - 0x51CF6E)
51CF6A:  ADD             R0, PC; g_ikChainMan_ptr
51CF6C:  B               loc_51CCE2
51CF6E:  MOVS            R0, #1
51CF70:  VPOP            {D8-D13}
51CF74:  ADD             SP, SP, #4
51CF76:  POP.W           {R8-R11}
51CF7A:  POP             {R4-R7,PC}
51CF7C:  MOV             R0, R11
51CF7E:  MOV             R1, R6
51CF80:  B               loc_51CE3A
51CF82:  ADD.W           R0, R10, R10,LSL#2
51CF86:  MOVS            R1, #1; unsigned int
51CF88:  ADD.W           R10, R4, R0,LSL#2
51CF8C:  MOV             R0, R10; this
51CF8E:  BLX             j__ZN20CAnimBlendAssocGroup12GetAnimationEj; CAnimBlendAssocGroup::GetAnimation(uint)
51CF92:  LDR             R4, [R0,#0x10]
51CF94:  MOV             R0, R10; this
51CF96:  MOVS            R1, #2; unsigned int
51CF98:  BLX             j__ZN20CAnimBlendAssocGroup12GetAnimationEj; CAnimBlendAssocGroup::GetAnimation(uint)
51CF9C:  LDR             R0, [R0,#0x10]
51CF9E:  CMP             R4, R0
51CFA0:  BEQ.W           loc_51CE1E
51CFA4:  MOV             R0, R11
51CFA6:  MOVS            R1, #0
51CFA8:  BLX             j__ZN10CPlayerPed19ControlButtonSprintE11eSprintType; CPlayerPed::ControlButtonSprint(eSprintType)
51CFAC:  VMOV.F32        S0, #1.0
51CFB0:  VMOV            S2, R0
51CFB4:  VCMPE.F32       S2, S0
51CFB8:  VMRS            APSR_nzcv, FPSCR
51CFBC:  BLT.W           loc_51CE1E
51CFC0:  MOV             R0, R11
51CFC2:  MOVS            R1, #7
51CFC4:  B               loc_51CE2A
