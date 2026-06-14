; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard10GetTagNameE13OSKeyboardKey
; Address            : 0x2955A8 - 0x2955E6
; =========================================================

2955A8:  PUSH            {R7,LR}
2955AA:  MOV             R7, SP
2955AC:  MOV             LR, R0
2955AE:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2955B4)
2955B0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2955B2:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2955B4:  LDR             R2, [R0,#(dword_6E0030 - 0x6E002C)]
2955B6:  CBZ             R2, loc_2955E0
2955B8:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2955C4)
2955BA:  MOVS            R3, #0
2955BC:  LDR.W           R12, =(aKeyUnk - 0x2955C6); "KEY_UNK"
2955C0:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2955C2:  ADD             R12, PC; "KEY_UNK"
2955C4:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
2955C6:  LDR             R0, [R0,#(dword_6E0034 - 0x6E002C)]
2955C8:  ADDS            R0, #4
2955CA:  LDR.W           R1, [R0,#-4]
2955CE:  CMP             R1, LR
2955D0:  IT EQ
2955D2:  POPEQ           {R7,PC}
2955D4:  ADDS            R3, #1
2955D6:  ADDS            R0, #0xC
2955D8:  CMP             R3, R2
2955DA:  BCC             loc_2955CA
2955DC:  MOV             R0, R12
2955DE:  POP             {R7,PC}
2955E0:  LDR             R0, =(aKeyUnk - 0x2955E6); "KEY_UNK"
2955E2:  ADD             R0, PC; "KEY_UNK"
2955E4:  POP             {R7,PC}
