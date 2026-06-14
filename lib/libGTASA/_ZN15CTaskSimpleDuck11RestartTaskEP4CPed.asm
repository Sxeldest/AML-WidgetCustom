; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck11RestartTaskEP4CPed
; Address            : 0x5430F0 - 0x543150
; =========================================================

5430F0:  PUSH            {R4,R6,R7,LR}
5430F2:  ADD             R7, SP, #8
5430F4:  MOV             R4, R0
5430F6:  LDRB            R0, [R4,#0x1A]
5430F8:  CMP             R0, #0
5430FA:  ITTTT NE
5430FC:  LDRNE.W         R0, [R1,#0x484]
543100:  ORRNE.W         R0, R0, #0x4000000
543104:  STRNE.W         R0, [R1,#0x484]
543108:  MOVNE           R0, #0
54310A:  IT NE
54310C:  STRBNE          R0, [R4,#0x1A]
54310E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x543118)
543110:  LDRSH.W         R1, [R4,#0xE]
543114:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
543116:  CMP             R1, #0
543118:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
54311A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
54311C:  STR             R0, [R4,#8]
54311E:  BLT             loc_54314C
543120:  BLX             rand
543124:  UXTH            R0, R0
543126:  VLDR            S2, =0.000015259
54312A:  VMOV            S0, R0
54312E:  VCVT.F32.S32    S0, S0
543132:  VMUL.F32        S0, S0, S2
543136:  VLDR            S2, =1500.0
54313A:  VMUL.F32        S0, S0, S2
54313E:  VCVT.S32.F32    S0, S0
543142:  VMOV            R0, S0
543146:  ADD.W           R0, R0, #0x3E8
54314A:  STRH            R0, [R4,#0xE]
54314C:  MOV             R0, R4
54314E:  POP             {R4,R6,R7,PC}
