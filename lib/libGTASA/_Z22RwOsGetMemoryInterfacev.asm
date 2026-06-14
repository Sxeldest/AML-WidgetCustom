; =========================================================
; Game Engine Function: _Z22RwOsGetMemoryInterfacev
; Address            : 0x1E4F98 - 0x1E4FA6
; =========================================================

1E4F98:  LDR             R0, =(RwEngineInstance_ptr - 0x1E4F9E)
1E4F9A:  ADD             R0, PC; RwEngineInstance_ptr
1E4F9C:  LDR             R0, [R0]; RwEngineInstance
1E4F9E:  LDR             R0, [R0]
1E4FA0:  ADD.W           R0, R0, #0x12C
1E4FA4:  BX              LR
