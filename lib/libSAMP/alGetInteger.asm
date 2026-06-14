; =========================================================
; Game Engine Function: alGetInteger
; Address            : 0x1E0BFC - 0x1E0CA8
; =========================================================

1E0BFC:  PUSH            {R4,R5,R11,LR}
1E0C00:  ADD             R11, SP, #8
1E0C04:  MOV             R5, R0
1E0C08:  BL              j_GetContextRef
1E0C0C:  MOV             R4, R0
1E0C10:  CMP             R4, #0
1E0C14:  BEQ             loc_1E0C4C
1E0C18:  SUB             R0, R5, #0xC000; switch 4 cases
1E0C1C:  CMP             R0, #3
1E0C20:  BHI             def_1E0C30; jumptable 001E0C30 default case
1E0C24:  ADR             R1, jpt_1E0C30
1E0C28:  MOV             R0, R0,LSL#2
1E0C2C:  LDR             R0, [R0,R1]
1E0C30:  ADD             PC, R0, R1; switch jump
1E0C34:  DCD loc_1E0C44 - 0x1E0C34; jump table for switch statement
1E0C38:  DCD loc_1E0C8C - 0x1E0C34; jumptable 001E0C30 case 49153
1E0C3C:  DCD loc_1E0C68 - 0x1E0C34; jumptable 001E0C30 case 49154
1E0C40:  DCD loc_1E0C70 - 0x1E0C34; jumptable 001E0C30 case 49155
1E0C44:  VLDR            S0, [R4,#0xD4]; jumptable 001E0C30 case 49152
1E0C48:  B               loc_1E0C90
1E0C4C:  MOV             R5, #0
1E0C50:  MOV             R0, R5
1E0C54:  POP             {R4,R5,R11,PC}
1E0C58:  CMP             R5, #0xD000; jumptable 001E0C30 default case
1E0C5C:  BNE             loc_1E0C78
1E0C60:  LDR             R5, [R4,#0xCC]
1E0C64:  B               loc_1E0C98
1E0C68:  LDR             R5, [R4,#0xE0]; jumptable 001E0C30 case 49154
1E0C6C:  B               loc_1E0C98
1E0C70:  VLDR            S0, [R4,#0xDC]; jumptable 001E0C30 case 49155
1E0C74:  B               loc_1E0C90
1E0C78:  MOV             R0, R4
1E0C7C:  MOVW            R1, #0xA002
1E0C80:  BL              j_alSetError
1E0C84:  MOV             R5, #0
1E0C88:  B               loc_1E0C98
1E0C8C:  VLDR            S0, [R4,#0xD8]; jumptable 001E0C30 case 49153
1E0C90:  VCVT.S32.F32    S0, S0
1E0C94:  VMOV            R5, S0
1E0C98:  MOV             R0, R4
1E0C9C:  BL              j_ALCcontext_DecRef
1E0CA0:  MOV             R0, R5
1E0CA4:  POP             {R4,R5,R11,PC}
