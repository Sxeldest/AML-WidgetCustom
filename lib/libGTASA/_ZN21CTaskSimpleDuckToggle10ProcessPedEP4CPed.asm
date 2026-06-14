; =========================================================
; Game Engine Function: _ZN21CTaskSimpleDuckToggle10ProcessPedEP4CPed
; Address            : 0x4EAA88 - 0x4EABC6
; =========================================================

4EAA88:  PUSH            {R4-R7,LR}
4EAA8A:  ADD             R7, SP, #0xC
4EAA8C:  PUSH.W          {R8}
4EAA90:  MOV             R5, R0
4EAA92:  MOV             R4, R1
4EAA94:  LDR             R0, [R5,#8]
4EAA96:  ADDS            R1, R0, #1
4EAA98:  CMP             R1, #1
4EAA9A:  BHI             loc_4EAAC2
4EAA9C:  LDR.W           R0, [R4,#0x440]; this
4EAAA0:  MOVS            R1, #0; bool
4EAAA2:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4EAAA6:  CBZ             R0, loc_4EAAC0
4EAAA8:  LDR.W           R0, [R4,#0x440]; this
4EAAAC:  MOVS            R1, #0; bool
4EAAAE:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4EAAB2:  LDR             R1, [R0]
4EAAB4:  MOVS            R2, #0
4EAAB6:  MOVS            R3, #0
4EAAB8:  LDR             R6, [R1,#0x1C]
4EAABA:  MOV             R1, R4
4EAABC:  BLX             R6
4EAABE:  B               loc_4EABA6
4EAAC0:  LDR             R0, [R5,#8]
4EAAC2:  CMP             R0, #1
4EAAC4:  IT NE
4EAAC6:  ADDSNE.W        R0, R0, #1
4EAACA:  BNE             loc_4EABBE
4EAACC:  LDR.W           R0, [R4,#0x440]
4EAAD0:  ADDS            R0, #4; this
4EAAD2:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4EAAD6:  CBZ             R0, loc_4EAAFE
4EAAD8:  LDR.W           R0, [R4,#0x440]
4EAADC:  ADDS            R0, #4; this
4EAADE:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4EAAE2:  LDR             R1, [R0]
4EAAE4:  LDR             R1, [R1,#0x14]
4EAAE6:  BLX             R1
4EAAE8:  MOVW            R1, #0x19F
4EAAEC:  CMP             R0, R1
4EAAEE:  BNE             loc_4EAAFE
4EAAF0:  LDR.W           R0, [R4,#0x440]
4EAAF4:  ADDS            R0, #4; this
4EAAF6:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4EAAFA:  MOV             R5, R0
4EAAFC:  B               loc_4EAB00
4EAAFE:  MOVS            R5, #0
4EAB00:  LDR.W           R0, [R4,#0x440]; this
4EAB04:  MOVS            R1, #1; bool
4EAB06:  MOVW            R8, #0xFFFF
4EAB0A:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4EAB0E:  CBZ             R0, loc_4EAB74
4EAB10:  LDR.W           R0, [R4,#0x440]; this
4EAB14:  MOVS            R1, #1; bool
4EAB16:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4EAB1A:  LDRB.W          R0, [R0,#0x24]
4EAB1E:  CMP             R0, #4
4EAB20:  BEQ             loc_4EABBE
4EAB22:  CMP             R5, #0
4EAB24:  ITTT NE
4EAB26:  MOVNE           R0, R5; this
4EAB28:  MOVNE           R1, R4; CPed *
4EAB2A:  BLXNE           j__ZN15CTaskSimpleDuck23AbortBecauseOfOtherDuckEP4CPed; CTaskSimpleDuck::AbortBecauseOfOtherDuck(CPed *)
4EAB2E:  LDR.W           R0, [R4,#0x440]; this
4EAB32:  MOVS            R1, #1; bool
4EAB34:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4EAB38:  MOVS            R1, #4; unsigned __int8
4EAB3A:  BLX             j__ZN15CTaskSimpleDuck14SetControlTypeEh; CTaskSimpleDuck::SetControlType(uchar)
4EAB3E:  CBNZ            R0, loc_4EABBE
4EAB40:  LDR.W           R0, [R4,#0x440]; this
4EAB44:  MOVS            R1, #1; bool
4EAB46:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4EAB4A:  MOV             R1, R4; CPed *
4EAB4C:  BLX             j__ZN15CTaskSimpleDuck23AbortBecauseOfOtherDuckEP4CPed; CTaskSimpleDuck::AbortBecauseOfOtherDuck(CPed *)
4EAB50:  MOVS            R0, #word_28; this
4EAB52:  LDR.W           R5, [R4,#0x440]
4EAB56:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EAB5A:  SXTH.W          R3, R8; __int16
4EAB5E:  MOVS            R1, #4; unsigned __int8
4EAB60:  MOVS            R2, #0; unsigned __int16
4EAB62:  MOV             R4, R0
4EAB64:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
4EAB68:  ADDS            R0, R5, #4; this
4EAB6A:  MOV             R1, R4; CTask *
4EAB6C:  MOVS            R2, #1; int
4EAB6E:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
4EAB72:  B               loc_4EABBE
4EAB74:  CBZ             R5, loc_4EAB84
4EAB76:  LDR             R0, [R5]
4EAB78:  MOV             R1, R4
4EAB7A:  MOVS            R2, #1
4EAB7C:  MOVS            R3, #0
4EAB7E:  LDR             R6, [R0,#0x1C]
4EAB80:  MOV             R0, R5
4EAB82:  BLX             R6
4EAB84:  MOVS            R0, #word_28; this
4EAB86:  LDR.W           R6, [R4,#0x440]
4EAB8A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EAB8E:  SXTH.W          R3, R8; __int16
4EAB92:  MOVS            R1, #4; unsigned __int8
4EAB94:  MOVS            R2, #0; unsigned __int16
4EAB96:  MOV             R5, R0
4EAB98:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
4EAB9C:  ADDS            R0, R6, #4; this
4EAB9E:  MOV             R1, R5; CTask *
4EABA0:  MOVS            R2, #1; int
4EABA2:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
4EABA6:  LDR.W           R0, [R4,#0x440]; this
4EABAA:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
4EABAE:  CBZ             R0, loc_4EABBE
4EABB0:  LDR.W           R0, [R4,#0x440]; this
4EABB4:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
4EABB8:  MOV             R1, R4; CPed *
4EABBA:  BLX             j__ZN17CTaskSimpleUseGun9ClearAnimEP4CPed; CTaskSimpleUseGun::ClearAnim(CPed *)
4EABBE:  MOVS            R0, #1
4EABC0:  POP.W           {R8}
4EABC4:  POP             {R4-R7,PC}
