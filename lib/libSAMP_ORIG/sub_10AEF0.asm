; =========================================================
; Game Engine Function: sub_10AEF0
; Address            : 0x10AEF0 - 0x10AFC8
; =========================================================

10AEF0:  PUSH            {R4,R10,R11,LR}
10AEF4:  ADD             R11, SP, #8
10AEF8:  ADD             R3, R1, #2
10AEFC:  CMP             R3, #0x11; switch 18 cases
10AF00:  BHI             def_10AF0C; jumptable 0010AF0C default case, cases 2-14
10AF04:  ADR             R4, jpt_10AF0C
10AF08:  LDR             R3, [R4,R3,LSL#2]
10AF0C:  ADD             PC, R4, R3; switch jump
10AF10:  DCD loc_10AF58 - 0x10AF10; jump table for switch statement
10AF14:  DCD loc_10AF60 - 0x10AF10; jumptable 0010AF0C cases 1,17
10AF18:  DCD def_10AF0C - 0x10AF10; jumptable 0010AF0C default case, cases 2-14
10AF1C:  DCD def_10AF0C - 0x10AF10; jumptable 0010AF0C default case, cases 2-14
10AF20:  DCD def_10AF0C - 0x10AF10; jumptable 0010AF0C default case, cases 2-14
10AF24:  DCD def_10AF0C - 0x10AF10; jumptable 0010AF0C default case, cases 2-14
10AF28:  DCD def_10AF0C - 0x10AF10; jumptable 0010AF0C default case, cases 2-14
10AF2C:  DCD def_10AF0C - 0x10AF10; jumptable 0010AF0C default case, cases 2-14
10AF30:  DCD def_10AF0C - 0x10AF10; jumptable 0010AF0C default case, cases 2-14
10AF34:  DCD def_10AF0C - 0x10AF10; jumptable 0010AF0C default case, cases 2-14
10AF38:  DCD def_10AF0C - 0x10AF10; jumptable 0010AF0C default case, cases 2-14
10AF3C:  DCD def_10AF0C - 0x10AF10; jumptable 0010AF0C default case, cases 2-14
10AF40:  DCD def_10AF0C - 0x10AF10; jumptable 0010AF0C default case, cases 2-14
10AF44:  DCD def_10AF0C - 0x10AF10; jumptable 0010AF0C default case, cases 2-14
10AF48:  DCD def_10AF0C - 0x10AF10; jumptable 0010AF0C default case, cases 2-14
10AF4C:  DCD loc_10AF58 - 0x10AF10; jumptable 0010AF0C cases 0,15
10AF50:  DCD loc_10AF68 - 0x10AF10; jumptable 0010AF0C case 16
10AF54:  DCD loc_10AF60 - 0x10AF10; jumptable 0010AF0C cases 1,17
10AF58:  STR             R2, [R0,#0x3C]; jumptable 0010AF0C cases 0,15
10AF5C:  POP             {R4,R10,R11,PC}
10AF60:  STR             R2, [R0,#0x44]; jumptable 0010AF0C cases 1,17
10AF64:  POP             {R4,R10,R11,PC}
10AF68:  STR             R2, [R0,#0x40]; jumptable 0010AF0C case 16
10AF6C:  POP             {R4,R10,R11,PC}
10AF70:  CMP             R1, #0xC; jumptable 0010AF0C default case, cases 2-14
10AF74:  BHI             loc_10AF84
10AF78:  ADD             R0, R0, R1,LSL#2
10AF7C:  STR             R2, [R0,#8]
10AF80:  POP             {R4,R10,R11,PC}
10AF84:  CMP             R1, #0x8F
10AF88:  STREQ           R2, [R0,#0x48]
10AF8C:  POPEQ           {R4,R10,R11,PC}
10AF90:  LDR             R1, =(aLibunwindSS - 0x10AFA4); "libunwind: %s - %s\n" ...
10AF94:  LDR             R2, =(aSetregister - 0x10AFAC); "setRegister" ...
10AF98:  LDR             R3, =(aUnsupportedArm - 0x10AFB0); "unsupported arm register" ...
10AF9C:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
10AFA0:  LDR             R0, =(__sF_ptr - 0x10AFB4)
10AFA4:  ADD             R2, PC, R2; "setRegister"
10AFA8:  ADD             R3, PC, R3; "unsupported arm register"
10AFAC:  LDR             R0, [PC,R0]; __sF
10AFB0:  ADD             R4, R0, #0xA8
10AFB4:  MOV             R0, R4; stream
10AFB8:  BL              fprintf
10AFBC:  MOV             R0, R4; stream
10AFC0:  BL              fflush
10AFC4:  BL              abort
