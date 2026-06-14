; =========================================================
; Game Engine Function: sub_1BA6B8
; Address            : 0x1BA6B8 - 0x1BA6F4
; =========================================================

1BA6B8:  PUSH            {R4,R10,R11,LR}
1BA6BC:  ADD             R11, SP, #8
1BA6C0:  MOV             R4, R0
1BA6C4:  LDR             R0, =(LogLevel_ptr - 0x1BA6D0)
1BA6C8:  LDR             R0, [PC,R0]; LogLevel
1BA6CC:  LDR             R0, [R0]
1BA6D0:  CMP             R0, #2
1BA6D4:  BCC             loc_1BA6E8
1BA6D8:  ADR             R0, aReleasethreadc; "ReleaseThreadCtx"
1BA6DC:  ADR             R1, aPCurrentForThr; "%p current for thread being destroyed\n"
1BA6E0:  MOV             R2, R4
1BA6E4:  BL              j_al_print
1BA6E8:  MOV             R0, R4
1BA6EC:  POP             {R4,R10,R11,LR}
1BA6F0:  B               j_ALCcontext_DecRef
