; =========================================================
; Game Engine Function: alFilteriv
; Address            : 0x1D9FF0 - 0x1DA07C
; =========================================================

1D9FF0:  PUSH            {R4-R7,R11,LR}
1D9FF4:  ADD             R11, SP, #0x10
1D9FF8:  MOV             R7, R0
1D9FFC:  MOV             R4, R2
1DA000:  MOV             R6, R1
1DA004:  MOVW            R0, #0x8001
1DA008:  CMP             R6, R0
1DA00C:  BNE             loc_1DA024
1DA010:  LDR             R2, [R4]
1DA014:  MOV             R0, R7
1DA018:  MOVW            R1, #0x8001
1DA01C:  POP             {R4-R7,R11,LR}
1DA020:  B               j_alFilteri
1DA024:  BL              j_GetContextRef
1DA028:  MOV             R5, R0
1DA02C:  CMP             R5, #0
1DA030:  POPEQ           {R4-R7,R11,PC}
1DA034:  LDR             R0, [R5,#0xFC]
1DA038:  MOV             R1, R7
1DA03C:  ADD             R0, R0, #0x84
1DA040:  BL              j_LookupUIntMapKey
1DA044:  CMP             R0, #0
1DA048:  BEQ             loc_1DA064
1DA04C:  LDR             R7, [R0,#0x10]
1DA050:  MOV             R1, R5
1DA054:  MOV             R2, R6
1DA058:  MOV             R3, R4
1DA05C:  BLX             R7
1DA060:  B               loc_1DA070
1DA064:  MOV             R0, R5
1DA068:  MOVW            R1, #0xA001
1DA06C:  BL              j_alSetError
1DA070:  MOV             R0, R5
1DA074:  POP             {R4-R7,R11,LR}
1DA078:  B               j_ALCcontext_DecRef
