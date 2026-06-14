; =========================================================
; Game Engine Function: sub_F726C
; Address            : 0xF726C - 0xF728E
; =========================================================

F726C:  PUSH            {R4,R6,R7,LR}
F726E:  ADD             R7, SP, #8
F7270:  MOV             R4, R0
F7272:  LDRB            R0, [R0,#0xC]
F7274:  LSLS            R0, R0, #0x1F
F7276:  ITT NE
F7278:  LDRNE           R0, [R4,#0x14]; void *
F727A:  BLXNE           j__ZdlPv; operator delete(void *)
F727E:  LDRB            R0, [R4]
F7280:  LSLS            R0, R0, #0x1F
F7282:  ITT NE
F7284:  LDRNE           R0, [R4,#8]; void *
F7286:  BLXNE           j__ZdlPv; operator delete(void *)
F728A:  MOV             R0, R4
F728C:  POP             {R4,R6,R7,PC}
