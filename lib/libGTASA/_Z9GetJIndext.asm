; =========================================================
; Game Engine Function: _Z9GetJIndext
; Address            : 0x5A79C0 - 0x5A7A70
; =========================================================

5A79C0:  LDR             R1, =(_ZN5CFont21UsingJapaneseLanguageE_ptr - 0x5A79CA)
5A79C2:  LDR             R2, =(_ZN5CFont19UsingKoreanLanguageE_ptr - 0x5A79CC)
5A79C4:  LDR             R3, =(_ZN5CFont20UsingRussianLanguageE_ptr - 0x5A79CE)
5A79C6:  ADD             R1, PC; _ZN5CFont21UsingJapaneseLanguageE_ptr
5A79C8:  ADD             R2, PC; _ZN5CFont19UsingKoreanLanguageE_ptr
5A79CA:  ADD             R3, PC; _ZN5CFont20UsingRussianLanguageE_ptr
5A79CC:  LDR             R1, [R1]; CFont::UsingJapaneseLanguage ...
5A79CE:  LDR             R2, [R2]; CFont::UsingKoreanLanguage ...
5A79D0:  LDR             R3, [R3]; CFont::UsingRussianLanguage ...
5A79D2:  LDRB.W          R12, [R1]; CFont::UsingJapaneseLanguage
5A79D6:  LDRB            R2, [R2]; CFont::UsingKoreanLanguage
5A79D8:  LDRB            R1, [R3]; CFont::UsingRussianLanguage
5A79DA:  ORR.W           R2, R2, R12
5A79DE:  ORRS            R2, R1
5A79E0:  LSLS            R2, R2, #0x18
5A79E2:  BEQ             loc_5A7A02
5A79E4:  MOVW            R1, #0x7F4C
5A79E8:  ADD             R1, R0
5A79EA:  UXTH            R1, R1
5A79EC:  CMP             R1, #2
5A79EE:  BHI             loc_5A7A1C
5A79F0:  LDR             R1, =(jCount_ptr - 0x5A79F6)
5A79F2:  ADD             R1, PC; jCount_ptr
5A79F4:  LDR             R1, [R1]; jCount
5A79F6:  LDR             R1, [R1]
5A79F8:  ADD             R0, R1
5A79FA:  MOVW            R1, #0x80B7
5A79FE:  SUBS            R0, R0, R1
5A7A00:  BX              LR
5A7A02:  CBZ             R1, loc_5A7A40
5A7A04:  LDR             R1, =(jCount_ptr - 0x5A7A0C)
5A7A06:  MOVS            R2, #0x20 ; ' '
5A7A08:  ADD             R1, PC; jCount_ptr
5A7A0A:  LDR             R1, [R1]; jCount
5A7A0C:  LDR             R1, [R1]
5A7A0E:  ADDS            R1, #0x20 ; ' '
5A7A10:  CMP             R1, R0
5A7A12:  IT GT
5A7A14:  SUBGT.W         R2, R0, #0x20 ; ' '
5A7A18:  MOV             R0, R2
5A7A1A:  BX              LR
5A7A1C:  LSLS            R1, R0, #0x10
5A7A1E:  ITT MI
5A7A20:  BFCMI.W         R0, #0xF, #0x11
5A7A24:  BXMI            LR
5A7A26:  LDR             R1, =(jCount_ptr - 0x5A7A2C)
5A7A28:  ADD             R1, PC; jCount_ptr
5A7A2A:  LDR             R1, [R1]; jCount
5A7A2C:  LDR             R1, [R1]
5A7A2E:  ADD.W           R2, R1, #0x20 ; ' '
5A7A32:  MOVS            R1, #0x20 ; ' '
5A7A34:  CMP             R2, R0
5A7A36:  IT GT
5A7A38:  SUBGT.W         R1, R0, #0x20 ; ' '
5A7A3C:  MOV             R0, R1
5A7A3E:  BX              LR
5A7A40:  LDR             R1, =(jCount_ptr - 0x5A7A46)
5A7A42:  ADD             R1, PC; jCount_ptr
5A7A44:  LDR             R1, [R1]; jCount
5A7A46:  LDR.W           R12, [R1]
5A7A4A:  CMP.W           R12, #1
5A7A4E:  BLT             loc_5A7A6C
5A7A50:  LDR             R2, =(JMet_ptr - 0x5A7A56)
5A7A52:  ADD             R2, PC; JMet_ptr
5A7A54:  LDR             R2, [R2]; JMet
5A7A56:  ADDS            R3, R2, #4
5A7A58:  MOVS            R2, #0
5A7A5A:  LDRH            R1, [R3]
5A7A5C:  CMP             R1, R0
5A7A5E:  ITT EQ
5A7A60:  MOVEQ           R0, R2
5A7A62:  BXEQ            LR
5A7A64:  ADDS            R2, #1
5A7A66:  ADDS            R3, #0x30 ; '0'
5A7A68:  CMP             R2, R12
5A7A6A:  BLT             loc_5A7A5A
5A7A6C:  MOVS            R0, #0x1F
5A7A6E:  BX              LR
