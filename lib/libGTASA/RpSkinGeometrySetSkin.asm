; =========================================================
; Game Engine Function: RpSkinGeometrySetSkin
; Address            : 0x1C998C - 0x1C99C8
; =========================================================

1C998C:  PUSH            {R4,R5,R7,LR}
1C998E:  ADD             R7, SP, #8
1C9990:  MOV             R4, R0
1C9992:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C999A)
1C9994:  MOV             R5, R1
1C9996:  ADD             R0, PC; _rpSkinGlobals_ptr
1C9998:  LDR             R0, [R0]; _rpSkinGlobals
1C999A:  LDR             R0, [R0,#(dword_6B727C - 0x6B7274)]
1C999C:  LDR             R1, [R4,R0]
1C999E:  CMP             R1, R5
1C99A0:  BEQ             loc_1C99C4
1C99A2:  CBZ             R1, loc_1C99B2
1C99A4:  MOV             R0, R4
1C99A6:  BLX             j__rpSkinDeinitialize
1C99AA:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C99B0)
1C99AC:  ADD             R0, PC; _rpSkinGlobals_ptr
1C99AE:  LDR             R0, [R0]; _rpSkinGlobals
1C99B0:  LDR             R0, [R0,#(dword_6B727C - 0x6B7274)]
1C99B2:  CMP             R5, #0
1C99B4:  STR             R5, [R4,R0]
1C99B6:  BEQ             loc_1C99C4
1C99B8:  MOV             R0, R4
1C99BA:  BLX             j__rpSkinInitialize
1C99BE:  CMP             R0, #0
1C99C0:  IT EQ
1C99C2:  MOVEQ           R4, #0
1C99C4:  MOV             R0, R4
1C99C6:  POP             {R4,R5,R7,PC}
