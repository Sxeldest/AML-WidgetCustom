; =========================================================
; Game Engine Function: sub_1DDD14
; Address            : 0x1DDD14 - 0x1DDDCC
; =========================================================

1DDD14:  PUSH            {R4-R6,R10,R11,LR}
1DDD18:  ADD             R11, SP, #0x10
1DDD1C:  VLDR            S0, [R1,#0xC]
1DDD20:  MOV             R4, R0
1DDD24:  VLDR            S2, =0.404
1DDD28:  MOV             R6, #1
1DDD2C:  VCVT.F32.U32    S0, S0
1DDD30:  VLDR            S4, =0.207
1DDD34:  VMUL.F32        S2, S0, S2
1DDD38:  VMUL.F32        S0, S0, S4
1DDD3C:  VCVT.S32.F32    S2, S2
1DDD40:  VCVT.S32.F32    S0, S0
1DDD44:  VMOV            R0, S2
1DDD48:  VMOV            R1, S0
1DDD4C:  ADD             R0, R1, R0
1DDD50:  CMN             R0, #2
1DDD54:  ADDSNE          R0, R0, #1
1DDD58:  BEQ             loc_1DDD78
1DDD5C:  MOV             R6, #1
1DDD60:  MOV             R1, #0
1DDD64:  MOV             R2, R0,LSR#1
1DDD68:  CMP             R1, R0,LSR#1
1DDD6C:  MOV             R6, R6,LSL#1
1DDD70:  MOV             R0, R2
1DDD74:  BNE             loc_1DDD64
1DDD78:  LDR             R0, [R4,#0x14]
1DDD7C:  CMP             R6, R0
1DDD80:  BEQ             loc_1DDDA0
1DDD84:  LDR             R0, [R4,#0x10]; ptr
1DDD88:  MOV             R1, R6,LSL#2; size
1DDD8C:  BL              realloc
1DDD90:  CMP             R0, #0
1DDD94:  BEQ             loc_1DDDC0
1DDD98:  STR             R0, [R4,#0x10]
1DDD9C:  STR             R6, [R4,#0x14]
1DDDA0:  MOV             R5, #1
1DDDA4:  CMP             R6, #0
1DDDA8:  BEQ             loc_1DDDB8
1DDDAC:  LDR             R0, [R4,#0x10]; int
1DDDB0:  MOV             R1, R6,LSL#2; n
1DDDB4:  BL              sub_22178C
1DDDB8:  MOV             R0, R5
1DDDBC:  POP             {R4-R6,R10,R11,PC}
1DDDC0:  MOV             R5, #0
1DDDC4:  MOV             R0, R5
1DDDC8:  POP             {R4-R6,R10,R11,PC}
