; =========================================================
; Game Engine Function: _ZN5CFont12GetNextSpaceEPt
; Address            : 0x5AAE64 - 0x5AAFA6
; =========================================================

5AAE64:  PUSH            {R4,R6,R7,LR}
5AAE66:  ADD             R7, SP, #8
5AAE68:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AAE6E)
5AAE6A:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AAE6C:  LDR             R1, [R1]; CFont::Details ...
5AAE6E:  LDRB.W          R1, [R1,#(byte_A297E8 - 0xA297B4)]
5AAE72:  CMP             R1, #2
5AAE74:  BNE.W           loc_5AAF7C
5AAE78:  LDR             R1, =(_ZN5CFont21UsingJapaneseLanguageE_ptr - 0x5AAE82)
5AAE7A:  LDR             R2, =(_ZN5CFont19UsingKoreanLanguageE_ptr - 0x5AAE84)
5AAE7C:  LDR             R3, =(_ZN5CFont20UsingRussianLanguageE_ptr - 0x5AAE86)
5AAE7E:  ADD             R1, PC; _ZN5CFont21UsingJapaneseLanguageE_ptr
5AAE80:  ADD             R2, PC; _ZN5CFont19UsingKoreanLanguageE_ptr
5AAE82:  ADD             R3, PC; _ZN5CFont20UsingRussianLanguageE_ptr
5AAE84:  LDR             R1, [R1]; CFont::UsingJapaneseLanguage ...
5AAE86:  LDR             R2, [R2]; CFont::UsingKoreanLanguage ...
5AAE88:  LDR             R3, [R3]; CFont::UsingRussianLanguage ...
5AAE8A:  LDRB.W          R12, [R1]; CFont::UsingJapaneseLanguage
5AAE8E:  LDRB            R1, [R2]; CFont::UsingKoreanLanguage
5AAE90:  LDRB            R3, [R3]; CFont::UsingRussianLanguage
5AAE92:  ORR.W           R2, R1, R12
5AAE96:  ORRS            R2, R3
5AAE98:  BEQ.W           loc_5AAF7C
5AAE9C:  CMP.W           R12, #0
5AAEA0:  BEQ.W           loc_5AAF6A
5AAEA4:  LDRH            R1, [R0]
5AAEA6:  LDR             R2, =(IsJapanese_ptr - 0x5AAEB2)
5AAEA8:  CMP             R1, #0x80
5AAEAA:  MOV.W           R3, #1
5AAEAE:  ADD             R2, PC; IsJapanese_ptr
5AAEB0:  LDR             R2, [R2]; IsJapanese
5AAEB2:  STRB            R3, [R2]
5AAEB4:  BCC.W           loc_5AAF40
5AAEB8:  CMP.W           R12, #0
5AAEBC:  BEQ.W           loc_5AAF40
5AAEC0:  LDR             R1, =(numOfPunctIndexes_ptr - 0x5AAEC6)
5AAEC2:  ADD             R1, PC; numOfPunctIndexes_ptr
5AAEC4:  LDR             R1, [R1]; numOfPunctIndexes
5AAEC6:  LDR.W           R12, [R1]
5AAECA:  LDR             R1, =(JPNIndexPunct_ptr - 0x5AAED0)
5AAECC:  ADD             R1, PC; JPNIndexPunct_ptr
5AAECE:  LDR             R4, [R1]; JPNIndexPunct
5AAED0:  LDRH.W          LR, [R0,#2]!
5AAED4:  SUB.W           R3, LR, #0x21 ; '!'; switch 60 cases
5AAED8:  CMP             R3, #0x3B ; ';'
5AAEDA:  BHI             def_5AAEDC; jumptable 005AAEDC default case, cases 34,35,37-43,45,48-57,59-62,64-91
5AAEDC:  TBB.W           [PC,R3]; switch jump
5AAEE0:  DCB 0x1E; jump table for switch statement
5AAEE1:  DCB 0x1F
5AAEE2:  DCB 0x1F
5AAEE3:  DCB 0x1E
5AAEE4:  DCB 0x1F
5AAEE5:  DCB 0x1F
5AAEE6:  DCB 0x1F
5AAEE7:  DCB 0x1F
5AAEE8:  DCB 0x1F
5AAEE9:  DCB 0x1F
5AAEEA:  DCB 0x1F
5AAEEB:  DCB 0x1E
5AAEEC:  DCB 0x1F
5AAEED:  DCB 0x1E
5AAEEE:  DCB 0x1E
5AAEEF:  DCB 0x1F
5AAEF0:  DCB 0x1F
5AAEF1:  DCB 0x1F
5AAEF2:  DCB 0x1F
5AAEF3:  DCB 0x1F
5AAEF4:  DCB 0x1F
5AAEF5:  DCB 0x1F
5AAEF6:  DCB 0x1F
5AAEF7:  DCB 0x1F
5AAEF8:  DCB 0x1F
5AAEF9:  DCB 0x1E
5AAEFA:  DCB 0x1F
5AAEFB:  DCB 0x1F
5AAEFC:  DCB 0x1F
5AAEFD:  DCB 0x1F
5AAEFE:  DCB 0x1E
5AAEFF:  DCB 0x1F
5AAF00:  DCB 0x1F
5AAF01:  DCB 0x1F
5AAF02:  DCB 0x1F
5AAF03:  DCB 0x1F
5AAF04:  DCB 0x1F
5AAF05:  DCB 0x1F
5AAF06:  DCB 0x1F
5AAF07:  DCB 0x1F
5AAF08:  DCB 0x1F
5AAF09:  DCB 0x1F
5AAF0A:  DCB 0x1F
5AAF0B:  DCB 0x1F
5AAF0C:  DCB 0x1F
5AAF0D:  DCB 0x1F
5AAF0E:  DCB 0x1F
5AAF0F:  DCB 0x1F
5AAF10:  DCB 0x1F
5AAF11:  DCB 0x1F
5AAF12:  DCB 0x1F
5AAF13:  DCB 0x1F
5AAF14:  DCB 0x1F
5AAF15:  DCB 0x1F
5AAF16:  DCB 0x1F
5AAF17:  DCB 0x1F
5AAF18:  DCB 0x1F
5AAF19:  DCB 0x1F
5AAF1A:  DCB 0x1F
5AAF1B:  DCB 0x1E
5AAF1C:  B               loc_5AAED0; jumptable 005AAEDC cases 33,36,44,46,47,58,63,92
5AAF1E:  CMP.W           R12, #1; jumptable 005AAEDC default case, cases 34,35,37-43,45,48-57,59-62,64-91
5AAF22:  BLT             locret_5AAF88
5AAF24:  SUB.W           R1, LR, #0x20 ; ' '
5AAF28:  UXTH            R3, R1
5AAF2A:  MOVS            R1, #0
5AAF2C:  LDRSH.W         R2, [R4,R1,LSL#1]
5AAF30:  ADDS            R1, #1
5AAF32:  CMP             R2, R3
5AAF34:  BEQ.W           loc_5AAED0
5AAF38:  CMP             R1, R12
5AAF3A:  BLT             loc_5AAF2C
5AAF3C:  B               locret_5AAF88
5AAF3E:  LDRH            R1, [R0]
5AAF40:  CMP             R1, #0x7E ; '~'
5AAF42:  BNE             loc_5AAF54
5AAF44:  ADDS            R0, #2
5AAF46:  LDRH.W          R1, [R0],#2
5AAF4A:  CMP             R1, #0x7E ; '~'
5AAF4C:  BNE             loc_5AAF46
5AAF4E:  B               loc_5AAF3E
5AAF50:  LDRH.W          R1, [R0,#2]!
5AAF54:  ORR.W           R2, R1, #0x20 ; ' '
5AAF58:  UXTH            R2, R2
5AAF5A:  CMP             R2, #0x20 ; ' '
5AAF5C:  BEQ             locret_5AAF88
5AAF5E:  UXTH            R1, R1
5AAF60:  CMP             R1, #0x7F
5AAF62:  BHI             locret_5AAF88
5AAF64:  CMP             R1, #0x7E ; '~'
5AAF66:  BNE             loc_5AAF50
5AAF68:  B               locret_5AAF88
5AAF6A:  ORRS            R1, R3
5AAF6C:  BEQ             loc_5AAF8A
5AAF6E:  LDR             R1, =(IsJapanese_ptr - 0x5AAF76)
5AAF70:  MOVS            R2, #0
5AAF72:  ADD             R1, PC; IsJapanese_ptr
5AAF74:  LDR             R1, [R1]; IsJapanese
5AAF76:  STRB            R2, [R1]
5AAF78:  B               loc_5AAF7C
5AAF7A:  ADDS            R0, #2
5AAF7C:  LDRH            R1, [R0]
5AAF7E:  CBZ             R1, locret_5AAF88
5AAF80:  CMP             R1, #0x20 ; ' '
5AAF82:  IT NE
5AAF84:  CMPNE           R1, #0x7E ; '~'
5AAF86:  BNE             loc_5AAF7A
5AAF88:  POP             {R4,R6,R7,PC}
5AAF8A:  LDRH            R1, [R0]
5AAF8C:  CMP             R1, #0
5AAF8E:  BEQ             loc_5AAF6E
5AAF90:  ADDS            R3, R0, #2
5AAF92:  MOV             R2, R1
5AAF94:  UXTH            R2, R2
5AAF96:  CMP             R2, #0x7F
5AAF98:  BHI.W           loc_5AAEA6
5AAF9C:  LDRH.W          R2, [R3],#2
5AAFA0:  CMP             R2, #0
5AAFA2:  BNE             loc_5AAF94
5AAFA4:  B               loc_5AAF6E
