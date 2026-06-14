; =========================================================
; Game Engine Function: _ZN9OALSource5PauseEv
; Address            : 0x27FDB6 - 0x27FDCA
; =========================================================

27FDB6:  PUSH            {R4,R6,R7,LR}
27FDB8:  ADD             R7, SP, #8
27FDBA:  MOV             R4, R0
27FDBC:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
27FDC0:  LDR             R0, [R4,#8]
27FDC2:  POP.W           {R4,R6,R7,LR}
27FDC6:  B.W             j_j_alSourcePause
