; =========================================================
; Game Engine Function: _ZN13CPedAttractornwEj
; Address            : 0x4A9184 - 0x4A91E2
; =========================================================

4A9184:  PUSH            {R7,LR}
4A9186:  MOV             R7, SP
4A9188:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4A9192)
4A918A:  MOV.W           LR, #0
4A918E:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4A9190:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4A9192:  LDR             R1, [R0]; CPools::ms_pPedAttractorPool
4A9194:  LDRD.W          R12, R0, [R1,#8]
4A9198:  ADDS            R0, #1
4A919A:  STR             R0, [R1,#0xC]
4A919C:  CMP             R0, R12
4A919E:  BNE             loc_4A91B0
4A91A0:  MOVS            R0, #0
4A91A2:  MOVS.W          R2, LR,LSL#31
4A91A6:  STR             R0, [R1,#0xC]
4A91A8:  IT NE
4A91AA:  POPNE           {R7,PC}
4A91AC:  MOV.W           LR, #1
4A91B0:  LDR             R2, [R1,#4]
4A91B2:  LDRSB           R3, [R2,R0]
4A91B4:  CMP.W           R3, #0xFFFFFFFF
4A91B8:  BGT             loc_4A9198
4A91BA:  AND.W           R3, R3, #0x7F
4A91BE:  STRB            R3, [R2,R0]
4A91C0:  LDR             R0, [R1,#4]
4A91C2:  LDR             R2, [R1,#0xC]
4A91C4:  LDRB            R3, [R0,R2]
4A91C6:  AND.W           R12, R3, #0x80
4A91CA:  ADDS            R3, #1
4A91CC:  AND.W           R3, R3, #0x7F
4A91D0:  ORR.W           R3, R3, R12
4A91D4:  STRB            R3, [R0,R2]
4A91D6:  MOVS            R2, #0xEC
4A91D8:  LDR             R0, [R1]
4A91DA:  LDR             R1, [R1,#0xC]
4A91DC:  MLA.W           R0, R1, R2, R0
4A91E0:  POP             {R7,PC}
