; =========================================================
; Game Engine Function: _ZN20CTaskComplexStealCar18CreateFirstSubTaskEP4CPed
; Address            : 0x4F8840 - 0x4F8866
; =========================================================

4F8840:  LDR             R1, [R0,#0xC]
4F8842:  CBZ             R1, loc_4F8860
4F8844:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F884C)
4F8846:  MOVS            R2, #1
4F8848:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F884A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4F884C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4F884E:  STRB            R2, [R0,#0x18]
4F8850:  MOVW            R2, #0x2710
4F8854:  STRD.W          R1, R2, [R0,#0x10]
4F8858:  MOVW            R1, #0x2BD; int
4F885C:  MOVS            R2, #0; CPed *
4F885E:  B               _ZN20CTaskComplexStealCar13CreateSubTaskEiP4CPed; CTaskComplexStealCar::CreateSubTask(int,CPed *)
4F8860:  MOVS            R1, #0xCA; int
4F8862:  MOVS            R2, #0; CPed *
4F8864:  B               _ZN20CTaskComplexStealCar13CreateSubTaskEiP4CPed; CTaskComplexStealCar::CreateSubTask(int,CPed *)
