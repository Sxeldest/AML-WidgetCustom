; =========================================================
; Game Engine Function: alGetBooleanv
; Address            : 0x1E0CA8 - 0x1E0DB8
; =========================================================

1E0CA8:  PUSH            {R4-R7,R11,LR}
1E0CAC:  ADD             R11, SP, #0x10
1E0CB0:  MOV             R4, R1
1E0CB4:  MOV             R6, R0
1E0CB8:  CMP             R4, #0
1E0CBC:  BEQ             loc_1E0D14
1E0CC0:  SUB             R7, R6, #0xC000
1E0CC4:  CMP             R7, #4
1E0CC8:  BCC             loc_1E0CD4
1E0CCC:  CMP             R6, #0xD000
1E0CD0:  BNE             loc_1E0D14
1E0CD4:  BL              j_GetContextRef
1E0CD8:  MOV             R5, R0
1E0CDC:  CMP             R5, #0
1E0CE0:  BEQ             loc_1E0D44
1E0CE4:  CMP             R7, #3; switch 4 cases
1E0CE8:  BHI             def_1E0CF8; jumptable 001E0CF8 default case
1E0CEC:  ADR             R1, jpt_1E0CF8
1E0CF0:  MOV             R0, R7,LSL#2
1E0CF4:  LDR             R0, [R0,R1]
1E0CF8:  ADD             PC, R0, R1; switch jump
1E0CFC:  DCD loc_1E0D0C - 0x1E0CFC; jump table for switch statement
1E0D00:  DCD loc_1E0D70 - 0x1E0CFC; jumptable 001E0CF8 case 1
1E0D04:  DCD loc_1E0D78 - 0x1E0CFC; jumptable 001E0CF8 case 2
1E0D08:  DCD loc_1E0D80 - 0x1E0CFC; jumptable 001E0CF8 case 3
1E0D0C:  VLDR            S0, [R5,#0xD4]; jumptable 001E0CF8 case 0
1E0D10:  B               loc_1E0D84
1E0D14:  BL              j_GetContextRef
1E0D18:  MOV             R5, R0
1E0D1C:  CMP             R5, #0
1E0D20:  POPEQ           {R4-R7,R11,PC}
1E0D24:  CMP             R4, #0
1E0D28:  MOV             R0, R5
1E0D2C:  MOVWEQ          R1, #0xA003
1E0D30:  MOVWNE          R1, #0xA002
1E0D34:  BL              j_alSetError
1E0D38:  MOV             R0, R5
1E0D3C:  POP             {R4-R7,R11,LR}
1E0D40:  B               j_ALCcontext_DecRef
1E0D44:  MOV             R6, #0
1E0D48:  STRB            R6, [R4]
1E0D4C:  POP             {R4-R7,R11,PC}
1E0D50:  CMP             R6, #0xD000; jumptable 001E0CF8 default case
1E0D54:  BNE             loc_1E0D98
1E0D58:  LDR             R0, [R5,#0xCC]
1E0D5C:  MOVW            R1, #0xD002
1E0D60:  MOV             R6, #0
1E0D64:  CMP             R0, R1
1E0D68:  MOVWEQ          R6, #1
1E0D6C:  B               loc_1E0DA8
1E0D70:  VLDR            S0, [R5,#0xD8]; jumptable 001E0CF8 case 1
1E0D74:  B               loc_1E0D84
1E0D78:  LDR             R6, [R5,#0xE0]; jumptable 001E0CF8 case 2
1E0D7C:  B               loc_1E0DA8
1E0D80:  VLDR            S0, [R5,#0xDC]; jumptable 001E0CF8 case 3
1E0D84:  VCMP.F32        S0, #0.0
1E0D88:  VMRS            APSR_nzcv, FPSCR
1E0D8C:  BEQ             loc_1E0DA4
1E0D90:  MOV             R6, #1
1E0D94:  B               loc_1E0DA8
1E0D98:  MOV             R0, R5
1E0D9C:  MOVW            R1, #0xA002
1E0DA0:  BL              j_alSetError
1E0DA4:  MOV             R6, #0
1E0DA8:  MOV             R0, R5
1E0DAC:  BL              j_ALCcontext_DecRef
1E0DB0:  STRB            R6, [R4]
1E0DB4:  POP             {R4-R7,R11,PC}
