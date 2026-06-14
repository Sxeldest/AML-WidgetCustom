; =========================================================
; Game Engine Function: _ZN18ES2RQShaderBinding5SetupEjPKc
; Address            : 0x1CC5FC - 0x1CC60E
; =========================================================

1CC5FC:  PUSH            {R4,R6,R7,LR}
1CC5FE:  ADD             R7, SP, #8
1CC600:  MOV             R4, R0
1CC602:  MOV             R0, R1
1CC604:  MOV             R1, R2
1CC606:  BLX             glGetUniformLocation
1CC60A:  STR             R0, [R4]
1CC60C:  POP             {R4,R6,R7,PC}
