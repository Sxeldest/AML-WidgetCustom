; =========================================================
; Game Engine Function: RpSkinAtomicGetHAnimHierarchy
; Address            : 0x1C996C - 0x1C9978
; =========================================================

1C996C:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C9972)
1C996E:  ADD             R1, PC; _rpSkinGlobals_ptr
1C9970:  LDR             R1, [R1]; _rpSkinGlobals
1C9972:  LDR             R1, [R1,#(dword_6B7278 - 0x6B7274)]
1C9974:  LDR             R0, [R0,R1]
1C9976:  BX              LR
