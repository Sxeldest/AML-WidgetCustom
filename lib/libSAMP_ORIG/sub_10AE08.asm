; =========================================================
; Game Engine Function: sub_10AE08
; Address            : 0x10AE08 - 0x10AEE0
; =========================================================

10AE08:  PUSH            {R4,R10,R11,LR}
10AE0C:  ADD             R11, SP, #8
10AE10:  ADD             R2, R1, #2
10AE14:  CMP             R2, #0x11; switch 18 cases
10AE18:  BHI             def_10AE24; jumptable 0010AE24 default case, cases 2-14
10AE1C:  ADR             R3, jpt_10AE24
10AE20:  LDR             R2, [R3,R2,LSL#2]
10AE24:  ADD             PC, R3, R2; switch jump
10AE28:  DCD loc_10AE70 - 0x10AE28; jump table for switch statement
10AE2C:  DCD loc_10AE7C - 0x10AE28; jumptable 0010AE24 cases 1,17
10AE30:  DCD def_10AE24 - 0x10AE28; jumptable 0010AE24 default case, cases 2-14
10AE34:  DCD def_10AE24 - 0x10AE28; jumptable 0010AE24 default case, cases 2-14
10AE38:  DCD def_10AE24 - 0x10AE28; jumptable 0010AE24 default case, cases 2-14
10AE3C:  DCD def_10AE24 - 0x10AE28; jumptable 0010AE24 default case, cases 2-14
10AE40:  DCD def_10AE24 - 0x10AE28; jumptable 0010AE24 default case, cases 2-14
10AE44:  DCD def_10AE24 - 0x10AE28; jumptable 0010AE24 default case, cases 2-14
10AE48:  DCD def_10AE24 - 0x10AE28; jumptable 0010AE24 default case, cases 2-14
10AE4C:  DCD def_10AE24 - 0x10AE28; jumptable 0010AE24 default case, cases 2-14
10AE50:  DCD def_10AE24 - 0x10AE28; jumptable 0010AE24 default case, cases 2-14
10AE54:  DCD def_10AE24 - 0x10AE28; jumptable 0010AE24 default case, cases 2-14
10AE58:  DCD def_10AE24 - 0x10AE28; jumptable 0010AE24 default case, cases 2-14
10AE5C:  DCD def_10AE24 - 0x10AE28; jumptable 0010AE24 default case, cases 2-14
10AE60:  DCD def_10AE24 - 0x10AE28; jumptable 0010AE24 default case, cases 2-14
10AE64:  DCD loc_10AE70 - 0x10AE28; jumptable 0010AE24 cases 0,15
10AE68:  DCD loc_10AED4 - 0x10AE28; jumptable 0010AE24 case 16
10AE6C:  DCD loc_10AE7C - 0x10AE28; jumptable 0010AE24 cases 1,17
10AE70:  ADD             R0, R0, #0x3C ; '<'; jumptable 0010AE24 cases 0,15
10AE74:  LDR             R0, [R0]
10AE78:  POP             {R4,R10,R11,PC}
10AE7C:  ADD             R0, R0, #0x44 ; 'D'; jumptable 0010AE24 cases 1,17
10AE80:  LDR             R0, [R0]
10AE84:  POP             {R4,R10,R11,PC}
10AE88:  CMP             R1, #0xC; jumptable 0010AE24 default case, cases 2-14
10AE8C:  ADDLS           R0, R0, R1,LSL#2
10AE90:  ADDLS           R0, R0, #8
10AE94:  LDRLS           R0, [R0]
10AE98:  POPLS           {R4,R10,R11,PC}
10AE9C:  LDR             R1, =(aLibunwindSS - 0x10AEB0); "libunwind: %s - %s\n" ...
10AEA0:  LDR             R2, =(aGetregister - 0x10AEB8); "getRegister" ...
10AEA4:  LDR             R3, =(aUnsupportedArm - 0x10AEBC); "unsupported arm register" ...
10AEA8:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
10AEAC:  LDR             R0, =(__sF_ptr - 0x10AEC0)
10AEB0:  ADD             R2, PC, R2; "getRegister"
10AEB4:  ADD             R3, PC, R3; "unsupported arm register"
10AEB8:  LDR             R0, [PC,R0]; __sF
10AEBC:  ADD             R4, R0, #0xA8
10AEC0:  MOV             R0, R4; stream
10AEC4:  BL              fprintf
10AEC8:  MOV             R0, R4; stream
10AECC:  BL              fflush
10AED0:  BL              abort
10AED4:  ADD             R0, R0, #0x40 ; '@'; jumptable 0010AE24 case 16
10AED8:  LDR             R0, [R0]
10AEDC:  POP             {R4,R10,R11,PC}
