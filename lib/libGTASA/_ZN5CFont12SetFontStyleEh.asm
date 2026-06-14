; =========================================================
; Game Engine Function: _ZN5CFont12SetFontStyleEh
; Address            : 0x5AB14C - 0x5AB1C8
; =========================================================

5AB14C:  LDR             R1, =(_ZN5CFont21UsingJapaneseLanguageE_ptr - 0x5AB156)
5AB14E:  LDR             R2, =(_ZN5CFont19UsingKoreanLanguageE_ptr - 0x5AB158)
5AB150:  LDR             R3, =(_ZN5CFont20UsingRussianLanguageE_ptr - 0x5AB15A)
5AB152:  ADD             R1, PC; _ZN5CFont21UsingJapaneseLanguageE_ptr
5AB154:  ADD             R2, PC; _ZN5CFont19UsingKoreanLanguageE_ptr
5AB156:  ADD             R3, PC; _ZN5CFont20UsingRussianLanguageE_ptr
5AB158:  LDR             R1, [R1]; CFont::UsingJapaneseLanguage ...
5AB15A:  LDR             R2, [R2]; CFont::UsingKoreanLanguage ...
5AB15C:  LDR             R3, [R3]; CFont::UsingRussianLanguage ...
5AB15E:  LDRB            R1, [R1]; CFont::UsingJapaneseLanguage
5AB160:  LDRB            R2, [R2]; CFont::UsingKoreanLanguage
5AB162:  LDRB            R3, [R3]; CFont::UsingRussianLanguage
5AB164:  ORRS            R1, R2
5AB166:  ORRS            R1, R3
5AB168:  LSLS            R1, R1, #0x18
5AB16A:  BEQ             loc_5AB18A
5AB16C:  SUBS            R0, #4
5AB16E:  UXTB            R0, R0
5AB170:  CMP             R0, #3
5AB172:  BCS             loc_5AB1A4
5AB174:  MOVW            R2, #:lower16:(elf_hash_bucket+0x10004)
5AB178:  LSLS            R0, R0, #3
5AB17A:  MOV.W           R1, #0x100
5AB17E:  MOVT            R2, #:upper16:(elf_hash_bucket+0x10004)
5AB182:  LSRS            R1, R0
5AB184:  LSR.W           R0, R2, R0
5AB188:  B               loc_5AB1A8; jumptable 005AB194 case 2
5AB18A:  SUBS            R2, R0, #2; switch 5 cases
5AB18C:  CMP             R2, #4
5AB18E:  BHI             def_5AB194; jumptable 005AB194 default case
5AB190:  MOVS            R1, #2
5AB192:  MOVS            R0, #0
5AB194:  TBB.W           [PC,R2]; switch jump
5AB198:  DCB 8; jump table for switch statement
5AB199:  DCB 3
5AB19A:  DCB 0x12
5AB19B:  DCB 3
5AB19C:  DCB 0x15
5AB19D:  ALIGN 2
5AB19E:  MOVS            R0, #1; jumptable 005AB194 cases 3,5
5AB1A0:  MOVS            R1, #1
5AB1A2:  B               loc_5AB1A8; jumptable 005AB194 case 2
5AB1A4:  MOVS            R1, #0
5AB1A6:  MOVS            R0, #2
5AB1A8:  LDR             R2, =(_ZN5CFont7DetailsE_ptr - 0x5AB1AE); jumptable 005AB194 case 2
5AB1AA:  ADD             R2, PC; _ZN5CFont7DetailsE_ptr
5AB1AC:  LDR             R2, [R2]; CFont::Details ...
5AB1AE:  STRB.W          R1, [R2,#(byte_A297E9 - 0xA297B4)]
5AB1B2:  STRB.W          R0, [R2,#(byte_A297E8 - 0xA297B4)]
5AB1B6:  BX              LR
5AB1B8:  MOVS            R1, #0; jumptable 005AB194 default case
5AB1BA:  B               loc_5AB1A8; jumptable 005AB194 case 2
5AB1BC:  MOVS            R0, #0; jumptable 005AB194 case 4
5AB1BE:  MOVS            R1, #0
5AB1C0:  B               loc_5AB1A8; jumptable 005AB194 case 2
5AB1C2:  MOVS            R1, #0; jumptable 005AB194 case 6
5AB1C4:  MOVS            R0, #1
5AB1C6:  B               loc_5AB1A8; jumptable 005AB194 case 2
