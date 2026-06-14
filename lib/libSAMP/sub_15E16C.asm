; =========================================================
; Game Engine Function: sub_15E16C
; Address            : 0x15E16C - 0x15E190
; =========================================================

15E16C:  PUSH            {R4,R6,R7,LR}
15E16E:  ADD             R7, SP, #8
15E170:  MOV             R4, R0
15E172:  LDR             R0, =(_ZTV13OpusException - 0x15E17A); `vtable for'OpusException ...
15E174:  LDRB            R1, [R4,#0xC]
15E176:  ADD             R0, PC; `vtable for'OpusException
15E178:  ADDS            R0, #8
15E17A:  STR             R0, [R4]
15E17C:  LSLS            R0, R1, #0x1F
15E17E:  ITT NE
15E180:  LDRNE           R0, [R4,#0x14]; void *
15E182:  BLXNE           j__ZdlPv; operator delete(void *)
15E186:  MOV             R0, R4; this
15E188:  POP.W           {R4,R6,R7,LR}
15E18C:  B.W             _ZN3fmt2v812format_errorD2Ev_0; fmt::v8::format_error::~format_error()
