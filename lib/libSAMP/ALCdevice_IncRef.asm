; =========================================================
; Game Engine Function: ALCdevice_IncRef
; Address            : 0x1BB12C - 0x1BB174
; =========================================================

1BB12C:  MOV             R2, R0
1BB130:  DMB             ISH
1BB134:  LDREX           R0, [R2]
1BB138:  ADD             R3, R0, #1
1BB13C:  STREX           R0, R3, [R2]
1BB140:  CMP             R0, #0
1BB144:  BNE             loc_1BB134
1BB148:  LDR             R0, =(LogLevel_ptr - 0x1BB158)
1BB14C:  DMB             ISH
1BB150:  LDR             R0, [PC,R0]; LogLevel
1BB154:  LDR             R0, [R0]
1BB158:  CMP             R0, #4
1BB15C:  BXCC            LR
1BB160:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BB170); "ALCdevice_IncRef" ...
1BB164:  LDR             R1, =(aPIncreasingRef - 0x1BB174); "%p increasing refcount to %u\n" ...
1BB168:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BB16C:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BB170:  B               j_al_print
