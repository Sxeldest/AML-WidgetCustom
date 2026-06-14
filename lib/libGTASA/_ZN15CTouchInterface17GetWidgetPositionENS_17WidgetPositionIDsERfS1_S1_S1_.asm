; =========================================================
; Game Engine Function: _ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_
; Address            : 0x2B25F4 - 0x2B2622
; =========================================================

2B25F4:  PUSH            {R4,R6,R7,LR}
2B25F6:  ADD             R7, SP, #8
2B25F8:  LDR.W           R12, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2B2606)
2B25FC:  MOV.W           LR, R0,LSL#4
2B2600:  LDR             R4, [R7,#arg_0]
2B2602:  ADD             R12, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
2B2604:  LDR.W           R12, [R12]; CTouchInterface::m_WidgetPosition ...
2B2608:  ADD.W           R0, R12, R0,LSL#4
2B260C:  LDR.W           LR, [R12,LR]
2B2610:  STR.W           LR, [R1]
2B2614:  LDR             R1, [R0,#4]
2B2616:  STR             R1, [R2]
2B2618:  LDR             R1, [R0,#8]
2B261A:  STR             R1, [R3]
2B261C:  LDR             R0, [R0,#0xC]
2B261E:  STR             R0, [R4]
2B2620:  POP             {R4,R6,R7,PC}
