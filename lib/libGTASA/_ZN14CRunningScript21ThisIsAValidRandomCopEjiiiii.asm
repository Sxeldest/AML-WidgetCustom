; =========================================================
; Game Engine Function: _ZN14CRunningScript21ThisIsAValidRandomCopEjiiiii
; Address            : 0x34E234 - 0x34E27C
; =========================================================

34E234:  SUB.W           R0, R1, #0x118; switch 8 cases
34E238:  CMP             R0, #7
34E23A:  BHI             def_34E23C; jumptable 0034E23C default case, case 283
34E23C:  TBB.W           [PC,R0]; switch jump
34E240:  DCB 4; jump table for switch statement
34E241:  DCB 4
34E242:  DCB 4
34E243:  DCB 8
34E244:  DCB 4
34E245:  DCB 0x18
34E246:  DCB 0xA
34E247:  DCB 0x11
34E248:  CMP             R2, #0; jumptable 0034E23C cases 280-282,284
34E24A:  ITT NE
34E24C:  MOVNE           R0, #1
34E24E:  BXNE            LR
34E250:  MOVS            R0, #0; jumptable 0034E23C default case, case 283
34E252:  BX              LR
34E254:  LDR             R0, [SP,#arg_0]; jumptable 0034E23C case 286
34E256:  CMP             R0, #0
34E258:  ITT NE
34E25A:  MOVNE           R0, #1
34E25C:  BXNE            LR
34E25E:  MOVS            R0, #0
34E260:  BX              LR
34E262:  LDR             R0, [SP,#arg_4]; jumptable 0034E23C case 287
34E264:  CMP             R0, #0
34E266:  ITT NE
34E268:  MOVNE           R0, #1
34E26A:  BXNE            LR
34E26C:  MOVS            R0, #0
34E26E:  BX              LR
34E270:  CMP             R3, #0; jumptable 0034E23C case 285
34E272:  ITT NE
34E274:  MOVNE           R0, #1
34E276:  BXNE            LR
34E278:  MOVS            R0, #0
34E27A:  BX              LR
