; =========================================================
; Game Engine Function: alcGetIntegerv
; Address            : 0x1BD7BC - 0x1BDCA8
; =========================================================

1BD7BC:  PUSH            {R4-R8,R10,R11,LR}
1BD7C0:  ADD             R11, SP, #0x18
1BD7C4:  MOV             R5, R0
1BD7C8:  MOV             R8, R3
1BD7CC:  MOV             R7, R2
1BD7D0:  MOV             R6, R1
1BD7D4:  CMP             R5, #0
1BD7D8:  BEQ             loc_1BD86C
1BD7DC:  LDR             R0, =(unk_3827A0 - 0x1BD7E8)
1BD7E0:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BD7E4:  BL              j_EnterCriticalSection
1BD7E8:  LDR             R0, =(dword_382838 - 0x1BD7F4)
1BD7EC:  ADD             R1, PC, R0; dword_382838
1BD7F0:  MOV             R0, #0x2895C
1BD7F8:  LDR             R4, [R1]
1BD7FC:  CMP             R4, #0
1BD800:  ADDNE           R1, R4, R0
1BD804:  CMPNE           R4, R5
1BD808:  BNE             loc_1BD7F8
1BD80C:  CMP             R4, #0
1BD810:  BEQ             loc_1BD85C
1BD814:  DMB             ISH
1BD818:  LDREX           R0, [R4]
1BD81C:  ADD             R3, R0, #1
1BD820:  STREX           R0, R3, [R4]
1BD824:  CMP             R0, #0
1BD828:  BNE             loc_1BD818
1BD82C:  LDR             R0, =(LogLevel_ptr - 0x1BD83C)
1BD830:  DMB             ISH
1BD834:  LDR             R0, [PC,R0]; LogLevel
1BD838:  LDR             R0, [R0]
1BD83C:  CMP             R0, #4
1BD840:  BCC             loc_1BD85C
1BD844:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BD858); "ALCdevice_IncRef" ...
1BD848:  MOV             R2, R4
1BD84C:  LDR             R1, =(aPIncreasingRef - 0x1BD85C); "%p increasing refcount to %u\n" ...
1BD850:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BD854:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BD858:  BL              j_al_print
1BD85C:  LDR             R0, =(unk_3827A0 - 0x1BD868)
1BD860:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BD864:  BL              j_LeaveCriticalSection
1BD868:  B               loc_1BD870
1BD86C:  MOV             R4, #0
1BD870:  CMP             R7, #0
1BD874:  CMPNE           R8, #0
1BD878:  BNE             loc_1BD8BC
1BD87C:  LDR             R0, =(byte_382798 - 0x1BD888)
1BD880:  LDRB            R0, [PC,R0]; byte_382798
1BD884:  CMP             R0, #0
1BD888:  BEQ             loc_1BD894
1BD88C:  MOV             R0, #5; sig
1BD890:  BL              raise
1BD894:  LDR             R0, =(dword_38283C - 0x1BD8A8)
1BD898:  CMP             R4, #0
1BD89C:  MOVW            R1, #0xA004
1BD8A0:  ADD             R0, PC, R0; dword_38283C
1BD8A4:  ADDNE           R0, R4, #0x24 ; '$'
1BD8A8:  STR             R1, [R0]
1BD8AC:  BEQ             locret_1BDA34
1BD8B0:  MOV             R0, R4
1BD8B4:  POP             {R4-R8,R10,R11,LR}
1BD8B8:  B               j_ALCdevice_DecRef
1BD8BC:  CMP             R4, #0
1BD8C0:  BEQ             loc_1BD91C
1BD8C4:  LDRB            R0, [R4,#5]
1BD8C8:  CMP             R0, #0
1BD8CC:  BEQ             loc_1BD954
1BD8D0:  MOVW            R0, #0x313
1BD8D4:  CMP             R6, R0
1BD8D8:  BEQ             loc_1BDAEC
1BD8DC:  MOVW            R0, #0x312
1BD8E0:  CMP             R6, R0
1BD8E4:  BNE             loc_1BD9D0
1BD8E8:  ADD             R5, R4, #8
1BD8EC:  MOV             R0, R5; mutex
1BD8F0:  BL              j_EnterCriticalSection
1BD8F4:  MOV             R0, #0x28954
1BD8FC:  LDR             R0, [R4,R0]; "th5beginEv"
1BD900:  LDR             R1, [R0,#0x24]
1BD904:  MOV             R0, R4
1BD908:  BLX             R1
1BD90C:  STR             R0, [R8]
1BD910:  MOV             R0, R5; mutex
1BD914:  BL              j_LeaveCriticalSection
1BD918:  B               loc_1BD8B0
1BD91C:  SUB             R0, R6, #0x1000
1BD920:  CMP             R0, #0x11
1BD924:  BHI             loc_1BD9F4
1BD928:  MOVW            R1, #:lower16:(aZnkst6Ndk18tim_3+0x19); "S_19istreambuf_iteratorIcNS_11char_trai"...
1BD92C:  MOV             R2, #1
1BD930:  MOVT            R1, #:upper16:(aZnkst6Ndk18tim_3+0x19); "S_19istreambuf_iteratorIcNS_11char_trai"...
1BD934:  TST             R1, R2,LSL R0
1BD938:  BNE             loc_1BDA10
1BD93C:  CMP             R0, #0
1BD940:  CMPNE           R0, #1
1BD944:  BNE             loc_1BD9F4
1BD948:  MOV             R0, #1
1BD94C:  STR             R0, [R8]
1BD950:  POP             {R4-R8,R10,R11,PC}
1BD954:  MOVW            R0, #0x198F
1BD958:  CMP             R6, R0
1BD95C:  BGT             loc_1BDA38
1BD960:  SUB             R0, R6, #0x1000; switch 18 cases
1BD964:  CMP             R0, #0x11
1BD968:  BHI             def_1BD978; jumptable 001BD978 default case
1BD96C:  ADR             R1, jpt_1BD978
1BD970:  MOV             R0, R0,LSL#2
1BD974:  LDR             R0, [R0,R1]
1BD978:  ADD             PC, R0, R1; switch jump
1BD97C:  DCD loc_1BDA7C - 0x1BD97C; jump table for switch statement
1BD980:  DCD loc_1BDA7C - 0x1BD97C; jumptable 001BD978 cases 4096,4097
1BD984:  DCD loc_1BD9C4 - 0x1BD97C; jumptable 001BD978 case 4098
1BD988:  DCD loc_1BDB0C - 0x1BD97C; jumptable 001BD978 case 4099
1BD98C:  DCD loc_1BDAF8 - 0x1BD97C; jumptable 001BD978 cases 4100-4102,4106-4111
1BD990:  DCD loc_1BDAF8 - 0x1BD97C; jumptable 001BD978 cases 4100-4102,4106-4111
1BD994:  DCD loc_1BDAF8 - 0x1BD97C; jumptable 001BD978 cases 4100-4102,4106-4111
1BD998:  DCD loc_1BDB38 - 0x1BD97C; jumptable 001BD978 case 4103
1BD99C:  DCD loc_1BDB44 - 0x1BD97C; jumptable 001BD978 case 4104
1BD9A0:  DCD loc_1BDB64 - 0x1BD97C; jumptable 001BD978 case 4105
1BD9A4:  DCD loc_1BDAF8 - 0x1BD97C; jumptable 001BD978 cases 4100-4102,4106-4111
1BD9A8:  DCD loc_1BDAF8 - 0x1BD97C; jumptable 001BD978 cases 4100-4102,4106-4111
1BD9AC:  DCD loc_1BDAF8 - 0x1BD97C; jumptable 001BD978 cases 4100-4102,4106-4111
1BD9B0:  DCD loc_1BDAF8 - 0x1BD97C; jumptable 001BD978 cases 4100-4102,4106-4111
1BD9B4:  DCD loc_1BDAF8 - 0x1BD97C; jumptable 001BD978 cases 4100-4102,4106-4111
1BD9B8:  DCD loc_1BDAF8 - 0x1BD97C; jumptable 001BD978 cases 4100-4102,4106-4111
1BD9BC:  DCD loc_1BDB90 - 0x1BD97C; jumptable 001BD978 case 4112
1BD9C0:  DCD loc_1BDB9C - 0x1BD97C; jumptable 001BD978 case 4113
1BD9C4:  MOV             R0, #0xD; jumptable 001BD978 case 4098
1BD9C8:  STR             R0, [R8]
1BD9CC:  B               loc_1BD8B0
1BD9D0:  LDR             R0, =(byte_382798 - 0x1BD9DC)
1BD9D4:  LDRB            R0, [PC,R0]; byte_382798
1BD9D8:  CMP             R0, #0
1BD9DC:  BEQ             loc_1BD9E8
1BD9E0:  MOV             R0, #5; sig
1BD9E4:  BL              raise
1BD9E8:  MOVW            R0, #0xA003
1BD9EC:  STR             R0, [R4,#0x24]
1BD9F0:  B               loc_1BD8B0
1BD9F4:  MOVW            R0, #0x1990
1BD9F8:  SUB             R0, R6, R0
1BD9FC:  CMP             R0, #2
1BDA00:  BCC             loc_1BDA10
1BDA04:  MOVW            R0, #0x312
1BDA08:  CMP             R6, R0
1BDA0C:  BNE             loc_1BDAB8
1BDA10:  LDR             R0, =(byte_382798 - 0x1BDA1C)
1BDA14:  LDRB            R0, [PC,R0]; byte_382798
1BDA18:  CMP             R0, #0
1BDA1C:  BEQ             loc_1BDA28
1BDA20:  MOV             R0, #5; sig
1BDA24:  BL              raise
1BDA28:  LDR             R0, =(dword_38283C - 0x1BDA38)
1BDA2C:  MOVW            R1, #0xA001
1BDA30:  STR             R1, [PC,R0]; dword_38283C
1BDA34:  POP             {R4-R8,R10,R11,PC}
1BDA38:  CMP             R6, #0x20000
1BDA3C:  BLE             loc_1BDA88
1BDA40:  MOV             R0, #0x20001
1BDA48:  CMP             R6, R0
1BDA4C:  BEQ             loc_1BDA7C; jumptable 001BD978 cases 4096,4097
1BDA50:  MOV             R0, #0x20002
1BDA58:  CMP             R6, R0
1BDA5C:  BEQ             loc_1BDB84
1BDA60:  MOV             R0, #0x20003
1BDA68:  CMP             R6, R0
1BDA6C:  BNE             loc_1BDAF8; jumptable 001BD978 cases 4100-4102,4106-4111
1BDA70:  LDR             R0, [R4,#0x38]
1BDA74:  STR             R0, [R8]
1BDA78:  B               loc_1BD8B0
1BDA7C:  MOV             R0, #1; jumptable 001BD978 cases 4096,4097
1BDA80:  STR             R0, [R8]
1BDA84:  B               loc_1BD8B0
1BDA88:  MOVW            R0, #0x1990
1BDA8C:  CMP             R6, R0
1BDA90:  BEQ             loc_1BDBA8
1BDA94:  MOVW            R0, #0x1991
1BDA98:  CMP             R6, R0
1BDA9C:  BNE             loc_1BDAF8; jumptable 001BD978 cases 4100-4102,4106-4111
1BDAA0:  LDRB            R0, [R4,#6]
1BDAA4:  CMP             R0, #0
1BDAA8:  BEQ             loc_1BDBF4
1BDAAC:  LDR             R0, [R4,#0x1C]
1BDAB0:  STR             R0, [R8]
1BDAB4:  B               loc_1BD8B0
1BDAB8:  LDR             R0, =(byte_382798 - 0x1BDAC4)
1BDABC:  LDRB            R0, [PC,R0]; byte_382798
1BDAC0:  CMP             R0, #0
1BDAC4:  BEQ             loc_1BDAD0
1BDAC8:  MOV             R0, #5; sig
1BDACC:  BL              raise
1BDAD0:  LDR             R0, =(dword_38283C - 0x1BDAE0)
1BDAD4:  MOVW            R1, #0xA003
1BDAD8:  STR             R1, [PC,R0]; dword_38283C
1BDADC:  POP             {R4-R8,R10,R11,PC}
1BDAE0:  MOVW            R0, #0x313; jumptable 001BD978 default case
1BDAE4:  CMP             R6, R0
1BDAE8:  BNE             loc_1BDAF8; jumptable 001BD978 cases 4100-4102,4106-4111
1BDAEC:  LDRB            R0, [R4,#4]
1BDAF0:  STR             R0, [R8]
1BDAF4:  B               loc_1BD8B0
1BDAF8:  LDR             R0, =(byte_382798 - 0x1BDB04); jumptable 001BD978 cases 4100-4102,4106-4111
1BDAFC:  LDRB            R0, [PC,R0]; byte_382798
1BDB00:  CMP             R0, #0
1BDB04:  BNE             loc_1BD9E0
1BDB08:  B               loc_1BD9E8
1BDB0C:  CMP             R7, #0xC; jumptable 001BD978 case 4099
1BDB10:  BGT             loc_1BDBC0
1BDB14:  LDR             R0, =(byte_382798 - 0x1BDB20)
1BDB18:  LDRB            R0, [PC,R0]; byte_382798
1BDB1C:  CMP             R0, #0
1BDB20:  BEQ             loc_1BDB2C
1BDB24:  MOV             R0, #5; sig
1BDB28:  BL              raise
1BDB2C:  MOVW            R0, #0xA004
1BDB30:  STR             R0, [R4,#0x24]
1BDB34:  B               loc_1BD8B0
1BDB38:  LDR             R0, [R4,#0xC]; jumptable 001BD978 case 4103
1BDB3C:  STR             R0, [R8]
1BDB40:  B               loc_1BD8B0
1BDB44:  LDRB            R0, [R4,#6]; jumptable 001BD978 case 4104
1BDB48:  CMP             R0, #0
1BDB4C:  BEQ             loc_1BDC08
1BDB50:  LDR             R0, =(byte_382798 - 0x1BDB5C)
1BDB54:  LDRB            R0, [PC,R0]; byte_382798
1BDB58:  CMP             R0, #0
1BDB5C:  BNE             loc_1BDC2C
1BDB60:  B               loc_1BDC34
1BDB64:  LDRB            R0, [R4,#6]; jumptable 001BD978 case 4105
1BDB68:  CMP             R0, #0
1BDB6C:  BEQ             loc_1BDB84
1BDB70:  LDR             R0, =(byte_382798 - 0x1BDB7C)
1BDB74:  LDRB            R0, [PC,R0]; byte_382798
1BDB78:  CMP             R0, #0
1BDB7C:  BNE             loc_1BDC2C
1BDB80:  B               loc_1BDC34
1BDB84:  MOV             R0, #0
1BDB88:  STR             R0, [R8]
1BDB8C:  B               loc_1BD8B0
1BDB90:  LDR             R0, [R4,#0x30]; jumptable 001BD978 case 4112
1BDB94:  STR             R0, [R8]
1BDB98:  B               loc_1BD8B0
1BDB9C:  LDR             R0, [R4,#0x34]; jumptable 001BD978 case 4113
1BDBA0:  STR             R0, [R8]
1BDBA4:  B               loc_1BD8B0
1BDBA8:  LDRB            R0, [R4,#6]
1BDBAC:  CMP             R0, #0
1BDBB0:  BEQ             loc_1BDC1C
1BDBB4:  LDR             R0, [R4,#0x18]
1BDBB8:  STR             R0, [R8]
1BDBBC:  B               loc_1BD8B0
1BDBC0:  MOVW            R0, #0x1007
1BDBC4:  STR             R0, [R8]
1BDBC8:  LDR             R0, [R4,#0xC]
1BDBCC:  STR             R0, [R8,#4]
1BDBD0:  LDRB            R0, [R4,#6]
1BDBD4:  CMP             R0, #0
1BDBD8:  BEQ             loc_1BDC40
1BDBDC:  MOVW            R0, #0x1990
1BDBE0:  MOVW            R2, #0x1991
1BDBE4:  STR             R0, [R8,#8]
1BDBE8:  LDR             R0, [R4,#0x18]
1BDBEC:  LDR             R1, [R4,#0x1C]
1BDBF0:  B               loc_1BDC5C
1BDBF4:  LDR             R0, =(byte_382798 - 0x1BDC00)
1BDBF8:  LDRB            R0, [PC,R0]; byte_382798
1BDBFC:  CMP             R0, #0
1BDC00:  BNE             loc_1BDC2C
1BDC04:  B               loc_1BDC34
1BDC08:  LDR             R0, [R4,#0xC]
1BDC0C:  LDR             R1, [R4,#0x10]
1BDC10:  BL              sub_220A6C
1BDC14:  STR             R0, [R8]
1BDC18:  B               loc_1BD8B0
1BDC1C:  LDR             R0, =(byte_382798 - 0x1BDC28)
1BDC20:  LDRB            R0, [PC,R0]; byte_382798
1BDC24:  CMP             R0, #0
1BDC28:  BEQ             loc_1BDC34
1BDC2C:  MOV             R0, #5; sig
1BDC30:  BL              raise
1BDC34:  MOVW            R0, #0xA001
1BDC38:  STR             R0, [R4,#0x24]
1BDC3C:  B               loc_1BD8B0
1BDC40:  MOVW            R0, #0x1008
1BDC44:  STR             R0, [R8,#8]
1BDC48:  LDR             R0, [R4,#0xC]
1BDC4C:  LDR             R1, [R4,#0x10]
1BDC50:  BL              sub_220A6C
1BDC54:  MOV             R1, #0
1BDC58:  MOVW            R2, #0x1009
1BDC5C:  STR             R2, [R8,#0x10]
1BDC60:  STR             R0, [R8,#0xC]
1BDC64:  MOVW            R0, #0x1010
1BDC68:  STR             R1, [R8,#0x14]
1BDC6C:  MOVW            R1, #0x1011
1BDC70:  STR             R0, [R8,#0x18]
1BDC74:  LDR             R0, [R4,#0x30]
1BDC78:  STR             R1, [R8,#0x20]
1BDC7C:  MOVW            R1, #:lower16:(aSilkLsfcostabF+0xA); "sTab_FIX_Q12"
1BDC80:  STR             R0, [R8,#0x1C]
1BDC84:  MOVT            R1, #:upper16:(aSilkLsfcostabF+0xA); "sTab_FIX_Q12"
1BDC88:  LDR             R0, [R4,#0x34]
1BDC8C:  STR             R1, [R8,#0x28]
1BDC90:  MOV             R1, #0
1BDC94:  STR             R0, [R8,#0x24]
1BDC98:  LDR             R0, [R4,#0x38]
1BDC9C:  STR             R0, [R8,#0x2C]
1BDCA0:  STR             R1, [R8,#0x30]
1BDCA4:  B               loc_1BD8B0
