; =========================================================
; Game Engine Function: sub_ED978
; Address            : 0xED978 - 0xEDC04
; =========================================================

ED978:  PUSH            {R4-R7,LR}
ED97A:  ADD             R7, SP, #0xC
ED97C:  PUSH.W          {R8-R10}
ED980:  MOV             R6, R1
ED982:  LDR             R1, =(_ZTVNSt6__ndk16locale5__impE - 0xED98E); `vtable for'std::locale::__imp ...
ED984:  MOV             R4, R0
ED986:  ADD.W           R9, R4, #8
ED98A:  ADD             R1, PC; `vtable for'std::locale::__imp
ED98C:  MOV             R10, R3
ED98E:  ADDS            R1, #8
ED990:  MOV.W           R0, #0xFFFFFFFF
ED994:  MOV             R5, R2
ED996:  STRD.W          R1, R0, [R4]
ED99A:  MOV             R0, R9
ED99C:  MOVS            R1, #0x1C
ED99E:  BL              sub_ECC3C
ED9A2:  ADD.W           R8, R4, #0x90
ED9A6:  LDR             R1, =(byte_4CC4A - 0xED9AE)
ED9A8:  MOV             R0, R8; int
ED9AA:  ADD             R1, PC; byte_4CC4A ; s
ED9AC:  BL              sub_5FBF8
ED9B0:  ADD.W           R1, R6, #8
ED9B4:  MOV             R0, R9; int
ED9B6:  BL              sub_ED394
ED9BA:  MOVS            R6, #0
ED9BC:  LDRD.W          R0, R1, [R4,#8]
ED9C0:  SUBS            R1, R1, R0
ED9C2:  CMP.W           R6, R1,ASR#2
ED9C6:  BCS             loc_ED9D6
ED9C8:  LDR.W           R0, [R0,R6,LSL#2]; this
ED9CC:  CBZ             R0, loc_ED9D2
ED9CE:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
ED9D2:  ADDS            R6, #1
ED9D4:  B               loc_ED9BC
ED9D6:  MOVS.W          R0, R10,LSL#28
ED9DA:  BPL             loc_EDA0C
ED9DC:  MOVS            R0, #0xC; unsigned int
ED9DE:  BLX             j__Znwj; operator new(uint)
ED9E2:  MOV             R6, R0
ED9E4:  MOV             R1, R5
ED9E6:  MOVS            R2, #0
ED9E8:  BLX             j__ZNSt6__ndk114collate_bynameIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::collate_byname<char>::collate_byname(std::string const&,uint)
ED9EC:  MOV             R0, R4
ED9EE:  MOV             R1, R6
ED9F0:  BL              sub_ED3AC
ED9F4:  MOVS            R0, #0xC; unsigned int
ED9F6:  BLX             j__Znwj; operator new(uint)
ED9FA:  MOV             R6, R0
ED9FC:  MOV             R1, R5
ED9FE:  MOVS            R2, #0
EDA00:  BLX             j__ZNSt6__ndk114collate_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::collate_byname<wchar_t>::collate_byname(std::string const&,uint)
EDA04:  MOV             R0, R4
EDA06:  MOV             R1, R6
EDA08:  BL              sub_ED3D0
EDA0C:  MOVS.W          R0, R10,LSL#31
EDA10:  BEQ             loc_EDAB4
EDA12:  MOVS            R0, #0x14; unsigned int
EDA14:  BLX             j__Znwj; operator new(uint)
EDA18:  MOV             R6, R0
EDA1A:  MOV             R1, R5
EDA1C:  MOVS            R2, #0
EDA1E:  BLX             j__ZNSt6__ndk112ctype_bynameIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::ctype_byname<char>::ctype_byname(std::string const&,uint)
EDA22:  MOV             R0, R4
EDA24:  MOV             R1, R6
EDA26:  BL              sub_ED3F4
EDA2A:  MOVS            R0, #0xC; unsigned int
EDA2C:  BLX             j__Znwj; operator new(uint)
EDA30:  MOV             R6, R0
EDA32:  MOV             R1, R5
EDA34:  MOVS            R2, #0
EDA36:  BLX             j__ZNSt6__ndk112ctype_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::ctype_byname<wchar_t>::ctype_byname(std::string const&,uint)
EDA3A:  MOV             R0, R4
EDA3C:  MOV             R1, R6
EDA3E:  BL              sub_ED418
EDA42:  MOVS            R0, #8; unsigned int
EDA44:  BLX             j__Znwj; operator new(uint)
EDA48:  MOV             R1, R0
EDA4A:  LDR             R2, =(_ZTVNSt6__ndk114codecvt_bynameIcc9mbstate_tEE_ptr - 0xEDA54)
EDA4C:  MOV.W           R0, #0xFFFFFFFF
EDA50:  ADD             R2, PC; _ZTVNSt6__ndk114codecvt_bynameIcc9mbstate_tEE_ptr
EDA52:  LDR             R2, [R2]; `vtable for'std::codecvt_byname<char,char,mbstate_t> ...
EDA54:  ADDS            R2, #8
EDA56:  STRD.W          R2, R0, [R1]
EDA5A:  MOV             R0, R4
EDA5C:  BL              sub_ED43C
EDA60:  MOVS            R0, #0xC; unsigned int
EDA62:  BLX             j__Znwj; operator new(uint)
EDA66:  MOV             R6, R0
EDA68:  MOV             R1, R5
EDA6A:  MOVS            R2, #0
EDA6C:  BL              sub_ED484
EDA70:  MOV             R0, R4
EDA72:  MOV             R1, R6
EDA74:  BL              sub_ED460
EDA78:  MOVS            R0, #8; unsigned int
EDA7A:  BLX             j__Znwj; operator new(uint)
EDA7E:  MOV             R1, R0
EDA80:  LDR             R2, =(_ZTVNSt6__ndk114codecvt_bynameIDsc9mbstate_tEE_ptr - 0xEDA8A)
EDA82:  MOV.W           R0, #0xFFFFFFFF
EDA86:  ADD             R2, PC; _ZTVNSt6__ndk114codecvt_bynameIDsc9mbstate_tEE_ptr
EDA88:  LDR             R2, [R2]; `vtable for'std::codecvt_byname<char16_t,char,mbstate_t> ...
EDA8A:  ADDS            R2, #8
EDA8C:  STRD.W          R2, R0, [R1]
EDA90:  MOV             R0, R4
EDA92:  BL              sub_ED4A8
EDA96:  MOVS            R0, #8; unsigned int
EDA98:  BLX             j__Znwj; operator new(uint)
EDA9C:  MOV             R1, R0
EDA9E:  LDR             R2, =(_ZTVNSt6__ndk114codecvt_bynameIDic9mbstate_tEE_ptr - 0xEDAA8)
EDAA0:  MOV.W           R0, #0xFFFFFFFF
EDAA4:  ADD             R2, PC; _ZTVNSt6__ndk114codecvt_bynameIDic9mbstate_tEE_ptr
EDAA6:  LDR             R2, [R2]; `vtable for'std::codecvt_byname<char32_t,char,mbstate_t> ...
EDAA8:  ADDS            R2, #8
EDAAA:  STRD.W          R2, R0, [R1]
EDAAE:  MOV             R0, R4
EDAB0:  BL              sub_ED4CC
EDAB4:  MOVS.W          R0, R10,LSL#27
EDAB8:  BPL             loc_EDB1A
EDABA:  MOVS            R0, #0x48 ; 'H'; unsigned int
EDABC:  BLX             j__Znwj; operator new(uint)
EDAC0:  MOV             R6, R0
EDAC2:  MOV             R1, R5
EDAC4:  MOVS            R2, #0
EDAC6:  BL              sub_ED55C
EDACA:  MOV             R0, R4
EDACC:  MOV             R1, R6
EDACE:  BL              sub_ED538
EDAD2:  MOVS            R0, #0x48 ; 'H'; unsigned int
EDAD4:  BLX             j__Znwj; operator new(uint)
EDAD8:  MOV             R6, R0
EDADA:  MOV             R1, R5
EDADC:  MOVS            R2, #0
EDADE:  BL              sub_ED604
EDAE2:  MOV             R0, R4
EDAE4:  MOV             R1, R6
EDAE6:  BL              sub_ED5E0
EDAEA:  MOVS            R0, #0x4C ; 'L'; unsigned int
EDAEC:  BLX             j__Znwj; operator new(uint)
EDAF0:  MOV             R6, R0
EDAF2:  MOV             R1, R5
EDAF4:  MOVS            R2, #0
EDAF6:  BL              sub_ED6AC
EDAFA:  MOV             R0, R4
EDAFC:  MOV             R1, R6
EDAFE:  BL              sub_ED688
EDB02:  MOVS            R0, #0x4C ; 'L'; unsigned int
EDB04:  BLX             j__Znwj; operator new(uint)
EDB08:  MOV             R6, R0
EDB0A:  MOV             R1, R5
EDB0C:  MOVS            R2, #0
EDB0E:  BL              sub_ED758
EDB12:  MOV             R0, R4
EDB14:  MOV             R1, R6
EDB16:  BL              sub_ED734
EDB1A:  MOVS.W          R0, R10,LSL#30
EDB1E:  BPL             loc_EDB50
EDB20:  MOVS            R0, #0x18; unsigned int
EDB22:  BLX             j__Znwj; operator new(uint)
EDB26:  MOV             R6, R0
EDB28:  MOV             R1, R5
EDB2A:  MOVS            R2, #0
EDB2C:  BLX             j__ZNSt6__ndk115numpunct_bynameIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::numpunct_byname<char>::numpunct_byname(std::string const&,uint)
EDB30:  MOV             R0, R4
EDB32:  MOV             R1, R6
EDB34:  BL              sub_ED4F0
EDB38:  MOVS            R0, #0x1C; unsigned int
EDB3A:  BLX             j__Znwj; operator new(uint)
EDB3E:  MOV             R6, R0
EDB40:  MOV             R1, R5
EDB42:  MOVS            R2, #0
EDB44:  BLX             j__ZNSt6__ndk115numpunct_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::numpunct_byname<wchar_t>::numpunct_byname(std::string const&,uint)
EDB48:  MOV             R0, R4
EDB4A:  MOV             R1, R6
EDB4C:  BL              sub_ED514
EDB50:  MOVS.W          R0, R10,LSL#29
EDB54:  BPL             loc_EDBBA
EDB56:  MOV.W           R0, #0x220; unsigned int
EDB5A:  BLX             j__Znwj; operator new(uint)
EDB5E:  MOV             R6, R0
EDB60:  MOV             R1, R5
EDB62:  MOVS            R2, #0
EDB64:  BL              sub_ED804
EDB68:  MOV             R0, R4
EDB6A:  MOV             R1, R6
EDB6C:  BL              sub_ED7E0
EDB70:  MOV.W           R0, #0x220; unsigned int
EDB74:  BLX             j__Znwj; operator new(uint)
EDB78:  MOV             R6, R0
EDB7A:  MOV             R1, R5
EDB7C:  MOVS            R2, #0
EDB7E:  BL              sub_ED870
EDB82:  MOV             R0, R4
EDB84:  MOV             R1, R6
EDB86:  BL              sub_ED84C
EDB8A:  MOVS            R0, #0xC; unsigned int
EDB8C:  BLX             j__Znwj; operator new(uint)
EDB90:  MOV             R6, R0
EDB92:  MOV             R1, R5
EDB94:  MOVS            R2, #0
EDB96:  BL              sub_ED8DC
EDB9A:  MOV             R0, R4
EDB9C:  MOV             R1, R6
EDB9E:  BL              sub_ED8B8
EDBA2:  MOVS            R0, #0xC; unsigned int
EDBA4:  BLX             j__Znwj; operator new(uint)
EDBA8:  MOV             R6, R0
EDBAA:  MOV             R1, R5
EDBAC:  MOVS            R2, #0
EDBAE:  BL              sub_ED918
EDBB2:  MOV             R0, R4
EDBB4:  MOV             R1, R6
EDBB6:  BL              sub_ED8F4
EDBBA:  MOVS.W          R0, R10,LSL#26
EDBBE:  BPL             loc_EDBFC
EDBC0:  MOVS            R0, #8; unsigned int
EDBC2:  BLX             j__Znwj; operator new(uint)
EDBC6:  MOV             R1, R0
EDBC8:  LDR             R2, =(_ZTVNSt6__ndk115messages_bynameIcEE_ptr - 0xEDBD2)
EDBCA:  MOV.W           R0, #0xFFFFFFFF
EDBCE:  ADD             R2, PC; _ZTVNSt6__ndk115messages_bynameIcEE_ptr
EDBD0:  LDR             R2, [R2]; `vtable for'std::messages_byname<char> ...
EDBD2:  ADDS            R2, #8
EDBD4:  STRD.W          R2, R0, [R1]
EDBD8:  MOV             R0, R4
EDBDA:  BL              sub_ED930
EDBDE:  MOVS            R0, #8; unsigned int
EDBE0:  BLX             j__Znwj; operator new(uint)
EDBE4:  MOV             R1, R0
EDBE6:  LDR             R2, =(_ZTVNSt6__ndk115messages_bynameIwEE_ptr - 0xEDBF0)
EDBE8:  MOV.W           R0, #0xFFFFFFFF
EDBEC:  ADD             R2, PC; _ZTVNSt6__ndk115messages_bynameIwEE_ptr
EDBEE:  LDR             R2, [R2]; `vtable for'std::messages_byname<wchar_t> ...
EDBF0:  ADDS            R2, #8
EDBF2:  STRD.W          R2, R0, [R1]
EDBF6:  MOV             R0, R4
EDBF8:  BL              sub_ED954
EDBFC:  MOV             R0, R4
EDBFE:  POP.W           {R8-R10}
EDC02:  POP             {R4-R7,PC}
