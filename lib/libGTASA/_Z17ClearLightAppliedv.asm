; =========================================================
; Game Engine Function: _Z17ClearLightAppliedv
; Address            : 0x221C5C - 0x221C70
; =========================================================

221C5C:  LDR             R0, =(openglLightApplied_ptr - 0x221C66)
221C5E:  VMOV.I32        Q8, #0
221C62:  ADD             R0, PC; openglLightApplied_ptr
221C64:  LDR             R0, [R0]; openglLightApplied
221C66:  VST1.32         {D16-D17}, [R0]!
221C6A:  VST1.32         {D16-D17}, [R0]
221C6E:  BX              LR
