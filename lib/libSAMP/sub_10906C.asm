; =========================================================
; Game Engine Function: sub_10906C
; Address            : 0x10906C - 0x1090FC
; =========================================================

10906C:  VLDR            S0, [R0]
109070:  MOVW            R2, #0xFFFC
109074:  VLDR            S8, [R1]
109078:  MOVT            R2, #0xFFFD
10907C:  VLDR            S2, [R0,#4]
109080:  VMUL.F32        S0, S8, S0
109084:  VLDR            S8, [R0,#0x14]
109088:  VLDR            S4, [R0,#8]
10908C:  VLDR            S10, [R0,#0x18]
109090:  VLDR            S6, [R0,#0x10]
109094:  VSTR            S0, [R0]
109098:  VLDR            S0, [R1]
10909C:  VMUL.F32        S2, S0, S2
1090A0:  VMUL.F32        S0, S0, S4
1090A4:  VSTR            S2, [R0,#4]
1090A8:  VLDR            S2, [R1,#4]
1090AC:  VSTR            S0, [R0,#8]
1090B0:  VMUL.F32        S8, S2, S8
1090B4:  VLDR            S0, [R0,#0x20]
1090B8:  VMUL.F32        S2, S2, S6
1090BC:  VSTR            S8, [R0,#0x14]
1090C0:  VLDR            S4, [R1,#4]
1090C4:  VSTR            S2, [R0,#0x10]
1090C8:  VMUL.F32        S4, S4, S10
1090CC:  VSTR            S4, [R0,#0x18]
1090D0:  VLDR            S2, [R1,#8]
1090D4:  LDR             R1, [R0,#0xC]
1090D6:  VMUL.F32        S0, S2, S0
1090DA:  ANDS            R1, R2
1090DC:  STR             R1, [R0,#0xC]
1090DE:  VSTR            S0, [R0,#0x20]
1090E2:  VLDR            S0, [R0,#0x24]
1090E6:  VMUL.F32        S0, S2, S0
1090EA:  VSTR            S0, [R0,#0x24]
1090EE:  VLDR            S0, [R0,#0x28]
1090F2:  VMUL.F32        S0, S2, S0
1090F6:  VSTR            S0, [R0,#0x28]
1090FA:  BX              LR
