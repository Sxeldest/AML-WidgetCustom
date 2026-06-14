; =========================================================
; Game Engine Function: alcOpenDevice
; Address            : 0x1BF8E4 - 0x1C0028
; =========================================================

1BF8E4:  PUSH            {R4-R11,LR}
1BF8E8:  ADD             R11, SP, #0x1C
1BF8EC:  SUB             SP, SP, #0x24
1BF8F0:  MOV             R5, R0
1BF8F4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1BF908)
1BF8F8:  LDR             R1, =(unk_382834 - 0x1BF914)
1BF8FC:  LDR             R2, =(sub_1BBB90 - 0x1BF918)
1BF900:  LDR             R0, [PC,R0]; __stack_chk_guard
1BF904:  LDR             R0, [R0]
1BF908:  STR             R0, [SP,#0x40+var_20]
1BF90C:  ADD             R0, PC, R1; unk_382834 ; once_control
1BF910:  ADD             R1, PC, R2; sub_1BBB90 ; init_routine
1BF914:  BL              pthread_once
1BF918:  LDR             R0, =(dword_3827A8 - 0x1BF924)
1BF91C:  LDR             R0, [PC,R0]; dword_3827A8
1BF920:  CMP             R0, #0
1BF924:  BEQ             loc_1BFCE8
1BF928:  CMP             R5, #0
1BF92C:  LDRBNE          R0, [R5]
1BF930:  CMPNE           R0, #0
1BF934:  BEQ             loc_1BF96C
1BF938:  LDR             R0, =(aOpenalSoft - 0x1BF944); "openal soft" ...
1BF93C:  ADD             R1, PC, R0; "openal soft"
1BF940:  MOV             R0, R5; s1
1BF944:  BL              strcasecmp
1BF948:  CMP             R0, #0
1BF94C:  BEQ             loc_1BF96C
1BF950:  LDR             R0, =(aOpenalSoft_0 - 0x1BF95C); "openal-soft" ...
1BF954:  ADD             R1, PC, R0; "openal-soft"
1BF958:  MOV             R0, R5; s1
1BF95C:  BL              strcasecmp
1BF960:  CMP             R0, #0
1BF964:  MOVEQ           R5, #0
1BF968:  B               loc_1BF970
1BF96C:  MOV             R5, #0
1BF970:  MOVW            R1, #:lower16:(aZnst6Ndk113bas_125+0x2E); "wEEE4swapERS3_"
1BF974:  MOV             R0, #1; nmemb
1BF978:  MOVT            R1, #:upper16:(aZnst6Ndk113bas_125+0x2E); size
1BF97C:  MOV             R6, #1
1BF980:  BL              calloc
1BF984:  MOV             R4, R0
1BF988:  CMP             R4, #0
1BF98C:  BEQ             loc_1BFD14
1BF990:  LDR             R0, =(dword_3827A8 - 0x1BF9A8)
1BF994:  MOV             R7, #0x2894C
1BF99C:  ADD             R1, R7, #8
1BF9A0:  ADD             R0, PC, R0; dword_3827A8
1BF9A4:  STR             R1, [SP,#0x40+var_28]
1BF9A8:  ADD             R0, R0, #0x10
1BF9AC:  STR             R0, [R4,R1]
1BF9B0:  ADD             R0, R4, #8
1BF9B4:  STRB            R6, [R4,#4]
1BF9B8:  STR             R6, [R4]
1BF9BC:  STR             R0, [SP,#0x40+mutex]
1BF9C0:  BL              j_InitializeCriticalSection
1BF9C4:  MOV             R0, #0
1BF9C8:  MOV             R1, R4
1BF9CC:  STR             R0, [R4,#0xB4]
1BF9D0:  MOV             R6, R4
1BF9D4:  STR             R0, [R4,#0x24]
1BF9D8:  STR             R0, [R4,#0xAC]
1BF9DC:  STR             R0, [R4,#0x20]
1BF9E0:  STR             R0, [R1,#0xB0]!
1BF9E4:  STR             R1, [SP,#0x40+var_30]
1BF9E8:  ADD             R1, R4, R7
1BF9EC:  STR             R1, [SP,#0x40+var_2C]
1BF9F0:  MOV             R7, #4
1BF9F4:  STR             R0, [R1,#4]
1BF9F8:  MOV             R0, #0x100
1BF9FC:  STR             R0, [R6,#0x28]!
1BFA00:  MOV             R0, R4
1BFA04:  STR             R7, [R0,#0x2C]!
1BFA08:  MOV             R1, #0xFFFFFFFF
1BFA0C:  STR             R0, [SP,#0x40+var_38]
1BFA10:  MOV             R0, R4
1BFA14:  STR             R7, [R0,#0x38]!
1BFA18:  STR             R0, [SP,#0x40+var_34]
1BFA1C:  ADD             R0, R4, #0x3C ; '<'
1BFA20:  BL              j_InitUIntMap
1BFA24:  ADD             R0, R4, #0x60 ; '`'
1BFA28:  MOV             R1, #0xFFFFFFFF
1BFA2C:  BL              j_InitUIntMap
1BFA30:  ADD             R0, R4, #0x84
1BFA34:  MOV             R1, #0xFFFFFFFF
1BFA38:  BL              j_InitUIntMap
1BFA3C:  MOV             R9, R4
1BFA40:  MOV             R0, #0x400
1BFA44:  STR             R7, [R9,#0x14]!
1BFA48:  MOV             R8, R9
1BFA4C:  MOV             R7, R9
1BFA50:  STR             R0, [R8,#-4]!
1BFA54:  MOVW            R0, #0xAC44
1BFA58:  STR             R0, [R7,#-8]!
1BFA5C:  LDR             R0, =(aFrequency - 0x1BFA6C); "frequency" ...
1BFA60:  MOV             R2, R7
1BFA64:  ADD             R1, PC, R0; "frequency"
1BFA68:  MOV             R0, #0
1BFA6C:  BL              j_ConfigValueUInt
1BFA70:  CMP             R0, #0
1BFA74:  ADD             R2, SP, #0x40+s1
1BFA78:  LDRNE           R0, [R4,#0xB4]
1BFA7C:  ORRNE           R0, R0, #2
1BFA80:  STRNE           R0, [R4,#0xB4]
1BFA84:  LDR             R0, [R7]
1BFA88:  CMP             R0, #0x1F40
1BFA8C:  MOVLS           R0, #0x1F40
1BFA90:  STR             R0, [R7]
1BFA94:  ADR             R0, aAlFormatStereo; "AL_FORMAT_STEREO32"
1BFA98:  STR             R0, [SP,#0x40+s1]
1BFA9C:  ADR             R1, aFormat; "format"
1BFAA0:  MOV             R0, #0
1BFAA4:  MOV             R7, #0
1BFAA8:  BL              j_ConfigValueStr
1BFAAC:  CMP             R0, #0
1BFAB0:  LDR             R10, [SP,#0x40+s1]
1BFAB4:  LDRNE           R0, [R4,#0xB4]
1BFAB8:  ORRNE           R0, R0, #4
1BFABC:  STRNE           R0, [R4,#0xB4]
1BFAC0:  LDR             R0, =(aAlFormatMono32 - 0x1BFACC); "AL_FORMAT_MONO32" ...
1BFAC4:  ADD             R1, PC, R0; "AL_FORMAT_MONO32"
1BFAC8:  MOV             R0, R10; s1
1BFACC:  BL              strcasecmp
1BFAD0:  CMP             R0, #0
1BFAD4:  BEQ             loc_1BFDE0
1BFAD8:  LDR             R0, =(aAlFormatMono32 - 0x1BFAE4); "AL_FORMAT_MONO32" ...
1BFADC:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFAE0:  ADD             R1, R0, #0x28 ; '('; s2
1BFAE4:  MOV             R0, R10; s1
1BFAE8:  BL              strcasecmp
1BFAEC:  CMP             R0, #0
1BFAF0:  BEQ             loc_1BFD40
1BFAF4:  LDR             R0, =(aAlFormatMono32 - 0x1BFB00); "AL_FORMAT_MONO32" ...
1BFAF8:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFAFC:  ADD             R1, R0, #0x50 ; 'P'; s2
1BFB00:  MOV             R0, R10; s1
1BFB04:  BL              strcasecmp
1BFB08:  CMP             R0, #0
1BFB0C:  BEQ             loc_1BFD48
1BFB10:  LDR             R0, =(aAlFormatMono32 - 0x1BFB1C); "AL_FORMAT_MONO32" ...
1BFB14:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFB18:  ADD             R1, R0, #0x78 ; 'x'; s2
1BFB1C:  MOV             R0, R10; s1
1BFB20:  BL              strcasecmp
1BFB24:  CMP             R0, #0
1BFB28:  BEQ             loc_1BFD50
1BFB2C:  LDR             R0, =(aAlFormatMono32 - 0x1BFB38); "AL_FORMAT_MONO32" ...
1BFB30:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFB34:  ADD             R1, R0, #0xA0; s2
1BFB38:  MOV             R0, R10; s1
1BFB3C:  BL              strcasecmp
1BFB40:  CMP             R0, #0
1BFB44:  BEQ             loc_1BFD58
1BFB48:  LDR             R0, =(aAlFormatMono32 - 0x1BFB54); "AL_FORMAT_MONO32" ...
1BFB4C:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFB50:  ADD             R1, R0, #0xC8; s2
1BFB54:  MOV             R0, R10; s1
1BFB58:  BL              strcasecmp
1BFB5C:  CMP             R0, #0
1BFB60:  BEQ             loc_1BFD60
1BFB64:  LDR             R0, =(aAlFormatMono32 - 0x1BFB70); "AL_FORMAT_MONO32" ...
1BFB68:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFB6C:  ADD             R1, R0, #0xF0; s2
1BFB70:  MOV             R0, R10; s1
1BFB74:  BL              strcasecmp
1BFB78:  CMP             R0, #0
1BFB7C:  BEQ             loc_1BFD68
1BFB80:  LDR             R0, =(aAlFormatMono32 - 0x1BFB8C); "AL_FORMAT_MONO32" ...
1BFB84:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFB88:  ADD             R1, R0, #0x118; s2
1BFB8C:  MOV             R0, R10; s1
1BFB90:  BL              strcasecmp
1BFB94:  CMP             R0, #0
1BFB98:  BEQ             loc_1BFD70
1BFB9C:  LDR             R0, =(aAlFormatMono32 - 0x1BFBA8); "AL_FORMAT_MONO32" ...
1BFBA0:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFBA4:  ADD             R1, R0, #0x140; s2
1BFBA8:  MOV             R0, R10; s1
1BFBAC:  BL              strcasecmp
1BFBB0:  CMP             R0, #0
1BFBB4:  BEQ             loc_1BFD78
1BFBB8:  LDR             R0, =(aAlFormatMono32 - 0x1BFBC4); "AL_FORMAT_MONO32" ...
1BFBBC:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFBC0:  ADD             R1, R0, #0x168; s2
1BFBC4:  MOV             R0, R10; s1
1BFBC8:  BL              strcasecmp
1BFBCC:  CMP             R0, #0
1BFBD0:  BEQ             loc_1BFD80
1BFBD4:  LDR             R0, =(aAlFormatMono32 - 0x1BFBE0); "AL_FORMAT_MONO32" ...
1BFBD8:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFBDC:  ADD             R1, R0, #0x190; s2
1BFBE0:  MOV             R0, R10; s1
1BFBE4:  BL              strcasecmp
1BFBE8:  CMP             R0, #0
1BFBEC:  BEQ             loc_1BFD88
1BFBF0:  LDR             R0, =(aAlFormatMono32 - 0x1BFBFC); "AL_FORMAT_MONO32" ...
1BFBF4:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFBF8:  ADD             R1, R0, #0x1B8; s2
1BFBFC:  MOV             R0, R10; s1
1BFC00:  BL              strcasecmp
1BFC04:  CMP             R0, #0
1BFC08:  BEQ             loc_1BFD90
1BFC0C:  LDR             R0, =(aAlFormatMono32 - 0x1BFC18); "AL_FORMAT_MONO32" ...
1BFC10:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFC14:  ADD             R1, R0, #0x1E0; s2
1BFC18:  MOV             R0, R10; s1
1BFC1C:  BL              strcasecmp
1BFC20:  CMP             R0, #0
1BFC24:  BEQ             loc_1BFD98
1BFC28:  LDR             R0, =(aAlFormatMono32 - 0x1BFC34); "AL_FORMAT_MONO32" ...
1BFC2C:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFC30:  ADD             R1, R0, #0x208; s2
1BFC34:  MOV             R0, R10; s1
1BFC38:  BL              strcasecmp
1BFC3C:  CMP             R0, #0
1BFC40:  BEQ             loc_1BFDA0
1BFC44:  LDR             R0, =(aAlFormatMono32 - 0x1BFC50); "AL_FORMAT_MONO32" ...
1BFC48:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFC4C:  ADD             R1, R0, #0x230; s2
1BFC50:  MOV             R0, R10; s1
1BFC54:  BL              strcasecmp
1BFC58:  CMP             R0, #0
1BFC5C:  BEQ             loc_1BFDA8
1BFC60:  LDR             R0, =(aAlFormatMono32 - 0x1BFC6C); "AL_FORMAT_MONO32" ...
1BFC64:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFC68:  ADD             R1, R0, #0x258; s2
1BFC6C:  MOV             R0, R10; s1
1BFC70:  BL              strcasecmp
1BFC74:  CMP             R0, #0
1BFC78:  BEQ             loc_1BFDB0
1BFC7C:  LDR             R0, =(aAlFormatMono32 - 0x1BFC88); "AL_FORMAT_MONO32" ...
1BFC80:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFC84:  ADD             R1, R0, #0x280; s2
1BFC88:  MOV             R0, R10; s1
1BFC8C:  BL              strcasecmp
1BFC90:  CMP             R0, #0
1BFC94:  BEQ             loc_1BFDB8
1BFC98:  LDR             R0, =(aAlFormatMono32 - 0x1BFCA4); "AL_FORMAT_MONO32" ...
1BFC9C:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFCA0:  ADD             R1, R0, #0x2A8; s2
1BFCA4:  MOV             R0, R10; s1
1BFCA8:  BL              strcasecmp
1BFCAC:  CMP             R0, #0
1BFCB0:  BEQ             loc_1BFDDC
1BFCB4:  LDR             R0, =(LogLevel_ptr - 0x1BFCC0)
1BFCB8:  LDR             R0, [PC,R0]; LogLevel
1BFCBC:  LDR             R0, [R0]
1BFCC0:  CMP             R0, #0
1BFCC4:  BEQ             loc_1BFCD8
1BFCC8:  ADR             R0, aGetformatfroms; "GetFormatFromString"
1BFCCC:  ADR             R1, aUnknownFormatS; "Unknown format: \"%s\"\n"
1BFCD0:  MOV             R2, R10
1BFCD4:  BL              j_al_print
1BFCD8:  MOVW            R0, #0x1501
1BFCDC:  STR             R0, [R4,#0x18]
1BFCE0:  MOVW            R0, #0x1402
1BFCE4:  B               loc_1BFDFC
1BFCE8:  LDR             R0, =(byte_382798 - 0x1BFCF4)
1BFCEC:  LDRB            R0, [PC,R0]; byte_382798
1BFCF0:  CMP             R0, #0
1BFCF4:  BEQ             loc_1BFD00
1BFCF8:  MOV             R0, #5; sig
1BFCFC:  BL              raise
1BFD00:  LDR             R0, =(dword_38283C - 0x1BFD14)
1BFD04:  MOVW            R1, #0xA004
1BFD08:  MOV             R4, #0
1BFD0C:  STR             R1, [PC,R0]; dword_38283C
1BFD10:  B               loc_1C0004
1BFD14:  LDR             R0, =(byte_382798 - 0x1BFD20)
1BFD18:  LDRB            R0, [PC,R0]; byte_382798
1BFD1C:  CMP             R0, #0
1BFD20:  BEQ             loc_1BFD2C
1BFD24:  MOV             R0, #5; sig
1BFD28:  BL              raise
1BFD2C:  LDR             R0, =(dword_38283C - 0x1BFD40)
1BFD30:  MOVW            R1, #0xA005
1BFD34:  MOV             R4, #0
1BFD38:  STR             R1, [PC,R0]; dword_38283C
1BFD3C:  B               loc_1C0004
1BFD40:  MOV             R7, #1
1BFD44:  B               loc_1BFDE0
1BFD48:  MOV             R7, #2
1BFD4C:  B               loc_1BFDE0
1BFD50:  MOV             R7, #3
1BFD54:  B               loc_1BFDE0
1BFD58:  MOV             R7, #4
1BFD5C:  B               loc_1BFDE0
1BFD60:  MOV             R7, #5
1BFD64:  B               loc_1BFDE0
1BFD68:  MOV             R7, #6
1BFD6C:  B               loc_1BFDE0
1BFD70:  MOV             R7, #7
1BFD74:  B               loc_1BFDE0
1BFD78:  MOV             R7, #8
1BFD7C:  B               loc_1BFDE0
1BFD80:  MOV             R7, #9
1BFD84:  B               loc_1BFDE0
1BFD88:  MOV             R7, #0xA
1BFD8C:  B               loc_1BFDE0
1BFD90:  MOV             R7, #0xB
1BFD94:  B               loc_1BFDE0
1BFD98:  MOV             R7, #0xC
1BFD9C:  B               loc_1BFDE0
1BFDA0:  MOV             R7, #0xD
1BFDA4:  B               loc_1BFDE0
1BFDA8:  MOV             R7, #0xE
1BFDAC:  B               loc_1BFDE0
1BFDB0:  MOV             R7, #0xF
1BFDB4:  B               loc_1BFDE0
1BFDB8:  MOV             R7, #0x10
1BFDBC:  B               loc_1BFDE0
1BFDC0:  DCB "AL_FORMAT_STEREO32",0
1BFDD3:  DCB 0
1BFDD4:  DCB "format",0
1BFDDB:  DCB 0
1BFDDC:  MOV             R7, #0x11
1BFDE0:  LDR             R0, =(aAlFormatMono32 - 0x1BFDF0); "AL_FORMAT_MONO32" ...
1BFDE4:  ADD             R1, R7, R7,LSL#2
1BFDE8:  ADD             R0, PC, R0; "AL_FORMAT_MONO32"
1BFDEC:  ADD             R0, R0, R1,LSL#3
1BFDF0:  LDR             R1, [R0,#0x20]
1BFDF4:  LDR             R0, [R0,#0x24]
1BFDF8:  STR             R1, [R4,#0x18]
1BFDFC:  STR             R0, [R4,#0x1C]
1BFE00:  ADR             R1, aPeriods; "periods"
1BFE04:  MOV             R0, #0
1BFE08:  MOV             R2, R9
1BFE0C:  BL              j_ConfigValueUInt
1BFE10:  LDR             R0, [R4,#0x14]
1BFE14:  MOVW            R7, #:lower16:(aZnkst6Ndk14Fs1_14+0x19); "ystem4path5beginEv"
1BFE18:  MOV             R2, R8
1BFE1C:  MOVT            R7, #:upper16:(aZnkst6Ndk14Fs1_14+0x19); "ystem4path5beginEv"
1BFE20:  CMP             R0, #1
1BFE24:  MOVLS           R0, #4
1BFE28:  STRLS           R0, [R9]
1BFE2C:  ADR             R1, aPeriodSize; "period_size"
1BFE30:  MOV             R0, #0
1BFE34:  BL              j_ConfigValueUInt
1BFE38:  LDR             R0, [R8]
1BFE3C:  MOV             R2, R6
1BFE40:  CMP             R0, #0
1BFE44:  MOVEQ           R0, #0x400
1BFE48:  STREQ           R0, [R8]
1BFE4C:  LDR             R0, =(aSources - 0x1BFE58); "sources" ...
1BFE50:  ADD             R1, PC, R0; "sources"
1BFE54:  MOV             R0, #0
1BFE58:  BL              j_ConfigValueUInt
1BFE5C:  LDR             R0, [R6]
1BFE60:  CMP             R0, #0
1BFE64:  MOVEQ           R0, #0x100
1BFE68:  STREQ           R0, [R6]
1BFE6C:  LDR             R0, =(aSlots - 0x1BFE7C); "slots" ...
1BFE70:  LDR             R6, [SP,#0x40+var_38]
1BFE74:  ADD             R1, PC, R0; "slots"
1BFE78:  MOV             R0, #0
1BFE7C:  MOV             R2, R6
1BFE80:  BL              j_ConfigValueUInt
1BFE84:  LDR             R0, [R6]
1BFE88:  CMP             R0, #0
1BFE8C:  MOVEQ           R0, #4
1BFE90:  STREQ           R0, [R6]
1BFE94:  LDR             R0, =(aSends - 0x1BFEA4); "sends" ...
1BFE98:  LDR             R6, [SP,#0x40+var_34]
1BFE9C:  ADD             R1, PC, R0; "sends"
1BFEA0:  MOV             R0, #0
1BFEA4:  MOV             R2, R6
1BFEA8:  BL              j_ConfigValueUInt
1BFEAC:  LDR             R0, [R6]
1BFEB0:  LDR             R2, [SP,#0x40+var_30]
1BFEB4:  CMP             R0, #5
1BFEB8:  MOVCS           R0, #4
1BFEBC:  STRCS           R0, [R6]
1BFEC0:  MOV             R6, #0
1BFEC4:  LDR             R0, =(aCfLevel - 0x1BFED0); "cf_level" ...
1BFEC8:  ADD             R1, PC, R0; "cf_level"
1BFECC:  MOV             R0, #0
1BFED0:  BL              j_ConfigValueInt
1BFED4:  LDR             R0, [R4,#0x28]
1BFED8:  MOV             R1, #1
1BFEDC:  SUB             R0, R0, #1
1BFEE0:  STR             R0, [R4,#0x30]
1BFEE4:  LDR             R0, [SP,#0x40+var_2C]
1BFEE8:  STR             R1, [R4,#0x34]
1BFEEC:  ADD             R0, R0, #0x14
1BFEF0:  STR             R0, [R4,R7]
1BFEF4:  BL              j_InitEffectSlot
1BFEF8:  CMP             R0, #0
1BFEFC:  LDR             R0, =(unk_3827A0 - 0x1BFF0C)
1BFF00:  STRNE           R6, [R4,R7]
1BFF04:  ADD             R6, PC, R0; unk_3827A0
1BFF08:  MOV             R0, R6; mutex
1BFF0C:  BL              j_EnterCriticalSection
1BFF10:  LDR             R0, [SP,#0x40+var_28]
1BFF14:  MOV             R1, R5
1BFF18:  LDR             R0, [R4,R0]
1BFF1C:  LDR             R2, [R0]
1BFF20:  MOV             R0, R4
1BFF24:  BLX             R2
1BFF28:  MOV             R5, R0
1BFF2C:  MOV             R0, R6; mutex
1BFF30:  BL              j_LeaveCriticalSection
1BFF34:  CMP             R5, #0
1BFF38:  BEQ             loc_1BFF74
1BFF3C:  LDR             R0, [SP,#0x40+mutex]; mutex
1BFF40:  BL              j_DeleteCriticalSection
1BFF44:  MOV             R0, R4; ptr
1BFF48:  BL              free
1BFF4C:  LDR             R0, =(byte_382798 - 0x1BFF58)
1BFF50:  LDRB            R0, [PC,R0]; byte_382798
1BFF54:  CMP             R0, #0
1BFF58:  BEQ             loc_1BFF64
1BFF5C:  MOV             R0, #5; sig
1BFF60:  BL              raise
1BFF64:  LDR             R0, =(dword_38283C - 0x1BFF74)
1BFF68:  MOV             R4, #0
1BFF6C:  STR             R5, [PC,R0]; dword_38283C
1BFF70:  B               loc_1C0004
1BFF74:  LDR             R1, =(dword_382838 - 0x1BFF8C)
1BFF78:  ADD             R0, R7, #0x10
1BFF7C:  LDR             R2, =(dword_382838 - 0x1BFF90)
1BFF80:  LDR             R3, =(dword_382838 - 0x1BFF94)
1BFF84:  ADD             R1, PC, R1; dword_382838
1BFF88:  ADD             R2, PC, R2; dword_382838
1BFF8C:  ADD             R3, PC, R3; dword_382838
1BFF90:  B               loc_1BFF9C
1BFF94:  CLREX
1BFF98:  DMB             ISH
1BFF9C:  LDR             R7, [R1]
1BFFA0:  STR             R7, [R4,R0]
1BFFA4:  LDR             R7, [R4,R0]
1BFFA8:  LDREX           R6, [R1]
1BFFAC:  CMP             R6, R7
1BFFB0:  BNE             loc_1BFF94
1BFFB4:  DMB             ISH
1BFFB8:  STREX           R6, R4, [R2]
1BFFBC:  CMP             R6, #0
1BFFC0:  BEQ             loc_1BFFD4
1BFFC4:  LDREX           R6, [R3]
1BFFC8:  CMP             R6, R7
1BFFCC:  BEQ             loc_1BFFB8
1BFFD0:  B               loc_1BFF94
1BFFD4:  LDR             R0, =(LogLevel_ptr - 0x1BFFE4)
1BFFD8:  DMB             ISH
1BFFDC:  LDR             R0, [PC,R0]; LogLevel
1BFFE0:  LDR             R0, [R0]
1BFFE4:  CMP             R0, #2
1BFFE8:  BLS             loc_1C0004
1BFFEC:  LDR             R0, =(aAlcopendevice_0 - 0x1C0000); "alcOpenDevice" ...
1BFFF0:  MOV             R2, R4
1BFFF4:  LDR             R1, =(aCreatedDeviceP - 0x1C0004); "Created device %p\n" ...
1BFFF8:  ADD             R0, PC, R0; "alcOpenDevice"
1BFFFC:  ADD             R1, PC, R1; "Created device %p\n"
1C0000:  BL              j_al_print
1C0004:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C0014)
1C0008:  LDR             R1, [SP,#0x40+var_20]
1C000C:  LDR             R0, [PC,R0]; __stack_chk_guard
1C0010:  LDR             R0, [R0]
1C0014:  SUBS            R0, R0, R1
1C0018:  MOVEQ           R0, R4
1C001C:  SUBEQ           SP, R11, #0x1C
1C0020:  POPEQ           {R4-R11,PC}
1C0024:  BL              __stack_chk_fail
