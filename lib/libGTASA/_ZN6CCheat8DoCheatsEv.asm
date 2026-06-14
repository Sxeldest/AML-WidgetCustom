; =========================================================
; Game Engine Function: _ZN6CCheat8DoCheatsEv
; Address            : 0x2FEABC - 0x2FEAEE
; =========================================================

2FEABC:  PUSH            {R4,R6,R7,LR}
2FEABE:  ADD             R7, SP, #8
2FEAC0:  MOVS            R4, #0
2FEAC2:  B               loc_2FEACE
2FEAC4:  ADDS            R4, #1
2FEAC6:  CMP.W           R4, #0x100
2FEACA:  IT EQ
2FEACC:  POPEQ           {R4,R6,R7,PC}
2FEACE:  MOVS            R0, #0; this
2FEAD0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2FEAD4:  MOV             R0, R4
2FEAD6:  BLX             j__Z13RsKeyToOSWKey10RsKeyCodes; RsKeyToOSWKey(RsKeyCodes)
2FEADA:  CMP             R0, #0x64 ; 'd'
2FEADC:  BEQ             loc_2FEAC4
2FEADE:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
2FEAE2:  CMP             R0, #0
2FEAE4:  ITT NE
2FEAE6:  UXTBNE          R0, R4; this
2FEAE8:  BLXNE           j__ZN6CCheat16AddToCheatStringEc; CCheat::AddToCheatString(char)
2FEAEC:  B               loc_2FEAC4
