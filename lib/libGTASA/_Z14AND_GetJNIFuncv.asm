; =========================================================
; Game Engine Function: _Z14AND_GetJNIFuncv
; Address            : 0x27A5FC - 0x27A604
; =========================================================

27A5FC:  LDR             R0, =(_Z24NVThreadGetCurrentJNIEnvv_ptr_0 - 0x27A602)
27A5FE:  ADD             R0, PC; _Z24NVThreadGetCurrentJNIEnvv_ptr_0
27A600:  LDR             R0, [R0]; NVThreadGetCurrentJNIEnv(void)
27A602:  BX              LR
