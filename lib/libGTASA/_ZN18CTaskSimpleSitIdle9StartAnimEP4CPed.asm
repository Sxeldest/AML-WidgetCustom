; =========================================================
; Game Engine Function: _ZN18CTaskSimpleSitIdle9StartAnimEP4CPed
; Address            : 0x4EC598 - 0x4EC600
; =========================================================

4EC598:  PUSH            {R4,R5,R7,LR}
4EC59A:  ADD             R7, SP, #8
4EC59C:  MOV             R4, R0
4EC59E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EC5A8)
4EC5A0:  LDR             R3, [R4,#0xC]
4EC5A2:  MOVS            R5, #1
4EC5A4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EC5A6:  LDRB            R2, [R4,#8]
4EC5A8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EC5AA:  CMP             R2, #0
4EC5AC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4EC5AE:  STRB            R5, [R4,#0x1C]
4EC5B0:  STRD.W          R0, R3, [R4,#0x14]
4EC5B4:  LDR             R0, [R1,#0x18]; int
4EC5B6:  BEQ             loc_4EC5C0
4EC5B8:  MOVS            R1, #0x35 ; '5'
4EC5BA:  MOV.W           R2, #0x136
4EC5BE:  B               loc_4EC5C4
4EC5C0:  MOVS            R1, #0; int
4EC5C2:  MOVS            R2, #0x96; unsigned int
4EC5C4:  MOV.W           R3, #0x43800000
4EC5C8:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4EC5CC:  MOV             R5, R0
4EC5CE:  CMP             R5, #0
4EC5D0:  STR             R5, [R4,#0x10]
4EC5D2:  IT EQ
4EC5D4:  POPEQ           {R4,R5,R7,PC}
4EC5D6:  BLX             rand
4EC5DA:  VMOV            S0, R0
4EC5DE:  VLDR            S2, =4.6566e-10
4EC5E2:  VCVT.F32.S32    S0, S0
4EC5E6:  VMUL.F32        S0, S0, S2
4EC5EA:  VLDR            S2, =0.6
4EC5EE:  VMUL.F32        S0, S0, S2
4EC5F2:  VLDR            S2, =0.9
4EC5F6:  VADD.F32        S0, S0, S2
4EC5FA:  VSTR            S0, [R5,#0x24]
4EC5FE:  POP             {R4,R5,R7,PC}
