; =========================================================
; Game Engine Function: _ZN18CPtrNodeSingleLinknwEj
; Address            : 0x40D8D4 - 0x40D930
; =========================================================

40D8D4:  PUSH            {R7,LR}
40D8D6:  MOV             R7, SP
40D8D8:  LDR             R0, =(_ZN6CPools25ms_pPtrNodeSingleLinkPoolE_ptr - 0x40D8E2)
40D8DA:  MOV.W           LR, #0
40D8DE:  ADD             R0, PC; _ZN6CPools25ms_pPtrNodeSingleLinkPoolE_ptr
40D8E0:  LDR             R0, [R0]; CPools::ms_pPtrNodeSingleLinkPool ...
40D8E2:  LDR             R1, [R0]; CPools::ms_pPtrNodeSingleLinkPool
40D8E4:  LDRD.W          R12, R0, [R1,#8]
40D8E8:  ADDS            R0, #1
40D8EA:  STR             R0, [R1,#0xC]
40D8EC:  CMP             R0, R12
40D8EE:  BNE             loc_40D900
40D8F0:  MOVS            R0, #0
40D8F2:  MOVS.W          R2, LR,LSL#31
40D8F6:  STR             R0, [R1,#0xC]
40D8F8:  IT NE
40D8FA:  POPNE           {R7,PC}
40D8FC:  MOV.W           LR, #1
40D900:  LDR             R2, [R1,#4]
40D902:  LDRSB           R3, [R2,R0]
40D904:  CMP.W           R3, #0xFFFFFFFF
40D908:  BGT             loc_40D8E8
40D90A:  AND.W           R3, R3, #0x7F
40D90E:  STRB            R3, [R2,R0]
40D910:  LDR             R0, [R1,#4]
40D912:  LDR             R2, [R1,#0xC]
40D914:  LDRB            R3, [R0,R2]
40D916:  AND.W           R12, R3, #0x80
40D91A:  ADDS            R3, #1
40D91C:  AND.W           R3, R3, #0x7F
40D920:  ORR.W           R3, R3, R12
40D924:  STRB            R3, [R0,R2]
40D926:  LDR             R0, [R1]
40D928:  LDR             R1, [R1,#0xC]
40D92A:  ADD.W           R0, R0, R1,LSL#3
40D92E:  POP             {R7,PC}
