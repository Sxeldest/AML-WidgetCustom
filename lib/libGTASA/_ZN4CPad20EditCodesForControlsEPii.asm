; =========================================================
; Game Engine Function: _ZN4CPad20EditCodesForControlsEPii
; Address            : 0x3FCAB4 - 0x3FCBA0
; =========================================================

3FCAB4:  PUSH            {R4,R5,R7,LR}
3FCAB6:  ADD             R7, SP, #8
3FCAB8:  MOV             R4, R0
3FCABA:  MOV.W           R0, #0x420
3FCABE:  MOVS            R5, #0
3FCAC0:  STR             R0, [R4]
3FCAC2:  MOV             R0, R5
3FCAC4:  BLX             j__Z13RsKeyToOSWKey10RsKeyCodes; RsKeyToOSWKey(RsKeyCodes)
3FCAC8:  CMP             R0, #0x64 ; 'd'
3FCACA:  BEQ             loc_3FCAD6
3FCACC:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3FCAD0:  CMP             R0, #0
3FCAD2:  IT NE
3FCAD4:  STRNE           R5, [R4]
3FCAD6:  ADDS            R5, #1
3FCAD8:  CMP             R5, #0xFF
3FCADA:  BNE             loc_3FCAC2
3FCADC:  MOVS            R0, #1
3FCADE:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3FCAE2:  CMP             R0, #0
3FCAE4:  ITT NE
3FCAE6:  MOVWNE          R0, #0x3E9
3FCAEA:  STRNE           R0, [R4]
3FCAEC:  MOVS            R0, #2
3FCAEE:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3FCAF2:  CMP             R0, #0
3FCAF4:  ITT NE
3FCAF6:  MOVWNE          R0, #0x3EA
3FCAFA:  STRNE           R0, [R4]
3FCAFC:  MOVS            R0, #3
3FCAFE:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3FCB02:  CMP             R0, #0
3FCB04:  ITT NE
3FCB06:  MOVWNE          R0, #0x3EB
3FCB0A:  STRNE           R0, [R4]
3FCB0C:  MOVS            R0, #4
3FCB0E:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3FCB12:  CMP             R0, #0
3FCB14:  ITT NE
3FCB16:  MOVNE.W         R0, #0x3EC
3FCB1A:  STRNE           R0, [R4]
3FCB1C:  MOVS            R0, #5
3FCB1E:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3FCB22:  CMP             R0, #0
3FCB24:  ITT NE
3FCB26:  MOVWNE          R0, #0x3ED
3FCB2A:  STRNE           R0, [R4]
3FCB2C:  MOVS            R0, #6
3FCB2E:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3FCB32:  CMP             R0, #0
3FCB34:  ITT NE
3FCB36:  MOVWNE          R0, #0x3EE
3FCB3A:  STRNE           R0, [R4]
3FCB3C:  MOVS            R0, #7
3FCB3E:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3FCB42:  CMP             R0, #0
3FCB44:  ITT NE
3FCB46:  MOVWNE          R0, #0x3EF
3FCB4A:  STRNE           R0, [R4]
3FCB4C:  MOVS            R0, #8
3FCB4E:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3FCB52:  CMP             R0, #0
3FCB54:  ITT NE
3FCB56:  MOVNE.W         R0, #0x3F0
3FCB5A:  STRNE           R0, [R4]
3FCB5C:  MOVS            R0, #9
3FCB5E:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3FCB62:  CMP             R0, #0
3FCB64:  ITT NE
3FCB66:  MOVWNE          R0, #0x3F1
3FCB6A:  STRNE           R0, [R4]
3FCB6C:  MOVS            R0, #0xA
3FCB6E:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3FCB72:  CMP             R0, #0
3FCB74:  ITT NE
3FCB76:  MOVWNE          R0, #0x3F2
3FCB7A:  STRNE           R0, [R4]
3FCB7C:  MOVS            R0, #0xB
3FCB7E:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3FCB82:  CMP             R0, #0
3FCB84:  ITT NE
3FCB86:  MOVWNE          R0, #0x3F3
3FCB8A:  STRNE           R0, [R4]
3FCB8C:  MOVS            R0, #0xC
3FCB8E:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
3FCB92:  CMP             R0, #0
3FCB94:  ITT NE
3FCB96:  MOVNE.W         R0, #0x3F4
3FCB9A:  STRNE           R0, [R4]
3FCB9C:  MOV             R0, R4
3FCB9E:  POP             {R4,R5,R7,PC}
