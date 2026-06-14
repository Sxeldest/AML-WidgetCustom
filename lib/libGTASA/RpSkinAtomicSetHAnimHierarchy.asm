; =========================================================
; Game Engine Function: RpSkinAtomicSetHAnimHierarchy
; Address            : 0x1C995C - 0x1C9968
; =========================================================

1C995C:  LDR             R2, =(_rpSkinGlobals_ptr - 0x1C9962)
1C995E:  ADD             R2, PC; _rpSkinGlobals_ptr
1C9960:  LDR             R2, [R2]; _rpSkinGlobals
1C9962:  LDR             R2, [R2,#(dword_6B7278 - 0x6B7274)]
1C9964:  STR             R1, [R0,R2]
1C9966:  BX              LR
