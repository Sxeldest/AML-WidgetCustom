; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard16GetMappingStringE13OSKeyboardKey
; Address            : 0x295098 - 0x2950E4
; =========================================================

295098:  PUSH            {R7,LR}
29509A:  MOV             R7, SP
29509C:  LDR             R1, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2950A2)
29509E:  ADD             R1, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2950A0:  LDR             R1, [R1]; CHIDKeyboard::m_KeyPairs ...
2950A2:  LDR.W           LR, [R1,#(dword_6E0030 - 0x6E002C)]
2950A6:  CMP.W           LR, #0
2950AA:  BEQ             loc_2950D2
2950AC:  LDR             R1, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x2950B8)
2950AE:  MOVS            R3, #0
2950B0:  LDR.W           R12, =(aKeyUnk - 0x2950BA); "KEY_UNK"
2950B4:  ADD             R1, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
2950B6:  ADD             R12, PC; "KEY_UNK"
2950B8:  LDR             R1, [R1]; CHIDKeyboard::m_KeyPairs ...
2950BA:  LDR             R1, [R1,#(dword_6E0034 - 0x6E002C)]
2950BC:  ADDS            R1, #4
2950BE:  LDR.W           R2, [R1,#-4]
2950C2:  CMP             R2, R0
2950C4:  BEQ             loc_2950D6
2950C6:  ADDS            R3, #1
2950C8:  ADDS            R1, #0xC
2950CA:  CMP             R3, LR
2950CC:  BCC             loc_2950BE
2950CE:  MOV             R1, R12
2950D0:  B               loc_2950D6
2950D2:  LDR             R1, =(aKeyUnk - 0x2950D8); "KEY_UNK"
2950D4:  ADD             R1, PC; "KEY_UNK"
2950D6:  LDR             R0, =(TheText_ptr - 0x2950DC)
2950D8:  ADD             R0, PC; TheText_ptr
2950DA:  LDR             R0, [R0]; TheText ; this
2950DC:  POP.W           {R7,LR}
2950E0:  B.W             j_j__ZN5CText3GetEPKc; j_CText::Get(char const*)
