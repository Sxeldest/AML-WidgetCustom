; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeShooting18CreateFirstSubTaskEP4CPed
; Address            : 0x5142CC - 0x5142E4
; =========================================================

5142CC:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5142D4)
5142CE:  MOVS            R3, #1
5142D0:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5142D2:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
5142D4:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
5142D6:  STRB.W          R3, [R0,#0x50]
5142DA:  MOV.W           R3, #0xFFFFFFFF
5142DE:  STRD.W          R2, R3, [R0,#0x48]
5142E2:  B               _ZN27CTaskComplexSmartFleeEntity18CreateFirstSubTaskEP4CPed; CTaskComplexSmartFleeEntity::CreateFirstSubTask(CPed *)
