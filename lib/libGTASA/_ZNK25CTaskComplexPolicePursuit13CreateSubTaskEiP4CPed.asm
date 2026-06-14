; =========================================================
; Game Engine Function: _ZNK25CTaskComplexPolicePursuit13CreateSubTaskEiP4CPed
; Address            : 0x53D9E0 - 0x53DB32
; =========================================================

53D9E0:  PUSH            {R4-R7,LR}
53D9E2:  ADD             R7, SP, #0xC
53D9E4:  PUSH.W          {R11}
53D9E8:  VPUSH           {D8}
53D9EC:  SUB             SP, SP, #0x10
53D9EE:  MOV             R5, R0
53D9F0:  MOVW            R0, #0x38A
53D9F4:  MOV             R6, R2
53D9F6:  MOVS            R4, #0
53D9F8:  CMP             R1, R0
53D9FA:  BGT             loc_53DA38
53D9FC:  CMP             R1, #0xCB
53D9FE:  BEQ             loc_53DA76
53DA00:  MOVW            R5, #0x1A5
53DA04:  CMP             R1, R5
53DA06:  BNE.W           loc_53DB24
53DA0A:  MOVS            R0, #dword_20; this
53DA0C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53DA10:  MOV             R4, R0
53DA12:  LDR             R0, =(aScratchhead - 0x53DA1C); "ScratchHead"
53DA14:  MOVS            R1, #0
53DA16:  MOVS            R2, #0x87
53DA18:  ADD             R0, PC; "ScratchHead"
53DA1A:  MOV.W           R3, #0x40800000
53DA1E:  STRD.W          R5, R0, [SP,#0x28+var_28]
53DA22:  MOV             R0, R4
53DA24:  STR             R1, [SP,#0x28+var_20]
53DA26:  MOVS            R1, #0
53DA28:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
53DA2C:  LDR             R0, =(_ZTV22CTaskSimpleScratchHead_ptr - 0x53DA32)
53DA2E:  ADD             R0, PC; _ZTV22CTaskSimpleScratchHead_ptr
53DA30:  LDR             R0, [R0]; `vtable for'CTaskSimpleScratchHead ...
53DA32:  ADDS            R0, #8
53DA34:  STR             R0, [R4]
53DA36:  B               loc_53DB24
53DA38:  MOVW            R0, #0x38B
53DA3C:  CMP             R1, R0
53DA3E:  BEQ             loc_53DA92
53DA40:  MOVW            R0, #0x44D
53DA44:  CMP             R1, R0
53DA46:  BNE             loc_53DB24
53DA48:  LDR             R0, [R5,#0x14]
53DA4A:  MOVS            R6, #0
53DA4C:  CMP             R0, #0
53DA4E:  BEQ             loc_53DB22
53DA50:  MOVS            R0, #dword_24; this
53DA52:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53DA56:  MOV             R4, R0
53DA58:  LDR             R5, [R5,#0x14]
53DA5A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
53DA5E:  LDR             R0, =(_ZTV21CTaskComplexArrestPed_ptr - 0x53DA68)
53DA60:  MOV             R1, R4
53DA62:  STR             R6, [R4,#0x20]
53DA64:  ADD             R0, PC; _ZTV21CTaskComplexArrestPed_ptr
53DA66:  LDR             R0, [R0]; `vtable for'CTaskComplexArrestPed ...
53DA68:  ADDS            R0, #8
53DA6A:  STR             R0, [R4]
53DA6C:  STR.W           R5, [R1,#0x10]!; unsigned int
53DA70:  CMP             R5, #0
53DA72:  BNE             loc_53DB1A
53DA74:  B               loc_53DB24
53DA76:  MOVS            R0, #dword_20; this
53DA78:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53DA7C:  MOV             R4, R0
53DA7E:  MOV.W           R0, #0x41000000
53DA82:  STR             R0, [SP,#0x28+var_28]; float
53DA84:  MOV             R0, R4; this
53DA86:  MOVS            R1, #0; int
53DA88:  MOVS            R2, #0; bool
53DA8A:  MOVS            R3, #0; bool
53DA8C:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
53DA90:  B               loc_53DB24
53DA92:  MOVS            R0, #dword_4C; this
53DA94:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53DA98:  MOV             R4, R0
53DA9A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x53DAA4)
53DA9C:  LDR.W           R5, [R6,#0x590]
53DAA0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
53DAA2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
53DAA4:  LDRSH.W         R1, [R5,#0x26]
53DAA8:  LDR.W           R0, [R0,R1,LSL#2]
53DAAC:  LDR             R0, [R0,#0x2C]
53DAAE:  VLDR            S16, [R0,#0x24]
53DAB2:  MOV             R0, R4; this
53DAB4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
53DAB8:  VMOV.F32        S0, #1.0
53DABC:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x53DAC8)
53DABE:  LDR             R1, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x53DACA)
53DAC0:  MOV.W           R2, #0x3E8
53DAC4:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
53DAC6:  ADD             R1, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
53DAC8:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
53DACA:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorStandard ...
53DACC:  ADDS            R0, #8
53DACE:  STR             R0, [R4]
53DAD0:  VADD.F32        S0, S16, S0
53DAD4:  MOVW            R0, #0xC350
53DAD8:  STRD.W          R0, R2, [R4,#0x10]
53DADC:  MOV.W           R0, #0x40000000
53DAE0:  MOVS            R2, #0
53DAE2:  STR             R0, [R4,#0x1C]
53DAE4:  STRD.W          R2, R0, [R4,#0x20]
53DAE8:  ADD.W           R0, R1, #8
53DAEC:  STRH            R2, [R4,#0x30]
53DAEE:  STRH            R2, [R4,#0x3C]
53DAF0:  STRD.W          R2, R2, [R4,#0x28]
53DAF4:  STRD.W          R2, R2, [R4,#0x34]
53DAF8:  MOVS            R2, #6
53DAFA:  LDRB.W          R1, [R4,#0x48]
53DAFE:  STRD.W          R0, R2, [R4,#0x40]
53DB02:  AND.W           R0, R1, #0xF0
53DB06:  MOV             R1, R4
53DB08:  ORR.W           R0, R0, #3
53DB0C:  STRB.W          R0, [R4,#0x48]
53DB10:  VSTR            S0, [R4,#0x18]
53DB14:  STR.W           R5, [R1,#0xC]!; CEntity **
53DB18:  CBZ             R5, loc_53DB24
53DB1A:  MOV             R0, R5; this
53DB1C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53DB20:  B               loc_53DB24
53DB22:  MOVS            R4, #0
53DB24:  MOV             R0, R4
53DB26:  ADD             SP, SP, #0x10
53DB28:  VPOP            {D8}
53DB2C:  POP.W           {R11}
53DB30:  POP             {R4-R7,PC}
