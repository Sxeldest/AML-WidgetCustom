; =========================================================
; Game Engine Function: _ZN18CPtrNodeDoubleLinknwEj
; Address            : 0x40D95C - 0x40D9BC
; =========================================================

40D95C:  PUSH            {R7,LR}
40D95E:  MOV             R7, SP
40D960:  LDR             R0, =(_ZN6CPools25ms_pPtrNodeDoubleLinkPoolE_ptr - 0x40D96A)
40D962:  MOV.W           LR, #0
40D966:  ADD             R0, PC; _ZN6CPools25ms_pPtrNodeDoubleLinkPoolE_ptr
40D968:  LDR             R0, [R0]; CPools::ms_pPtrNodeDoubleLinkPool ...
40D96A:  LDR             R1, [R0]; CPools::ms_pPtrNodeDoubleLinkPool
40D96C:  LDRD.W          R12, R0, [R1,#8]
40D970:  ADDS            R0, #1
40D972:  STR             R0, [R1,#0xC]
40D974:  CMP             R0, R12
40D976:  BNE             loc_40D988
40D978:  MOVS            R0, #0
40D97A:  MOVS.W          R2, LR,LSL#31
40D97E:  STR             R0, [R1,#0xC]
40D980:  IT NE
40D982:  POPNE           {R7,PC}
40D984:  MOV.W           LR, #1
40D988:  LDR             R2, [R1,#4]
40D98A:  LDRSB           R3, [R2,R0]
40D98C:  CMP.W           R3, #0xFFFFFFFF
40D990:  BGT             loc_40D970
40D992:  AND.W           R3, R3, #0x7F
40D996:  STRB            R3, [R2,R0]
40D998:  LDR             R0, [R1,#4]
40D99A:  LDR             R2, [R1,#0xC]
40D99C:  LDRB            R3, [R0,R2]
40D99E:  AND.W           R12, R3, #0x80
40D9A2:  ADDS            R3, #1
40D9A4:  AND.W           R3, R3, #0x7F
40D9A8:  ORR.W           R3, R3, R12
40D9AC:  STRB            R3, [R0,R2]
40D9AE:  LDR             R0, [R1]
40D9B0:  LDR             R1, [R1,#0xC]
40D9B2:  ADD.W           R1, R1, R1,LSL#1
40D9B6:  ADD.W           R0, R0, R1,LSL#2
40D9BA:  POP             {R7,PC}
