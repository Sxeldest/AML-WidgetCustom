; =========================================================
; Game Engine Function: _ZN33CTaskSimpleDuckWhileShotsWhizzingC2Et
; Address            : 0x543778 - 0x5437C8
; =========================================================

543778:  PUSH            {R4,R5,R7,LR}
54377A:  ADD             R7, SP, #8
54377C:  MOV             R5, R1
54377E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
543782:  LDR             R1, =(_ZTV15CTaskSimpleDuck_ptr - 0x543790)
543784:  MOVS            R2, #0
543786:  LDR             R3, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x543796)
543788:  MOVT            R2, #0x101
54378C:  ADD             R1, PC; _ZTV15CTaskSimpleDuck_ptr
54378E:  LDR.W           R12, =(_ZTV33CTaskSimpleDuckWhileShotsWhizzing_ptr - 0x5437A0)
543792:  ADD             R3, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
543794:  STR             R2, [R0,#0x18]
543796:  LDR             R1, [R1]; `vtable for'CTaskSimpleDuck ...
543798:  MOVS            R2, #0
54379A:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds ...
54379C:  ADD             R12, PC; _ZTV33CTaskSimpleDuckWhileShotsWhizzing_ptr
54379E:  MOV.W           R4, #0xFF00
5437A2:  STRD.W          R2, R2, [R0,#0x1C]
5437A6:  STRH            R4, [R0,#0x24]
5437A8:  ADDS            R1, #8
5437AA:  STR             R1, [R0]
5437AC:  LDR             R1, [R3]; CTimer::m_snTimeInMilliseconds
5437AE:  LDR.W           R4, [R12]; `vtable for'CTaskSimpleDuckWhileShotsWhizzing ...
5437B2:  STRH            R5, [R0,#0xC]
5437B4:  STR             R1, [R0,#8]
5437B6:  MOVW            R1, #0xFFFF
5437BA:  STRH            R1, [R0,#0xE]
5437BC:  ADD.W           R1, R4, #8
5437C0:  STRD.W          R2, R2, [R0,#0x10]
5437C4:  STR             R1, [R0]
5437C6:  POP             {R4,R5,R7,PC}
