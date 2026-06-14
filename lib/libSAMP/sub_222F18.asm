; =========================================================
; Game Engine Function: sub_222F18
; Address            : 0x222F18 - 0x222FF0
; =========================================================

222F18:  PUSH            {R4,R10,R11,LR}
222F1C:  ADD             R11, SP, #8
222F20:  ADD             R2, R1, #2
222F24:  CMP             R2, #0x11; switch 18 cases
222F28:  BHI             def_222F34; jumptable 00222F34 default case, cases 2-14
222F2C:  ADR             R3, jpt_222F34
222F30:  LDR             R2, [R3,R2,LSL#2]
222F34:  ADD             PC, R3, R2; switch jump
222F38:  DCD loc_222F80 - 0x222F38; jump table for switch statement
222F3C:  DCD loc_222F8C - 0x222F38; jumptable 00222F34 cases 1,17
222F40:  DCD def_222F34 - 0x222F38; jumptable 00222F34 default case, cases 2-14
222F44:  DCD def_222F34 - 0x222F38; jumptable 00222F34 default case, cases 2-14
222F48:  DCD def_222F34 - 0x222F38; jumptable 00222F34 default case, cases 2-14
222F4C:  DCD def_222F34 - 0x222F38; jumptable 00222F34 default case, cases 2-14
222F50:  DCD def_222F34 - 0x222F38; jumptable 00222F34 default case, cases 2-14
222F54:  DCD def_222F34 - 0x222F38; jumptable 00222F34 default case, cases 2-14
222F58:  DCD def_222F34 - 0x222F38; jumptable 00222F34 default case, cases 2-14
222F5C:  DCD def_222F34 - 0x222F38; jumptable 00222F34 default case, cases 2-14
222F60:  DCD def_222F34 - 0x222F38; jumptable 00222F34 default case, cases 2-14
222F64:  DCD def_222F34 - 0x222F38; jumptable 00222F34 default case, cases 2-14
222F68:  DCD def_222F34 - 0x222F38; jumptable 00222F34 default case, cases 2-14
222F6C:  DCD def_222F34 - 0x222F38; jumptable 00222F34 default case, cases 2-14
222F70:  DCD def_222F34 - 0x222F38; jumptable 00222F34 default case, cases 2-14
222F74:  DCD loc_222F80 - 0x222F38; jumptable 00222F34 cases 0,15
222F78:  DCD loc_222FE4 - 0x222F38; jumptable 00222F34 case 16
222F7C:  DCD loc_222F8C - 0x222F38; jumptable 00222F34 cases 1,17
222F80:  ADD             R0, R0, #0x3C ; '<'; jumptable 00222F34 cases 0,15
222F84:  LDR             R0, [R0]
222F88:  POP             {R4,R10,R11,PC}
222F8C:  ADD             R0, R0, #0x44 ; 'D'; jumptable 00222F34 cases 1,17
222F90:  LDR             R0, [R0]
222F94:  POP             {R4,R10,R11,PC}
222F98:  CMP             R1, #0xC; jumptable 00222F34 default case, cases 2-14
222F9C:  ADDLS           R0, R0, R1,LSL#2
222FA0:  ADDLS           R0, R0, #8
222FA4:  LDRLS           R0, [R0]
222FA8:  POPLS           {R4,R10,R11,PC}
222FAC:  LDR             R1, =(aLibunwindSS - 0x222FC0); "libunwind: %s - %s\n" ...
222FB0:  LDR             R2, =(aGetregister - 0x222FC8); "getRegister" ...
222FB4:  LDR             R3, =(aUnsupportedArm - 0x222FCC); "unsupported arm register" ...
222FB8:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
222FBC:  LDR             R0, =(__sF_ptr - 0x222FD0)
222FC0:  ADD             R2, PC, R2; "getRegister"
222FC4:  ADD             R3, PC, R3; "unsupported arm register"
222FC8:  LDR             R0, [PC,R0]; __sF
222FCC:  ADD             R4, R0, #0xA8
222FD0:  MOV             R0, R4; stream
222FD4:  BL              fprintf
222FD8:  MOV             R0, R4; stream
222FDC:  BL              fflush
222FE0:  BL              abort
222FE4:  ADD             R0, R0, #0x40 ; '@'; jumptable 00222F34 case 16
222FE8:  LDR             R0, [R0]
222FEC:  POP             {R4,R10,R11,PC}
