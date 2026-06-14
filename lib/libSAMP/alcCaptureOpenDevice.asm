; =========================================================
; Game Engine Function: alcCaptureOpenDevice
; Address            : 0x1BB6E8 - 0x1BBB30
; =========================================================

1BB6E8:  PUSH            {R4-R11,LR}
1BB6EC:  ADD             R11, SP, #0x1C
1BB6F0:  SUB             SP, SP, #4
1BB6F4:  MOV             R6, R1
1BB6F8:  LDR             R1, =(sub_1BBB90 - 0x1BB70C)
1BB6FC:  MOV             R5, R0
1BB700:  LDR             R0, =(unk_382834 - 0x1BB714)
1BB704:  ADD             R1, PC, R1; sub_1BBB90 ; init_routine
1BB708:  MOV             R9, R3
1BB70C:  ADD             R0, PC, R0; unk_382834 ; once_control
1BB710:  MOV             R7, R2
1BB714:  BL              pthread_once
1BB718:  LDR             R0, =(dword_3827E0 - 0x1BB724)
1BB71C:  LDR             R0, [PC,R0]; dword_3827E0
1BB720:  CMP             R0, #0
1BB724:  BEQ             loc_1BB77C
1BB728:  CMP             R9, #0
1BB72C:  BLE             loc_1BB89C
1BB730:  CMP             R5, #0
1BB734:  MOVW            R10, #:lower16:(aZnkst6Ndk14Fs1_14+0x21); "th5beginEv"
1BB738:  LDRBNE          R0, [R5]
1BB73C:  MOVT            R10, #:upper16:(aZnkst6Ndk14Fs1_14+0x21); "th5beginEv"
1BB740:  CMPNE           R0, #0
1BB744:  BEQ             loc_1BB7A8
1BB748:  LDR             R0, =(aOpenalSoft - 0x1BB754); "openal soft" ...
1BB74C:  ADD             R1, PC, R0; "openal soft"
1BB750:  MOV             R0, R5; s1
1BB754:  BL              strcasecmp
1BB758:  CMP             R0, #0
1BB75C:  BEQ             loc_1BB7A8
1BB760:  LDR             R0, =(aOpenalSoft_0 - 0x1BB76C); "openal-soft" ...
1BB764:  ADD             R1, PC, R0; "openal-soft"
1BB768:  MOV             R0, R5; s1
1BB76C:  BL              strcasecmp
1BB770:  CMP             R0, #0
1BB774:  MOVEQ           R5, #0
1BB778:  B               loc_1BB7AC
1BB77C:  LDR             R0, =(byte_382798 - 0x1BB788)
1BB780:  LDRB            R0, [PC,R0]; byte_382798
1BB784:  CMP             R0, #0
1BB788:  BEQ             loc_1BB794
1BB78C:  MOV             R0, #5; sig
1BB790:  BL              raise
1BB794:  LDR             R0, =(dword_38283C - 0x1BB7A8)
1BB798:  MOVW            R1, #0xA004
1BB79C:  MOV             R4, #0
1BB7A0:  STR             R1, [PC,R0]; dword_38283C
1BB7A4:  B               loc_1BBB24
1BB7A8:  MOV             R5, #0
1BB7AC:  ADD             R1, R10, #0xC; size
1BB7B0:  MOV             R0, #1; nmemb
1BB7B4:  MOV             R8, #1
1BB7B8:  BL              calloc
1BB7BC:  MOV             R4, R0
1BB7C0:  CMP             R4, #0
1BB7C4:  BEQ             loc_1BB8C8
1BB7C8:  LDR             R0, =(dword_3827E0 - 0x1BB7D4)
1BB7CC:  ADD             R0, PC, R0; dword_3827E0
1BB7D0:  ADD             R0, R0, #0x10
1BB7D4:  STR             R0, [R4,R10]
1BB7D8:  MOVW            R0, #0x101
1BB7DC:  STR             R8, [R4]
1BB7E0:  ADD             R8, R4, #8
1BB7E4:  STRH            R0, [R4,#4]
1BB7E8:  MOV             R0, R8
1BB7EC:  BL              j_InitializeCriticalSection
1BB7F0:  ADD             R0, R4, #0x3C ; '<'
1BB7F4:  MOV             R1, #0xFFFFFFFF
1BB7F8:  BL              j_InitUIntMap
1BB7FC:  ADD             R0, R4, #0x60 ; '`'
1BB800:  MOV             R1, #0xFFFFFFFF
1BB804:  BL              j_InitUIntMap
1BB808:  ADD             R0, R4, #0x84
1BB80C:  MOV             R1, #0xFFFFFFFF
1BB810:  BL              j_InitUIntMap
1BB814:  MOV             R0, #0
1BB818:  STR             R0, [R4,#0x20]
1BB81C:  LDR             R1, [R4,#0xB4]
1BB820:  STR             R6, [R4,#0xC]
1BB824:  ORR             R1, R1, #6
1BB828:  STR             R1, [R4,#0xB4]
1BB82C:  MOVW            R1, #0x1203
1BB830:  CMP             R7, R1
1BB834:  BLE             loc_1BB8F4
1BB838:  MOVW            R0, #0x1204
1BB83C:  SUB             R0, R7, R0
1BB840:  CMP             R0, #0xE; switch 15 cases
1BB844:  BHI             def_1BB854; jumptable 001BB854 default case
1BB848:  ADR             R1, jpt_1BB854
1BB84C:  MOV             R0, R0,LSL#2
1BB850:  LDR             R0, [R0,R1]
1BB854:  ADD             PC, R0, R1; switch jump
1BB858:  DCD loc_1BB894 - 0x1BB858; jump table for switch statement
1BB85C:  DCD loc_1BB98C - 0x1BB858; jumptable 001BB854 case 1
1BB860:  DCD loc_1BB994 - 0x1BB858; jumptable 001BB854 case 2
1BB864:  DCD def_1BB90C - 0x1BB858; jumptable 001BB854 cases 3-5
1BB868:  DCD def_1BB90C - 0x1BB858; jumptable 001BB854 cases 3-5
1BB86C:  DCD def_1BB90C - 0x1BB858; jumptable 001BB854 cases 3-5
1BB870:  DCD loc_1BB99C - 0x1BB858; jumptable 001BB854 case 6
1BB874:  DCD loc_1BB9A4 - 0x1BB858; jumptable 001BB854 case 7
1BB878:  DCD loc_1BB9AC - 0x1BB858; jumptable 001BB854 case 8
1BB87C:  DCD loc_1BB9B4 - 0x1BB858; jumptable 001BB854 case 9
1BB880:  DCD loc_1BB9BC - 0x1BB858; jumptable 001BB854 case 10
1BB884:  DCD loc_1BB9C4 - 0x1BB858; jumptable 001BB854 case 11
1BB888:  DCD loc_1BB9CC - 0x1BB858; jumptable 001BB854 case 12
1BB88C:  DCD loc_1BB9D4 - 0x1BB858; jumptable 001BB854 case 13
1BB890:  DCD loc_1BB9DC - 0x1BB858; jumptable 001BB854 case 14
1BB894:  MOV             R0, #6; jumptable 001BB854 case 0
1BB898:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB89C:  LDR             R0, =(byte_382798 - 0x1BB8A8)
1BB8A0:  LDRB            R0, [PC,R0]; byte_382798
1BB8A4:  CMP             R0, #0
1BB8A8:  BEQ             loc_1BB8B4
1BB8AC:  MOV             R0, #5; sig
1BB8B0:  BL              raise
1BB8B4:  LDR             R0, =(dword_38283C - 0x1BB8C8)
1BB8B8:  MOVW            R1, #0xA004
1BB8BC:  MOV             R4, #0
1BB8C0:  STR             R1, [PC,R0]; dword_38283C
1BB8C4:  B               loc_1BBB24
1BB8C8:  LDR             R0, =(byte_382798 - 0x1BB8D4)
1BB8CC:  LDRB            R0, [PC,R0]; byte_382798
1BB8D0:  CMP             R0, #0
1BB8D4:  BEQ             loc_1BB8E0
1BB8D8:  MOV             R0, #5; sig
1BB8DC:  BL              raise
1BB8E0:  LDR             R0, =(dword_38283C - 0x1BB8F4)
1BB8E4:  MOVW            R1, #0xA005
1BB8E8:  MOV             R4, #0
1BB8EC:  STR             R1, [PC,R0]; dword_38283C
1BB8F0:  B               loc_1BBB24
1BB8F4:  SUB             R1, R7, #0x1100; switch 4 cases
1BB8F8:  CMP             R1, #3
1BB8FC:  BHI             def_1BB90C; jumptable 001BB854 cases 3-5
1BB900:  ADR             R2, jpt_1BB90C
1BB904:  MOV             R1, R1,LSL#2
1BB908:  LDR             R1, [R1,R2]
1BB90C:  ADD             PC, R1, R2; switch jump
1BB910:  DCD loc_1BB9F8 - 0x1BB910; jump table for switch statement
1BB914:  DCD loc_1BB920 - 0x1BB910; jumptable 001BB90C case 4353
1BB918:  DCD loc_1BB9E4 - 0x1BB910; jumptable 001BB90C case 4354
1BB91C:  DCD loc_1BB9EC - 0x1BB910; jumptable 001BB90C case 4355
1BB920:  MOV             R0, #1; jumptable 001BB90C case 4353
1BB924:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB928:  MOV             R0, #0x10010; jumptable 001BB854 default case
1BB930:  CMP             R7, R0
1BB934:  BEQ             loc_1BB9F4
1BB938:  MOV             R0, #0x10011
1BB940:  CMP             R7, R0
1BB944:  BNE             def_1BB90C; jumptable 001BB854 cases 3-5
1BB948:  MOV             R0, #5
1BB94C:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB950:  MOV             R0, R8; jumptable 001BB854 cases 3-5
1BB954:  BL              j_DeleteCriticalSection
1BB958:  MOV             R0, R4; ptr
1BB95C:  BL              free
1BB960:  LDR             R0, =(byte_382798 - 0x1BB96C)
1BB964:  LDRB            R0, [PC,R0]; byte_382798
1BB968:  CMP             R0, #0
1BB96C:  BEQ             loc_1BB978
1BB970:  MOV             R0, #5; sig
1BB974:  BL              raise
1BB978:  LDR             R0, =(dword_38283C - 0x1BB98C)
1BB97C:  MOVW            R1, #0xA003
1BB980:  MOV             R4, #0
1BB984:  STR             R1, [PC,R0]; dword_38283C
1BB988:  B               loc_1BBB24
1BB98C:  MOV             R0, #7; jumptable 001BB854 case 1
1BB990:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB994:  MOV             R0, #8; jumptable 001BB854 case 2
1BB998:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB99C:  MOV             R0, #9; jumptable 001BB854 case 6
1BB9A0:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB9A4:  MOV             R0, #0xA; jumptable 001BB854 case 7
1BB9A8:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB9AC:  MOV             R0, #0xB; jumptable 001BB854 case 8
1BB9B0:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB9B4:  MOV             R0, #0xC; jumptable 001BB854 case 9
1BB9B8:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB9BC:  MOV             R0, #0xD; jumptable 001BB854 case 10
1BB9C0:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB9C4:  MOV             R0, #0xE; jumptable 001BB854 case 11
1BB9C8:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB9CC:  MOV             R0, #0xF; jumptable 001BB854 case 12
1BB9D0:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB9D4:  MOV             R0, #0x10; jumptable 001BB854 case 13
1BB9D8:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB9DC:  MOV             R0, #0x11; jumptable 001BB854 case 14
1BB9E0:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB9E4:  MOV             R0, #3; jumptable 001BB90C case 4354
1BB9E8:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB9EC:  MOV             R0, #4; jumptable 001BB90C case 4355
1BB9F0:  B               loc_1BB9F8; jumptable 001BB90C case 4352
1BB9F4:  MOV             R0, #2
1BB9F8:  LDR             R2, =(unk_C40E4 - 0x1BBA10); jumptable 001BB90C case 4352
1BB9FC:  ADD             R0, R0, R0,LSL#1
1BBA00:  LDR             R1, =(unk_3827A0 - 0x1BBA1C)
1BBA04:  MOV             R3, #1
1BBA08:  ADD             R2, PC, R2; unk_C40E4
1BBA0C:  STR             R9, [R4,#0x10]
1BBA10:  ADD             R0, R2, R0,LSL#2
1BBA14:  ADD             R6, PC, R1; unk_3827A0
1BBA18:  STR             R3, [R4,#0x14]
1BBA1C:  LDR             R2, [R0,#4]
1BBA20:  LDR             R0, [R0,#8]
1BBA24:  STR             R2, [R4,#0x18]
1BBA28:  STR             R0, [R4,#0x1C]
1BBA2C:  MOV             R0, R6; mutex
1BBA30:  BL              j_EnterCriticalSection
1BBA34:  LDR             R0, [R4,R10]
1BBA38:  MOV             R1, R5
1BBA3C:  LDR             R2, [R0,#0x10]
1BBA40:  MOV             R0, R4
1BBA44:  BLX             R2
1BBA48:  MOV             R5, R0
1BBA4C:  MOV             R0, R6; mutex
1BBA50:  BL              j_LeaveCriticalSection
1BBA54:  CMP             R5, #0
1BBA58:  BEQ             loc_1BBA94
1BBA5C:  MOV             R0, R8; mutex
1BBA60:  BL              j_DeleteCriticalSection
1BBA64:  MOV             R0, R4; ptr
1BBA68:  BL              free
1BBA6C:  LDR             R0, =(byte_382798 - 0x1BBA78)
1BBA70:  LDRB            R0, [PC,R0]; byte_382798
1BBA74:  CMP             R0, #0
1BBA78:  BEQ             loc_1BBA84
1BBA7C:  MOV             R0, #5; sig
1BBA80:  BL              raise
1BBA84:  LDR             R0, =(dword_38283C - 0x1BBA94)
1BBA88:  MOV             R4, #0
1BBA8C:  STR             R5, [PC,R0]; dword_38283C
1BBA90:  B               loc_1BBB24
1BBA94:  LDR             R1, =(dword_382838 - 0x1BBAAC)
1BBA98:  ADD             R0, R10, #8
1BBA9C:  LDR             R2, =(dword_382838 - 0x1BBAB0)
1BBAA0:  LDR             R3, =(dword_382838 - 0x1BBAB4)
1BBAA4:  ADD             R1, PC, R1; dword_382838
1BBAA8:  ADD             R2, PC, R2; dword_382838
1BBAAC:  ADD             R3, PC, R3; dword_382838
1BBAB0:  B               loc_1BBABC
1BBAB4:  CLREX
1BBAB8:  DMB             ISH
1BBABC:  LDR             R7, [R1]
1BBAC0:  STR             R7, [R4,R0]
1BBAC4:  LDR             R7, [R4,R0]
1BBAC8:  LDREX           R6, [R1]
1BBACC:  CMP             R6, R7
1BBAD0:  BNE             loc_1BBAB4
1BBAD4:  DMB             ISH
1BBAD8:  STREX           R6, R4, [R2]
1BBADC:  CMP             R6, #0
1BBAE0:  BEQ             loc_1BBAF4
1BBAE4:  LDREX           R6, [R3]
1BBAE8:  CMP             R6, R7
1BBAEC:  BEQ             loc_1BBAD8
1BBAF0:  B               loc_1BBAB4
1BBAF4:  LDR             R0, =(LogLevel_ptr - 0x1BBB04)
1BBAF8:  DMB             ISH
1BBAFC:  LDR             R0, [PC,R0]; LogLevel
1BBB00:  LDR             R0, [R0]
1BBB04:  CMP             R0, #2
1BBB08:  BLS             loc_1BBB24
1BBB0C:  LDR             R0, =(aAlccaptureopen_0 - 0x1BBB20); "alcCaptureOpenDevice" ...
1BBB10:  MOV             R2, R4
1BBB14:  LDR             R1, =(aCreatedDeviceP - 0x1BBB24); "Created device %p\n" ...
1BBB18:  ADD             R0, PC, R0; "alcCaptureOpenDevice"
1BBB1C:  ADD             R1, PC, R1; "Created device %p\n"
1BBB20:  BL              j_al_print
1BBB24:  MOV             R0, R4
1BBB28:  SUB             SP, R11, #0x1C
1BBB2C:  POP             {R4-R11,PC}
