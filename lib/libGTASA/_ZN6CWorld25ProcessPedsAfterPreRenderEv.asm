; =========================================================
; Game Engine Function: _ZN6CWorld25ProcessPedsAfterPreRenderEv
; Address            : 0x4283C0 - 0x4283FA
; =========================================================

4283C0:  PUSH            {R4,R6,R7,LR}
4283C2:  ADD             R7, SP, #8
4283C4:  LDR             R0, =(_ZN6CTimer21bSkipProcessThisFrameE_ptr - 0x4283CA)
4283C6:  ADD             R0, PC; _ZN6CTimer21bSkipProcessThisFrameE_ptr
4283C8:  LDR             R0, [R0]; CTimer::bSkipProcessThisFrame ...
4283CA:  LDRB            R0, [R0]; CTimer::bSkipProcessThisFrame
4283CC:  CBZ             R0, loc_4283D0
4283CE:  POP             {R4,R6,R7,PC}
4283D0:  LDR             R0, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x4283D6)
4283D2:  ADD             R0, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
4283D4:  LDR             R0, [R0]; CWorld::ms_listMovingEntityPtrs ...
4283D6:  LDR             R4, [R0]; CWorld::ms_listMovingEntityPtrs
4283D8:  B               loc_4283E2
4283DA:  LDR.W           R0, [R0,#0x440]; this
4283DE:  BLX             j__ZN16CPedIntelligence21ProcessAfterPreRenderEv; CPedIntelligence::ProcessAfterPreRender(void)
4283E2:  CMP             R4, #0
4283E4:  IT EQ
4283E6:  POPEQ           {R4,R6,R7,PC}
4283E8:  LDRD.W          R0, R4, [R4]
4283EC:  LDRB.W          R1, [R0,#0x3A]
4283F0:  AND.W           R1, R1, #7
4283F4:  CMP             R1, #3
4283F6:  BNE             loc_4283E2
4283F8:  B               loc_4283DA
