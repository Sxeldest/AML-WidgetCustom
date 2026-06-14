; =========================================================
; Game Engine Function: _ZN12CMenuManager23CheckFrontEndRightInputEv
; Address            : 0x432A80 - 0x432AB4
; =========================================================

432A80:  PUSH            {R4,R6,R7,LR}
432A82:  ADD             R7, SP, #8
432A84:  MOVS            R0, #0; this
432A86:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
432A8A:  MOVS            R0, #0x52 ; 'R'
432A8C:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
432A90:  CMP             R0, #0
432A92:  ITTT NE
432A94:  MOVNE           R4, #1
432A96:  MOVNE           R0, R4
432A98:  POPNE           {R4,R6,R7,PC}
432A9A:  MOVS            R0, #0; this
432A9C:  MOVS            R4, #0
432A9E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
432AA2:  LDRH            R1, [R0,#0x16]
432AA4:  CBZ             R1, loc_432AB0
432AA6:  LDRH.W          R0, [R0,#0x46]
432AAA:  CMP             R0, #0
432AAC:  IT EQ
432AAE:  MOVEQ           R4, #1
432AB0:  MOV             R0, R4
432AB2:  POP             {R4,R6,R7,PC}
