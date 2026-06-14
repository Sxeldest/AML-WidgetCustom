; =========================================================
; Game Engine Function: _ZN11RenderQueue5FlushEv
; Address            : 0x1D2124 - 0x1D21D8
; =========================================================

1D2124:  PUSH            {R4,R6,R7,LR}
1D2126:  ADD             R7, SP, #8
1D2128:  MOV             R4, R0
1D212A:  LDRB.W          R0, [R4,#0x258]
1D212E:  CBZ             R0, loc_1D2146
1D2130:  LDR             R0, =(GraphicsFlushSemaphore_ptr - 0x1D213C)
1D2132:  MOVS            R1, #1
1D2134:  STRB.W          R1, [R4,#0x26C]
1D2138:  ADD             R0, PC; GraphicsFlushSemaphore_ptr
1D213A:  LDR             R0, [R0]; GraphicsFlushSemaphore
1D213C:  LDR             R0, [R0]; sem
1D213E:  POP.W           {R4,R6,R7,LR}
1D2142:  B.W             j_j__Z16OS_SemaphoreWaitPv; j_OS_SemaphoreWait(void *)
1D2146:  LDRB.W          R0, [R4,#0x259]
1D214A:  CMP             R0, #0
1D214C:  ITT NE
1D214E:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D2152:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D2156:  LDR.W           R1, [R4,#0x260]
1D215A:  ADD.W           R0, R4, #0x270
1D215E:  LDR.W           R2, [R4,#0x270]
1D2162:  DMB.W           ISH
1D2166:  SUBS            R1, R2, R1
1D2168:  LDREX.W         R2, [R0]
1D216C:  SUBS            R2, R2, R1
1D216E:  STREX.W         R3, R2, [R0]
1D2172:  CMP             R3, #0
1D2174:  BNE             loc_1D2168
1D2176:  DMB.W           ISH
1D217A:  ADD.W           R0, R4, #0x274
1D217E:  LDR.W           R1, [R4,#0x260]
1D2182:  LDR.W           R2, [R4,#0x274]
1D2186:  DMB.W           ISH
1D218A:  SUBS            R1, R2, R1
1D218C:  LDREX.W         R2, [R0]
1D2190:  SUBS            R2, R2, R1
1D2192:  STREX.W         R3, R2, [R0]
1D2196:  CMP             R3, #0
1D2198:  BNE             loc_1D218C
1D219A:  DMB.W           ISH
1D219E:  ADD.W           R0, R4, #0x268
1D21A2:  LDR.W           R1, [R4,#0x260]
1D21A6:  LDR.W           R2, [R4,#0x268]
1D21AA:  DMB.W           ISH
1D21AE:  SUBS            R1, R2, R1
1D21B0:  LDREX.W         R2, [R0]
1D21B4:  SUBS            R2, R2, R1
1D21B6:  STREX.W         R3, R2, [R0]
1D21BA:  CMP             R3, #0
1D21BC:  BNE             loc_1D21B0
1D21BE:  DMB.W           ISH
1D21C2:  LDRB.W          R0, [R4,#0x259]
1D21C6:  CMP             R0, #0
1D21C8:  IT EQ
1D21CA:  POPEQ           {R4,R6,R7,PC}
1D21CC:  LDR.W           R0, [R4,#0x25C]; mutex
1D21D0:  POP.W           {R4,R6,R7,LR}
1D21D4:  B.W             j_j__Z15OS_MutexReleasePv; j_OS_MutexRelease(void *)
