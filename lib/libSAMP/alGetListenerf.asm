; =========================================================
; Game Engine Function: alGetListenerf
; Address            : 0x1E1CC8 - 0x1E1D48
; =========================================================

1E1CC8:  PUSH            {R4-R6,R10,R11,LR}
1E1CCC:  ADD             R11, SP, #0x10
1E1CD0:  MOV             R5, R1
1E1CD4:  MOV             R6, R0
1E1CD8:  BL              j_GetContextRef
1E1CDC:  MOV             R4, R0
1E1CE0:  CMP             R4, #0
1E1CE4:  POPEQ           {R4-R6,R10,R11,PC}
1E1CE8:  CMP             R5, #0
1E1CEC:  BEQ             loc_1E1D18
1E1CF0:  MOV             R0, #0x20004
1E1CF8:  CMP             R6, R0
1E1CFC:  BEQ             loc_1E1D24
1E1D00:  MOVW            R0, #0x100A
1E1D04:  CMP             R6, R0
1E1D08:  BNE             loc_1E1D30
1E1D0C:  LDR             R0, [R4,#0x74]
1E1D10:  STR             R0, [R5]
1E1D14:  B               loc_1E1D3C
1E1D18:  MOV             R0, R4
1E1D1C:  MOVW            R1, #0xA003
1E1D20:  B               loc_1E1D38
1E1D24:  LDR             R0, [R4,#0x78]
1E1D28:  STR             R0, [R5]
1E1D2C:  B               loc_1E1D3C
1E1D30:  MOV             R0, R4
1E1D34:  MOVW            R1, #0xA002
1E1D38:  BL              j_alSetError
1E1D3C:  MOV             R0, R4
1E1D40:  POP             {R4-R6,R10,R11,LR}
1E1D44:  B               j_ALCcontext_DecRef
