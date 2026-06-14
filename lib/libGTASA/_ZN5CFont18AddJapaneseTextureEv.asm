; =========================================================
; Game Engine Function: _ZN5CFont18AddJapaneseTextureEv
; Address            : 0x5A80A8 - 0x5A810A
; =========================================================

5A80A8:  LDR             R0, =(IsInitialized_ptr - 0x5A80AE)
5A80AA:  ADD             R0, PC; IsInitialized_ptr
5A80AC:  LDR             R0, [R0]; IsInitialized
5A80AE:  LDRB            R0, [R0]
5A80B0:  CMP             R0, #0
5A80B2:  IT EQ
5A80B4:  BXEQ            LR
5A80B6:  LDR             R0, =(_ZN5CFont21UsingJapaneseLanguageE_ptr - 0x5A80BC)
5A80B8:  ADD             R0, PC; _ZN5CFont21UsingJapaneseLanguageE_ptr
5A80BA:  LDR             R0, [R0]; CFont::UsingJapaneseLanguage ...
5A80BC:  LDRB            R0, [R0]; CFont::UsingJapaneseLanguage
5A80BE:  CBNZ            R0, locret_5A8108
5A80C0:  PUSH            {R4,R6,R7,LR}
5A80C2:  ADD             R7, SP, #0x10+var_8
5A80C4:  LDR             R0, =(_ZN5CFont20UsingRussianLanguageE_ptr - 0x5A80CE)
5A80C6:  LDR             R1, =(_ZN5CFont18UsingEFIGSLanguageE_ptr - 0x5A80D2)
5A80C8:  LDR             R2, =(_ZN5CFont21UsingJapaneseLanguageE_ptr - 0x5A80D4)
5A80CA:  ADD             R0, PC; _ZN5CFont20UsingRussianLanguageE_ptr
5A80CC:  LDR             R3, =(_ZN5CFont19UsingKoreanLanguageE_ptr - 0x5A80D8)
5A80CE:  ADD             R1, PC; _ZN5CFont18UsingEFIGSLanguageE_ptr
5A80D0:  ADD             R2, PC; _ZN5CFont21UsingJapaneseLanguageE_ptr
5A80D2:  LDR             R0, [R0]; this
5A80D4:  ADD             R3, PC; _ZN5CFont19UsingKoreanLanguageE_ptr
5A80D6:  LDR             R1, [R1]; CFont::UsingEFIGSLanguage ...
5A80D8:  LDR             R4, [R2]; CFont::UsingJapaneseLanguage ...
5A80DA:  LDR             R2, [R3]; CFont::UsingKoreanLanguage ...
5A80DC:  MOVS            R3, #0
5A80DE:  STRB            R3, [R0]; CFont::UsingRussianLanguage
5A80E0:  STRB            R3, [R4]; CFont::UsingJapaneseLanguage
5A80E2:  STRB            R3, [R2]; CFont::UsingKoreanLanguage
5A80E4:  STRB            R3, [R1]; CFont::UsingEFIGSLanguage
5A80E6:  BLX.W           j__ZN5CFont18AddStandardTextureEv; CFont::AddStandardTexture(void)
5A80EA:  LDR             R0, =(_ZN5CFont6SpriteE_ptr - 0x5A80F6)
5A80EC:  MOVS            R1, #1
5A80EE:  STRB            R1, [R4]; CFont::UsingJapaneseLanguage
5A80F0:  ADR             R1, aTexturesFontsJ; "Textures\\Fonts\\JapaneseFont.png"
5A80F2:  ADD             R0, PC; _ZN5CFont6SpriteE_ptr
5A80F4:  LDR             R0, [R0]; CFont::Sprite ...
5A80F6:  ADDS            R0, #8; this
5A80F8:  BLX.W           j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
5A80FC:  ADR             R0, aTexturesFontsJ_0; "Textures\\Fonts\\JapaneseFont.met"
5A80FE:  MOV.W           R1, #0x400; int
5A8102:  POP.W           {R4,R6,R7,LR}
5A8106:  B               _Z11ReadMetFilePci; ReadMetFile(char *,int)
5A8108:  BX              LR
