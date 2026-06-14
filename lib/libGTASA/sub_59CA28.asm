; =========================================================
; Game Engine Function: sub_59CA28
; Address            : 0x59CA28 - 0x59CA36
; =========================================================

59CA28:  LDR             R1, =(g2dEffectPluginOffset_ptr - 0x59CA30)
59CA2A:  MOVS            R2, #0
59CA2C:  ADD             R1, PC; g2dEffectPluginOffset_ptr
59CA2E:  LDR             R1, [R1]; g2dEffectPluginOffset
59CA30:  LDR             R1, [R1]
59CA32:  STR             R2, [R0,R1]
59CA34:  BX              LR
