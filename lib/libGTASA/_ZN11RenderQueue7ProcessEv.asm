; =========================================================
; Game Engine Function: _ZN11RenderQueue7ProcessEv
; Address            : 0x1D20B0 - 0x1D2124
; =========================================================

1D20B0:  PUSH            {R4-R7,LR}
1D20B2:  ADD             R7, SP, #0xC
1D20B4:  PUSH.W          {R11}
1D20B8:  SUB             SP, SP, #8
1D20BA:  ADD             R5, SP, #0x18+var_14
1D20BC:  MOV             R4, R0
1D20BE:  MOVS            R6, #0
1D20C0:  B               loc_1D20D8
1D20C2:  LDRH.W          R0, [R1],#4
1D20C6:  STR             R1, [SP,#0x18+var_14]
1D20C8:  LDR.W           R1, [R4,R0,LSL#2]
1D20CC:  MOV             R0, R5
1D20CE:  BLX             R1
1D20D0:  LDR             R0, [SP,#0x18+var_14]
1D20D2:  MOVS            R6, #1
1D20D4:  STR.W           R0, [R4,#0x268]
1D20D8:  LDRB.W          R0, [R4,#0x259]
1D20DC:  CBZ             R0, loc_1D20EC
1D20DE:  LDR.W           R0, [R4,#0x25C]; mutex
1D20E2:  BLX             j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D20E6:  LDRB.W          R0, [R4,#0x259]
1D20EA:  B               loc_1D20EE
1D20EC:  MOVS            R0, #0
1D20EE:  LDR.W           R1, [R4,#0x268]
1D20F2:  LDR.W           R2, [R4,#0x270]
1D20F6:  CMP             R1, R2
1D20F8:  BCS             loc_1D210C
1D20FA:  CMP             R0, #0
1D20FC:  BEQ             loc_1D20C2
1D20FE:  LDR.W           R0, [R4,#0x25C]; mutex
1D2102:  BLX             j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D2106:  LDR.W           R1, [R4,#0x268]
1D210A:  B               loc_1D20C2
1D210C:  CMP             R0, #0
1D210E:  ITT NE
1D2110:  LDRNE.W         R0, [R4,#0x25C]; mutex
1D2114:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D2118:  AND.W           R0, R6, #1
1D211C:  ADD             SP, SP, #8
1D211E:  POP.W           {R11}
1D2122:  POP             {R4-R7,PC}
