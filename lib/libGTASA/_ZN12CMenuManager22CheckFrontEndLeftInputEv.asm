; =========================================================
; Game Engine Function: _ZN12CMenuManager22CheckFrontEndLeftInputEv
; Address            : 0x432A4C - 0x432A80
; =========================================================

432A4C:  PUSH            {R4,R6,R7,LR}
432A4E:  ADD             R7, SP, #8
432A50:  MOVS            R0, #0; this
432A52:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
432A56:  MOVS            R0, #0x51 ; 'Q'
432A58:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
432A5C:  CMP             R0, #0
432A5E:  ITTT NE
432A60:  MOVNE           R4, #1
432A62:  MOVNE           R0, R4
432A64:  POPNE           {R4,R6,R7,PC}
432A66:  MOVS            R0, #0; this
432A68:  MOVS            R4, #0
432A6A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
432A6E:  LDRH            R1, [R0,#0x14]
432A70:  CBZ             R1, loc_432A7C
432A72:  LDRH.W          R0, [R0,#0x44]
432A76:  CMP             R0, #0
432A78:  IT EQ
432A7A:  MOVEQ           R4, #1
432A7C:  MOV             R0, R4
432A7E:  POP             {R4,R6,R7,PC}
