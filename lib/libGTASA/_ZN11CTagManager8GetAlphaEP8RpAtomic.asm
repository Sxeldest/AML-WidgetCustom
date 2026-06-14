; =========================================================
; Game Engine Function: _ZN11CTagManager8GetAlphaEP8RpAtomic
; Address            : 0x362038 - 0x362044
; =========================================================

362038:  PUSH            {R7,LR}
36203A:  MOV             R7, SP
36203C:  BLX             j__ZN18CVisibilityPlugins12GetUserValueEP8RpAtomic; CVisibilityPlugins::GetUserValue(RpAtomic *)
362040:  UXTB            R0, R0
362042:  POP             {R7,PC}
