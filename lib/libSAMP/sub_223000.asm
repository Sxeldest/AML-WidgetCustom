; =========================================================
; Game Engine Function: sub_223000
; Address            : 0x223000 - 0x2230D8
; =========================================================

223000:  PUSH            {R4,R10,R11,LR}
223004:  ADD             R11, SP, #8
223008:  ADD             R3, R1, #2
22300C:  CMP             R3, #0x11; switch 18 cases
223010:  BHI             def_22301C; jumptable 0022301C default case, cases 2-14
223014:  ADR             R4, jpt_22301C
223018:  LDR             R3, [R4,R3,LSL#2]
22301C:  ADD             PC, R4, R3; switch jump
223020:  DCD loc_223068 - 0x223020; jump table for switch statement
223024:  DCD loc_223070 - 0x223020; jumptable 0022301C cases 1,17
223028:  DCD def_22301C - 0x223020; jumptable 0022301C default case, cases 2-14
22302C:  DCD def_22301C - 0x223020; jumptable 0022301C default case, cases 2-14
223030:  DCD def_22301C - 0x223020; jumptable 0022301C default case, cases 2-14
223034:  DCD def_22301C - 0x223020; jumptable 0022301C default case, cases 2-14
223038:  DCD def_22301C - 0x223020; jumptable 0022301C default case, cases 2-14
22303C:  DCD def_22301C - 0x223020; jumptable 0022301C default case, cases 2-14
223040:  DCD def_22301C - 0x223020; jumptable 0022301C default case, cases 2-14
223044:  DCD def_22301C - 0x223020; jumptable 0022301C default case, cases 2-14
223048:  DCD def_22301C - 0x223020; jumptable 0022301C default case, cases 2-14
22304C:  DCD def_22301C - 0x223020; jumptable 0022301C default case, cases 2-14
223050:  DCD def_22301C - 0x223020; jumptable 0022301C default case, cases 2-14
223054:  DCD def_22301C - 0x223020; jumptable 0022301C default case, cases 2-14
223058:  DCD def_22301C - 0x223020; jumptable 0022301C default case, cases 2-14
22305C:  DCD loc_223068 - 0x223020; jumptable 0022301C cases 0,15
223060:  DCD loc_223078 - 0x223020; jumptable 0022301C case 16
223064:  DCD loc_223070 - 0x223020; jumptable 0022301C cases 1,17
223068:  STR             R2, [R0,#0x3C]; jumptable 0022301C cases 0,15
22306C:  POP             {R4,R10,R11,PC}
223070:  STR             R2, [R0,#0x44]; jumptable 0022301C cases 1,17
223074:  POP             {R4,R10,R11,PC}
223078:  STR             R2, [R0,#0x40]; jumptable 0022301C case 16
22307C:  POP             {R4,R10,R11,PC}
223080:  CMP             R1, #0xC; jumptable 0022301C default case, cases 2-14
223084:  BHI             loc_223094
223088:  ADD             R0, R0, R1,LSL#2
22308C:  STR             R2, [R0,#8]
223090:  POP             {R4,R10,R11,PC}
223094:  CMP             R1, #0x8F
223098:  STREQ           R2, [R0,#0x48]
22309C:  POPEQ           {R4,R10,R11,PC}
2230A0:  LDR             R1, =(aLibunwindSS - 0x2230B4); "libunwind: %s - %s\n" ...
2230A4:  LDR             R2, =(aSetregister - 0x2230BC); "setRegister" ...
2230A8:  LDR             R3, =(aUnsupportedArm - 0x2230C0); "unsupported arm register" ...
2230AC:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
2230B0:  LDR             R0, =(__sF_ptr - 0x2230C4)
2230B4:  ADD             R2, PC, R2; "setRegister"
2230B8:  ADD             R3, PC, R3; "unsupported arm register"
2230BC:  LDR             R0, [PC,R0]; __sF
2230C0:  ADD             R4, R0, #0xA8
2230C4:  MOV             R0, R4; stream
2230C8:  BL              fprintf
2230CC:  MOV             R0, R4; stream
2230D0:  BL              fflush
2230D4:  BL              abort
