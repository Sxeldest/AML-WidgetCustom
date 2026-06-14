; =========================================================
; Game Engine Function: alBufferfv
; Address            : 0x1D6020 - 0x1D6084
; =========================================================

1D6020:  PUSH            {R4-R6,R10,R11,LR}
1D6024:  ADD             R11, SP, #0x10
1D6028:  MOV             R6, R2
1D602C:  MOV             R5, R0
1D6030:  BL              j_GetContextRef
1D6034:  MOV             R4, R0
1D6038:  CMP             R4, #0
1D603C:  POPEQ           {R4-R6,R10,R11,PC}
1D6040:  CMP             R6, #0
1D6044:  BEQ             loc_1D606C
1D6048:  LDR             R0, [R4,#0xFC]
1D604C:  MOV             R1, R5
1D6050:  ADD             R0, R0, #0x3C ; '<'
1D6054:  BL              j_LookupUIntMapKey
1D6058:  CMP             R0, #0
1D605C:  MOV             R0, R4
1D6060:  MOVWNE          R1, #0xA002
1D6064:  MOVWEQ          R1, #0xA001
1D6068:  B               loc_1D6074
1D606C:  MOV             R0, R4
1D6070:  MOVW            R1, #0xA003
1D6074:  BL              j_alSetError
1D6078:  MOV             R0, R4
1D607C:  POP             {R4-R6,R10,R11,LR}
1D6080:  B               j_ALCcontext_DecRef
