; =========================================================
; Game Engine Function: sub_15466C
; Address            : 0x15466C - 0x154690
; =========================================================

15466C:  PUSH            {R4,R6,R7,LR}
15466E:  ADD             R7, SP, #8
154670:  MOV             R4, R0
154672:  LDR             R0, =(_ZTV13BassException - 0x15467A); `vtable for'BassException ...
154674:  LDRB            R1, [R4,#0xC]
154676:  ADD             R0, PC; `vtable for'BassException
154678:  ADDS            R0, #8
15467A:  STR             R0, [R4]
15467C:  LSLS            R0, R1, #0x1F
15467E:  ITT NE
154680:  LDRNE           R0, [R4,#0x14]; void *
154682:  BLXNE           j__ZdlPv; operator delete(void *)
154686:  MOV             R0, R4; this
154688:  POP.W           {R4,R6,R7,LR}
15468C:  B.W             _ZN3fmt2v812format_errorD2Ev_0; fmt::v8::format_error::~format_error()
