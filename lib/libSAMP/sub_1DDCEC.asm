; =========================================================
; Game Engine Function: sub_1DDCEC
; Address            : 0x1DDCEC - 0x1DDD14
; =========================================================

1DDCEC:  PUSH            {R4,R10,R11,LR}
1DDCF0:  ADD             R11, SP, #8
1DDCF4:  MOV             R4, R0
1DDCF8:  CMP             R4, #0
1DDCFC:  POPEQ           {R4,R10,R11,PC}
1DDD00:  LDR             R0, [R4,#0x10]; ptr
1DDD04:  BL              free
1DDD08:  MOV             R0, R4; ptr
1DDD0C:  POP             {R4,R10,R11,LR}
1DDD10:  B               free
