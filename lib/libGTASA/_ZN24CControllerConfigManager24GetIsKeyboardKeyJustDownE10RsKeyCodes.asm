; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager24GetIsKeyboardKeyJustDownE10RsKeyCodes
; Address            : 0x3E8BA4 - 0x3E8BC2
; =========================================================

3E8BA4:  PUSH            {R7,LR}
3E8BA6:  MOV             R7, SP
3E8BA8:  MOV             R0, R1
3E8BAA:  BLX             j__Z13RsKeyToOSWKey10RsKeyCodes; RsKeyToOSWKey(RsKeyCodes)
3E8BAE:  CMP             R0, #0x64 ; 'd'
3E8BB0:  ITT EQ
3E8BB2:  MOVEQ           R0, #0
3E8BB4:  POPEQ           {R7,PC}
3E8BB6:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3E8BBA:  CMP             R0, #0
3E8BBC:  IT NE
3E8BBE:  MOVNE           R0, #1
3E8BC0:  POP             {R7,PC}
