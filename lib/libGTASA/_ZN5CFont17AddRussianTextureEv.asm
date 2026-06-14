; =========================================================
; Game Engine Function: _ZN5CFont17AddRussianTextureEv
; Address            : 0x5A8284 - 0x5A82EE
; =========================================================

5A8284:  LDR             R0, =(IsInitialized_ptr - 0x5A828A)
5A8286:  ADD             R0, PC; IsInitialized_ptr
5A8288:  LDR             R0, [R0]; IsInitialized
5A828A:  LDRB            R0, [R0]
5A828C:  CBZ             R0, loc_5A82E2
5A828E:  LDR             R0, =(_ZN5CFont20UsingRussianLanguageE_ptr - 0x5A8294)
5A8290:  ADD             R0, PC; _ZN5CFont20UsingRussianLanguageE_ptr
5A8292:  LDR             R0, [R0]; CFont::UsingRussianLanguage ...
5A8294:  LDRB            R0, [R0]; CFont::UsingRussianLanguage
5A8296:  CBNZ            R0, loc_5A82E2
5A8298:  PUSH            {R7,LR}
5A829A:  MOV             R7, SP
5A829C:  LDR             R0, =(_ZN5CFont20UsingRussianLanguageE_ptr - 0x5A82A6)
5A829E:  LDR             R1, =(_ZN5CFont18UsingEFIGSLanguageE_ptr - 0x5A82AA)
5A82A0:  LDR             R2, =(_ZN5CFont21UsingJapaneseLanguageE_ptr - 0x5A82AC)
5A82A2:  ADD             R0, PC; _ZN5CFont20UsingRussianLanguageE_ptr
5A82A4:  LDR             R3, =(_ZN5CFont19UsingKoreanLanguageE_ptr - 0x5A82B0)
5A82A6:  ADD             R1, PC; _ZN5CFont18UsingEFIGSLanguageE_ptr
5A82A8:  ADD             R2, PC; _ZN5CFont21UsingJapaneseLanguageE_ptr
5A82AA:  LDR             R0, [R0]; this
5A82AC:  ADD             R3, PC; _ZN5CFont19UsingKoreanLanguageE_ptr
5A82AE:  LDR.W           R12, [R1]; CFont::UsingEFIGSLanguage ...
5A82B2:  LDR             R2, [R2]; CFont::UsingJapaneseLanguage ...
5A82B4:  MOVS            R1, #0
5A82B6:  LDR             R3, [R3]; CFont::UsingKoreanLanguage ...
5A82B8:  STRB            R1, [R0]; CFont::UsingRussianLanguage
5A82BA:  STRB            R1, [R2]; CFont::UsingJapaneseLanguage
5A82BC:  STRB            R1, [R3]; CFont::UsingKoreanLanguage
5A82BE:  STRB.W          R1, [R12]; CFont::UsingEFIGSLanguage
5A82C2:  BLX.W           j__ZN5CFont18AddStandardTextureEv; CFont::AddStandardTexture(void)
5A82C6:  ADR             R0, aTexturesFontsR; "Textures\\Fonts\\RussianFont.met"
5A82C8:  MOV.W           R1, #0x200; int
5A82CC:  BLX.W           j__Z11ReadMetFilePci; ReadMetFile(char *,int)
5A82D0:  LDR             R0, =(_ZN5CFont6SpriteE_ptr - 0x5A82D8)
5A82D2:  ADR             R1, aTexturesFontsR_0; "Textures\\Fonts\\RussianFont.png"
5A82D4:  ADD             R0, PC; _ZN5CFont6SpriteE_ptr
5A82D6:  LDR             R0, [R0]; CFont::Sprite ...
5A82D8:  ADDS            R0, #8; this
5A82DA:  BLX.W           j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
5A82DE:  POP.W           {R7,LR}
5A82E2:  LDR             R0, =(_ZN5CFont20UsingRussianLanguageE_ptr - 0x5A82EA)
5A82E4:  MOVS            R1, #1
5A82E6:  ADD             R0, PC; _ZN5CFont20UsingRussianLanguageE_ptr
5A82E8:  LDR             R0, [R0]; CFont::UsingRussianLanguage ...
5A82EA:  STRB            R1, [R0]; CFont::UsingRussianLanguage
5A82EC:  BX              LR
