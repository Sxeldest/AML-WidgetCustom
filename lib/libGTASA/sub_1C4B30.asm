; =========================================================
; Game Engine Function: sub_1C4B30
; Address            : 0x1C4B30 - 0x1C4B4A
; =========================================================

1C4B30:  PUSH            {R4,R6,R7,LR}
1C4B32:  ADD             R7, SP, #8
1C4B34:  MOV             R4, R0
1C4B36:  BLX             j__Z16_rpMTEffectClosev; _rpMTEffectClose(void)
1C4B3A:  LDR             R0, =(_rpMultiTextureModule_ptr - 0x1C4B40)
1C4B3C:  ADD             R0, PC; _rpMultiTextureModule_ptr
1C4B3E:  LDR             R0, [R0]; _rpMultiTextureModule
1C4B40:  LDR             R1, [R0,#(dword_6B717C - 0x6B7178)]
1C4B42:  SUBS            R1, #1
1C4B44:  STR             R1, [R0,#(dword_6B717C - 0x6B7178)]
1C4B46:  MOV             R0, R4
1C4B48:  POP             {R4,R6,R7,PC}
