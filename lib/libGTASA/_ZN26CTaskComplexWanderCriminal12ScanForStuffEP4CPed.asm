; =========================================================
; Game Engine Function: _ZN26CTaskComplexWanderCriminal12ScanForStuffEP4CPed
; Address            : 0x524004 - 0x5240AE
; =========================================================

524004:  PUSH            {R4-R7,LR}
524006:  ADD             R7, SP, #0xC
524008:  PUSH.W          {R11}
52400C:  MOV             R5, R0
52400E:  MOV             R4, R1
524010:  LDRB.W          R0, [R5,#0x30]
524014:  CBNZ            R0, loc_52405C
524016:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52401E)
524018:  MOVS            R1, #0x32 ; '2'
52401A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52401C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52401E:  LDR             R6, [R0]; CTimer::m_snTimeInMilliseconds
524020:  MOVS            R0, #1
524022:  STRD.W          R6, R1, [R5,#0x28]
524026:  STRB.W          R0, [R5,#0x30]
52402A:  BLX             rand
52402E:  UXTH            R0, R0
524030:  VLDR            S2, =0.000015259
524034:  VMOV            S0, R0
524038:  VCVT.F32.S32    S0, S0
52403C:  VMUL.F32        S0, S0, S2
524040:  VLDR            S2, =30000.0
524044:  VMUL.F32        S0, S0, S2
524048:  VCVT.S32.F32    S0, S0
52404C:  LDRB.W          R0, [R5,#0x30]
524050:  CMP             R0, #0
524052:  VMOV            R1, S0
524056:  ADD             R1, R6
524058:  STR             R1, [R5,#0x34]
52405A:  BEQ             loc_52409A
52405C:  LDRB.W          R0, [R5,#0x31]
524060:  CBZ             R0, loc_524076
524062:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52406A)
524064:  MOVS            R1, #0
524066:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
524068:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52406A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52406C:  STRB.W          R1, [R5,#0x31]
524070:  STR             R0, [R5,#0x28]
524072:  MOV             R1, R0
524074:  B               loc_524080
524076:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52407E)
524078:  LDR             R1, [R5,#0x28]
52407A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52407C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52407E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
524080:  LDR             R2, [R5,#0x2C]
524082:  ADD             R1, R2
524084:  CMP             R1, R0
524086:  BHI             loc_52409A
524088:  MOVS            R1, #0x32 ; '2'
52408A:  MOVS            R2, #1
52408C:  STRD.W          R0, R1, [R5,#0x28]
524090:  LDR             R1, [R5,#0x34]
524092:  STRB.W          R2, [R5,#0x30]
524096:  CMP             R0, R1
524098:  BCS             loc_5240A0
52409A:  POP.W           {R11}
52409E:  POP             {R4-R7,PC}
5240A0:  MOV             R0, R5; this
5240A2:  MOV             R1, R4; CPed *
5240A4:  POP.W           {R11}
5240A8:  POP.W           {R4-R7,LR}
5240AC:  B               _ZN26CTaskComplexWanderCriminal18LookForCarsToStealEP4CPed; CTaskComplexWanderCriminal::LookForCarsToSteal(CPed *)
