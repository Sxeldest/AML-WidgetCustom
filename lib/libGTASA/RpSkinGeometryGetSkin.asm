; =========================================================
; Game Engine Function: RpSkinGeometryGetSkin
; Address            : 0x1C997C - 0x1C9988
; =========================================================

1C997C:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C9982)
1C997E:  ADD             R1, PC; _rpSkinGlobals_ptr
1C9980:  LDR             R1, [R1]; _rpSkinGlobals
1C9982:  LDR             R1, [R1,#(dword_6B727C - 0x6B7274)]
1C9984:  LDR             R0, [R0,R1]
1C9986:  BX              LR
