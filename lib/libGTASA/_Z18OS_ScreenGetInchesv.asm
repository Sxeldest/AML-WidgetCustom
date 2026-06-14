; =========================================================
; Game Engine Function: _Z18OS_ScreenGetInchesv
; Address            : 0x27B0D0 - 0x27B0EE
; =========================================================

27B0D0:  PUSH            {R4,R5,R7,LR}
27B0D2:  ADD             R7, SP, #8
27B0D4:  LDR             R0, =(s_getScreenWidthInches_ptr - 0x27B0DC)
27B0D6:  LDR             R4, =(dword_6D81DC - 0x27B0DE)
27B0D8:  ADD             R0, PC; s_getScreenWidthInches_ptr
27B0DA:  ADD             R4, PC; dword_6D81DC
27B0DC:  LDR             R5, [R0]; s_getScreenWidthInches
27B0DE:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27B0E2:  LDR             R1, [R4]
27B0E4:  LDR             R2, [R5]
27B0E6:  POP.W           {R4,R5,R7,LR}
27B0EA:  B.W             sub_194040
