; =========================================================
; Game Engine Function: _ZN35CTaskComplexFollowNodeRouteShooting18CreateFirstSubTaskEP4CPed
; Address            : 0x5268F0 - 0x52690A
; =========================================================

5268F0:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5268F8)
5268F2:  MOVS            R3, #1
5268F4:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5268F6:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
5268F8:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
5268FA:  STRB.W          R3, [R0,#0x6C]
5268FE:  MOV.W           R3, #0xFFFFFFFF
526902:  STRD.W          R2, R3, [R0,#0x64]
526906:  B.W             _ZN27CTaskComplexFollowNodeRoute18CreateFirstSubTaskEP4CPed; CTaskComplexFollowNodeRoute::CreateFirstSubTask(CPed *)
