; =========================================================
; Game Engine Function: _ZN23CTaskComplexFallToDeath18CreateFirstSubTaskEP4CPed
; Address            : 0x52CF5C - 0x52D046
; =========================================================

52CF5C:  PUSH            {R4-R7,LR}
52CF5E:  ADD             R7, SP, #0xC
52CF60:  PUSH.W          {R8}
52CF64:  MOV             R5, R0
52CF66:  LDR             R0, =(_ZN23CTaskComplexFallToDeath24ms_LateralForceMagnitudeE_ptr - 0x52CF72)
52CF68:  VLDR            S0, [R5,#0xC]
52CF6C:  MOV             R4, R1
52CF6E:  ADD             R0, PC; _ZN23CTaskComplexFallToDeath24ms_LateralForceMagnitudeE_ptr
52CF70:  VLDR            S2, [R5,#0x10]
52CF74:  LDR             R2, =(_ZN23CTaskComplexFallToDeath25ms_NoRailingVerticalForceE_ptr - 0x52CF7C)
52CF76:  LDR             R0, [R0]; CTaskComplexFallToDeath::ms_LateralForceMagnitude ...
52CF78:  ADD             R2, PC; _ZN23CTaskComplexFallToDeath25ms_NoRailingVerticalForceE_ptr
52CF7A:  LDR             R1, =(_ZN23CTaskComplexFallToDeath27ms_OverRailingVerticalForceE_ptr - 0x52CF88)
52CF7C:  LDR.W           R12, [R4,#0x484]
52CF80:  VLDR            S4, [R0]
52CF84:  ADD             R1, PC; _ZN23CTaskComplexFallToDeath27ms_OverRailingVerticalForceE_ptr
52CF86:  LDR             R0, [R2]; CTaskComplexFallToDeath::ms_NoRailingVerticalForce ...
52CF88:  VMUL.F32        S0, S0, S4
52CF8C:  LDRB.W          R2, [R5,#0x21]
52CF90:  VMUL.F32        S2, S2, S4
52CF94:  LDR.W           LR, [R4,#0x488]
52CF98:  TST.W           R2, #8
52CF9C:  LDR.W           R6, [R4,#0x48C]
52CFA0:  LDR.W           R8, [R4,#0x490]
52CFA4:  IT NE
52CFA6:  LDRNE           R0, [R1]; CTaskComplexFallToDeath::ms_OverRailingVerticalForce ...
52CFA8:  LDR             R3, [R0]; CTaskComplexFallToDeath::ms_OverRailingVerticalForce
52CFAA:  BIC.W           R0, R12, #1
52CFAE:  STR.W           R0, [R4,#0x484]
52CFB2:  MOV             R0, R4
52CFB4:  VMOV            R1, S0
52CFB8:  STR.W           LR, [R4,#0x488]
52CFBC:  VMOV            R2, S2
52CFC0:  STR.W           R6, [R4,#0x48C]
52CFC4:  STR.W           R8, [R4,#0x490]
52CFC8:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
52CFCC:  LDRSB.W         R0, [R5,#0x20]
52CFD0:  CMP             R0, #3
52CFD2:  BHI             loc_52CFDE
52CFD4:  ADR             R1, dword_52D054
52CFD6:  LDR.W           R0, [R1,R0,LSL#2]
52CFDA:  STR             R0, [R5,#0x18]
52CFDC:  B               loc_52CFF2
52CFDE:  LDR             R2, [R5,#0x18]; unsigned int
52CFE0:  CMP             R2, #3
52CFE2:  BHI             loc_52CFF2
52CFE4:  LDR             R0, [R4,#0x18]; int
52CFE6:  MOVS            R3, #0x447A0000
52CFEC:  MOVS            R1, #0; int
52CFEE:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52CFF2:  MOVS            R0, #off_3C; this
52CFF4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52CFF8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52CFFC:  LDR             R1, =(_ZTV16CTaskSimpleInAir_ptr - 0x52D006)
52CFFE:  MOVS            R3, #0
52D000:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52D00C)
52D002:  ADD             R1, PC; _ZTV16CTaskSimpleInAir_ptr
52D004:  STR.W           R3, [R0,#0x32]
52D008:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52D00A:  STR.W           R3, [R0,#0x2E]
52D00E:  LDR             R1, [R1]; `vtable for'CTaskSimpleInAir ...
52D010:  STRD.W          R3, R3, [R0,#0x28]
52D014:  STR             R3, [R0,#0x38]
52D016:  ADDS            R1, #8
52D018:  STRD.W          R3, R3, [R0,#0x1C]
52D01C:  LDRB.W          R3, [R0,#0x24]
52D020:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
52D022:  STR             R1, [R0]
52D024:  AND.W           R1, R3, #0xF8
52D028:  ORR.W           R1, R1, #2
52D02C:  STRB.W          R1, [R0,#0x24]
52D030:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds
52D032:  MOV.W           R2, #0x1F4
52D036:  STRD.W          R1, R2, [R0,#0x2C]
52D03A:  MOVS            R1, #1
52D03C:  STRB.W          R1, [R0,#0x34]
52D040:  POP.W           {R8}
52D044:  POP             {R4-R7,PC}
