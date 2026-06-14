; =========================================================
; Game Engine Function: sub_1188FC
; Address            : 0x1188FC - 0x118918
; =========================================================

1188FC:  PUSH            {R4,R6,R7,LR}
1188FE:  ADD             R7, SP, #8
118900:  MOV             R4, R0
118902:  LDR             R0, =(_ZTV24SpdWithDefSpeddIndicatorI15CTransparentSpdE - 0x118908); `vtable for'SpdWithDefSpeddIndicator<CTransparentSpd> ...
118904:  ADD             R0, PC; `vtable for'SpdWithDefSpeddIndicator<CTransparentSpd>
118906:  ADD.W           R1, R0, #8
11890A:  MOV             R0, R4
11890C:  STR.W           R1, [R0],#4
118910:  BL              sub_1630A8
118914:  MOV             R0, R4
118916:  POP             {R4,R6,R7,PC}
