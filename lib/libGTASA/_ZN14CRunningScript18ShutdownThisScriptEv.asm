; =========================================================
; Game Engine Function: _ZN14CRunningScript18ShutdownThisScriptEv
; Address            : 0x32ABA0 - 0x32AC9A
; =========================================================

32ABA0:  PUSH            {R4,R5,R7,LR}
32ABA2:  ADD             R7, SP, #8
32ABA4:  MOV             R4, R0
32ABA6:  MOVS            R1, #0
32ABA8:  LDRB.W          R0, [R4,#0xE7]
32ABAC:  STRB.W          R1, [R4,#0xE4]
32ABB0:  CBZ             R0, loc_32ABCA
32ABB2:  LDR             R0, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x32ABBA)
32ABB4:  LDR             R1, [R4,#0x10]; unsigned __int8 *
32ABB6:  ADD             R0, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
32ABB8:  LDR             R5, [R0]; CTheScripts::StreamedScripts ...
32ABBA:  MOV             R0, R5; this
32ABBC:  BLX             j__ZN16CStreamedScripts37GetStreamedScriptWithThisStartAddressEPh; CStreamedScripts::GetStreamedScriptWithThisStartAddress(uchar *)
32ABC0:  ADD.W           R0, R5, R0,LSL#5
32ABC4:  LDRB            R1, [R0,#4]
32ABC6:  ADDS            R1, #0xFF
32ABC8:  STRB            R1, [R0,#4]
32ABCA:  LDRSB.W         R0, [R4,#0xE9]
32ABCE:  CMP             R0, #5
32ABD0:  BHI             locret_32AC98
32ABD2:  MOVS            R1, #1
32ABD4:  LSL.W           R0, R1, R0
32ABD8:  TST.W           R0, #0x2D
32ABDC:  BEQ             loc_32AC4E
32ABDE:  LDR             R0, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x32ABE8)
32ABE0:  LDRB.W          R1, [R4,#0xFC]
32ABE4:  ADD             R0, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
32ABE6:  CMP             R1, #0
32ABE8:  LDR             R0, [R0]; CTheScripts::LocalVariablesForCurrentMission ...
32ABEA:  IT EQ
32ABEC:  ADDEQ.W         R0, R4, #0x3C ; '<'
32ABF0:  LDR             R0, [R0]
32ABF2:  CMP             R0, #0
32ABF4:  BLT             locret_32AC98
32ABF6:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x32AC00)
32ABF8:  LSRS            R2, R0, #8
32ABFA:  UXTB            R0, R0
32ABFC:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
32ABFE:  LDR             R1, [R1]; CPools::ms_pPedPool ...
32AC00:  LDR             R1, [R1]; CPools::ms_pPedPool
32AC02:  LDR             R3, [R1,#4]
32AC04:  LDRB            R3, [R3,R2]
32AC06:  CMP             R3, R0
32AC08:  BNE             locret_32AC98
32AC0A:  MOVW            R0, #0x7CC
32AC0E:  LDR             R1, [R1]; unsigned int
32AC10:  MLA.W           R5, R2, R0, R1
32AC14:  CMP             R5, #0
32AC16:  BEQ             locret_32AC98
32AC18:  LDR.W           R0, [R5,#0x48C]
32AC1C:  BIC.W           R0, R0, #0x800000
32AC20:  STR.W           R0, [R5,#0x48C]
32AC24:  LDRB.W          R0, [R4,#0xE9]
32AC28:  CMP             R0, #5
32AC2A:  BNE             locret_32AC98
32AC2C:  MOVS            R0, #byte_8; this
32AC2E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
32AC32:  MOV             R4, R0
32AC34:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
32AC38:  LDR             R0, =(_ZTV22CTaskSimpleFinishBrain_ptr - 0x32AC40)
32AC3A:  MOV             R1, R4
32AC3C:  ADD             R0, PC; _ZTV22CTaskSimpleFinishBrain_ptr
32AC3E:  LDR             R0, [R0]; `vtable for'CTaskSimpleFinishBrain ...
32AC40:  ADDS            R0, #8
32AC42:  STR             R0, [R4]
32AC44:  MOV             R0, R5
32AC46:  POP.W           {R4,R5,R7,LR}
32AC4A:  B.W             j_j__ZN23CScriptedBrainTaskStore7SetTaskEP4CPedP5CTask; j_CScriptedBrainTaskStore::SetTask(CPed *,CTask *)
32AC4E:  LDR             R0, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x32AC58)
32AC50:  LDRB.W          R1, [R4,#0xFC]
32AC54:  ADD             R0, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
32AC56:  CMP             R1, #0
32AC58:  LDR             R0, [R0]; CTheScripts::LocalVariablesForCurrentMission ...
32AC5A:  IT EQ
32AC5C:  ADDEQ.W         R0, R4, #0x3C ; '<'
32AC60:  LDR             R0, [R0]
32AC62:  CMP             R0, #0
32AC64:  IT LT
32AC66:  POPLT           {R4,R5,R7,PC}
32AC68:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x32AC72)
32AC6A:  LSRS            R2, R0, #8
32AC6C:  UXTB            R0, R0
32AC6E:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
32AC70:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
32AC72:  LDR             R1, [R1]; CPools::ms_pObjectPool
32AC74:  LDR             R3, [R1,#4]
32AC76:  LDRB            R3, [R3,R2]
32AC78:  CMP             R3, R0
32AC7A:  BNE             locret_32AC98
32AC7C:  MOV.W           R0, #0x1A4
32AC80:  LDR             R1, [R1]
32AC82:  MLA.W           R0, R2, R0, R1
32AC86:  CMP             R0, #0
32AC88:  ITTTT NE
32AC8A:  LDRNE.W         R1, [R0,#0x144]
32AC8E:  MOVNE           R2, #1
32AC90:  BFINE.W         R1, R2, #0x14, #2
32AC94:  STRNE.W         R1, [R0,#0x144]
32AC98:  POP             {R4,R5,R7,PC}
