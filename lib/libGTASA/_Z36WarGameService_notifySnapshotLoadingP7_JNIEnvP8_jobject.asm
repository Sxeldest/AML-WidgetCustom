; =========================================================
; Game Engine Function: _Z36WarGameService_notifySnapshotLoadingP7_JNIEnvP8_jobject
; Address            : 0x27BF84 - 0x27BF8E
; =========================================================

27BF84:  LDR             R0, =(byte_6D7144 - 0x27BF8C)
27BF86:  MOVS            R1, #1
27BF88:  ADD             R0, PC; byte_6D7144
27BF8A:  STRB            R1, [R0]
27BF8C:  BX              LR
