; =========================================================
; Game Engine Function: _Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture
; Address            : 0x1DB968 - 0x1DB996
; =========================================================

1DB968:  LDR             R3, [R1,#4]
1DB96A:  ADD.W           R2, R1, #8
1DB96E:  CMP             R3, #0
1DB970:  ITTTT NE
1DB972:  LDRDNE.W        R12, R3, [R1,#8]
1DB976:  STRNE.W         R12, [R3]
1DB97A:  LDRDNE.W        R12, R3, [R1,#8]
1DB97E:  STRNE.W         R3, [R12,#4]
1DB982:  STR             R0, [R1,#4]
1DB984:  LDR.W           R3, [R0,#8]!
1DB988:  STRD.W          R3, R0, [R1,#8]
1DB98C:  LDR             R3, [R0]
1DB98E:  STR             R2, [R3,#4]
1DB990:  STR             R2, [R0]
1DB992:  MOV             R0, R1
1DB994:  BX              LR
