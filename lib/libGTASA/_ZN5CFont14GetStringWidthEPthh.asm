; =========================================================
; Game Engine Function: _ZN5CFont14GetStringWidthEPthh
; Address            : 0x5AAB7C - 0x5AAE36
; =========================================================

5AAB7C:  PUSH            {R4-R7,LR}
5AAB7E:  ADD             R7, SP, #0xC
5AAB80:  PUSH.W          {R8-R11}
5AAB84:  SUB             SP, SP, #4
5AAB86:  VPUSH           {D8-D10}
5AAB8A:  SUB.W           SP, SP, #0x338
5AAB8E:  MOV             R6, R0
5AAB90:  LDR             R0, =(_ZN5CFont7DetailsE_ptr - 0x5AAB9A)
5AAB92:  MOV             R4, R1
5AAB94:  STR             R2, [SP,#0x370+var_35C]
5AAB96:  ADD             R0, PC; _ZN5CFont7DetailsE_ptr
5AAB98:  LDR             R0, [R0]; CFont::Details ...
5AAB9A:  LDRB.W          R0, [R0,#(byte_A297E8 - 0xA297B4)]
5AAB9E:  CMP             R0, #2
5AABA0:  BNE             loc_5AAC36
5AABA2:  LDR             R0, =(_ZN5CFont21UsingJapaneseLanguageE_ptr - 0x5AABAC)
5AABA4:  LDR             R1, =(_ZN5CFont19UsingKoreanLanguageE_ptr - 0x5AABAE)
5AABA6:  LDR             R2, =(_ZN5CFont20UsingRussianLanguageE_ptr - 0x5AABB0)
5AABA8:  ADD             R0, PC; _ZN5CFont21UsingJapaneseLanguageE_ptr
5AABAA:  ADD             R1, PC; _ZN5CFont19UsingKoreanLanguageE_ptr
5AABAC:  ADD             R2, PC; _ZN5CFont20UsingRussianLanguageE_ptr
5AABAE:  LDR             R0, [R0]; CFont::UsingJapaneseLanguage ...
5AABB0:  LDR             R1, [R1]; CFont::UsingKoreanLanguage ...
5AABB2:  LDR             R3, [R2]; CFont::UsingRussianLanguage ...
5AABB4:  LDRB            R2, [R0]; CFont::UsingJapaneseLanguage
5AABB6:  LDRB            R0, [R1]; CFont::UsingKoreanLanguage
5AABB8:  LDRB            R1, [R3]; CFont::UsingRussianLanguage
5AABBA:  ORR.W           R3, R0, R2
5AABBE:  ORRS            R3, R1
5AABC0:  BEQ             loc_5AAC36
5AABC2:  CBZ             R2, loc_5AAC26
5AABC4:  LDR             R0, =(IsJapanese_ptr - 0x5AABCC)
5AABC6:  MOVS            R1, #(stderr+1); unsigned __int16 *
5AABC8:  ADD             R0, PC; IsJapanese_ptr
5AABCA:  LDR             R0, [R0]; IsJapanese
5AABCC:  STRB            R1, [R0]
5AABCE:  MOV             R0, R6; this
5AABD0:  BLX.W           j__ZN5CFont12GetNextSpaceEPt; CFont::GetNextSpace(ushort *)
5AABD4:  VLDR            S16, =0.0
5AABD8:  MOV             R5, R0
5AABDA:  MOVW            R8, #0xFFE0
5AABDE:  B               loc_5AABF4
5AABE0:  ADD             R0, R8
5AABE2:  MOVS            R1, #0; unsigned __int16
5AABE4:  UXTH            R0, R0; this
5AABE6:  BLX.W           j__ZN5CFont16GetCharacterSizeEtb; CFont::GetCharacterSize(ushort,bool)
5AABEA:  VMOV            S0, R0
5AABEE:  ADDS            R6, #2
5AABF0:  VADD.F32        S16, S16, S0
5AABF4:  CMP             R6, R5
5AABF6:  BCS             loc_5AAC00
5AABF8:  LDRH            R0, [R6]
5AABFA:  CMP             R0, #0x7E ; '~'
5AABFC:  BEQ             loc_5AAC10
5AABFE:  B               loc_5AAC1C
5AAC00:  CMP             R4, #0
5AAC02:  ITT NE
5AAC04:  LDRHNE          R0, [R6]
5AAC06:  CMPNE           R0, #0
5AAC08:  BEQ.W           loc_5AAE06
5AAC0C:  CMP             R0, #0x7E ; '~'
5AAC0E:  BNE             loc_5AAC1C
5AAC10:  ADDS            R6, #2
5AAC12:  LDRH.W          R0, [R6],#2
5AAC16:  CMP             R0, #0x7E ; '~'
5AAC18:  BNE             loc_5AAC12
5AAC1A:  LDRH            R0, [R6]
5AAC1C:  CMP             R0, #0
5AAC1E:  IT NE
5AAC20:  CMPNE           R0, #0x7E ; '~'
5AAC22:  BEQ             loc_5AABF4
5AAC24:  B               loc_5AABE0
5AAC26:  ORRS            R0, R1
5AAC28:  BEQ.W           loc_5AAE1A
5AAC2C:  LDR             R0, =(IsJapanese_ptr - 0x5AAC34)
5AAC2E:  MOVS            R1, #0; unsigned __int16 *
5AAC30:  ADD             R0, PC; IsJapanese_ptr
5AAC32:  LDR             R0, [R0]; IsJapanese
5AAC34:  STRB            R1, [R0]
5AAC36:  MOV             R0, R6; this
5AAC38:  BLX.W           j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
5AAC3C:  CMP.W           R0, #0x18E
5AAC40:  MOV             R5, R0
5AAC42:  IT HI
5AAC44:  MOVWHI          R5, #0x18F
5AAC48:  MOV.W           R8, #0
5AAC4C:  CMP             R5, #1
5AAC4E:  BLT             loc_5AAC74
5AAC50:  MOVW            R1, #0xFE70
5AAC54:  MVNS            R0, R0
5AAC56:  MOVT            R1, #0xFFFF
5AAC5A:  CMN.W           R0, #0x190
5AAC5E:  IT HI
5AAC60:  MOVHI           R1, R0
5AAC62:  MOV             R0, #0xFFFFFFFE
5AAC66:  SUB.W           R2, R0, R1,LSL#1; size_t
5AAC6A:  ADD             R0, SP, #0x370+var_358; void *
5AAC6C:  MOV             R1, R6; void *
5AAC6E:  BLX.W           memcpy_1
5AAC72:  B               loc_5AAC76
5AAC74:  MOVS            R5, #0
5AAC76:  LDR             R1, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x5AAC84)
5AAC78:  VMOV.F32        S0, #20.0
5AAC7C:  LDR             R0, =(_ZN5CFont7DetailsE_ptr - 0x5AAC88)
5AAC7E:  ADD             R6, SP, #0x370+var_358
5AAC80:  ADD             R1, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
5AAC82:  LDR             R2, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x5AAC8E)
5AAC84:  ADD             R0, PC; _ZN5CFont7DetailsE_ptr
5AAC86:  STRH.W          R8, [R6,R5,LSL#1]
5AAC8A:  ADD             R2, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
5AAC8C:  LDR             R1, [R1]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
5AAC8E:  CMP             R4, #0
5AAC90:  LDR             R0, [R0]; CFont::Details ...
5AAC92:  MOV.W           R9, #0
5AAC96:  VLDR            S16, =0.0
5AAC9A:  MOVW            LR, #0xFFE0
5AAC9E:  LDRH            R1, [R1]; CTheScripts::NumberOfIntroTextLinesThisFrame
5AACA0:  VLDR            S2, [R0,#8]
5AACA4:  IT EQ
5AACA6:  MOVEQ.W         R9, #1
5AACAA:  LDR             R0, [R2]; CTheScripts::IntroTextLines ...
5AACAC:  ADD.W           R1, R1, R1,LSL#4
5AACB0:  VMUL.F32        S18, S2, S0
5AACB4:  ADD.W           R10, R0, R1,LSL#2
5AACB8:  LDR             R0, =(_ZN5CFont4SizeE_ptr - 0x5AACC6)
5AACBA:  ADD.W           R11, R10, #0x28 ; '('
5AACBE:  ADD.W           R5, R10, #0x1C
5AACC2:  ADD             R0, PC; _ZN5CFont4SizeE_ptr
5AACC4:  ADD.W           R12, R10, #0x22 ; '"'
5AACC8:  LDR             R0, [R0]; CFont::Size ...
5AACCA:  STR             R0, [SP,#0x370+var_360]
5AACCC:  MOVS            R0, #0
5AACCE:  B               loc_5AADB6
5AACD0:  MOV.W           R8, #1
5AACD4:  B               loc_5AADB6
5AACD6:  CMP             R2, #0x20 ; ' '
5AACD8:  MOV.W           R0, #0
5AACDC:  IT EQ
5AACDE:  MOVEQ           R0, #1
5AACE0:  UXTB.W          R2, R8
5AACE4:  CMP             R2, #0
5AACE6:  IT NE
5AACE8:  MOVNE           R2, #1; bool
5AACEA:  ANDS            R0, R2
5AACEC:  TST.W           R0, R9
5AACF0:  BNE.W           loc_5AAE06
5AACF4:  UXTAH.W         R0, LR, R1
5AACF8:  LDR             R1, [SP,#0x370+var_35C]
5AACFA:  STR.W           R12, [SP,#0x370+var_364]
5AACFE:  CBZ             R1, loc_5AAD34
5AAD00:  UXTH            R1, R0
5AAD02:  CMP             R1, #0x3F ; '?'
5AAD04:  IT EQ
5AAD06:  MOVEQ           R0, #0
5AAD08:  LDR.W           R1, [R11]
5AAD0C:  LDRB            R3, [R5]
5AAD0E:  VLDR            S20, [R10]
5AAD12:  CMP             R1, #3
5AAD14:  LDRB.W          R2, [R12]; unsigned __int8
5AAD18:  STR.W           R11, [SP,#0x370+var_368]
5AAD1C:  STR             R2, [SP,#0x370+var_36C]
5AAD1E:  BEQ             loc_5AAD46
5AAD20:  CMP             R1, #2
5AAD22:  BNE             loc_5AAD94
5AAD24:  MOV.W           R11, #0
5AAD28:  MOVS            R1, #2
5AAD2A:  STR             R3, [SP,#0x370+var_370]
5AAD2C:  B               loc_5AAD4E
5AAD2E:  MOV.W           R8, #1
5AAD32:  B               loc_5AADB6
5AAD34:  UXTH            R0, R0; this
5AAD36:  MOVS            R1, #0; unsigned __int16
5AAD38:  BLX.W           j__ZN5CFont16GetCharacterSizeEtb; CFont::GetCharacterSize(ushort,bool)
5AAD3C:  MOVW            LR, #0xFFE0
5AAD40:  VMOV            S0, R0
5AAD44:  B               loc_5AADAA
5AAD46:  STR             R3, [SP,#0x370+var_370]
5AAD48:  MOVS            R1, #1
5AAD4A:  MOV.W           R11, #1
5AAD4E:  UXTH            R0, R0; this
5AAD50:  UXTB            R1, R1; unsigned __int16
5AAD52:  BLX.W           j__ZN5CFont20FindSubFontCharacterEth; CFont::FindSubFontCharacter(ushort,uchar)
5AAD56:  MOVW            LR, #0xFFE0
5AAD5A:  LDR             R3, [SP,#0x370+var_370]
5AAD5C:  LDR             R2, [SP,#0x370+var_360]
5AAD5E:  MOVS            R1, #0xD2
5AAD60:  CMP             R3, #0
5AAD62:  SMLABB.W        R1, R11, R1, R2
5AAD66:  LDR             R2, [SP,#0x370+var_36C]
5AAD68:  SXTB            R2, R2
5AAD6A:  UXTAH.W         R0, R1, R0
5AAD6E:  VMOV            S0, R2
5AAD72:  IT EQ
5AAD74:  ADDEQ.W         R0, R1, #0xD1
5AAD78:  LDRB            R0, [R0]
5AAD7A:  VCVT.F32.S32    S0, S0
5AAD7E:  VMOV            S2, R0
5AAD82:  VCVT.F32.U32    S2, S2
5AAD86:  LDR.W           R11, [SP,#0x370+var_368]
5AAD8A:  VADD.F32        S0, S0, S2
5AAD8E:  VMUL.F32        S0, S20, S0
5AAD92:  B               loc_5AADAA
5AAD94:  UXTB.W          R11, R1
5AAD98:  UXTH            R1, R0
5AAD9A:  CMP             R1, #0x91
5AAD9C:  BNE             loc_5AADA2
5AAD9E:  MOVS            R0, #0x40 ; '@'
5AADA0:  B               loc_5AAD5C
5AADA2:  CMP             R1, #0x9B
5AADA4:  IT HI
5AADA6:  MOVHI           R0, #0
5AADA8:  B               loc_5AAD5C
5AADAA:  VADD.F32        S16, S16, S0
5AADAE:  ADDS            R6, #2
5AADB0:  MOVS            R0, #1
5AADB2:  LDR.W           R12, [SP,#0x370+var_364]
5AADB6:  LDRH            R1, [R6]
5AADB8:  UXTH            R2, R1
5AADBA:  EOR.W           R3, R2, #0x20 ; ' '
5AADBE:  ORRS            R3, R4
5AADC0:  IT NE
5AADC2:  MOVNE           R3, #1
5AADC4:  CMP             R2, #0
5AADC6:  IT NE
5AADC8:  CMPNE           R3, #0
5AADCA:  BEQ             loc_5AAE06
5AADCC:  CMP             R2, #0x7E ; '~'
5AADCE:  BNE.W           loc_5AACD6
5AADD2:  CBNZ            R4, loc_5AADDC
5AADD4:  ORR.W           R1, R0, R8
5AADD8:  LSLS            R1, R1, #0x18
5AADDA:  BNE             loc_5AAE06
5AADDC:  LDRH.W          R1, [R6,#2]!
5AADE0:  CMP             R1, #0x6D ; 'm'
5AADE2:  ITTT EQ
5AADE4:  VADDEQ.F32      S16, S16, S18
5AADE8:  MOVEQ           R0, #1
5AADEA:  MOVEQ           R1, #0x6D ; 'm'
5AADEC:  B               loc_5AADF0
5AADEE:  LDRH            R1, [R6]
5AADF0:  ADDS            R6, #2
5AADF2:  UXTH            R1, R1
5AADF4:  CMP             R1, #0x7E ; '~'
5AADF6:  BNE             loc_5AADEE
5AADF8:  LSLS            R1, R0, #0x18
5AADFA:  BNE             loc_5AAD2E
5AADFC:  LDRH            R1, [R6]
5AADFE:  MOVS            R0, #0
5AAE00:  CMP             R1, #0x7E ; '~'
5AAE02:  BNE             loc_5AADB8
5AAE04:  B               loc_5AACD0
5AAE06:  VMOV            R0, S16
5AAE0A:  ADD.W           SP, SP, #0x338
5AAE0E:  VPOP            {D8-D10}
5AAE12:  ADD             SP, SP, #4
5AAE14:  POP.W           {R8-R11}
5AAE18:  POP             {R4-R7,PC}
5AAE1A:  LDRH            R1, [R6]
5AAE1C:  CMP             R1, #0
5AAE1E:  BEQ.W           loc_5AAC2C
5AAE22:  ADDS            R0, R6, #2
5AAE24:  UXTH            R1, R1
5AAE26:  CMP             R1, #0x7F
5AAE28:  BHI.W           loc_5AABC4
5AAE2C:  LDRH.W          R1, [R0],#2
5AAE30:  CMP             R1, #0
5AAE32:  BNE             loc_5AAE24
5AAE34:  B               loc_5AAC2C
