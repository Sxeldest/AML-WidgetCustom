; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager20GetIsKeyboardKeyDownE10RsKeyCodes
; Address            : 0x3E8914 - 0x3E8932
; =========================================================

3E8914:  PUSH            {R7,LR}
3E8916:  MOV             R7, SP
3E8918:  MOV             R0, R1
3E891A:  BLX             j__Z13RsKeyToOSWKey10RsKeyCodes; RsKeyToOSWKey(RsKeyCodes)
3E891E:  CMP             R0, #0x64 ; 'd'
3E8920:  ITT EQ
3E8922:  MOVEQ           R0, #0
3E8924:  POPEQ           {R7,PC}
3E8926:  BLX             j__Z18LIB_KeyboardIsDown13OSKeyboardKey; LIB_KeyboardIsDown(OSKeyboardKey)
3E892A:  CMP             R0, #0
3E892C:  IT NE
3E892E:  MOVNE           R0, #1
3E8930:  POP             {R7,PC}
