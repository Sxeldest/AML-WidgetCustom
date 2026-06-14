; =========================================================
; Game Engine Function: sub_204784
; Address            : 0x204784 - 0x204A5A
; =========================================================

204784:  PUSH            {R4-R7,LR}
204786:  ADD             R7, SP, #0xC
204788:  PUSH.W          {R7-R11}
20478C:  MOV             R4, R0
20478E:  LDR             R0, =(_ZTVNSt6__ndk16locale5__impE - 0x20479A); `vtable for'std::locale::__imp ...
204790:  SUBS            R1, #1
204792:  ADD.W           R8, R4, #8
204796:  ADD             R0, PC; `vtable for'std::locale::__imp
204798:  ADDS            R0, #8
20479A:  STRD.W          R0, R1, [R4]
20479E:  MOV             R0, R8
2047A0:  MOVS            R1, #0x1C
2047A2:  BL              sub_204AF4
2047A6:  ADD.W           R9, R4, #0x90
2047AA:  LDR             R1, =(unk_84F93 - 0x2047B2)
2047AC:  MOV             R0, R9; int
2047AE:  ADD             R1, PC; unk_84F93 ; s
2047B0:  BL              sub_DC6DC
2047B4:  LDR             R0, [R4,#8]
2047B6:  MOVS            R5, #0
2047B8:  STR             R0, [R4,#0xC]
2047BA:  LDR             R0, =(_ZTVNSt6__ndk17collateIcEE_ptr - 0x2047C2)
2047BC:  LDR             R1, =(byte_383CC8 - 0x2047C4)
2047BE:  ADD             R0, PC; _ZTVNSt6__ndk17collateIcEE_ptr
2047C0:  ADD             R1, PC; byte_383CC8
2047C2:  LDR             R0, [R0]; `vtable for'std::collate<char> ...
2047C4:  MOV             R11, R1
2047C6:  ADDS            R0, #8
2047C8:  STR.W           R0, [R1,#(dword_383CD8 - 0x383CC8)]!
2047CC:  STR             R5, [R1,#(dword_383CDC - 0x383CD8)]
2047CE:  MOV             R0, R4
2047D0:  BL              sub_204B28
2047D4:  LDR             R0, =(_ZTVNSt6__ndk17collateIwEE_ptr - 0x2047DC)
2047D6:  MOV             R1, R11
2047D8:  ADD             R0, PC; _ZTVNSt6__ndk17collateIwEE_ptr
2047DA:  LDR             R0, [R0]; `vtable for'std::collate<wchar_t> ...
2047DC:  ADDS            R0, #8
2047DE:  STR.W           R0, [R1,#(dword_383CE0 - 0x383CC8)]!
2047E2:  STR             R5, [R1,#(dword_383CE4 - 0x383CE0)]
2047E4:  MOV             R0, R4
2047E6:  BL              sub_204B4C
2047EA:  LDR             R0, =(_ZTVNSt6__ndk15ctypeIcEE_ptr - 0x2047F4)
2047EC:  MOVS            R6, #0
2047EE:  LDR             R1, =(unk_383DB8 - 0x2047F6)
2047F0:  ADD             R0, PC; _ZTVNSt6__ndk15ctypeIcEE_ptr
2047F2:  ADD             R1, PC; unk_383DB8
2047F4:  LDR             R0, [R0]; `vtable for'std::ctype<char> ...
2047F6:  MOV             R10, R1
2047F8:  ADDS            R0, #8
2047FA:  STR.W           R0, [R1,#(dword_383DE0 - 0x383DB8)]!
2047FE:  STRB            R6, [R1,#(byte_383DEC - 0x383DE0)]
204800:  LDR             R0, =(unk_D7CE0 - 0x204806)
204802:  ADD             R0, PC; unk_D7CE0
204804:  STRD.W          R6, R0, [R1,#(dword_383DE4 - 0x383DE0)]
204808:  MOV             R0, R4
20480A:  BL              sub_204B70
20480E:  LDR             R0, =(_ZTVNSt6__ndk15ctypeIwEE_ptr - 0x204816)
204810:  MOV             R1, R11
204812:  ADD             R0, PC; _ZTVNSt6__ndk15ctypeIwEE_ptr
204814:  LDR             R0, [R0]; `vtable for'std::ctype<wchar_t> ...
204816:  ADDS            R0, #8
204818:  STR.W           R0, [R1,#(dword_383CE8 - 0x383CC8)]!
20481C:  STR             R6, [R1,#(dword_383CEC - 0x383CE8)]
20481E:  MOV             R0, R4
204820:  BL              sub_204B94
204824:  LDR             R0, =(_ZTVNSt6__ndk17codecvtIcc9mbstate_tEE_ptr - 0x20482C)
204826:  MOV             R1, R11
204828:  ADD             R0, PC; _ZTVNSt6__ndk17codecvtIcc9mbstate_tEE_ptr
20482A:  LDR             R0, [R0]; `vtable for'std::codecvt<char,char,mbstate_t> ...
20482C:  ADDS            R0, #8
20482E:  STR.W           R0, [R1,#(dword_383CF0 - 0x383CC8)]!
204832:  MOVS            R0, #0
204834:  STR             R0, [R1,#(dword_383CF4 - 0x383CF0)]
204836:  MOV             R0, R4
204838:  BL              sub_204BB8
20483C:  ADD.W           R6, R10, #0x38 ; '8'
204840:  MOV             R0, R10
204842:  MOVS            R1, #1
204844:  MOV             R0, R6
204846:  BLX             j__ZNSt6__ndk17codecvtIwc9mbstate_tEC2Ej; std::codecvt<wchar_t,char,mbstate_t>::codecvt(uint)
20484A:  MOV             R0, R4
20484C:  MOV             R1, R6
20484E:  BL              sub_204BDC
204852:  LDR             R0, =(_ZTVNSt6__ndk17codecvtIDsc9mbstate_tEE_ptr - 0x20485C)
204854:  MOV             R1, R11
204856:  MOVS            R5, #0
204858:  ADD             R0, PC; _ZTVNSt6__ndk17codecvtIDsc9mbstate_tEE_ptr
20485A:  LDR             R0, [R0]; `vtable for'std::codecvt<char16_t,char,mbstate_t> ...
20485C:  ADDS            R0, #8
20485E:  STR.W           R0, [R1,#(dword_383CF8 - 0x383CC8)]!
204862:  STR             R5, [R1,#(dword_383CFC - 0x383CF8)]
204864:  MOV             R0, R4
204866:  BL              sub_204C00
20486A:  LDR             R0, =(_ZTVNSt6__ndk17codecvtIDic9mbstate_tEE_ptr - 0x204872)
20486C:  MOV             R1, R11
20486E:  ADD             R0, PC; _ZTVNSt6__ndk17codecvtIDic9mbstate_tEE_ptr
204870:  LDR             R0, [R0]; `vtable for'std::codecvt<char32_t,char,mbstate_t> ...
204872:  ADDS            R0, #8
204874:  STR.W           R0, [R1,#(dword_383D00 - 0x383CC8)]!
204878:  STR             R5, [R1,#(dword_383D04 - 0x383D00)]
20487A:  MOV             R0, R4
20487C:  BL              sub_204C24
204880:  LDR             R5, =(unk_383E30 - 0x204888)
204882:  MOVS            R1, #1
204884:  ADD             R5, PC; unk_383E30
204886:  ADD.W           R6, R5, #0x40 ; '@'
20488A:  MOV             R0, R6
20488C:  BLX             j__ZNSt6__ndk18numpunctIcEC2Ej; std::numpunct<char>::numpunct(uint)
204890:  MOV             R0, R4
204892:  MOV             R1, R6
204894:  BL              sub_204C48
204898:  ADD.W           R6, R5, #0x58 ; 'X'
20489C:  MOVS            R1, #1
20489E:  MOV             R0, R6
2048A0:  BLX             j__ZNSt6__ndk18numpunctIwEC2Ej; std::numpunct<wchar_t>::numpunct(uint)
2048A4:  MOV             R0, R4
2048A6:  MOV             R1, R6
2048A8:  BL              sub_204C6C
2048AC:  LDR             R0, =(_ZTVNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0x2048B6)
2048AE:  MOV             R1, R11
2048B0:  MOVS            R5, #0
2048B2:  ADD             R0, PC; _ZTVNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
2048B4:  LDR             R0, [R0]; `vtable for'std::num_get<char,std::istreambuf_iterator<char>> ...
2048B6:  ADDS            R0, #8
2048B8:  STR.W           R0, [R1,#(dword_383D08 - 0x383CC8)]!
2048BC:  STR             R5, [R1,#(dword_383D0C - 0x383D08)]
2048BE:  MOV             R0, R4
2048C0:  BL              sub_204C90
2048C4:  LDR             R0, =(_ZTVNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0x2048CC)
2048C6:  MOV             R1, R11
2048C8:  ADD             R0, PC; _ZTVNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
2048CA:  LDR             R0, [R0]; `vtable for'std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>> ...
2048CC:  ADDS            R0, #8
2048CE:  STR.W           R0, [R1,#(dword_383D10 - 0x383CC8)]!
2048D2:  STR             R5, [R1,#(dword_383D14 - 0x383D10)]
2048D4:  MOV             R0, R4
2048D6:  BL              sub_204CB4
2048DA:  LDR             R0, =(_ZTVNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0x2048E4)
2048DC:  MOV             R1, R11
2048DE:  MOVS            R5, #0
2048E0:  ADD             R0, PC; _ZTVNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
2048E2:  LDR             R0, [R0]; `vtable for'std::num_put<char,std::ostreambuf_iterator<char>> ...
2048E4:  ADDS            R0, #8
2048E6:  STR.W           R0, [R1,#(dword_383D18 - 0x383CC8)]!
2048EA:  STR             R5, [R1,#(dword_383D1C - 0x383D18)]
2048EC:  MOV             R0, R4
2048EE:  BL              sub_204CD8
2048F2:  LDR             R0, =(_ZTVNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0x2048FA)
2048F4:  MOV             R1, R11
2048F6:  ADD             R0, PC; _ZTVNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
2048F8:  LDR             R0, [R0]; `vtable for'std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>> ...
2048FA:  ADDS            R0, #8
2048FC:  STR.W           R0, [R1,#(dword_383D20 - 0x383CC8)]!
204900:  STR             R5, [R1,#(dword_383D24 - 0x383D20)]
204902:  MOV             R0, R4
204904:  BL              sub_204CFC
204908:  LDR             R0, =(_ZTVNSt6__ndk110moneypunctIcLb0EEE_ptr - 0x204912)
20490A:  MOV             R1, R11
20490C:  MOVS            R5, #0
20490E:  ADD             R0, PC; _ZTVNSt6__ndk110moneypunctIcLb0EEE_ptr
204910:  LDR             R0, [R0]; `vtable for'std::moneypunct<char,false> ...
204912:  ADDS            R0, #8
204914:  STR.W           R0, [R1,#(dword_383D28 - 0x383CC8)]!
204918:  STR             R5, [R1,#(dword_383D2C - 0x383D28)]
20491A:  MOV             R0, R4
20491C:  BL              sub_204D20
204920:  LDR             R0, =(_ZTVNSt6__ndk110moneypunctIcLb1EEE_ptr - 0x204928)
204922:  MOV             R1, R11
204924:  ADD             R0, PC; _ZTVNSt6__ndk110moneypunctIcLb1EEE_ptr
204926:  LDR             R0, [R0]; `vtable for'std::moneypunct<char,true> ...
204928:  ADDS            R0, #8
20492A:  STR.W           R0, [R1,#(dword_383D30 - 0x383CC8)]!
20492E:  STR             R5, [R1,#(dword_383D34 - 0x383D30)]
204930:  MOV             R0, R4
204932:  BL              sub_204D44
204936:  LDR             R0, =(_ZTVNSt6__ndk110moneypunctIwLb0EEE_ptr - 0x204940)
204938:  MOV             R1, R11
20493A:  MOVS            R6, #0
20493C:  ADD             R0, PC; _ZTVNSt6__ndk110moneypunctIwLb0EEE_ptr
20493E:  LDR             R0, [R0]; `vtable for'std::moneypunct<wchar_t,false> ...
204940:  ADDS            R0, #8
204942:  STR.W           R0, [R1,#(dword_383D38 - 0x383CC8)]!
204946:  STR             R6, [R1,#(dword_383D3C - 0x383D38)]
204948:  MOV             R0, R4
20494A:  BL              sub_204D68
20494E:  LDR             R5, =(dword_383D40 - 0x204956)
204950:  LDR             R0, =(_ZTVNSt6__ndk110moneypunctIwLb1EEE_ptr - 0x204958)
204952:  ADD             R5, PC; dword_383D40
204954:  ADD             R0, PC; _ZTVNSt6__ndk110moneypunctIwLb1EEE_ptr
204956:  LDR             R0, [R0]; `vtable for'std::moneypunct<wchar_t,true> ...
204958:  ADDS            R0, #8
20495A:  STRD.W          R0, R6, [R5]
20495E:  MOV             R0, R4
204960:  MOV             R1, R5
204962:  BL              sub_204D8C
204966:  LDR             R0, =(_ZTVNSt6__ndk19money_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0x204970)
204968:  MOV             R1, R5
20496A:  MOVS            R6, #0
20496C:  ADD             R0, PC; _ZTVNSt6__ndk19money_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
20496E:  LDR             R0, [R0]; `vtable for'std::money_get<char,std::istreambuf_iterator<char>> ...
204970:  ADDS            R0, #8
204972:  STR.W           R0, [R1,#(dword_383D48 - 0x383D40)]!
204976:  STR             R6, [R1,#(dword_383D4C - 0x383D48)]
204978:  MOV             R0, R4
20497A:  BL              sub_204DB0
20497E:  LDR             R0, =(_ZTVNSt6__ndk19money_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0x204986)
204980:  MOV             R1, R5
204982:  ADD             R0, PC; _ZTVNSt6__ndk19money_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
204984:  LDR             R0, [R0]; `vtable for'std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>> ...
204986:  ADDS            R0, #8
204988:  STR.W           R0, [R1,#(dword_383D50 - 0x383D40)]!
20498C:  STR             R6, [R1,#(dword_383D54 - 0x383D50)]
20498E:  MOV             R0, R4
204990:  BL              sub_204DD4
204994:  LDR             R0, =(_ZTVNSt6__ndk19money_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0x20499E)
204996:  MOV             R1, R5
204998:  MOVS            R6, #0
20499A:  ADD             R0, PC; _ZTVNSt6__ndk19money_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
20499C:  LDR             R0, [R0]; `vtable for'std::money_put<char,std::ostreambuf_iterator<char>> ...
20499E:  ADDS            R0, #8
2049A0:  STR.W           R0, [R1,#(dword_383D58 - 0x383D40)]!
2049A4:  STR             R6, [R1,#(dword_383D5C - 0x383D58)]
2049A6:  MOV             R0, R4
2049A8:  BL              sub_204DF8
2049AC:  LDR             R0, =(_ZTVNSt6__ndk19money_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0x2049B4)
2049AE:  MOV             R1, R5
2049B0:  ADD             R0, PC; _ZTVNSt6__ndk19money_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
2049B2:  LDR             R0, [R0]; `vtable for'std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>> ...
2049B4:  ADDS            R0, #8
2049B6:  STR.W           R0, [R1,#(dword_383D60 - 0x383D40)]!
2049BA:  STR             R6, [R1,#(dword_383D64 - 0x383D60)]
2049BC:  MOV             R0, R4
2049BE:  BL              sub_204E1C
2049C2:  LDR             R0, =(_ZTVNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0x2049CC)
2049C4:  MOV             R1, R10
2049C6:  MOVS            R6, #0
2049C8:  ADD             R0, PC; _ZTVNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
2049CA:  LDR             R0, [R0]; `vtable for'std::time_get<char,std::istreambuf_iterator<char>> ...
2049CC:  ADD.W           R2, R0, #8
2049D0:  STR.W           R2, [R1,#(dword_383E00 - 0x383DB8)]!
2049D4:  ADDS            R0, #0x38 ; '8'
2049D6:  STRD.W          R6, R0, [R1,#(dword_383E04 - 0x383E00)]
2049DA:  MOV             R0, R4
2049DC:  BL              sub_204E40
2049E0:  LDR             R0, =(_ZTVNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0x2049E8)
2049E2:  MOV             R1, R10
2049E4:  ADD             R0, PC; _ZTVNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
2049E6:  LDR             R0, [R0]; `vtable for'std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>> ...
2049E8:  ADD.W           R2, R0, #8
2049EC:  STR.W           R2, [R1,#(dword_383E10 - 0x383DB8)]!
2049F0:  ADDS            R0, #0x38 ; '8'
2049F2:  STRD.W          R6, R0, [R1,#(dword_383E14 - 0x383E10)]
2049F6:  MOV             R0, R4
2049F8:  BL              sub_204E64
2049FC:  ADD.W           R6, R10, #0x68 ; 'h'
204A00:  MOVS            R1, #1
204A02:  MOV             R0, R6
204A04:  BL              sub_20E24C
204A08:  MOV             R0, R4
204A0A:  MOV             R1, R6
204A0C:  BL              sub_204E88
204A10:  LDR             R0, =(unk_383E30 - 0x204A18)
204A12:  MOVS            R1, #1
204A14:  ADD             R0, PC; unk_383E30
204A16:  BL              sub_20E288
204A1A:  LDR             R1, =(unk_383E30 - 0x204A22)
204A1C:  MOV             R0, R4
204A1E:  ADD             R1, PC; unk_383E30
204A20:  BL              sub_204EAC
204A24:  LDR             R0, =(_ZTVNSt6__ndk18messagesIcEE_ptr - 0x204A2E)
204A26:  MOV             R1, R5
204A28:  MOVS            R6, #0
204A2A:  ADD             R0, PC; _ZTVNSt6__ndk18messagesIcEE_ptr
204A2C:  LDR             R0, [R0]; `vtable for'std::messages<char> ...
204A2E:  ADDS            R0, #8
204A30:  STR.W           R0, [R1,#(dword_383D68 - 0x383D40)]!
204A34:  STR             R6, [R1,#(dword_383D6C - 0x383D68)]
204A36:  MOV             R0, R4
204A38:  BL              sub_204ED0
204A3C:  LDR             R0, =(_ZTVNSt6__ndk18messagesIwEE_ptr - 0x204A42)
204A3E:  ADD             R0, PC; _ZTVNSt6__ndk18messagesIwEE_ptr
204A40:  LDR             R0, [R0]; `vtable for'std::messages<wchar_t> ...
204A42:  ADDS            R0, #8
204A44:  STR.W           R0, [R5,#(dword_383D70 - 0x383D40)]!
204A48:  STR             R6, [R5,#(dword_383D74 - 0x383D70)]
204A4A:  MOV             R0, R4
204A4C:  MOV             R1, R5
204A4E:  BL              sub_204EF4
204A52:  MOV             R0, R4
204A54:  POP.W           {R3,R8-R11}
204A58:  POP             {R4-R7,PC}
