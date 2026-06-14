; =========================================================
; Game Engine Function: sub_21B270
; Address            : 0x21B270 - 0x21B2A2
; =========================================================

21B270:  PUSH            {R4-R7,LR}
21B272:  ADD             R7, SP, #0xC
21B274:  PUSH.W          {R8,R9,R11}
21B278:  SUBS            R6, R3, R2
21B27A:  MOV             R8, R0
21B27C:  ADD.W           R0, R1, #0x198
21B280:  MOV             R9, R3
21B282:  MOV             R1, R6
21B284:  MOV             R5, R2
21B286:  BL              sub_216EF0
21B28A:  MOV             R4, R0
21B28C:  MOV             R0, R5; src
21B28E:  MOV             R1, R9; int
21B290:  MOV             R2, R4; dest
21B292:  BL              sub_21AB64
21B296:  ASRS            R0, R6, #2
21B298:  STRD.W          R4, R0, [R8]
21B29C:  POP.W           {R8,R9,R11}
21B2A0:  POP             {R4-R7,PC}
