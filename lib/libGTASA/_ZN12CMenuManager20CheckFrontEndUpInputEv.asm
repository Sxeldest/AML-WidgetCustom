; =========================================================
; Game Engine Function: _ZN12CMenuManager20CheckFrontEndUpInputEv
; Address            : 0x4329E4 - 0x432A18
; =========================================================

4329E4:  PUSH            {R4,R6,R7,LR}
4329E6:  ADD             R7, SP, #8
4329E8:  MOVS            R0, #0; this
4329EA:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4329EE:  MOVS            R0, #0x4F ; 'O'
4329F0:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
4329F4:  CMP             R0, #0
4329F6:  ITTT NE
4329F8:  MOVNE           R4, #1
4329FA:  MOVNE           R0, R4
4329FC:  POPNE           {R4,R6,R7,PC}
4329FE:  MOVS            R0, #0; this
432A00:  MOVS            R4, #0
432A02:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
432A06:  LDRH            R1, [R0,#0x10]
432A08:  CBZ             R1, loc_432A14
432A0A:  LDRH.W          R0, [R0,#0x40]
432A0E:  CMP             R0, #0
432A10:  IT EQ
432A12:  MOVEQ           R4, #1
432A14:  MOV             R0, R4
432A16:  POP             {R4,R6,R7,PC}
