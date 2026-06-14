; =========================================================
; Game Engine Function: sub_6B384
; Address            : 0x6B384 - 0x6B3AA
; =========================================================

6B384:  PUSH            {R4,R6,R7,LR}
6B386:  ADD             R7, SP, #8
6B388:  MOV             R4, R0
6B38A:  LDRB.W          R0, [R0,#0x38]
6B38E:  LSLS            R0, R0, #0x1F
6B390:  ITT NE
6B392:  LDRNE           R0, [R4,#0x40]; void *
6B394:  BLXNE           j__ZdlPv; operator delete(void *)
6B398:  LDRB.W          R0, [R4,#0x28]
6B39C:  LSLS            R0, R0, #0x1F
6B39E:  ITT NE
6B3A0:  LDRNE           R0, [R4,#0x30]; void *
6B3A2:  BLXNE           j__ZdlPv; operator delete(void *)
6B3A6:  MOV             R0, R4
6B3A8:  POP             {R4,R6,R7,PC}
