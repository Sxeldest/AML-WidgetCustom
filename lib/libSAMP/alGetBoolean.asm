; =========================================================
; Game Engine Function: alGetBoolean
; Address            : 0x1E09C0 - 0x1E0A84
; =========================================================

1E09C0:  PUSH            {R4,R5,R11,LR}
1E09C4:  ADD             R11, SP, #8
1E09C8:  MOV             R5, R0
1E09CC:  BL              j_GetContextRef
1E09D0:  MOV             R4, R0
1E09D4:  CMP             R4, #0
1E09D8:  BEQ             loc_1E0A10
1E09DC:  SUB             R0, R5, #0xC000; switch 4 cases
1E09E0:  CMP             R0, #3
1E09E4:  BHI             def_1E09F4; jumptable 001E09F4 default case
1E09E8:  ADR             R1, jpt_1E09F4
1E09EC:  MOV             R0, R0,LSL#2
1E09F0:  LDR             R0, [R0,R1]
1E09F4:  ADD             PC, R0, R1; switch jump
1E09F8:  DCD loc_1E0A08 - 0x1E09F8; jump table for switch statement
1E09FC:  DCD loc_1E0A3C - 0x1E09F8; jumptable 001E09F4 case 49153
1E0A00:  DCD loc_1E0A44 - 0x1E09F8; jumptable 001E09F4 case 49154
1E0A04:  DCD loc_1E0A4C - 0x1E09F8; jumptable 001E09F4 case 49155
1E0A08:  VLDR            S0, [R4,#0xD4]; jumptable 001E09F4 case 49152
1E0A0C:  B               loc_1E0A50
1E0A10:  MOV             R5, #0
1E0A14:  UXTB            R0, R5
1E0A18:  POP             {R4,R5,R11,PC}
1E0A1C:  CMP             R5, #0xD000; jumptable 001E09F4 default case
1E0A20:  BNE             loc_1E0A64
1E0A24:  LDR             R0, [R4,#0xCC]
1E0A28:  MOVW            R1, #0xD002
1E0A2C:  MOV             R5, #0
1E0A30:  CMP             R0, R1
1E0A34:  MOVWEQ          R5, #1
1E0A38:  B               loc_1E0A74
1E0A3C:  VLDR            S0, [R4,#0xD8]; jumptable 001E09F4 case 49153
1E0A40:  B               loc_1E0A50
1E0A44:  LDR             R5, [R4,#0xE0]; jumptable 001E09F4 case 49154
1E0A48:  B               loc_1E0A74
1E0A4C:  VLDR            S0, [R4,#0xDC]; jumptable 001E09F4 case 49155
1E0A50:  VCMP.F32        S0, #0.0
1E0A54:  VMRS            APSR_nzcv, FPSCR
1E0A58:  BEQ             loc_1E0A70
1E0A5C:  MOV             R5, #1
1E0A60:  B               loc_1E0A74
1E0A64:  MOV             R0, R4
1E0A68:  MOVW            R1, #0xA002
1E0A6C:  BL              j_alSetError
1E0A70:  MOV             R5, #0
1E0A74:  MOV             R0, R4
1E0A78:  BL              j_ALCcontext_DecRef
1E0A7C:  UXTB            R0, R5
1E0A80:  POP             {R4,R5,R11,PC}
