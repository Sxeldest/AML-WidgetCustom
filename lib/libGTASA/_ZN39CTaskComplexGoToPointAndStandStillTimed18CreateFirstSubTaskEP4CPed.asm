; =========================================================
; Game Engine Function: _ZN39CTaskComplexGoToPointAndStandStillTimed18CreateFirstSubTaskEP4CPed
; Address            : 0x51D944 - 0x51D980
; =========================================================

51D944:  MOV             R2, R1; CPed *
51D946:  LDR             R1, [R0,#0x28]
51D948:  CMP             R1, #0
51D94A:  BLT             loc_51D960
51D94C:  LDR             R3, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51D956)
51D94E:  MOV.W           R12, #1
51D952:  ADD             R3, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51D954:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds ...
51D956:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds
51D958:  STRB.W          R12, [R0,#0x34]
51D95C:  STRD.W          R3, R1, [R0,#0x2C]
51D960:  LDRB.W          R1, [R0,#0x24]
51D964:  AND.W           R1, R1, #0xFB
51D968:  STRB.W          R1, [R0,#0x24]
51D96C:  LDR.W           R3, [R2,#0x484]
51D970:  MOV.W           R1, #0x2C0
51D974:  TST.W           R3, #0x100
51D978:  IT EQ
51D97A:  MOVEQ.W         R1, #0x384; int
51D97E:  B               _ZNK34CTaskComplexGoToPointAndStandStill13CreateSubTaskEiP4CPed; CTaskComplexGoToPointAndStandStill::CreateSubTask(int,CPed *)
