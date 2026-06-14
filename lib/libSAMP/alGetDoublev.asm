; =========================================================
; Game Engine Function: alGetDoublev
; Address            : 0x1E0DB8 - 0x1E0EC4
; =========================================================

1E0DB8:  PUSH            {R4-R7,R11,LR}
1E0DBC:  ADD             R11, SP, #0x10
1E0DC0:  VPUSH           {D8}
1E0DC4:  MOV             R4, R1
1E0DC8:  MOV             R6, R0
1E0DCC:  CMP             R4, #0
1E0DD0:  BEQ             loc_1E0E2C
1E0DD4:  SUB             R7, R6, #0xC000
1E0DD8:  CMP             R7, #4
1E0DDC:  BCS             loc_1E0E24
1E0DE0:  BL              j_GetContextRef
1E0DE4:  MOV             R5, R0
1E0DE8:  CMP             R5, #0
1E0DEC:  BEQ             loc_1E0E60
1E0DF0:  CMP             R7, #3; switch 4 cases
1E0DF4:  BHI             def_1E0E04; jumptable 001E0E04 default case
1E0DF8:  ADR             R1, jpt_1E0E04
1E0DFC:  MOV             R0, R7,LSL#2
1E0E00:  LDR             R0, [R0,R1]
1E0E04:  ADD             PC, R0, R1; switch jump
1E0E08:  DCD loc_1E0E18 - 0x1E0E08; jump table for switch statement
1E0E0C:  DCD loc_1E0E7C - 0x1E0E08; jumptable 001E0E04 case 1
1E0E10:  DCD loc_1E0E88 - 0x1E0E08; jumptable 001E0E04 case 2
1E0E14:  DCD loc_1E0E94 - 0x1E0E08; jumptable 001E0E04 case 3
1E0E18:  VLDR            S0, [R5,#0xD4]; jumptable 001E0E04 case 0
1E0E1C:  VCVT.F64.F32    D8, S0
1E0E20:  B               loc_1E0EB0
1E0E24:  CMP             R6, #0xD000
1E0E28:  BEQ             loc_1E0DE0
1E0E2C:  BL              j_GetContextRef
1E0E30:  MOV             R5, R0
1E0E34:  CMP             R5, #0
1E0E38:  BEQ             loc_1E0EBC
1E0E3C:  CMP             R4, #0
1E0E40:  MOV             R0, R5
1E0E44:  MOVWEQ          R1, #0xA003
1E0E48:  MOVWNE          R1, #0xA002
1E0E4C:  BL              j_alSetError
1E0E50:  MOV             R0, R5
1E0E54:  VPOP            {D8}
1E0E58:  POP             {R4-R7,R11,LR}
1E0E5C:  B               j_ALCcontext_DecRef
1E0E60:  VLDR            D8, =0.0
1E0E64:  B               loc_1E0EB8
1E0E68:  CMP             R6, #0xD000; jumptable 001E0E04 default case
1E0E6C:  BNE             loc_1E0EA0
1E0E70:  VLDR            S0, [R5,#0xCC]
1E0E74:  VCVT.F64.U32    D8, S0
1E0E78:  B               loc_1E0EB0
1E0E7C:  VLDR            S0, [R5,#0xD8]; jumptable 001E0E04 case 1
1E0E80:  VCVT.F64.F32    D8, S0
1E0E84:  B               loc_1E0EB0
1E0E88:  VLDR            S0, [R5,#0xE0]; jumptable 001E0E04 case 2
1E0E8C:  VCVT.F64.S32    D8, S0
1E0E90:  B               loc_1E0EB0
1E0E94:  VLDR            S0, [R5,#0xDC]; jumptable 001E0E04 case 3
1E0E98:  VCVT.F64.F32    D8, S0
1E0E9C:  B               loc_1E0EB0
1E0EA0:  MOV             R0, R5
1E0EA4:  MOVW            R1, #0xA002
1E0EA8:  BL              j_alSetError
1E0EAC:  VLDR            D8, =0.0
1E0EB0:  MOV             R0, R5
1E0EB4:  BL              j_ALCcontext_DecRef
1E0EB8:  VSTR            D8, [R4]
1E0EBC:  VPOP            {D8}
1E0EC0:  POP             {R4-R7,R11,PC}
