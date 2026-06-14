; =========================================================
; Game Engine Function: _ZN5CFont7SetEdgeEa
; Address            : 0x5AB27C - 0x5AB2A8
; =========================================================

5AB27C:  LDR             R1, =(_ZN5CFont21UsingJapaneseLanguageE_ptr - 0x5AB286)
5AB27E:  MOVS            R3, #0
5AB280:  LDR             R2, =(_ZN5CFont7DetailsE_ptr - 0x5AB288)
5AB282:  ADD             R1, PC; _ZN5CFont21UsingJapaneseLanguageE_ptr
5AB284:  ADD             R2, PC; _ZN5CFont7DetailsE_ptr
5AB286:  LDR             R1, [R1]; CFont::UsingJapaneseLanguage ...
5AB288:  LDR             R2, [R2]; CFont::Details ...
5AB28A:  LDRB            R1, [R1]; CFont::UsingJapaneseLanguage
5AB28C:  STRB.W          R3, [R2,#(byte_A297EA - 0xA297B4)]
5AB290:  CMP             R1, #0
5AB292:  MOV             R1, R0
5AB294:  IT NE
5AB296:  MOVNE           R1, #1
5AB298:  CMP             R0, #1
5AB29A:  IT LE
5AB29C:  MOVLE           R1, R0
5AB29E:  STRB.W          R1, [R2,#(word_A297EF - 0xA297B4)]
5AB2A2:  STRB.W          R1, [R2,#(word_A297EF+1 - 0xA297B4)]
5AB2A6:  BX              LR
