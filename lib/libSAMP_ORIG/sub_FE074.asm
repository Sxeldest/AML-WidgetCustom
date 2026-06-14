; =========================================================
; Game Engine Function: sub_FE074
; Address            : 0xFE074 - 0xFE09A
; =========================================================

FE074:  PUSH            {R4,R5,R7,LR}
FE076:  ADD             R7, SP, #8
FE078:  MOV             R5, R0
FE07A:  LDR             R0, [R0]
FE07C:  MOV             R4, R1
FE07E:  LDR             R2, [R0,#0x10]
FE080:  MOV             R0, R5
FE082:  BLX             R2
FE084:  LDRB            R0, [R5,#5]
FE086:  CMP             R0, #1
FE088:  IT EQ
FE08A:  POPEQ           {R4,R5,R7,PC}
FE08C:  LDR             R0, [R5]
FE08E:  MOV             R1, R4
FE090:  LDR             R2, [R0,#0x14]
FE092:  MOV             R0, R5
FE094:  POP.W           {R4,R5,R7,LR}
FE098:  BX              R2
