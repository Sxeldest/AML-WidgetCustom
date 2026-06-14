; =========================================================
; Game Engine Function: _ZN14CRunningScript22ScriptTaskPickUpObjectEi
; Address            : 0x32EDB4 - 0x32EF6E
; =========================================================

32EDB4:  PUSH            {R4-R7,LR}
32EDB6:  ADD             R7, SP, #0xC
32EDB8:  PUSH.W          {R8-R11}
32EDBC:  SUB             SP, SP, #0x54
32EDBE:  MOV             R5, R0
32EDC0:  LDR             R0, =(__stack_chk_guard_ptr - 0x32EDCA)
32EDC2:  MOV             R4, R1
32EDC4:  MOVS            R1, #7; __int16
32EDC6:  ADD             R0, PC; __stack_chk_guard_ptr
32EDC8:  LDR             R0, [R0]; __stack_chk_guard
32EDCA:  LDR             R0, [R0]
32EDCC:  STR             R0, [SP,#0x70+var_20]
32EDCE:  MOV             R0, R5; this
32EDD0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32EDD4:  LDR             R0, =(ScriptParams_ptr - 0x32EDDA)
32EDD6:  ADD             R0, PC; ScriptParams_ptr
32EDD8:  LDR             R0, [R0]; ScriptParams
32EDDA:  LDRD.W          R6, R1, [R0]
32EDDE:  CMP             R1, #0
32EDE0:  STR             R4, [SP,#0x70+var_58]
32EDE2:  BLT             loc_32EE04
32EDE4:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x32EDEE)
32EDE6:  UXTB            R3, R1
32EDE8:  LSRS            R1, R1, #8
32EDEA:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
32EDEC:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
32EDEE:  LDR             R0, [R0]; CPools::ms_pObjectPool
32EDF0:  LDR             R2, [R0,#4]
32EDF2:  LDRB            R2, [R2,R1]
32EDF4:  CMP             R2, R3
32EDF6:  BNE             loc_32EE04
32EDF8:  MOV.W           R2, #0x1A4
32EDFC:  LDR             R0, [R0]
32EDFE:  MLA.W           R0, R1, R2, R0
32EE02:  B               loc_32EE06
32EE04:  MOVS            R0, #0
32EE06:  STR             R0, [SP,#0x70+var_5C]
32EE08:  LDR             R0, =(ScriptParams_ptr - 0x32EE0E)
32EE0A:  ADD             R0, PC; ScriptParams_ptr
32EE0C:  LDR             R0, [R0]; ScriptParams
32EE0E:  ADD.W           R4, R0, #8
32EE12:  LDM             R4, {R1-R4}
32EE14:  STR             R4, [SP,#0x70+var_60]
32EE16:  ADD             R4, SP, #0x70+var_38
32EE18:  LDR.W           R8, [R0,#(dword_81A920 - 0x81A908)]
32EE1C:  ADD             R0, SP, #0x70+var_54
32EE1E:  STM             R0!, {R1-R3}
32EE20:  MOV             R0, R5; this
32EE22:  MOV             R1, R4; char *
32EE24:  MOVS            R2, #0x18; unsigned __int8
32EE26:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
32EE2A:  ADD             R1, SP, #0x70+var_48; char *
32EE2C:  MOV             R0, R5; this
32EE2E:  MOVS            R2, #0x10; unsigned __int8
32EE30:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
32EE34:  ADR             R1, aNull; "NULL"
32EE36:  MOV             R0, R4; char *
32EE38:  BLX             strcmp
32EE3C:  CBZ             R0, loc_32EE54
32EE3E:  ADD             R0, SP, #0x70+var_48; char *
32EE40:  ADR             R1, aNull; "NULL"
32EE42:  BLX             strcmp
32EE46:  MOV.W           R9, #0
32EE4A:  CMP             R0, #0
32EE4C:  IT EQ
32EE4E:  MOVEQ.W         R9, #1
32EE52:  B               loc_32EE58
32EE54:  MOV.W           R9, #1
32EE58:  MOV             R0, R5; this
32EE5A:  MOVS            R1, #1; __int16
32EE5C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
32EE60:  LDR             R0, =(ScriptParams_ptr - 0x32EE66)
32EE62:  ADD             R0, PC; ScriptParams_ptr
32EE64:  LDR             R0, [R0]; ScriptParams
32EE66:  LDR.W           R10, [R0]
32EE6A:  MOVS            R0, #off_3C; this
32EE6C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
32EE70:  MOV             R11, R0
32EE72:  CMP.W           R9, #1
32EE76:  BNE             loc_32EE98
32EE78:  MOVS            R0, #0
32EE7A:  MOVS            R1, #0xBF
32EE7C:  UXTB.W          R2, R8
32EE80:  STRD.W          R2, R1, [SP,#0x70+var_70]
32EE84:  ADD             R2, SP, #0x70+var_54
32EE86:  STRD.W          R0, R0, [SP,#0x70+var_68]
32EE8A:  LDR             R0, [SP,#0x70+var_60]
32EE8C:  LDR             R1, [SP,#0x70+var_5C]
32EE8E:  UXTB            R3, R0
32EE90:  MOV             R0, R11
32EE92:  BLX             j__ZN21CTaskSimpleHoldEntityC2EP7CEntityPK7CVectorhh11AnimationId12AssocGroupIdb; CTaskSimpleHoldEntity::CTaskSimpleHoldEntity(CEntity *,CVector const*,uchar,uchar,AnimationId,AssocGroupId,bool)
32EE96:  B               loc_32EEBE
32EE98:  MOVS            R0, #0x10
32EE9A:  CMP.W           R10, #0
32EE9E:  IT EQ
32EEA0:  MOVEQ           R0, #0x18
32EEA2:  UXTB.W          R1, R8
32EEA6:  STRD.W          R1, R4, [SP,#0x70+var_70]; unsigned __int8
32EEAA:  ADD             R1, SP, #0x70+var_48
32EEAC:  STRD.W          R1, R0, [SP,#0x70+var_68]; char *
32EEB0:  ADD             R2, SP, #0x70+var_54; CVector *
32EEB2:  LDR             R0, [SP,#0x70+var_60]
32EEB4:  LDR             R1, [SP,#0x70+var_5C]; CEntity *
32EEB6:  UXTB            R3, R0; unsigned __int8
32EEB8:  MOV             R0, R11; this
32EEBA:  BLX             j__ZN21CTaskSimpleHoldEntityC2EP7CEntityPK7CVectorhhPKcS6_i_0; CTaskSimpleHoldEntity::CTaskSimpleHoldEntity(CEntity *,CVector const*,uchar,uchar,char const*,char const*,int)
32EEBE:  LDR             R5, [SP,#0x70+var_58]
32EEC0:  ADDS            R0, R6, #1
32EEC2:  BEQ             loc_32EF22
32EEC4:  CMP             R6, #0
32EEC6:  BLT             loc_32EEE8
32EEC8:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x32EED2)
32EECA:  LSRS            R1, R6, #8
32EECC:  UXTB            R3, R6
32EECE:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
32EED0:  LDR             R0, [R0]; CPools::ms_pPedPool ...
32EED2:  LDR             R0, [R0]; CPools::ms_pPedPool
32EED4:  LDR             R2, [R0,#4]
32EED6:  LDRB            R2, [R2,R1]
32EED8:  CMP             R2, R3
32EEDA:  BNE             loc_32EEE8
32EEDC:  MOVW            R2, #0x7CC
32EEE0:  LDR             R0, [R0]
32EEE2:  MLA.W           R4, R1, R2, R0
32EEE6:  B               loc_32EEEA
32EEE8:  MOVS            R4, #0
32EEEA:  LDR.W           R0, [R4,#0x440]
32EEEE:  MOVW            R1, #0x70A
32EEF2:  CMP             R5, R1
32EEF4:  MOV             R1, R11; CTask *
32EEF6:  ADD.W           R0, R0, #4; this
32EEFA:  ITE NE
32EEFC:  MOVNE           R2, #0
32EEFE:  MOVEQ           R2, #4; int
32EF00:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
32EF04:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x32EF0A)
32EF06:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr ; this
32EF08:  LDR             R6, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
32EF0A:  BLX             j__ZN22CPedScriptedTaskRecord13GetVacantSlotEv; CPedScriptedTaskRecord::GetVacantSlot(void)
32EF0E:  ADD.W           R0, R0, R0,LSL#2
32EF12:  MOV             R1, R4; CPed *
32EF14:  MOV             R2, R5; int
32EF16:  MOV             R3, R11; CTask *
32EF18:  ADD.W           R0, R6, R0,LSL#2; this
32EF1C:  BLX             j__ZN26CPedScriptedTaskRecordData3SetEP4CPediPK5CTask; CPedScriptedTaskRecordData::Set(CPed *,int,CTask const*)
32EF20:  B               loc_32EF54
32EF22:  MOVW            R0, #0x70A
32EF26:  CMP             R5, R0
32EF28:  BNE             loc_32EF54
32EF2A:  MOVS            R0, #dword_14; this
32EF2C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
32EF30:  MOVS            R1, #1; bool
32EF32:  MOVS            R2, #4; int
32EF34:  MOV             R3, R11; CTask *
32EF36:  MOV             R4, R0
32EF38:  BLX             j__ZN35CTaskSimpleAffectSecondaryBehaviourC2EbiP5CTask; CTaskSimpleAffectSecondaryBehaviour::CTaskSimpleAffectSecondaryBehaviour(bool,int,CTask *)
32EF3C:  LDR             R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x32EF44)
32EF3E:  LDR             R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x32EF46)
32EF40:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
32EF42:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
32EF44:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence ...
32EF46:  LDR             R1, [R1]; CTaskSequences::ms_taskSequence ...
32EF48:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence
32EF4A:  ADD.W           R0, R1, R0,LSL#6; this
32EF4E:  MOV             R1, R4; CTask *
32EF50:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
32EF54:  LDR             R0, =(__stack_chk_guard_ptr - 0x32EF5C)
32EF56:  LDR             R1, [SP,#0x70+var_20]
32EF58:  ADD             R0, PC; __stack_chk_guard_ptr
32EF5A:  LDR             R0, [R0]; __stack_chk_guard
32EF5C:  LDR             R0, [R0]
32EF5E:  SUBS            R0, R0, R1
32EF60:  ITTT EQ
32EF62:  ADDEQ           SP, SP, #0x54 ; 'T'
32EF64:  POPEQ.W         {R8-R11}
32EF68:  POPEQ           {R4-R7,PC}
32EF6A:  BLX             __stack_chk_fail
