; =========================================================
; Game Engine Function: sub_59C958
; Address            : 0x59C958 - 0x59C966
; =========================================================

59C958:  LDR             R1, =(g2dEffectPluginOffset_ptr - 0x59C960)
59C95A:  MOVS            R2, #0
59C95C:  ADD             R1, PC; g2dEffectPluginOffset_ptr
59C95E:  LDR             R1, [R1]; g2dEffectPluginOffset
59C960:  LDR             R1, [R1]
59C962:  STR             R2, [R0,R1]
59C964:  BX              LR
