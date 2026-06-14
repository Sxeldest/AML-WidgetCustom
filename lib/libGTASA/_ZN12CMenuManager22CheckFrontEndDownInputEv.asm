; =========================================================
; Game Engine Function: _ZN12CMenuManager22CheckFrontEndDownInputEv
; Address            : 0x432A18 - 0x432A4C
; =========================================================

432A18:  PUSH            {R4,R6,R7,LR}
432A1A:  ADD             R7, SP, #8
432A1C:  MOVS            R0, #0; this
432A1E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
432A22:  MOVS            R0, #0x50 ; 'P'
432A24:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
432A28:  CMP             R0, #0
432A2A:  ITTT NE
432A2C:  MOVNE           R4, #1
432A2E:  MOVNE           R0, R4
432A30:  POPNE           {R4,R6,R7,PC}
432A32:  MOVS            R0, #0; this
432A34:  MOVS            R4, #0
432A36:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
432A3A:  LDRH            R1, [R0,#0x12]
432A3C:  CBZ             R1, loc_432A48
432A3E:  LDRH.W          R0, [R0,#0x42]
432A42:  CMP             R0, #0
432A44:  IT EQ
432A46:  MOVEQ           R4, #1
432A48:  MOV             R0, R4
432A4A:  POP             {R4,R6,R7,PC}
