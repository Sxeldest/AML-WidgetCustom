; =========================================================
; Game Engine Function: sub_FE7F0
; Address            : 0xFE7F0 - 0xFF19C
; =========================================================

FE7F0:  PUSH            {R4-R7,LR}
FE7F2:  ADD             R7, SP, #0xC
FE7F4:  PUSH.W          {R8}
FE7F8:  SUB             SP, SP, #0x18
FE7FA:  MOV             R4, R0
FE7FC:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xFE804)
FE800:  ADD             R0, PC; __stack_chk_guard_ptr
FE802:  LDR             R0, [R0]; __stack_chk_guard
FE804:  LDR             R0, [R0]
FE806:  STR             R0, [SP,#0x28+var_14]
FE808:  MOVS            R0, #0
FE80A:  LDRD.W          R1, R2, [R4]
FE80E:  STR             R0, [SP,#0x28+var_24]
FE810:  SUBS            R0, R2, R1
FE812:  BEQ.W           def_FE822; jumptable 000FE822 default case, cases 66,69,72-74,76,78,81,87-96,107,112,113
FE816:  LDRB            R3, [R1]
FE818:  SUB.W           R5, R3, #0x41 ; 'A'; switch 58 cases
FE81C:  CMP             R5, #0x39 ; '9'
FE81E:  BHI.W           def_FE822; jumptable 000FE822 default case, cases 66,69,72-74,76,78,81,87-96,107,112,113
FE822:  TBH.W           [PC,R5,LSL#1]; switch jump
FE826:  DCW 0x6E; jump table for switch statement
FE828:  DCW 0x182
FE82A:  DCW 0x84
FE82C:  DCW 0x98
FE82E:  DCW 0x182
FE830:  DCW 0xCE
FE832:  DCW 0xD2
FE834:  DCW 0x182
FE836:  DCW 0x182
FE838:  DCW 0x182
FE83A:  DCW 0x3A
FE83C:  DCW 0x182
FE83E:  DCW 0xEE
FE840:  DCW 0x182
FE842:  DCW 0x116
FE844:  DCW 0x121
FE846:  DCW 0x182
FE848:  DCW 0x13C
FE84A:  DCW 0x14D
FE84C:  DCW 0x173
FE84E:  DCW 0x6A
FE850:  DCW 0x3A
FE852:  DCW 0x182
FE854:  DCW 0x182
FE856:  DCW 0x182
FE858:  DCW 0x182
FE85A:  DCW 0x182
FE85C:  DCW 0x182
FE85E:  DCW 0x182
FE860:  DCW 0x182
FE862:  DCW 0x182
FE864:  DCW 0x182
FE866:  DCW 0x191
FE868:  DCW 0x19F
FE86A:  DCW 0x1AD
FE86C:  DCW 0x1BB
FE86E:  DCW 0x1C7
FE870:  DCW 0x1DC
FE872:  DCW 0x1EA
FE874:  DCW 0x1FF
FE876:  DCW 0x20D
FE878:  DCW 0x21B
FE87A:  DCW 0x182
FE87C:  DCW 0x230
FE87E:  DCW 0x265
FE880:  DCW 0x27A
FE882:  DCW 0x28F
FE884:  DCW 0x182
FE886:  DCW 0x182
FE888:  DCW 0x3A
FE88A:  DCW 0x2A4
FE88C:  DCW 0x2B9
FE88E:  DCW 0x2CE
FE890:  DCW 0x2DF
FE892:  DCW 0x2F4
FE894:  DCW 0x309
FE896:  DCW 0x31E
FE898:  DCW 0x332
FE89A:  SUB.W           R2, R3, #0x72 ; 'r'; jumptable 000FE822 cases 75,86,114
FE89E:  CLZ.W           R2, R2
FE8A2:  LSRS            R2, R2, #5
FE8A4:  CMP             R0, R2
FE8A6:  BLS             loc_FE8B8
FE8A8:  MOVS            R6, #1
FE8AA:  LDRB            R5, [R1,R2]
FE8AC:  CMP             R3, #0x72 ; 'r'
FE8AE:  IT EQ
FE8B0:  MOVEQ           R6, #2
FE8B2:  CMP             R5, #0x56 ; 'V'
FE8B4:  IT EQ
FE8B6:  MOVEQ           R2, R6
FE8B8:  CMP             R0, R2
FE8BA:  BLS             loc_FE8C4
FE8BC:  LDRB            R3, [R1,R2]
FE8BE:  CMP             R3, #0x4B ; 'K'
FE8C0:  IT EQ
FE8C2:  ADDEQ           R2, #1
FE8C4:  CMP             R0, R2
FE8C6:  BLS             loc_FE8FA; jumptable 000FE822 case 85
FE8C8:  LDRB            R3, [R1,R2]
FE8CA:  CMP             R3, #0x46 ; 'F'
FE8CC:  BEQ.W           loc_FE9C2; jumptable 000FE822 case 70
FE8D0:  CMP             R3, #0x44 ; 'D'
FE8D2:  BNE             loc_FE8FA; jumptable 000FE822 case 85
FE8D4:  ADDS            R2, #1
FE8D6:  CMP             R0, R2
FE8D8:  BLS             loc_FE8FA; jumptable 000FE822 case 85
FE8DA:  LDRB            R0, [R1,R2]
FE8DC:  SUB.W           R1, R0, #0x6F ; 'o'
FE8E0:  CMP             R1, #9
FE8E2:  BHI             loc_FE8F4
FE8E4:  MOVS            R2, #1
FE8E6:  LSL.W           R1, R2, R1
FE8EA:  MOVW            R2, #0x301
FE8EE:  TST             R1, R2
FE8F0:  BNE.W           loc_FE9C2; jumptable 000FE822 case 70
FE8F4:  CMP             R0, #0x4F ; 'O'
FE8F6:  BEQ.W           loc_FE9C2; jumptable 000FE822 case 70
FE8FA:  MOV             R0, R4; jumptable 000FE822 case 85
FE8FC:  BL              sub_105B54
FE900:  B               loc_FEB30
FE902:  CMP             R1, R2; jumptable 000FE822 case 65
FE904:  BEQ.W           loc_FF196
FE908:  ADDS            R0, R1, #1
FE90A:  STR             R0, [R4]
FE90C:  CMP             R2, R0
FE90E:  BEQ.W           loc_FEEF8
FE912:  LDRB            R0, [R0]
FE914:  SUB.W           R2, R0, #0x3A ; ':'
FE918:  CMN.W           R2, #0xA
FE91C:  BCS.W           loc_FEF10
FE920:  CMP             R0, #0x5F ; '_'
FE922:  BNE.W           loc_FEEF8
FE926:  ADDS            R0, R1, #2
FE928:  MOV.W           R8, #0
FE92C:  B               loc_FEF3C
FE92E:  ADDS            R0, R1, #1; jumptable 000FE822 case 67
FE930:  STR             R0, [R4]
FE932:  MOV             R0, R4
FE934:  BL              sub_FE7F0
FE938:  CMP             R0, #0
FE93A:  BEQ.W           loc_FF04A
FE93E:  MOV             R5, R0
FE940:  ADD.W           R0, R4, #0x198
FE944:  MOVS            R1, #0x14
FE946:  BL              sub_FFA98
FE94A:  LDR             R2, =(aComplex - 0xFE952); " complex" ...
FE94C:  LDR             R1, =0x1010105
FE94E:  ADD             R2, PC; " complex"
FE950:  ADD.W           R3, R2, #8
FE954:  B               loc_FE9F0
FE956:  CMP             R0, #2; jumptable 000FE822 case 68
FE958:  BCC.W           loc_FF04A
FE95C:  LDRB            R0, [R1,#1]
FE95E:  SUB.W           R2, R0, #0x4F ; 'O'; switch 42 cases
FE962:  MOVS            R0, #0
FE964:  CMP             R2, #0x29 ; ')'
FE966:  BHI.W           def_FE96A; jumptable 000FE96A default case, cases 80-83,85-96,98,103,106-109,113,114
FE96A:  TBH.W           [PC,R2,LSL#1]; switch jump
FE96E:  DCW 0x2A; jump table for switch statement
FE970:  DCW 0x36F
FE972:  DCW 0x36F
FE974:  DCW 0x36F
FE976:  DCW 0x36F
FE978:  DCW 0x2FE
FE97A:  DCW 0x36F
FE97C:  DCW 0x36F
FE97E:  DCW 0x36F
FE980:  DCW 0x36F
FE982:  DCW 0x36F
FE984:  DCW 0x36F
FE986:  DCW 0x36F
FE988:  DCW 0x36F
FE98A:  DCW 0x36F
FE98C:  DCW 0x36F
FE98E:  DCW 0x36F
FE990:  DCW 0x36F
FE992:  DCW 0x302
FE994:  DCW 0x36F
FE996:  DCW 0x30E
FE998:  DCW 0x31A
FE99A:  DCW 0x326
FE99C:  DCW 0x332
FE99E:  DCW 0x36F
FE9A0:  DCW 0x33E
FE9A2:  DCW 0x34A
FE9A4:  DCW 0x36F
FE9A6:  DCW 0x36F
FE9A8:  DCW 0x36F
FE9AA:  DCW 0x36F
FE9AC:  DCW 0x356
FE9AE:  DCW 0x2A
FE9B0:  DCW 0x362
FE9B2:  DCW 0x36F
FE9B4:  DCW 0x36F
FE9B6:  DCW 0x37C
FE9B8:  DCW 0x2FE
FE9BA:  DCW 0x388
FE9BC:  DCW 0x3A1
FE9BE:  DCW 0x2A
FE9C0:  DCW 0x2A
FE9C2:  MOV             R0, R4; jumptable 000FE822 case 70
FE9C4:  BL              sub_10591C
FE9C8:  B               loc_FEB30
FE9CA:  ADDS            R0, R1, #1; jumptable 000FE822 case 71
FE9CC:  STR             R0, [R4]
FE9CE:  MOV             R0, R4
FE9D0:  BL              sub_FE7F0
FE9D4:  CMP             R0, #0
FE9D6:  BEQ.W           loc_FF04A
FE9DA:  MOV             R5, R0
FE9DC:  ADD.W           R0, R4, #0x198
FE9E0:  MOVS            R1, #0x14
FE9E2:  BL              sub_FFA98
FE9E6:  LDR             R2, =(aImaginary - 0xFE9EE); " imaginary" ...
FE9E8:  LDR             R1, =0x1010105
FE9EA:  ADD             R2, PC; " imaginary"
FE9EC:  ADD.W           R3, R2, #0xA
FE9F0:  LDR             R6, =(_ZTVN12_GLOBAL__N_116itanium_demangle20PostfixQualifiedTypeE - 0xFE9F6); `vtable for'`anonymous namespace'::itanium_demangle::PostfixQualifiedType ...
FE9F2:  ADD             R6, PC; `vtable for'`anonymous namespace'::itanium_demangle::PostfixQualifiedType
FE9F4:  ADDS            R6, #8
FE9F6:  STR             R6, [R0]
FE9F8:  STR             R1, [R0,#4]
FE9FA:  STR             R5, [R0,#8]
FE9FC:  STR             R2, [R0,#0xC]
FE9FE:  STR             R3, [R0,#0x10]
FEA00:  B               loc_FEDE0
FEA02:  CMP             R1, R2; jumptable 000FE822 case 77
FEA04:  BEQ.W           loc_FF196
FEA08:  ADDS            R0, R1, #1
FEA0A:  STR             R0, [R4]
FEA0C:  MOV             R0, R4
FEA0E:  BL              sub_FE7F0
FEA12:  CMP             R0, #0
FEA14:  BEQ.W           loc_FF196
FEA18:  MOV             R6, R0
FEA1A:  MOV             R0, R4
FEA1C:  BL              sub_FE7F0
FEA20:  CMP             R0, #0
FEA22:  BEQ.W           loc_FF196
FEA26:  MOV             R8, R0
FEA28:  ADD.W           R0, R4, #0x198
FEA2C:  MOVS            R1, #0x10
FEA2E:  BL              sub_FFA98
FEA32:  MOV             R5, R0
FEA34:  MOVW            R0, #0x101
FEA38:  STRH            R0, [R5,#6]
FEA3A:  MOVS            R0, #0xD
FEA3C:  STRB            R0, [R5,#4]
FEA3E:  STRD.W          R6, R8, [R5,#8]
FEA42:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle19PointerToMemberTypeE - 0xFEA48); `vtable for'`anonymous namespace'::itanium_demangle::PointerToMemberType ...
FEA44:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::PointerToMemberType
FEA46:  ADDS            R0, #8
FEA48:  STR             R0, [R5]
FEA4A:  LDRB.W          R0, [R8,#5]
FEA4E:  STRB            R0, [R5,#5]
FEA50:  B               loc_FF198
FEA52:  ADDS            R0, R1, #1; jumptable 000FE822 case 79
FEA54:  STR             R0, [R4]
FEA56:  MOV             R0, R4
FEA58:  BL              sub_FE7F0
FEA5C:  CMP             R0, #0
FEA5E:  STR             R0, [SP,#0x28+var_1C]
FEA60:  BEQ.W           loc_FF04A
FEA64:  MOVS            R0, #1
FEA66:  B               loc_FEAB2
FEA68:  ADDS            R0, R1, #1; jumptable 000FE822 case 80
FEA6A:  STR             R0, [R4]
FEA6C:  MOV             R0, R4
FEA6E:  BL              sub_FE7F0
FEA72:  CMP             R0, #0
FEA74:  BEQ.W           loc_FF04A
FEA78:  MOV             R5, R0
FEA7A:  ADD.W           R0, R4, #0x198
FEA7E:  MOVS            R1, #0xC
FEA80:  BL              sub_FFA98
FEA84:  MOVW            R1, #0x101
FEA88:  STR             R5, [R0,#8]
FEA8A:  STRH            R1, [R0,#6]
FEA8C:  MOVS            R1, #0xB
FEA8E:  STRB            R1, [R0,#4]
FEA90:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle11PointerTypeE - 0xFEA96); `vtable for'`anonymous namespace'::itanium_demangle::PointerType ...
FEA92:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::PointerType
FEA94:  ADDS            R1, #8
FEA96:  STR             R1, [R0]
FEA98:  LDRB            R1, [R5,#5]
FEA9A:  STRB            R1, [R0,#5]
FEA9C:  B               loc_FEDE0
FEA9E:  ADDS            R0, R1, #1; jumptable 000FE822 case 82
FEAA0:  STR             R0, [R4]
FEAA2:  MOV             R0, R4
FEAA4:  BL              sub_FE7F0
FEAA8:  CMP             R0, #0
FEAAA:  STR             R0, [SP,#0x28+var_1C]
FEAAC:  BEQ.W           loc_FF04A
FEAB0:  MOVS            R0, #0
FEAB2:  STR             R0, [SP,#0x28+var_20]
FEAB4:  ADD             R1, SP, #0x28+var_1C
FEAB6:  ADD             R2, SP, #0x28+var_20
FEAB8:  MOV             R0, R4
FEABA:  BL              sub_105DAC
FEABE:  B               loc_FEDE0
FEAC0:  CMP             R0, #2; jumptable 000FE822 case 83
FEAC2:  BCC             def_FE822; jumptable 000FE822 default case, cases 66,69,72-74,76,78,81,87-96,107,112,113
FEAC4:  LDRB            R0, [R1,#1]
FEAC6:  CBZ             R0, def_FE822; jumptable 000FE822 default case, cases 66,69,72-74,76,78,81,87-96,107,112,113
FEAC8:  CMP             R0, #0x74 ; 't'
FEACA:  BEQ             def_FE822; jumptable 000FE822 default case, cases 66,69,72-74,76,78,81,87-96,107,112,113
FEACC:  MOV             R0, R4
FEACE:  BL              sub_FFBB4
FEAD2:  CMP             R0, #0
FEAD4:  STR             R0, [SP,#0x28+var_1C]
FEAD6:  BEQ.W           def_FE96A; jumptable 000FE96A default case, cases 80-83,85-96,98,103,106-109,113,114
FEADA:  LDRB.W          R1, [R4,#0x184]
FEADE:  CMP             R1, #0
FEAE0:  BEQ.W           def_FE96A; jumptable 000FE96A default case, cases 80-83,85-96,98,103,106-109,113,114
FEAE4:  LDRD.W          R1, R2, [R4]
FEAE8:  CMP             R2, R1
FEAEA:  BEQ.W           def_FE96A; jumptable 000FE96A default case, cases 80-83,85-96,98,103,106-109,113,114
FEAEE:  LDRB            R1, [R1]
FEAF0:  CMP             R1, #0x49 ; 'I'
FEAF2:  BNE.W           def_FE96A; jumptable 000FE96A default case, cases 80-83,85-96,98,103,106-109,113,114
FEAF6:  MOV             R0, R4
FEAF8:  MOVS            R1, #0
FEAFA:  BL              sub_FFCD8
FEAFE:  CMP             R0, #0
FEB00:  STR             R0, [SP,#0x28+var_20]
FEB02:  BEQ.W           loc_FF04A
FEB06:  ADD             R1, SP, #0x28+var_1C
FEB08:  ADD             R2, SP, #0x28+var_20
FEB0A:  B               loc_FEEF0
FEB0C:  CMP             R0, #2; jumptable 000FE822 case 84
FEB0E:  BCC.W           loc_FEEB2
FEB12:  LDRB            R0, [R1,#1]
FEB14:  SUBS            R0, #0x65 ; 'e'
FEB16:  CMP             R0, #0x10
FEB18:  BHI.W           loc_FEEB2
FEB1C:  MOVS            R1, #1
FEB1E:  LSL.W           R0, R1, R0
FEB22:  LDR             R1, =0x14001
FEB24:  TST             R0, R1
FEB26:  BEQ.W           loc_FEEB2
FEB2A:  MOV             R0, R4; jumptable 000FE822 default case, cases 66,69,72-74,76,78,81,87-96,107,112,113
FEB2C:  BL              sub_105CF4
FEB30:  MOV             R5, R0
FEB32:  STR             R0, [SP,#0x28+var_24]
FEB34:  CMP             R5, #0
FEB36:  BEQ.W           loc_FF04A
FEB3A:  ADD.W           R0, R4, #0x94
FEB3E:  ADD             R1, SP, #0x28+var_24
FEB40:  BL              sub_FF894
FEB44:  LDR             R0, [SP,#0x28+var_24]
FEB46:  B               def_FE96A; jumptable 000FE96A default case, cases 80-83,85-96,98,103,106-109,113,114
FEB48:  ADDS            R0, R1, #1; jumptable 000FE822 case 97
FEB4A:  STR             R0, [R4]
FEB4C:  LDR             R0, [SP,#0x28+var_14]
FEB4E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEB56)
FEB52:  ADD             R1, PC; __stack_chk_guard_ptr
FEB54:  LDR             R1, [R1]; __stack_chk_guard
FEB56:  LDR             R1, [R1]
FEB58:  CMP             R1, R0
FEB5A:  BNE.W           loc_FF062
FEB5E:  LDR             R1, =(aSignedChar - 0xFEB64); "signed char" ...
FEB60:  ADD             R1, PC; "signed char"
FEB62:  B               loc_FEBCE
FEB64:  ADDS            R0, R1, #1; jumptable 000FE822 case 98
FEB66:  STR             R0, [R4]
FEB68:  LDR             R0, [SP,#0x28+var_14]
FEB6A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEB72)
FEB6E:  ADD             R1, PC; __stack_chk_guard_ptr
FEB70:  LDR             R1, [R1]; __stack_chk_guard
FEB72:  LDR             R1, [R1]
FEB74:  CMP             R1, R0
FEB76:  BNE.W           loc_FF062
FEB7A:  LDR             R1, =(aBool - 0xFEB80); "bool" ...
FEB7C:  ADD             R1, PC; "bool"
FEB7E:  B               loc_FEDFE
FEB80:  ADDS            R0, R1, #1; jumptable 000FE822 case 99
FEB82:  STR             R0, [R4]
FEB84:  LDR             R0, [SP,#0x28+var_14]
FEB86:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEB8E)
FEB8A:  ADD             R1, PC; __stack_chk_guard_ptr
FEB8C:  LDR             R1, [R1]; __stack_chk_guard
FEB8E:  LDR             R1, [R1]
FEB90:  CMP             R1, R0
FEB92:  BNE.W           loc_FF062
FEB96:  LDR             R1, =(aChar - 0xFEB9C); "char" ...
FEB98:  ADD             R1, PC; "char"
FEB9A:  B               loc_FEDFE
FEB9C:  ADDS            R0, R1, #1; jumptable 000FE822 case 100
FEB9E:  STR             R0, [R4]
FEBA0:  ADD.W           R0, R4, #0x198
FEBA4:  MOVS            R1, #0x10
FEBA6:  BL              sub_FFA98
FEBAA:  LDR             R2, =(aDouble - 0xFEBB2); "double" ...
FEBAC:  LDR             R1, =0x1010107
FEBAE:  ADD             R2, PC; "double"
FEBB0:  ADDS            R3, R2, #6
FEBB2:  B               loc_FEE7A
FEBB4:  ADDS            R0, R1, #1; jumptable 000FE822 case 101
FEBB6:  STR             R0, [R4]
FEBB8:  LDR             R0, [SP,#0x28+var_14]
FEBBA:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEBC2)
FEBBE:  ADD             R1, PC; __stack_chk_guard_ptr
FEBC0:  LDR             R1, [R1]; __stack_chk_guard
FEBC2:  LDR             R1, [R1]
FEBC4:  CMP             R1, R0
FEBC6:  BNE.W           loc_FF062
FEBCA:  LDR             R1, =(aLongDouble - 0xFEBD0); "long double" ...
FEBCC:  ADD             R1, PC; "long double"
FEBCE:  MOV             R0, R4
FEBD0:  ADD             SP, SP, #0x18
FEBD2:  POP.W           {R8}
FEBD6:  POP.W           {R4-R7,LR}
FEBDA:  B.W             sub_104C9C
FEBDE:  ADDS            R0, R1, #1; jumptable 000FE822 case 102
FEBE0:  STR             R0, [R4]
FEBE2:  LDR             R0, [SP,#0x28+var_14]
FEBE4:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEBEC)
FEBE8:  ADD             R1, PC; __stack_chk_guard_ptr
FEBEA:  LDR             R1, [R1]; __stack_chk_guard
FEBEC:  LDR             R1, [R1]
FEBEE:  CMP             R1, R0
FEBF0:  BNE.W           loc_FF062
FEBF4:  LDR             R1, =(aFloat - 0xFEBFA); "float" ...
FEBF6:  ADD             R1, PC; "float"
FEBF8:  B               loc_FED88
FEBFA:  ADDS            R0, R1, #1; jumptable 000FE822 case 103
FEBFC:  STR             R0, [R4]
FEBFE:  LDR             R0, [SP,#0x28+var_14]
FEC00:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEC08)
FEC04:  ADD             R1, PC; __stack_chk_guard_ptr
FEC06:  LDR             R1, [R1]; __stack_chk_guard
FEC08:  LDR             R1, [R1]
FEC0A:  CMP             R1, R0
FEC0C:  BNE.W           loc_FF062
FEC10:  LDR             R1, =(aFloat128 - 0xFEC16); "__float128" ...
FEC12:  ADD             R1, PC; "__float128"
FEC14:  MOV             R0, R4
FEC16:  ADD             SP, SP, #0x18
FEC18:  POP.W           {R8}
FEC1C:  POP.W           {R4-R7,LR}
FEC20:  B.W             sub_104BC8
FEC24:  ADDS            R0, R1, #1; jumptable 000FE822 case 104
FEC26:  STR             R0, [R4]
FEC28:  LDR             R0, [SP,#0x28+var_14]
FEC2A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEC32)
FEC2E:  ADD             R1, PC; __stack_chk_guard_ptr
FEC30:  LDR             R1, [R1]; __stack_chk_guard
FEC32:  LDR             R1, [R1]
FEC34:  CMP             R1, R0
FEC36:  BNE.W           loc_FF062
FEC3A:  LDR             R1, =(aUnsignedChar - 0xFEC40); "unsigned char" ...
FEC3C:  ADD             R1, PC; "unsigned char"
FEC3E:  B               loc_FED0A
FEC40:  ADDS            R0, R1, #1; jumptable 000FE822 case 105
FEC42:  STR             R0, [R4]
FEC44:  LDR             R0, [SP,#0x28+var_14]
FEC46:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEC4E)
FEC4A:  ADD             R1, PC; __stack_chk_guard_ptr
FEC4C:  LDR             R1, [R1]; __stack_chk_guard
FEC4E:  LDR             R1, [R1]
FEC50:  CMP             R1, R0
FEC52:  BNE.W           loc_FF062
FEC56:  LDR             R1, =(aInt - 0xFEC5C); "int" ...
FEC58:  ADD             R1, PC; "int"
FEC5A:  B               loc_FEEA2
FEC5C:  ADDS            R0, R1, #1; jumptable 000FE822 case 106
FEC5E:  STR             R0, [R4]
FEC60:  LDR             R0, [SP,#0x28+var_14]
FEC62:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEC6A)
FEC66:  ADD             R1, PC; __stack_chk_guard_ptr
FEC68:  LDR             R1, [R1]; __stack_chk_guard
FEC6A:  LDR             R1, [R1]
FEC6C:  CMP             R1, R0
FEC6E:  BNE.W           loc_FF062
FEC72:  LDR             R1, =(aUnsignedInt - 0xFEC7A); "unsigned int" ...
FEC74:  MOV             R0, R4
FEC76:  ADD             R1, PC; "unsigned int"
FEC78:  ADD             SP, SP, #0x18
FEC7A:  POP.W           {R8}
FEC7E:  POP.W           {R4-R7,LR}
FEC82:  B.W             sub_104D0C
FEC86:  ADDS            R0, R1, #1; jumptable 000FE822 case 108
FEC88:  STR             R0, [R4]
FEC8A:  LDR             R0, [SP,#0x28+var_14]
FEC8C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEC94)
FEC90:  ADD             R1, PC; __stack_chk_guard_ptr
FEC92:  LDR             R1, [R1]; __stack_chk_guard
FEC94:  LDR             R1, [R1]
FEC96:  CMP             R1, R0
FEC98:  BNE.W           loc_FF062
FEC9C:  LDR             R1, =(aLong - 0xFECA2); "long" ...
FEC9E:  ADD             R1, PC; "long"
FECA0:  B               loc_FEDFE
FECA2:  ALIGN 4
FECA4:  DCD aComplex - 0xFE952
FECA8:  DCD 0x1010105
FECAC:  DCD aImaginary - 0xFE9EE
FECB0:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle20PostfixQualifiedTypeE - 0xFE9F6
FECB4:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle19PointerToMemberTypeE - 0xFEA48
FECB8:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle11PointerTypeE - 0xFEA96
FECBC:  DCD 0x14001
FECC0:  DCD aSignedChar - 0xFEB64
FECC4:  DCD aBool - 0xFEB80
FECC8:  DCD aChar - 0xFEB9C
FECCC:  DCD aDouble - 0xFEBB2
FECD0:  DCD 0x1010107
FECD4:  DCD aLongDouble - 0xFEBD0
FECD8:  DCD aFloat - 0xFEBFA
FECDC:  DCD aFloat128 - 0xFEC16
FECE0:  DCD aUnsignedChar - 0xFEC40
FECE4:  DCD aInt - 0xFEC5C
FECE8:  DCD aUnsignedInt - 0xFEC7A
FECEC:  DCD aLong - 0xFECA2
FECF0:  ADDS            R0, R1, #1; jumptable 000FE822 case 109
FECF2:  STR             R0, [R4]
FECF4:  LDR             R0, [SP,#0x28+var_14]
FECF6:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFECFE)
FECFA:  ADD             R1, PC; __stack_chk_guard_ptr
FECFC:  LDR             R1, [R1]; __stack_chk_guard
FECFE:  LDR             R1, [R1]
FED00:  CMP             R1, R0
FED02:  BNE.W           loc_FF062
FED06:  LDR             R1, =(aUnsignedLong - 0xFED0C); "unsigned long" ...
FED08:  ADD             R1, PC; "unsigned long"
FED0A:  MOV             R0, R4
FED0C:  ADD             SP, SP, #0x18
FED0E:  POP.W           {R8}
FED12:  POP.W           {R4-R7,LR}
FED16:  B.W             sub_105C84
FED1A:  ADDS            R0, R1, #1; jumptable 000FE822 case 110
FED1C:  STR             R0, [R4]
FED1E:  LDR             R0, [SP,#0x28+var_14]
FED20:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFED28)
FED24:  ADD             R1, PC; __stack_chk_guard_ptr
FED26:  LDR             R1, [R1]; __stack_chk_guard
FED28:  LDR             R1, [R1]
FED2A:  CMP             R1, R0
FED2C:  BNE.W           loc_FF062
FED30:  LDR             R1, =(aInt128 - 0xFED36); "__int128" ...
FED32:  ADD             R1, PC; "__int128"
FED34:  MOV             R0, R4
FED36:  ADD             SP, SP, #0x18
FED38:  POP.W           {R8}
FED3C:  POP.W           {R4-R7,LR}
FED40:  B.W             sub_105CBC
FED44:  ADDS            R0, R1, #1; jumptable 000FE822 case 111
FED46:  STR             R0, [R4]
FED48:  LDR             R0, [SP,#0x28+var_14]
FED4A:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFED52)
FED4E:  ADD             R1, PC; __stack_chk_guard_ptr
FED50:  LDR             R1, [R1]; __stack_chk_guard
FED52:  LDR             R1, [R1]
FED54:  CMP             R1, R0
FED56:  BNE.W           loc_FF062
FED5A:  LDR             R1, =(aUnsignedInt128 - 0xFED62); "unsigned __int128" ...
FED5C:  MOV             R0, R4
FED5E:  ADD             R1, PC; "unsigned __int128"
FED60:  ADD             SP, SP, #0x18
FED62:  POP.W           {R8}
FED66:  POP.W           {R4-R7,LR}
FED6A:  B.W             sub_104C64
FED6E:  ADDS            R0, R1, #1; jumptable 000FE822 case 115
FED70:  STR             R0, [R4]
FED72:  LDR             R0, [SP,#0x28+var_14]
FED74:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFED7C)
FED78:  ADD             R1, PC; __stack_chk_guard_ptr
FED7A:  LDR             R1, [R1]; __stack_chk_guard
FED7C:  LDR             R1, [R1]
FED7E:  CMP             R1, R0
FED80:  BNE.W           loc_FF062
FED84:  LDR             R1, =(aShort - 0xFED8A); "short" ...
FED86:  ADD             R1, PC; "short"
FED88:  MOV             R0, R4
FED8A:  ADD             SP, SP, #0x18
FED8C:  POP.W           {R8}
FED90:  POP.W           {R4-R7,LR}
FED94:  B.W             sub_102AF4
FED98:  ADDS            R0, R1, #1; jumptable 000FE822 case 116
FED9A:  STR             R0, [R4]
FED9C:  LDR             R0, [SP,#0x28+var_14]
FED9E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEDA6)
FEDA2:  ADD             R1, PC; __stack_chk_guard_ptr
FEDA4:  LDR             R1, [R1]; __stack_chk_guard
FEDA6:  LDR             R1, [R1]
FEDA8:  CMP             R1, R0
FEDAA:  BNE.W           loc_FF062
FEDAE:  LDR             R1, =(aUnsignedShort - 0xFEDB4); "unsigned short" ...
FEDB0:  ADD             R1, PC; "unsigned short"
FEDB2:  MOV             R0, R4
FEDB4:  ADD             SP, SP, #0x18
FEDB6:  POP.W           {R8}
FEDBA:  POP.W           {R4-R7,LR}
FEDBE:  B.W             sub_104CD4
FEDC2:  ADDS            R0, R1, #1; jumptable 000FE822 case 117
FEDC4:  STR             R0, [R4]
FEDC6:  ADD             R0, SP, #0x28+var_1C
FEDC8:  MOV             R1, R4
FEDCA:  BL              sub_10538C
FEDCE:  LDRD.W          R0, R1, [SP,#0x28+var_1C]
FEDD2:  CMP             R0, R1
FEDD4:  BEQ.W           loc_FF04A
FEDD8:  ADD             R1, SP, #0x28+var_1C
FEDDA:  MOV             R0, R4
FEDDC:  BL              sub_10420C
FEDE0:  STR             R0, [SP,#0x28+var_24]
FEDE2:  B               loc_FEB3A
FEDE4:  ADDS            R0, R1, #1; jumptable 000FE822 case 118
FEDE6:  STR             R0, [R4]
FEDE8:  LDR             R0, [SP,#0x28+var_14]
FEDEA:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEDF2)
FEDEE:  ADD             R1, PC; __stack_chk_guard_ptr
FEDF0:  LDR             R1, [R1]; __stack_chk_guard
FEDF2:  LDR             R1, [R1]
FEDF4:  CMP             R1, R0
FEDF6:  BNE.W           loc_FF062
FEDFA:  LDR             R1, =(aVoid - 0xFEE00); "void" ...
FEDFC:  ADD             R1, PC; "void"
FEDFE:  MOV             R0, R4
FEE00:  ADD             SP, SP, #0x18
FEE02:  POP.W           {R8}
FEE06:  POP.W           {R4-R7,LR}
FEE0A:  B.W             sub_100568
FEE0E:  ADDS            R0, R1, #1; jumptable 000FE822 case 119
FEE10:  STR             R0, [R4]
FEE12:  LDR             R0, [SP,#0x28+var_14]
FEE14:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEE1C)
FEE18:  ADD             R1, PC; __stack_chk_guard_ptr
FEE1A:  LDR             R1, [R1]; __stack_chk_guard
FEE1C:  LDR             R1, [R1]
FEE1E:  CMP             R1, R0
FEE20:  BNE.W           loc_FF062
FEE24:  LDR             R1, =(aWcharT - 0xFEE2A); "wchar_t" ...
FEE26:  ADD             R1, PC; "wchar_t"
FEE28:  MOV             R0, R4
FEE2A:  ADD             SP, SP, #0x18
FEE2C:  POP.W           {R8}
FEE30:  POP.W           {R4-R7,LR}
FEE34:  B.W             sub_102C10
FEE38:  ADDS            R0, R1, #1; jumptable 000FE822 case 120
FEE3A:  STR             R0, [R4]
FEE3C:  LDR             R0, [SP,#0x28+var_14]
FEE3E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFEE46)
FEE42:  ADD             R1, PC; __stack_chk_guard_ptr
FEE44:  LDR             R1, [R1]; __stack_chk_guard
FEE46:  LDR             R1, [R1]
FEE48:  CMP             R1, R0
FEE4A:  BNE.W           loc_FF062
FEE4E:  LDR             R1, =(aLongLong - 0xFEE54); "long long" ...
FEE50:  ADD             R1, PC; "long long"
FEE52:  MOV             R0, R4
FEE54:  ADD             SP, SP, #0x18
FEE56:  POP.W           {R8}
FEE5A:  POP.W           {R4-R7,LR}
FEE5E:  B.W             sub_104C00
FEE62:  ADDS            R0, R1, #1; jumptable 000FE822 case 121
FEE64:  STR             R0, [R4]
FEE66:  ADD.W           R0, R4, #0x198
FEE6A:  MOVS            R1, #0x10
FEE6C:  BL              sub_FFA98
FEE70:  LDR             R2, =(aUnsignedLongLo - 0xFEE78); "unsigned long long" ...
FEE72:  LDR             R1, =0x1010107
FEE74:  ADD             R2, PC; "unsigned long long"
FEE76:  ADD.W           R3, R2, #0x12
FEE7A:  LDR             R4, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0xFEE80); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
FEE7C:  ADD             R4, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
FEE7E:  ADDS            R4, #8
FEE80:  STR             R4, [R0]
FEE82:  STR             R1, [R0,#4]
FEE84:  STR             R2, [R0,#8]
FEE86:  STR             R3, [R0,#0xC]
FEE88:  B               def_FE96A; jumptable 000FE96A default case, cases 80-83,85-96,98,103,106-109,113,114
FEE8A:  ADDS            R0, R1, #1; jumptable 000FE822 case 122
FEE8C:  STR             R0, [R4]
FEE8E:  LDR             R0, [SP,#0x28+var_14]
FEE90:  LDR             R1, =(__stack_chk_guard_ptr - 0xFEE96)
FEE92:  ADD             R1, PC; __stack_chk_guard_ptr
FEE94:  LDR             R1, [R1]; __stack_chk_guard
FEE96:  LDR             R1, [R1]
FEE98:  CMP             R1, R0
FEE9A:  BNE.W           loc_FF062
FEE9E:  LDR             R1, =(asc_4EAED - 0xFEEA4); "..." ...
FEEA0:  ADD             R1, PC; "..."
FEEA2:  MOV             R0, R4
FEEA4:  ADD             SP, SP, #0x18
FEEA6:  POP.W           {R8}
FEEAA:  POP.W           {R4-R7,LR}
FEEAE:  B.W             sub_FFFD8
FEEB2:  MOV             R0, R4
FEEB4:  BL              sub_100070
FEEB8:  CMP             R0, #0
FEEBA:  STR             R0, [SP,#0x28+var_24]
FEEBC:  BEQ.W           loc_FF04A
FEEC0:  LDRB.W          R0, [R4,#0x184]
FEEC4:  CMP             R0, #0
FEEC6:  BEQ.W           loc_FEB3A
FEECA:  LDRD.W          R0, R1, [R4]
FEECE:  CMP             R1, R0
FEED0:  BEQ.W           loc_FEB3A
FEED4:  LDRB            R0, [R0]
FEED6:  CMP             R0, #0x49 ; 'I'
FEED8:  BNE.W           loc_FEB3A
FEEDC:  MOV             R0, R4
FEEDE:  MOVS            R1, #0
FEEE0:  BL              sub_FFCD8
FEEE4:  CMP             R0, #0
FEEE6:  STR             R0, [SP,#0x28+var_1C]
FEEE8:  BEQ.W           loc_FF04A
FEEEC:  ADD             R1, SP, #0x28+var_24
FEEEE:  ADD             R2, SP, #0x28+var_1C
FEEF0:  MOV             R0, R4
FEEF2:  BL              sub_FFF64
FEEF6:  B               loc_FEDE0
FEEF8:  MOV             R0, R4
FEEFA:  BL              sub_1006E0
FEEFE:  CMP             R0, #0
FEF00:  BEQ.W           loc_FF196
FEF04:  MOV             R8, R0
FEF06:  LDRD.W          R0, R1, [R4]
FEF0A:  CMP             R0, R1
FEF0C:  BNE             loc_FEF32
FEF0E:  B               loc_FF196
FEF10:  ADD             R6, SP, #0x28+var_1C
FEF12:  MOV             R1, R4
FEF14:  MOVS            R2, #0
FEF16:  MOVS            R5, #0
FEF18:  MOV             R0, R6
FEF1A:  BL              sub_FE75C
FEF1E:  MOV             R0, R4
FEF20:  MOV             R1, R6
FEF22:  BL              sub_106048
FEF26:  MOV             R8, R0
FEF28:  LDRD.W          R0, R1, [R4]
FEF2C:  CMP             R0, R1
FEF2E:  BEQ.W           loc_FF198
FEF32:  LDRB            R1, [R0]
FEF34:  CMP             R1, #0x5F ; '_'
FEF36:  BNE.W           loc_FF196
FEF3A:  ADDS            R0, #1
FEF3C:  STR             R0, [R4]
FEF3E:  MOV             R0, R4
FEF40:  BL              sub_FE7F0
FEF44:  CMP             R0, #0
FEF46:  BEQ.W           loc_FF196
FEF4A:  MOV             R6, R0
FEF4C:  ADD.W           R0, R4, #0x198
FEF50:  MOVS            R1, #0x10
FEF52:  BL              sub_FFA98
FEF56:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle9ArrayTypeE - 0xFEF60); `vtable for'`anonymous namespace'::itanium_demangle::ArrayType ...
FEF58:  MOV             R5, R0
FEF5A:  LDR             R0, =0x100000E
FEF5C:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ArrayType
FEF5E:  STRD.W          R6, R8, [R5,#8]
FEF62:  ADDS            R1, #8
FEF64:  STRD.W          R1, R0, [R5]
FEF68:  B               loc_FF198
FEF6A:  MOV             R0, R4; jumptable 000FE96A cases 84,116
FEF6C:  BL              sub_100224
FEF70:  B               loc_FEB30
FEF72:  ADDS            R0, R1, #2; jumptable 000FE96A case 97
FEF74:  STR             R0, [R4]
FEF76:  LDR             R0, [SP,#0x28+var_14]
FEF78:  LDR             R1, =(__stack_chk_guard_ptr - 0xFEF7E)
FEF7A:  ADD             R1, PC; __stack_chk_guard_ptr
FEF7C:  LDR             R1, [R1]; __stack_chk_guard
FEF7E:  LDR             R1, [R1]
FEF80:  CMP             R1, R0
FEF82:  BNE             loc_FF062
FEF84:  LDR             R1, =(aAuto - 0xFEF8A); "auto" ...
FEF86:  ADD             R1, PC; "auto"
FEF88:  B               loc_FEDFE
FEF8A:  ADDS            R0, R1, #2; jumptable 000FE96A case 99
FEF8C:  STR             R0, [R4]
FEF8E:  LDR             R0, [SP,#0x28+var_14]
FEF90:  LDR             R1, =(__stack_chk_guard_ptr - 0xFEF96)
FEF92:  ADD             R1, PC; __stack_chk_guard_ptr
FEF94:  LDR             R1, [R1]; __stack_chk_guard
FEF96:  LDR             R1, [R1]
FEF98:  CMP             R1, R0
FEF9A:  BNE             loc_FF062
FEF9C:  LDR             R1, =(aDecltypeAuto - 0xFEFA2); "decltype(auto)" ...
FEF9E:  ADD             R1, PC; "decltype(auto)"
FEFA0:  B               loc_FEDB2
FEFA2:  ADDS            R0, R1, #2; jumptable 000FE96A case 100
FEFA4:  STR             R0, [R4]
FEFA6:  LDR             R0, [SP,#0x28+var_14]
FEFA8:  LDR             R1, =(__stack_chk_guard_ptr - 0xFEFAE)
FEFAA:  ADD             R1, PC; __stack_chk_guard_ptr
FEFAC:  LDR             R1, [R1]; __stack_chk_guard
FEFAE:  LDR             R1, [R1]
FEFB0:  CMP             R1, R0
FEFB2:  BNE             loc_FF062
FEFB4:  LDR             R1, =(aDecimal64 - 0xFEFBA); "decimal64" ...
FEFB6:  ADD             R1, PC; "decimal64"
FEFB8:  B               loc_FEE52
FEFBA:  ADDS            R0, R1, #2; jumptable 000FE96A case 101
FEFBC:  STR             R0, [R4]
FEFBE:  LDR             R0, [SP,#0x28+var_14]
FEFC0:  LDR             R1, =(__stack_chk_guard_ptr - 0xFEFC6)
FEFC2:  ADD             R1, PC; __stack_chk_guard_ptr
FEFC4:  LDR             R1, [R1]; __stack_chk_guard
FEFC6:  LDR             R1, [R1]
FEFC8:  CMP             R1, R0
FEFCA:  BNE             loc_FF062
FEFCC:  LDR             R1, =(aDecimal128 - 0xFEFD2); "decimal128" ...
FEFCE:  ADD             R1, PC; "decimal128"
FEFD0:  B               loc_FEC14
FEFD2:  ADDS            R0, R1, #2; jumptable 000FE96A case 102
FEFD4:  STR             R0, [R4]
FEFD6:  LDR             R0, [SP,#0x28+var_14]
FEFD8:  LDR             R1, =(__stack_chk_guard_ptr - 0xFEFDE)
FEFDA:  ADD             R1, PC; __stack_chk_guard_ptr
FEFDC:  LDR             R1, [R1]; __stack_chk_guard
FEFDE:  LDR             R1, [R1]
FEFE0:  CMP             R1, R0
FEFE2:  BNE             loc_FF062
FEFE4:  LDR             R1, =(aDecimal32 - 0xFEFEA); "decimal32" ...
FEFE6:  ADD             R1, PC; "decimal32"
FEFE8:  B               loc_FEE52
FEFEA:  ADDS            R0, R1, #2; jumptable 000FE96A case 104
FEFEC:  STR             R0, [R4]
FEFEE:  LDR             R0, [SP,#0x28+var_14]
FEFF0:  LDR             R1, =(__stack_chk_guard_ptr - 0xFEFF6)
FEFF2:  ADD             R1, PC; __stack_chk_guard_ptr
FEFF4:  LDR             R1, [R1]; __stack_chk_guard
FEFF6:  LDR             R1, [R1]
FEFF8:  CMP             R1, R0
FEFFA:  BNE             loc_FF062
FEFFC:  LDR             R1, =(aDecimal16 - 0xFF002); "decimal16" ...
FEFFE:  ADD             R1, PC; "decimal16"
FF000:  B               loc_FEE52
FF002:  ADDS            R0, R1, #2; jumptable 000FE96A case 105
FF004:  STR             R0, [R4]
FF006:  LDR             R0, [SP,#0x28+var_14]
FF008:  LDR             R1, =(__stack_chk_guard_ptr - 0xFF00E)
FF00A:  ADD             R1, PC; __stack_chk_guard_ptr
FF00C:  LDR             R1, [R1]; __stack_chk_guard
FF00E:  LDR             R1, [R1]
FF010:  CMP             R1, R0
FF012:  BNE             loc_FF062
FF014:  LDR             R1, =(aChar32T - 0xFF01A); "char32_t" ...
FF016:  ADD             R1, PC; "char32_t"
FF018:  B               loc_FED34
FF01A:  ADDS            R0, R1, #2; jumptable 000FE96A case 110
FF01C:  STR             R0, [R4]
FF01E:  LDR             R0, [SP,#0x28+var_14]
FF020:  LDR             R1, =(__stack_chk_guard_ptr - 0xFF026)
FF022:  ADD             R1, PC; __stack_chk_guard_ptr
FF024:  LDR             R1, [R1]; __stack_chk_guard
FF026:  LDR             R1, [R1]
FF028:  CMP             R1, R0
FF02A:  BNE             loc_FF062
FF02C:  LDR             R1, =(aStdNullptrT - 0xFF032); "std::nullptr_t" ...
FF02E:  ADD             R1, PC; "std::nullptr_t"
FF030:  B               loc_FEDB2
FF032:  ADDS            R0, R1, #2; jumptable 000FE96A case 112
FF034:  STR             R0, [R4]
FF036:  MOV             R0, R4
FF038:  BL              sub_FE7F0
FF03C:  STR             R0, [SP,#0x28+var_1C]
FF03E:  CBZ             R0, loc_FF04A
FF040:  ADD             R1, SP, #0x28+var_1C
FF042:  MOV             R0, R4
FF044:  BL              sub_102A2C
FF048:  B               loc_FEDE0
FF04A:  MOVS            R0, #0
FF04C:  LDR             R1, [SP,#0x28+var_14]; jumptable 000FE96A default case, cases 80-83,85-96,98,103,106-109,113,114
FF04E:  LDR             R2, =(__stack_chk_guard_ptr - 0xFF054)
FF050:  ADD             R2, PC; __stack_chk_guard_ptr
FF052:  LDR             R2, [R2]; __stack_chk_guard
FF054:  LDR             R2, [R2]
FF056:  CMP             R2, R1
FF058:  ITTT EQ
FF05A:  ADDEQ           SP, SP, #0x18
FF05C:  POPEQ.W         {R8}
FF060:  POPEQ           {R4-R7,PC}
FF062:  BLX             __stack_chk_fail
FF066:  ADDS            R0, R1, #2; jumptable 000FE96A case 115
FF068:  STR             R0, [R4]
FF06A:  LDR             R0, [SP,#0x28+var_14]
FF06C:  LDR             R1, =(__stack_chk_guard_ptr - 0xFF072)
FF06E:  ADD             R1, PC; __stack_chk_guard_ptr
FF070:  LDR             R1, [R1]; __stack_chk_guard
FF072:  LDR             R1, [R1]
FF074:  CMP             R1, R0
FF076:  BNE             loc_FF062
FF078:  LDR             R1, =(aChar16T - 0xFF07E); "char16_t" ...
FF07A:  ADD             R1, PC; "char16_t"
FF07C:  B               loc_FED34
FF07E:  ADDS            R0, R1, #2; jumptable 000FE96A case 117
FF080:  STR             R0, [R4]
FF082:  LDR             R0, [SP,#0x28+var_14]
FF084:  LDR             R1, =(__stack_chk_guard_ptr - 0xFF08A)
FF086:  ADD             R1, PC; __stack_chk_guard_ptr
FF088:  LDR             R1, [R1]; __stack_chk_guard
FF08A:  LDR             R1, [R1]
FF08C:  CMP             R1, R0
FF08E:  BNE             loc_FF062
FF090:  LDR             R1, =(aChar8T - 0xFF096); "char8_t" ...
FF092:  ADD             R1, PC; "char8_t"
FF094:  B               loc_FEE28
FF096:  ALIGN 4
FF098:  DCD aUnsignedLong - 0xFED0C
FF09C:  DCD aInt128 - 0xFED36
FF0A0:  DCD aUnsignedInt128 - 0xFED62
FF0A4:  DCD aShort - 0xFED8A
FF0A8:  DCD aUnsignedShort - 0xFEDB4
FF0AC:  DCD aVoid - 0xFEE00
FF0B0:  LDR             R1, =(aDv_1 - 0xFF0B8); jumptable 000FE96A case 118
FF0B2:  MOV             R0, R4
FF0B4:  ADD             R1, PC; "Dv"
FF0B6:  ADDS            R2, R1, #2
FF0B8:  BL              sub_FE18C
FF0BC:  CMP             R0, #0
FF0BE:  BEQ             loc_FF196
FF0C0:  LDRD.W          R0, R1, [R4]
FF0C4:  CMP             R1, R0
FF0C6:  BEQ             loc_FF152
FF0C8:  LDRB            R1, [R0]
FF0CA:  CMP             R1, #0x31 ; '1'
FF0CC:  BCC             loc_FF152
FF0CE:  CMP             R1, #0x39 ; '9'
FF0D0:  BHI             loc_FF122
FF0D2:  ADD             R6, SP, #0x28+var_1C
FF0D4:  MOV             R1, R4
FF0D6:  MOVS            R2, #0
FF0D8:  MOVS            R5, #0
FF0DA:  MOV             R0, R6
FF0DC:  BL              sub_FE75C
FF0E0:  MOV             R0, R4
FF0E2:  MOV             R1, R6
FF0E4:  BL              sub_106048
FF0E8:  MOV             R6, R0
FF0EA:  STR             R0, [SP,#0x28+var_20]
FF0EC:  LDRD.W          R0, R1, [R4]
FF0F0:  CMP             R0, R1
FF0F2:  BEQ             loc_FF198
FF0F4:  LDRB            R2, [R0]
FF0F6:  CMP             R2, #0x5F ; '_'
FF0F8:  BNE             loc_FF196
FF0FA:  ADDS            R2, R0, #1
FF0FC:  STR             R2, [R4]
FF0FE:  CMP             R2, R1
FF100:  BEQ             loc_FF186
FF102:  LDRB            R1, [R2]
FF104:  CMP             R1, #0x70 ; 'p'
FF106:  BNE             loc_FF186
FF108:  ADDS            R0, #2
FF10A:  STR             R0, [R4]
FF10C:  ADD.W           R0, R4, #0x198
FF110:  MOVS            R1, #0xC
FF112:  BL              sub_FFA98
FF116:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle15PixelVectorTypeE - 0xFF120); `vtable for'`anonymous namespace'::itanium_demangle::PixelVectorType ...
FF118:  MOV             R5, R0
FF11A:  LDR             R0, =0x101011A
FF11C:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::PixelVectorType
FF11E:  STR             R6, [R5,#8]
FF120:  B               loc_FEF62
FF122:  CMP             R1, #0x5F ; '_'
FF124:  BNE             loc_FF152
FF126:  ADDS            R0, #1
FF128:  STR             R0, [R4]
FF12A:  MOV             R0, R4
FF12C:  BL              sub_FE7F0
FF130:  MOVS            R5, #0
FF132:  CBZ             R0, loc_FF198
FF134:  MOV             R6, R0
FF136:  ADD.W           R0, R4, #0x198
FF13A:  MOVS            R1, #0x10
FF13C:  BL              sub_FFA98
FF140:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle10VectorTypeE - 0xFF148); `vtable for'`anonymous namespace'::itanium_demangle::VectorType ...
FF142:  LDR             R1, =0x1010119
FF144:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::VectorType
FF146:  STRD.W          R6, R5, [R0,#8]
FF14A:  ADDS            R2, #8
FF14C:  STRD.W          R2, R1, [R0]
FF150:  B               loc_FF182
FF152:  MOV             R0, R4
FF154:  BL              sub_1006E0
FF158:  STR             R0, [SP,#0x28+var_1C]
FF15A:  CBZ             R0, loc_FF196
FF15C:  LDRD.W          R0, R1, [R4]
FF160:  CMP             R0, R1
FF162:  BEQ             loc_FF196
FF164:  LDRB            R1, [R0]
FF166:  CMP             R1, #0x5F ; '_'
FF168:  BNE             loc_FF196
FF16A:  ADDS            R0, #1
FF16C:  STR             R0, [R4]
FF16E:  MOV             R0, R4
FF170:  BL              sub_FE7F0
FF174:  STR             R0, [SP,#0x28+var_20]
FF176:  CBZ             R0, loc_FF196
FF178:  ADD             R1, SP, #0x28+var_20
FF17A:  ADD             R2, SP, #0x28+var_1C
FF17C:  MOV             R0, R4
FF17E:  BL              sub_106078
FF182:  MOV             R5, R0
FF184:  B               loc_FF198
FF186:  MOV             R0, R4
FF188:  BL              sub_FE7F0
FF18C:  STR             R0, [SP,#0x28+var_1C]
FF18E:  CBZ             R0, loc_FF196
FF190:  ADD             R1, SP, #0x28+var_1C
FF192:  ADD             R2, SP, #0x28+var_20
FF194:  B               loc_FF17C
FF196:  MOVS            R5, #0
FF198:  STR             R5, [SP,#0x28+var_24]
FF19A:  B               loc_FEB34
