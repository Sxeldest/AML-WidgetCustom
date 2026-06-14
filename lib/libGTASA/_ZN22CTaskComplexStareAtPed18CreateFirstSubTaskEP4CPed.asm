; =========================================================
; Game Engine Function: _ZN22CTaskComplexStareAtPed18CreateFirstSubTaskEP4CPed
; Address            : 0x5199F4 - 0x519A58
; =========================================================

5199F4:  PUSH            {R7,LR}
5199F6:  MOV             R7, SP
5199F8:  VPUSH           {D8}
5199FC:  SUB             SP, SP, #8
5199FE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x519A08)
519A00:  MOVS            R3, #1
519A02:  LDR             R2, [R0,#0x14]
519A04:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
519A06:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
519A08:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
519A0A:  STRB.W          R3, [R0,#0x20]
519A0E:  STRD.W          R1, R2, [R0,#0x18]
519A12:  BLX             rand
519A16:  UXTH            R0, R0
519A18:  VLDR            S2, =0.000015259
519A1C:  VMOV            S0, R0
519A20:  MOVS            R0, #dword_20; this
519A22:  VCVT.F32.S32    S0, S0
519A26:  VMUL.F32        S0, S0, S2
519A2A:  VLDR            S2, =1000.0
519A2E:  VMUL.F32        S16, S0, S2
519A32:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
519A36:  VCVT.S32.F32    S0, S16
519A3A:  MOV.W           R1, #0x41000000
519A3E:  STR             R1, [SP,#0x18+var_18]; float
519A40:  MOVS            R2, #0; bool
519A42:  MOVS            R3, #0; bool
519A44:  VMOV            R1, S0
519A48:  ADD.W           R1, R1, #0x1F4; int
519A4C:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
519A50:  ADD             SP, SP, #8
519A52:  VPOP            {D8}
519A56:  POP             {R7,PC}
