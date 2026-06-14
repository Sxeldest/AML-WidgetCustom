; =========================================================
; Game Engine Function: alGetFloatv
; Address            : 0x1E0ED0 - 0x1E0FD0
; =========================================================

1E0ED0:  PUSH            {R4-R7,R11,LR}
1E0ED4:  ADD             R11, SP, #0x10
1E0ED8:  VPUSH           {D8}
1E0EDC:  MOV             R4, R1
1E0EE0:  MOV             R6, R0
1E0EE4:  CMP             R4, #0
1E0EE8:  BEQ             loc_1E0F40
1E0EEC:  SUB             R7, R6, #0xC000
1E0EF0:  CMP             R7, #4
1E0EF4:  BCS             loc_1E0F38
1E0EF8:  BL              j_GetContextRef
1E0EFC:  MOV             R5, R0
1E0F00:  CMP             R5, #0
1E0F04:  BEQ             loc_1E0F74
1E0F08:  CMP             R7, #3; switch 4 cases
1E0F0C:  BHI             def_1E0F1C; jumptable 001E0F1C default case
1E0F10:  ADR             R1, jpt_1E0F1C
1E0F14:  MOV             R0, R7,LSL#2
1E0F18:  LDR             R0, [R0,R1]
1E0F1C:  ADD             PC, R0, R1; switch jump
1E0F20:  DCD loc_1E0F30 - 0x1E0F20; jump table for switch statement
1E0F24:  DCD loc_1E0F90 - 0x1E0F20; jumptable 001E0F1C case 1
1E0F28:  DCD loc_1E0F98 - 0x1E0F20; jumptable 001E0F1C case 2
1E0F2C:  DCD loc_1E0FA4 - 0x1E0F20; jumptable 001E0F1C case 3
1E0F30:  VLDR            S16, [R5,#0xD4]; jumptable 001E0F1C case 0
1E0F34:  B               loc_1E0FBC
1E0F38:  CMP             R6, #0xD000
1E0F3C:  BEQ             loc_1E0EF8
1E0F40:  BL              j_GetContextRef
1E0F44:  MOV             R5, R0
1E0F48:  CMP             R5, #0
1E0F4C:  BEQ             loc_1E0FC8
1E0F50:  CMP             R4, #0
1E0F54:  MOV             R0, R5
1E0F58:  MOVWEQ          R1, #0xA003
1E0F5C:  MOVWNE          R1, #0xA002
1E0F60:  BL              j_alSetError
1E0F64:  MOV             R0, R5
1E0F68:  VPOP            {D8}
1E0F6C:  POP             {R4-R7,R11,LR}
1E0F70:  B               j_ALCcontext_DecRef
1E0F74:  VLDR            S16, =0.0
1E0F78:  B               loc_1E0FC4
1E0F7C:  CMP             R6, #0xD000; jumptable 001E0F1C default case
1E0F80:  BNE             loc_1E0FAC
1E0F84:  VLDR            S0, [R5,#0xCC]
1E0F88:  VCVT.F32.U32    S16, S0
1E0F8C:  B               loc_1E0FBC
1E0F90:  VLDR            S16, [R5,#0xD8]; jumptable 001E0F1C case 1
1E0F94:  B               loc_1E0FBC
1E0F98:  VLDR            S0, [R5,#0xE0]; jumptable 001E0F1C case 2
1E0F9C:  VCVT.F32.S32    S16, S0
1E0FA0:  B               loc_1E0FBC
1E0FA4:  VLDR            S16, [R5,#0xDC]; jumptable 001E0F1C case 3
1E0FA8:  B               loc_1E0FBC
1E0FAC:  MOV             R0, R5
1E0FB0:  MOVW            R1, #0xA002
1E0FB4:  BL              j_alSetError
1E0FB8:  VLDR            S16, =0.0
1E0FBC:  MOV             R0, R5
1E0FC0:  BL              j_ALCcontext_DecRef
1E0FC4:  VSTR            S16, [R4]
1E0FC8:  VPOP            {D8}
1E0FCC:  POP             {R4-R7,R11,PC}
