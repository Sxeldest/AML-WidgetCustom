; =========================================================
; Game Engine Function: mpg123_free_string
; Address            : 0x2270C8 - 0x2270E2
; =========================================================

2270C8:  PUSH            {R4,R6,R7,LR}
2270CA:  ADD             R7, SP, #8
2270CC:  MOV             R4, R0
2270CE:  LDR             R0, [R4]; p
2270D0:  CMP             R0, #0
2270D2:  IT NE
2270D4:  BLXNE           free
2270D8:  MOVS            R0, #0
2270DA:  STRD.W          R0, R0, [R4]
2270DE:  STR             R0, [R4,#8]
2270E0:  POP             {R4,R6,R7,PC}
