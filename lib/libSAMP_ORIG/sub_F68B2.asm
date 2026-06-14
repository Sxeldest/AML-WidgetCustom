; =========================================================
; Game Engine Function: sub_F68B2
; Address            : 0xF68B2 - 0xF68DA
; =========================================================

F68B2:  PUSH            {R4,R5,R7,LR}
F68B4:  ADD             R7, SP, #8
F68B6:  MOV             R5, R0
F68B8:  LDRB            R0, [R0]
F68BA:  MOV             R4, R1
F68BC:  LSLS            R0, R0, #0x1F
F68BE:  ITT NE
F68C0:  LDRNE           R0, [R5,#8]; void *
F68C2:  BLXNE           j__ZdlPv; operator delete(void *)
F68C6:  LDR             R0, [R4,#8]
F68C8:  STR             R0, [R5,#8]
F68CA:  MOVS            R0, #0
F68CC:  VLDR            D16, [R4]
F68D0:  VSTR            D16, [R5]
F68D4:  STR             R0, [R4,#4]
F68D6:  STRB            R0, [R4]
F68D8:  POP             {R4,R5,R7,PC}
