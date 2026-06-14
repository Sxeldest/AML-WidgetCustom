; =========================================================
; Game Engine Function: _ZN14COnscreenTimer18SetCounterColourIDEjh
; Address            : 0x315216 - 0x315246
; =========================================================

315216:  LDR             R3, [R0,#0x40]
315218:  CMP             R3, R1
31521A:  IT EQ
31521C:  STRBEQ.W        R2, [R0,#0x80]
315220:  LDR.W           R3, [R0,#0x84]
315224:  CMP             R3, R1
315226:  IT EQ
315228:  STRBEQ.W        R2, [R0,#0xC4]
31522C:  LDR.W           R3, [R0,#0xC8]
315230:  CMP             R3, R1
315232:  IT EQ
315234:  STRBEQ.W        R2, [R0,#0x108]
315238:  LDR.W           R3, [R0,#0x10C]
31523C:  CMP             R3, R1
31523E:  IT EQ
315240:  STRBEQ.W        R2, [R0,#0x14C]
315244:  BX              LR
