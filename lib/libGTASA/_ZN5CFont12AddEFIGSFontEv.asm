; =========================================================
; Game Engine Function: _ZN5CFont12AddEFIGSFontEv
; Address            : 0x5A820C - 0x5A8266
; =========================================================

5A820C:  LDR             R0, =(IsInitialized_ptr - 0x5A8212)
5A820E:  ADD             R0, PC; IsInitialized_ptr
5A8210:  LDR             R0, [R0]; IsInitialized
5A8212:  LDRB            R0, [R0]
5A8214:  CMP             R0, #0
5A8216:  IT EQ
5A8218:  BXEQ            LR
5A821A:  LDR             R0, =(_ZN5CFont18UsingEFIGSLanguageE_ptr - 0x5A8220)
5A821C:  ADD             R0, PC; _ZN5CFont18UsingEFIGSLanguageE_ptr
5A821E:  LDR             R0, [R0]; CFont::UsingEFIGSLanguage ...
5A8220:  LDRB            R0, [R0]; CFont::UsingEFIGSLanguage
5A8222:  CBNZ            R0, locret_5A8264
5A8224:  PUSH            {R7,LR}
5A8226:  MOV             R7, SP
5A8228:  LDR             R0, =(_ZN5CFont20UsingRussianLanguageE_ptr - 0x5A8232)
5A822A:  LDR             R1, =(_ZN5CFont18UsingEFIGSLanguageE_ptr - 0x5A8236)
5A822C:  LDR             R2, =(_ZN5CFont21UsingJapaneseLanguageE_ptr - 0x5A8238)
5A822E:  ADD             R0, PC; _ZN5CFont20UsingRussianLanguageE_ptr
5A8230:  LDR             R3, =(_ZN5CFont19UsingKoreanLanguageE_ptr - 0x5A823C)
5A8232:  ADD             R1, PC; _ZN5CFont18UsingEFIGSLanguageE_ptr
5A8234:  ADD             R2, PC; _ZN5CFont21UsingJapaneseLanguageE_ptr
5A8236:  LDR             R0, [R0]; CFont::UsingRussianLanguage ...
5A8238:  ADD             R3, PC; _ZN5CFont19UsingKoreanLanguageE_ptr
5A823A:  LDR.W           R12, [R1]; CFont::UsingEFIGSLanguage ...
5A823E:  LDR             R2, [R2]; CFont::UsingJapaneseLanguage ...
5A8240:  MOVS            R1, #0
5A8242:  LDR             R3, [R3]; CFont::UsingKoreanLanguage ...
5A8244:  STRB            R1, [R0]; CFont::UsingRussianLanguage
5A8246:  MOVS            R0, #(stderr+1); this
5A8248:  STRB            R1, [R2]; CFont::UsingJapaneseLanguage
5A824A:  STRB            R1, [R3]; CFont::UsingKoreanLanguage
5A824C:  STRB.W          R0, [R12]; CFont::UsingEFIGSLanguage
5A8250:  BLX.W           j__ZN5CFont18AddStandardTextureEv; CFont::AddStandardTexture(void)
5A8254:  LDR             R0, =(_ZN5CFont6SpriteE_ptr - 0x5A825A)
5A8256:  ADD             R0, PC; _ZN5CFont6SpriteE_ptr
5A8258:  LDR             R0, [R0]; CFont::Sprite ...
5A825A:  ADDS            R0, #8; this
5A825C:  POP.W           {R7,LR}
5A8260:  B.W             j_j__ZN9CSprite2d6DeleteEv; j_CSprite2d::Delete(void)
5A8264:  BX              LR
