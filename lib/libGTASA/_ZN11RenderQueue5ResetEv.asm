; =========================================================
; Game Engine Function: _ZN11RenderQueue5ResetEv
; Address            : 0x1D2018 - 0x1D20B0
; =========================================================

1D2018:  PUSH            {R4,R6,R7,LR}
1D201A:  ADD             R7, SP, #8
1D201C:  MOV             R4, R0
1D201E:  LDRB.W          R0, [R4,#0x259]
1D2022:  CMP             R0, #0
1D2024:  ITT NE
1D2026:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D202A:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D202E:  LDR.W           R1, [R4,#0x260]
1D2032:  ADD.W           R0, R4, #0x270
1D2036:  LDR.W           R2, [R4,#0x270]
1D203A:  DMB.W           ISH
1D203E:  SUBS            R1, R2, R1
1D2040:  LDREX.W         R2, [R0]
1D2044:  SUBS            R2, R2, R1
1D2046:  STREX.W         R3, R2, [R0]
1D204A:  CMP             R3, #0
1D204C:  BNE             loc_1D2040
1D204E:  DMB.W           ISH
1D2052:  ADD.W           R0, R4, #0x274
1D2056:  LDR.W           R1, [R4,#0x260]
1D205A:  LDR.W           R2, [R4,#0x274]
1D205E:  DMB.W           ISH
1D2062:  SUBS            R1, R2, R1
1D2064:  LDREX.W         R2, [R0]
1D2068:  SUBS            R2, R2, R1
1D206A:  STREX.W         R3, R2, [R0]
1D206E:  CMP             R3, #0
1D2070:  BNE             loc_1D2064
1D2072:  DMB.W           ISH
1D2076:  ADD.W           R0, R4, #0x268
1D207A:  LDR.W           R1, [R4,#0x260]
1D207E:  LDR.W           R2, [R4,#0x268]
1D2082:  DMB.W           ISH
1D2086:  SUBS            R1, R2, R1
1D2088:  LDREX.W         R2, [R0]
1D208C:  SUBS            R2, R2, R1
1D208E:  STREX.W         R3, R2, [R0]
1D2092:  CMP             R3, #0
1D2094:  BNE             loc_1D2088
1D2096:  DMB.W           ISH
1D209A:  LDRB.W          R0, [R4,#0x259]
1D209E:  CMP             R0, #0
1D20A0:  IT EQ
1D20A2:  POPEQ           {R4,R6,R7,PC}
1D20A4:  LDR.W           R0, [R4,#0x25C]; mutex
1D20A8:  POP.W           {R4,R6,R7,LR}
1D20AC:  B.W             j_j__Z15OS_MutexReleasePv; j_OS_MutexRelease(void *)
