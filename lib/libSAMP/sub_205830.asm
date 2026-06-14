; =========================================================
; Game Engine Function: sub_205830
; Address            : 0x205830 - 0x205ABC
; =========================================================

205830:  PUSH            {R4-R7,LR}
205832:  ADD             R7, SP, #0xC
205834:  PUSH.W          {R8-R10}
205838:  MOV             R6, R1
20583A:  LDR             R1, =(_ZTVNSt6__ndk16locale5__impE - 0x205846); `vtable for'std::locale::__imp ...
20583C:  MOV             R4, R0
20583E:  ADD.W           R9, R4, #8
205842:  ADD             R1, PC; `vtable for'std::locale::__imp
205844:  MOV             R10, R3
205846:  ADDS            R1, #8
205848:  MOV.W           R0, #0xFFFFFFFF
20584C:  MOV             R5, R2
20584E:  STRD.W          R1, R0, [R4]
205852:  MOV             R0, R9
205854:  MOVS            R1, #0x1C
205856:  BL              sub_204AF4
20585A:  ADD.W           R8, R4, #0x90
20585E:  LDR             R1, =(asc_879DB - 0x205866); "*" ...
205860:  MOV             R0, R8; int
205862:  ADD             R1, PC; "*"
205864:  BL              sub_DC6DC
205868:  ADD.W           R1, R6, #8
20586C:  MOV             R0, R9; int
20586E:  BL              sub_20524C
205872:  MOVS            R6, #0
205874:  LDRD.W          R0, R1, [R4,#8]
205878:  SUBS            R1, R1, R0
20587A:  CMP.W           R6, R1,ASR#2
20587E:  BCS             loc_20588E
205880:  LDR.W           R0, [R0,R6,LSL#2]; this
205884:  CBZ             R0, loc_20588A
205886:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
20588A:  ADDS            R6, #1
20588C:  B               loc_205874
20588E:  MOVS.W          R0, R10,LSL#28
205892:  BPL             loc_2058C4
205894:  MOVS            R0, #0xC; unsigned int
205896:  BLX             j__Znwj; operator new(uint)
20589A:  MOV             R6, R0
20589C:  MOV             R1, R5
20589E:  MOVS            R2, #0
2058A0:  BLX             j__ZNSt6__ndk114collate_bynameIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::collate_byname<char>::collate_byname(std::string const&,uint)
2058A4:  MOV             R0, R4
2058A6:  MOV             R1, R6
2058A8:  BL              sub_205264
2058AC:  MOVS            R0, #0xC; unsigned int
2058AE:  BLX             j__Znwj; operator new(uint)
2058B2:  MOV             R6, R0
2058B4:  MOV             R1, R5
2058B6:  MOVS            R2, #0
2058B8:  BLX             j__ZNSt6__ndk114collate_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::collate_byname<wchar_t>::collate_byname(std::string const&,uint)
2058BC:  MOV             R0, R4
2058BE:  MOV             R1, R6
2058C0:  BL              sub_205288
2058C4:  MOVS.W          R0, R10,LSL#31
2058C8:  BEQ             loc_20596C
2058CA:  MOVS            R0, #0x14; unsigned int
2058CC:  BLX             j__Znwj; operator new(uint)
2058D0:  MOV             R6, R0
2058D2:  MOV             R1, R5
2058D4:  MOVS            R2, #0
2058D6:  BLX             j__ZNSt6__ndk112ctype_bynameIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::ctype_byname<char>::ctype_byname(std::string const&,uint)
2058DA:  MOV             R0, R4
2058DC:  MOV             R1, R6
2058DE:  BL              sub_2052AC
2058E2:  MOVS            R0, #0xC; unsigned int
2058E4:  BLX             j__Znwj; operator new(uint)
2058E8:  MOV             R6, R0
2058EA:  MOV             R1, R5
2058EC:  MOVS            R2, #0
2058EE:  BLX             j__ZNSt6__ndk112ctype_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::ctype_byname<wchar_t>::ctype_byname(std::string const&,uint)
2058F2:  MOV             R0, R4
2058F4:  MOV             R1, R6
2058F6:  BL              sub_2052D0
2058FA:  MOVS            R0, #8; unsigned int
2058FC:  BLX             j__Znwj; operator new(uint)
205900:  MOV             R1, R0
205902:  LDR             R2, =(_ZTVNSt6__ndk114codecvt_bynameIcc9mbstate_tEE_ptr - 0x20590C)
205904:  MOV.W           R0, #0xFFFFFFFF
205908:  ADD             R2, PC; _ZTVNSt6__ndk114codecvt_bynameIcc9mbstate_tEE_ptr
20590A:  LDR             R2, [R2]; `vtable for'std::codecvt_byname<char,char,mbstate_t> ...
20590C:  ADDS            R2, #8
20590E:  STRD.W          R2, R0, [R1]
205912:  MOV             R0, R4
205914:  BL              sub_2052F4
205918:  MOVS            R0, #0xC; unsigned int
20591A:  BLX             j__Znwj; operator new(uint)
20591E:  MOV             R6, R0
205920:  MOV             R1, R5
205922:  MOVS            R2, #0
205924:  BL              sub_20533C
205928:  MOV             R0, R4
20592A:  MOV             R1, R6
20592C:  BL              sub_205318
205930:  MOVS            R0, #8; unsigned int
205932:  BLX             j__Znwj; operator new(uint)
205936:  MOV             R1, R0
205938:  LDR             R2, =(_ZTVNSt6__ndk114codecvt_bynameIDsc9mbstate_tEE_ptr - 0x205942)
20593A:  MOV.W           R0, #0xFFFFFFFF
20593E:  ADD             R2, PC; _ZTVNSt6__ndk114codecvt_bynameIDsc9mbstate_tEE_ptr
205940:  LDR             R2, [R2]; `vtable for'std::codecvt_byname<char16_t,char,mbstate_t> ...
205942:  ADDS            R2, #8
205944:  STRD.W          R2, R0, [R1]
205948:  MOV             R0, R4
20594A:  BL              sub_205360
20594E:  MOVS            R0, #8; unsigned int
205950:  BLX             j__Znwj; operator new(uint)
205954:  MOV             R1, R0
205956:  LDR             R2, =(_ZTVNSt6__ndk114codecvt_bynameIDic9mbstate_tEE_ptr - 0x205960)
205958:  MOV.W           R0, #0xFFFFFFFF
20595C:  ADD             R2, PC; _ZTVNSt6__ndk114codecvt_bynameIDic9mbstate_tEE_ptr
20595E:  LDR             R2, [R2]; `vtable for'std::codecvt_byname<char32_t,char,mbstate_t> ...
205960:  ADDS            R2, #8
205962:  STRD.W          R2, R0, [R1]
205966:  MOV             R0, R4
205968:  BL              sub_205384
20596C:  MOVS.W          R0, R10,LSL#27
205970:  BPL             loc_2059D2
205972:  MOVS            R0, #0x48 ; 'H'; unsigned int
205974:  BLX             j__Znwj; operator new(uint)
205978:  MOV             R6, R0
20597A:  MOV             R1, R5
20597C:  MOVS            R2, #0
20597E:  BL              sub_205414
205982:  MOV             R0, R4
205984:  MOV             R1, R6
205986:  BL              sub_2053F0
20598A:  MOVS            R0, #0x48 ; 'H'; unsigned int
20598C:  BLX             j__Znwj; operator new(uint)
205990:  MOV             R6, R0
205992:  MOV             R1, R5
205994:  MOVS            R2, #0
205996:  BL              sub_2054BC
20599A:  MOV             R0, R4
20599C:  MOV             R1, R6
20599E:  BL              sub_205498
2059A2:  MOVS            R0, #0x4C ; 'L'; unsigned int
2059A4:  BLX             j__Znwj; operator new(uint)
2059A8:  MOV             R6, R0
2059AA:  MOV             R1, R5
2059AC:  MOVS            R2, #0
2059AE:  BL              sub_205564
2059B2:  MOV             R0, R4
2059B4:  MOV             R1, R6
2059B6:  BL              sub_205540
2059BA:  MOVS            R0, #0x4C ; 'L'; unsigned int
2059BC:  BLX             j__Znwj; operator new(uint)
2059C0:  MOV             R6, R0
2059C2:  MOV             R1, R5
2059C4:  MOVS            R2, #0
2059C6:  BL              sub_205610
2059CA:  MOV             R0, R4
2059CC:  MOV             R1, R6
2059CE:  BL              sub_2055EC
2059D2:  MOVS.W          R0, R10,LSL#30
2059D6:  BPL             loc_205A08
2059D8:  MOVS            R0, #0x18; unsigned int
2059DA:  BLX             j__Znwj; operator new(uint)
2059DE:  MOV             R6, R0
2059E0:  MOV             R1, R5
2059E2:  MOVS            R2, #0
2059E4:  BLX             j__ZNSt6__ndk115numpunct_bynameIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::numpunct_byname<char>::numpunct_byname(std::string const&,uint)
2059E8:  MOV             R0, R4
2059EA:  MOV             R1, R6
2059EC:  BL              sub_2053A8
2059F0:  MOVS            R0, #0x1C; unsigned int
2059F2:  BLX             j__Znwj; operator new(uint)
2059F6:  MOV             R6, R0
2059F8:  MOV             R1, R5
2059FA:  MOVS            R2, #0
2059FC:  BLX             j__ZNSt6__ndk115numpunct_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::numpunct_byname<wchar_t>::numpunct_byname(std::string const&,uint)
205A00:  MOV             R0, R4
205A02:  MOV             R1, R6
205A04:  BL              sub_2053CC
205A08:  MOVS.W          R0, R10,LSL#29
205A0C:  BPL             loc_205A72
205A0E:  MOV.W           R0, #0x220; unsigned int
205A12:  BLX             j__Znwj; operator new(uint)
205A16:  MOV             R6, R0
205A18:  MOV             R1, R5
205A1A:  MOVS            R2, #0
205A1C:  BL              sub_2056BC
205A20:  MOV             R0, R4
205A22:  MOV             R1, R6
205A24:  BL              sub_205698
205A28:  MOV.W           R0, #0x220; unsigned int
205A2C:  BLX             j__Znwj; operator new(uint)
205A30:  MOV             R6, R0
205A32:  MOV             R1, R5
205A34:  MOVS            R2, #0
205A36:  BL              sub_205728
205A3A:  MOV             R0, R4
205A3C:  MOV             R1, R6
205A3E:  BL              sub_205704
205A42:  MOVS            R0, #0xC; unsigned int
205A44:  BLX             j__Znwj; operator new(uint)
205A48:  MOV             R6, R0
205A4A:  MOV             R1, R5
205A4C:  MOVS            R2, #0
205A4E:  BL              sub_205794
205A52:  MOV             R0, R4
205A54:  MOV             R1, R6
205A56:  BL              sub_205770
205A5A:  MOVS            R0, #0xC; unsigned int
205A5C:  BLX             j__Znwj; operator new(uint)
205A60:  MOV             R6, R0
205A62:  MOV             R1, R5
205A64:  MOVS            R2, #0
205A66:  BL              sub_2057D0
205A6A:  MOV             R0, R4
205A6C:  MOV             R1, R6
205A6E:  BL              sub_2057AC
205A72:  MOVS.W          R0, R10,LSL#26
205A76:  BPL             loc_205AB4
205A78:  MOVS            R0, #8; unsigned int
205A7A:  BLX             j__Znwj; operator new(uint)
205A7E:  MOV             R1, R0
205A80:  LDR             R2, =(_ZTVNSt6__ndk115messages_bynameIcEE_ptr - 0x205A8A)
205A82:  MOV.W           R0, #0xFFFFFFFF
205A86:  ADD             R2, PC; _ZTVNSt6__ndk115messages_bynameIcEE_ptr
205A88:  LDR             R2, [R2]; `vtable for'std::messages_byname<char> ...
205A8A:  ADDS            R2, #8
205A8C:  STRD.W          R2, R0, [R1]
205A90:  MOV             R0, R4
205A92:  BL              sub_2057E8
205A96:  MOVS            R0, #8; unsigned int
205A98:  BLX             j__Znwj; operator new(uint)
205A9C:  MOV             R1, R0
205A9E:  LDR             R2, =(_ZTVNSt6__ndk115messages_bynameIwEE_ptr - 0x205AA8)
205AA0:  MOV.W           R0, #0xFFFFFFFF
205AA4:  ADD             R2, PC; _ZTVNSt6__ndk115messages_bynameIwEE_ptr
205AA6:  LDR             R2, [R2]; `vtable for'std::messages_byname<wchar_t> ...
205AA8:  ADDS            R2, #8
205AAA:  STRD.W          R2, R0, [R1]
205AAE:  MOV             R0, R4
205AB0:  BL              sub_20580C
205AB4:  MOV             R0, R4
205AB6:  POP.W           {R8-R10}
205ABA:  POP             {R4-R7,PC}
