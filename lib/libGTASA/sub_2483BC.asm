; =========================================================
; Game Engine Function: sub_2483BC
; Address            : 0x2483BC - 0x2483E6
; =========================================================

2483BC:  PUSH            {R4,R6,R7,LR}
2483BE:  ADD             R7, SP, #8
2483C0:  MOV             R4, R0
2483C2:  LDR             R0, =(LogLevel_ptr - 0x2483C8)
2483C4:  ADD             R0, PC; LogLevel_ptr
2483C6:  LDR             R0, [R0]; LogLevel
2483C8:  LDR             R0, [R0]
2483CA:  CMP             R0, #2
2483CC:  BCC             loc_2483DC
2483CE:  LDR             R0, =(aWw - 0x2483DA); "(WW)"
2483D0:  ADR             R1, aReleasethreadc; "ReleaseThreadCtx"
2483D2:  ADR             R2, aPCurrentForThr; "%p current for thread being destroyed\n"
2483D4:  MOV             R3, R4
2483D6:  ADD             R0, PC; "(WW)"
2483D8:  BLX             j_al_print
2483DC:  MOV             R0, R4
2483DE:  POP.W           {R4,R6,R7,LR}
2483E2:  B.W             ALCcontext_DecRef
