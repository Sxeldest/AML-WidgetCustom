; =========================================================
; Game Engine Function: _ZN22CTaskComplexPassObject14ControlSubTaskEP4CPed
; Address            : 0x51B028 - 0x51B118
; =========================================================

51B028:  PUSH            {R4-R7,LR}
51B02A:  ADD             R7, SP, #0xC
51B02C:  PUSH.W          {R8,R9,R11}
51B030:  SUB             SP, SP, #0x20
51B032:  MOV             R5, R0
51B034:  MOV             R4, R1
51B036:  LDR             R0, [R5,#0xC]
51B038:  CBZ             R0, loc_51B05A
51B03A:  LDRB.W          R1, [R5,#0x28]
51B03E:  CBZ             R1, loc_51B086
51B040:  LDRB.W          R1, [R5,#0x29]
51B044:  CBZ             R1, loc_51B074
51B046:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51B04E)
51B048:  MOVS            R2, #0
51B04A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51B04C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
51B04E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
51B050:  STRB.W          R2, [R5,#0x29]
51B054:  STR             R1, [R5,#0x20]
51B056:  MOV             R2, R1
51B058:  B               loc_51B07E
51B05A:  LDR             R0, =(g_ikChainMan_ptr - 0x51B066)
51B05C:  MOVS            R1, #0; int
51B05E:  MOV             R2, R4; CPed *
51B060:  MOVS            R5, #0
51B062:  ADD             R0, PC; g_ikChainMan_ptr
51B064:  LDR             R0, [R0]; g_ikChainMan ; this
51B066:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
51B06A:  CMP             R0, #0
51B06C:  BEQ             loc_51B10E
51B06E:  LDR             R0, =(g_ikChainMan_ptr - 0x51B074)
51B070:  ADD             R0, PC; g_ikChainMan_ptr
51B072:  B               loc_51B0FE
51B074:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51B07C)
51B076:  LDR             R2, [R5,#0x20]
51B078:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51B07A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
51B07C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
51B07E:  LDR             R3, [R5,#0x24]
51B080:  ADD             R2, R3
51B082:  CMP             R2, R1
51B084:  BLS             loc_51B08A
51B086:  LDR             R5, [R5,#8]
51B088:  B               loc_51B10E
51B08A:  LDRB            R1, [R5,#0x10]
51B08C:  CBNZ            R1, loc_51B0E8
51B08E:  LDR             R1, [R5,#0x2C]
51B090:  CBZ             R1, loc_51B0E8
51B092:  LDR.W           R0, [R0,#0x440]
51B096:  MOVW            R1, #0x133; int
51B09A:  ADDS            R0, #4; this
51B09C:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
51B0A0:  CBZ             R0, loc_51B0E8
51B0A2:  LDR             R1, [R5,#0xC]; CPed *
51B0A4:  MOVS            R2, #0; bool
51B0A6:  LDR.W           R8, [R0,#8]
51B0AA:  MOVS            R6, #0
51B0AC:  BLX             j__ZN21CTaskSimpleHoldEntity10DropEntityEP4CPedb; CTaskSimpleHoldEntity::DropEntity(CPed *,bool)
51B0B0:  STRD.W          R6, R6, [SP,#0x38+var_24]
51B0B4:  MOVS            R0, #off_3C; this
51B0B6:  STR             R6, [SP,#0x38+var_1C]
51B0B8:  LDR.W           R9, [R4,#0x440]
51B0BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51B0C0:  MOVS            R1, #0xBF
51B0C2:  MOVS            R2, #0x10
51B0C4:  STRD.W          R2, R1, [SP,#0x38+var_38]
51B0C8:  MOV             R5, R0
51B0CA:  MOVS            R0, #1
51B0CC:  ADD             R2, SP, #0x38+var_24
51B0CE:  STRD.W          R6, R0, [SP,#0x38+var_30]
51B0D2:  MOV             R0, R5
51B0D4:  MOV             R1, R8
51B0D6:  MOVS            R3, #6
51B0D8:  BLX             j__ZN21CTaskSimpleHoldEntityC2EP7CEntityPK7CVectorhh11AnimationId12AssocGroupIdb; CTaskSimpleHoldEntity::CTaskSimpleHoldEntity(CEntity *,CVector const*,uchar,uchar,AnimationId,AssocGroupId,bool)
51B0DC:  ADD.W           R0, R9, #4; this
51B0E0:  MOV             R1, R5; CTask *
51B0E2:  MOVS            R2, #4; int
51B0E4:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
51B0E8:  LDR             R0, =(g_ikChainMan_ptr - 0x51B0F4)
51B0EA:  MOVS            R1, #0; int
51B0EC:  MOV             R2, R4; CPed *
51B0EE:  MOVS            R5, #0
51B0F0:  ADD             R0, PC; g_ikChainMan_ptr
51B0F2:  LDR             R0, [R0]; g_ikChainMan ; this
51B0F4:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
51B0F8:  CBZ             R0, loc_51B10E
51B0FA:  LDR             R0, =(g_ikChainMan_ptr - 0x51B100)
51B0FC:  ADD             R0, PC; g_ikChainMan_ptr
51B0FE:  LDR             R0, [R0]; g_ikChainMan ; this
51B100:  MOVS            R1, #0; int
51B102:  MOV             R2, R4; CPed *
51B104:  MOV.W           R3, #0x1F4; int
51B108:  MOVS            R5, #0
51B10A:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
51B10E:  MOV             R0, R5
51B110:  ADD             SP, SP, #0x20 ; ' '
51B112:  POP.W           {R8,R9,R11}
51B116:  POP             {R4-R7,PC}
