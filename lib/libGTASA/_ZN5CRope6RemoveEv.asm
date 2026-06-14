; =========================================================
; Game Engine Function: _ZN5CRope6RemoveEv
; Address            : 0x4140BC - 0x41411C
; =========================================================

4140BC:  PUSH            {R4,R6,R7,LR}
4140BE:  ADD             R7, SP, #8
4140C0:  LDR.W           R2, [R0,#0x318]
4140C4:  MOVS            R1, #0
4140C6:  STRB.W          R1, [R0,#0x325]
4140CA:  CBZ             R2, loc_4140FA
4140CC:  LDR             R3, [R2,#0x44]
4140CE:  BIC.W           R3, R3, #0x2000000
4140D2:  STR             R3, [R2,#0x44]
4140D4:  LDR.W           R2, [R0,#0x318]
4140D8:  LDR             R3, [R2,#0x44]
4140DA:  BIC.W           R3, R3, #0x80000000
4140DE:  STR             R3, [R2,#0x44]
4140E0:  LDR.W           R2, [R0,#0x314]
4140E4:  STR.W           R1, [R0,#0x318]
4140E8:  LDRD.W          R1, R3, [R2,#0x1C]
4140EC:  ORR.W           R1, R1, #1
4140F0:  STRD.W          R1, R3, [R2,#0x1C]
4140F4:  MOVS            R1, #off_3C; CEntity *
4140F6:  STRB.W          R1, [R0,#0x326]
4140FA:  ADD.W           R4, R0, #0x314
4140FE:  LDR             R0, [R4]; this
414100:  CMP             R0, #0
414102:  IT EQ
414104:  POPEQ           {R4,R6,R7,PC}
414106:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
41410A:  LDR             R0, [R4]
41410C:  CMP             R0, #0
41410E:  ITTT NE
414110:  LDRNE           R1, [R0]
414112:  LDRNE           R1, [R1,#4]
414114:  BLXNE           R1
414116:  MOVS            R0, #0
414118:  STR             R0, [R4]
41411A:  POP             {R4,R6,R7,PC}
