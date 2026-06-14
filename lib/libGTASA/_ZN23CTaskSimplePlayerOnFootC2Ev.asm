; =========================================================
; Game Engine Function: _ZN23CTaskSimplePlayerOnFootC2Ev
; Address            : 0x5374E0 - 0x537514
; =========================================================

5374E0:  PUSH            {R4,R6,R7,LR}
5374E2:  ADD             R7, SP, #8
5374E4:  MOV             R4, R0
5374E6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5374EA:  LDR             R0, =(_ZTV23CTaskSimplePlayerOnFoot_ptr - 0x5374F0)
5374EC:  ADD             R0, PC; _ZTV23CTaskSimplePlayerOnFoot_ptr
5374EE:  LDR             R1, [R0]; `vtable for'CTaskSimplePlayerOnFoot ...
5374F0:  LDR             R0, =(aPlayidles_0 - 0x5374FA); "playidles"
5374F2:  ADDS            R1, #8; char *
5374F4:  STR             R1, [R4]
5374F6:  ADD             R0, PC; "playidles"
5374F8:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
5374FC:  LDR             R1, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x537508)
5374FE:  MOVS            R2, #0
537500:  ADD.W           R3, R4, #0x20 ; ' '
537504:  ADD             R1, PC; _ZN6CTimer14m_FrameCounterE_ptr
537506:  LDR             R1, [R1]; CTimer::m_FrameCounter ...
537508:  LDR             R1, [R1]; CTimer::m_FrameCounter
53750A:  STM             R3!, {R0-R2}
53750C:  MOV             R0, R4
53750E:  STRD.W          R2, R2, [R4,#0x2C]
537512:  POP             {R4,R6,R7,PC}
