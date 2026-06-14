; =========================================================
; Game Engine Function: ALCcontext_IncRef
; Address            : 0x1BB3BC - 0x1BB404
; =========================================================

1BB3BC:  MOV             R2, R0
1BB3C0:  DMB             ISH
1BB3C4:  LDREX           R0, [R2]
1BB3C8:  ADD             R3, R0, #1
1BB3CC:  STREX           R0, R3, [R2]
1BB3D0:  CMP             R0, #0
1BB3D4:  BNE             loc_1BB3C4
1BB3D8:  LDR             R0, =(LogLevel_ptr - 0x1BB3E8)
1BB3DC:  DMB             ISH
1BB3E0:  LDR             R0, [PC,R0]; LogLevel
1BB3E4:  LDR             R0, [R0]
1BB3E8:  CMP             R0, #4
1BB3EC:  BXCC            LR
1BB3F0:  LDR             R0, =(aAlccontextIncr_0 - 0x1BB400); "ALCcontext_IncRef" ...
1BB3F4:  LDR             R1, =(aPIncreasingRef - 0x1BB404); "%p increasing refcount to %u\n" ...
1BB3F8:  ADD             R0, PC, R0; "ALCcontext_IncRef"
1BB3FC:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BB400:  B               j_al_print
