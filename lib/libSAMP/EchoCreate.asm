; =========================================================
; Game Engine Function: EchoCreate
; Address            : 0x1DDC68 - 0x1DDCDC
; =========================================================

1DDC68:  PUSH            {R4,R5,R11,LR}
1DDC6C:  ADD             R11, SP, #8
1DDC70:  MOV             R0, #0x7C ; '|'; size
1DDC74:  BL              malloc
1DDC78:  CMP             R0, #0
1DDC7C:  BEQ             loc_1DDCD4
1DDC80:  LDR             R3, =(sub_1DDCEC - 0x1DDC98)
1DDC84:  MOV             R2, #0
1DDC88:  LDR             R1, =(sub_1DDD14 - 0x1DDCA0)
1DDC8C:  LDR             LR, =(loc_1DDFD4 - 0x1DDCA8)
1DDC90:  ADD             R3, PC, R3; sub_1DDCEC
1DDC94:  LDR             R12, =(sub_1DDDD4 - 0x1DDCB0)
1DDC98:  ADD             R5, PC, R1; sub_1DDD14
1DDC9C:  STR             R2, [R0,#0x70]
1DDCA0:  ADD             R4, PC, LR; loc_1DDFD4
1DDCA4:  STR             R2, [R0,#0x74]
1DDCA8:  ADD             R1, PC, R12; sub_1DDDD4
1DDCAC:  STR             R2, [R0,#0x78]
1DDCB0:  STR             R2, [R0,#0x20]
1DDCB4:  STM             R0, {R3,R5}
1DDCB8:  STR             R1, [R0,#8]
1DDCBC:  STR             R4, [R0,#0xC]
1DDCC0:  STR             R2, [R0,#0x10]
1DDCC4:  STR             R2, [R0,#0x14]
1DDCC8:  STR             R2, [R0,#0x18]
1DDCCC:  STR             R2, [R0,#0x1C]
1DDCD0:  POP             {R4,R5,R11,PC}
1DDCD4:  MOV             R0, #0
1DDCD8:  POP             {R4,R5,R11,PC}
