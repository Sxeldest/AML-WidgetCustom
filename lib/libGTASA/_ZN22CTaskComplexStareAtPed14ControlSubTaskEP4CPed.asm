; =========================================================
; Game Engine Function: _ZN22CTaskComplexStareAtPed14ControlSubTaskEP4CPed
; Address            : 0x519A64 - 0x519D38
; =========================================================

519A64:  PUSH            {R4-R7,LR}
519A66:  ADD             R7, SP, #0xC
519A68:  PUSH.W          {R8,R9,R11}
519A6C:  VPUSH           {D8}
519A70:  SUB             SP, SP, #0x20
519A72:  MOV             R4, R0
519A74:  MOV             R8, R1
519A76:  LDRB.W          R0, [R4,#0x20]
519A7A:  CBZ             R0, loc_519A96
519A7C:  LDRB.W          R0, [R4,#0x21]
519A80:  CBZ             R0, loc_519A9A
519A82:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x519A8A)
519A84:  MOVS            R1, #0
519A86:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
519A88:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
519A8A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
519A8C:  STRB.W          R1, [R4,#0x21]
519A90:  STR             R0, [R4,#0x18]
519A92:  MOV             R1, R0
519A94:  B               loc_519AA4
519A96:  MOVS            R6, #0
519A98:  B               loc_519AB0
519A9A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x519AA2)
519A9C:  LDR             R1, [R4,#0x18]
519A9E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
519AA0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
519AA2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
519AA4:  LDR             R2, [R4,#0x1C]
519AA6:  MOVS            R6, #0
519AA8:  ADD             R1, R2
519AAA:  CMP             R1, R0
519AAC:  IT LS
519AAE:  MOVLS           R6, #1
519AB0:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x519ABC)
519AB2:  MOV.W           R2, #0x194
519AB6:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x519AC2)
519AB8:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
519ABA:  LDRB.W          R5, [R4,#0x25]
519ABE:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
519AC0:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
519AC2:  LDR             R1, [R1]; CWorld::Players ...
519AC4:  LDR             R0, [R0]; CWorld::PlayerInFocus
519AC6:  SMULBB.W        R0, R0, R2
519ACA:  LDR             R1, [R1,R0]
519ACC:  LDR.W           R0, [R1,#0x590]; this
519AD0:  CMP             R0, #0
519AD2:  ITT NE
519AD4:  LDRNE.W         R1, [R1,#0x484]
519AD8:  ANDSNE.W        R1, R1, #0x100; char *
519ADC:  BEQ             loc_519B36
519ADE:  VLDR            S0, [R0,#0x48]
519AE2:  VLDR            S2, [R0,#0x4C]
519AE6:  VMUL.F32        S0, S0, S0
519AEA:  VLDR            S4, [R0,#0x50]
519AEE:  VMUL.F32        S2, S2, S2
519AF2:  VMUL.F32        S4, S4, S4
519AF6:  VADD.F32        S0, S0, S2
519AFA:  VLDR            S2, =0.04
519AFE:  VADD.F32        S0, S0, S4
519B02:  VCMPE.F32       S0, S2
519B06:  VMRS            APSR_nzcv, FPSCR
519B0A:  BLE             loc_519B36
519B0C:  MOVS            R0, #0
519B0E:  CBNZ            R5, loc_519B42
519B10:  CMP             R0, #1
519B12:  BNE             loc_519B56
519B14:  LDR             R0, =(aGangs - 0x519B1A); "gangs"
519B16:  ADD             R0, PC; "gangs"
519B18:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
519B1C:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x519B22)
519B1E:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
519B20:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
519B22:  ADD.W           R1, R1, R0,LSL#5
519B26:  LDRB            R1, [R1,#0x10]; int
519B28:  CMP             R1, #1
519B2A:  BNE.W           loc_519CA2
519B2E:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
519B32:  MOVS            R0, #1
519B34:  B               loc_519B52
519B36:  BLX             j__ZN10CStreaming10IsVeryBusyEv; CStreaming::IsVeryBusy(void)
519B3A:  EOR.W           R0, R0, #1
519B3E:  CMP             R5, #0
519B40:  BEQ             loc_519B10
519B42:  CBNZ            R0, loc_519B56
519B44:  LDR             R0, =(aGangs - 0x519B4A); "gangs"
519B46:  ADD             R0, PC; "gangs"
519B48:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
519B4C:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
519B50:  MOVS            R0, #0
519B52:  STRB.W          R0, [R4,#0x25]
519B56:  LDR             R1, [R4,#0x10]; CPed *
519B58:  MOVS            R0, #0
519B5A:  CMP             R1, #0
519B5C:  IT EQ
519B5E:  MOVEQ           R0, #1
519B60:  ORRS            R0, R6
519B62:  BNE.W           loc_519C76
519B66:  MOV             R0, R8; this
519B68:  BLX             j__ZN22CTaskComplexGangLeader17DoGangAbuseSpeechEP4CPedS1_; CTaskComplexGangLeader::DoGangAbuseSpeech(CPed *,CPed *)
519B6C:  LDRB.W          R0, [R4,#0x24]
519B70:  MOV             R6, #0x98967F
519B78:  CBZ             R0, loc_519BC6
519B7A:  LDR             R0, =(g_ikChainMan_ptr - 0x519B82)
519B7C:  MOV             R1, R8; CPed *
519B7E:  ADD             R0, PC; g_ikChainMan_ptr
519B80:  LDR             R0, [R0]; g_ikChainMan ; this
519B82:  BLX             j__ZN16IKChainManager_c15GetLookAtEntityEP4CPed; IKChainManager_c::GetLookAtEntity(CPed *)
519B86:  LDR             R3, [R4,#0x10]; int
519B88:  CMP             R0, R3
519B8A:  BEQ             loc_519C04
519B8C:  LDR.W           R12, =(g_ikChainMan_ptr - 0x519B9C)
519B90:  MOVW            R0, #0x999A
519B94:  MOVS            R5, #5
519B96:  MOVS            R1, #0
519B98:  ADD             R12, PC; g_ikChainMan_ptr
519B9A:  MOVS            R2, #1
519B9C:  STRD.W          R6, R5, [SP,#0x40+var_40]; int
519BA0:  MOV.W           LR, #3
519BA4:  STRD.W          R1, R2, [SP,#0x40+var_38]; int
519BA8:  MOV.W           R9, #0x1F4
519BAC:  MOVT            R0, #0x3E19
519BB0:  ADD             R2, SP, #0x40+var_30
519BB2:  STM.W           R2, {R0,R9,LR}
519BB6:  MOV             R2, R8; CPed *
519BB8:  LDR.W           R0, [R12]; g_ikChainMan ; int
519BBC:  STR             R1, [SP,#0x40+var_24]; int
519BBE:  ADR             R1, aTaskstareatped; "TaskStareAtPed"
519BC0:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
519BC4:  B               loc_519C04
519BC6:  LDR.W           R12, =(g_ikChainMan_ptr - 0x519BD6)
519BCA:  MOVW            R0, #0x999A
519BCE:  MOVS            R2, #5
519BD0:  LDR             R3, [R4,#0x10]; int
519BD2:  ADD             R12, PC; g_ikChainMan_ptr
519BD4:  STRD.W          R6, R2, [SP,#0x40+var_40]; int
519BD8:  MOVS            R1, #0
519BDA:  MOVS            R5, #1
519BDC:  MOV.W           LR, #3
519BE0:  MOV.W           R9, #0x1F4
519BE4:  MOVT            R0, #0x3E19
519BE8:  ADD             R2, SP, #0x40+var_30
519BEA:  STRD.W          R1, R5, [SP,#0x40+var_38]; int
519BEE:  STM.W           R2, {R0,R9,LR}
519BF2:  MOV             R2, R8; CPed *
519BF4:  LDR.W           R0, [R12]; g_ikChainMan ; int
519BF8:  STR             R1, [SP,#0x40+var_24]; int
519BFA:  ADR             R1, aTaskstareatped; "TaskStareAtPed"
519BFC:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
519C00:  STRB.W          R5, [R4,#0x24]
519C04:  LDRB.W          R0, [R4,#0x25]
519C08:  CBZ             R0, loc_519C76
519C0A:  LDR             R0, [R4,#0x10]
519C0C:  CMP             R0, #0
519C0E:  ITT NE
519C10:  LDRNE           R0, [R4,#0xC]
519C12:  CMPNE           R0, #0
519C14:  BEQ             loc_519C76
519C16:  ADDS            R0, #8; this
519C18:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
519C1C:  CBZ             R0, loc_519C76
519C1E:  LDRD.W          R0, R5, [R4,#0xC]
519C22:  LDR             R6, [R5,#0x14]
519C24:  ADDS            R0, #8; this
519C26:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
519C2A:  LDR             R1, [R0,#0x14]
519C2C:  ADD.W           R2, R6, #0x30 ; '0'
519C30:  CMP             R6, #0
519C32:  IT EQ
519C34:  ADDEQ           R2, R5, #4
519C36:  ADD.W           R3, R1, #0x30 ; '0'
519C3A:  CMP             R1, #0
519C3C:  VLDR            S0, [R2]
519C40:  IT EQ
519C42:  ADDEQ           R3, R0, #4
519C44:  VLDR            D16, [R2,#4]
519C48:  VLDR            S2, [R3]
519C4C:  VLDR            D17, [R3,#4]
519C50:  VSUB.F32        S0, S0, S2
519C54:  VSUB.F32        D16, D16, D17
519C58:  VMUL.F32        D1, D16, D16
519C5C:  VMUL.F32        S0, S0, S0
519C60:  VADD.F32        S0, S0, S2
519C64:  VADD.F32        S0, S0, S3
519C68:  VLDR            S2, =64.0
519C6C:  VCMPE.F32       S0, S2
519C70:  VMRS            APSR_nzcv, FPSCR
519C74:  BLE             loc_519CB0
519C76:  LDR             R0, =(g_ikChainMan_ptr - 0x519C7E)
519C78:  MOV             R1, R8; CPed *
519C7A:  ADD             R0, PC; g_ikChainMan_ptr
519C7C:  LDR             R0, [R0]; g_ikChainMan ; this
519C7E:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
519C82:  CBZ             R0, loc_519C94
519C84:  LDR             R0, =(g_ikChainMan_ptr - 0x519C90)
519C86:  MOV             R1, R8; CPed *
519C88:  MOV.W           R2, #0x1F4; int
519C8C:  ADD             R0, PC; g_ikChainMan_ptr
519C8E:  LDR             R0, [R0]; g_ikChainMan ; this
519C90:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
519C94:  MOVS            R0, #0
519C96:  ADD             SP, SP, #0x20 ; ' '
519C98:  VPOP            {D8}
519C9C:  POP.W           {R8,R9,R11}
519CA0:  POP             {R4-R7,PC}
519CA2:  MOVW            R1, #0x63E7
519CA6:  ADD             R0, R1; this
519CA8:  MOVS            R1, #8; int
519CAA:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
519CAE:  B               loc_519B56
519CB0:  LDR.W           R0, [R8,#0x440]
519CB4:  MOVS            R1, #4; int
519CB6:  ADDS            R0, #4; this
519CB8:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
519CBC:  CBNZ            R0, loc_519D34
519CBE:  BLX             rand
519CC2:  UXTH            R0, R0
519CC4:  VLDR            S16, =0.000015259
519CC8:  VMOV            S0, R0
519CCC:  VLDR            S2, =100.0
519CD0:  VCVT.F32.S32    S0, S0
519CD4:  VMUL.F32        S0, S0, S16
519CD8:  VMUL.F32        S0, S0, S2
519CDC:  VCVT.S32.F32    S0, S0
519CE0:  VMOV            R0, S0
519CE4:  CMP             R0, #0x32 ; '2'
519CE6:  BNE             loc_519D34
519CE8:  MOVS            R0, #dword_20; this
519CEA:  LDR.W           R6, [R8,#0x440]
519CEE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
519CF2:  MOV             R5, R0
519CF4:  BLX             rand
519CF8:  UXTH            R0, R0
519CFA:  VMOV.F32        S2, #8.0
519CFE:  VMOV            S0, R0
519D02:  MOVS            R0, #0
519D04:  MOVS            R1, #0x34 ; '4'
519D06:  MOV.W           R3, #0x40800000
519D0A:  VCVT.F32.S32    S0, S0
519D0E:  VMUL.F32        S0, S0, S16
519D12:  VMUL.F32        S0, S0, S2
519D16:  VCVT.S32.F32    S0, S0
519D1A:  STR             R0, [SP,#0x40+var_40]
519D1C:  VMOV            R0, S0
519D20:  ADDW            R2, R0, #0x117
519D24:  MOV             R0, R5
519D26:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
519D2A:  ADDS            R0, R6, #4; this
519D2C:  MOV             R1, R5; CTask *
519D2E:  MOVS            R2, #4; int
519D30:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
519D34:  LDR             R0, [R4,#8]
519D36:  B               loc_519C96
