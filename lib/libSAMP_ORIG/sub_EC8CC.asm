; =========================================================
; Game Engine Function: sub_EC8CC
; Address            : 0xEC8CC - 0xECBA2
; =========================================================

EC8CC:  PUSH            {R4-R7,LR}
EC8CE:  ADD             R7, SP, #0xC
EC8D0:  PUSH.W          {R7-R11}
EC8D4:  MOV             R4, R0
EC8D6:  LDR             R0, =(_ZTVNSt6__ndk16locale5__impE - 0xEC8E2); `vtable for'std::locale::__imp ...
EC8D8:  SUBS            R1, #1
EC8DA:  ADD.W           R8, R4, #8
EC8DE:  ADD             R0, PC; `vtable for'std::locale::__imp
EC8E0:  ADDS            R0, #8
EC8E2:  STRD.W          R0, R1, [R4]
EC8E6:  MOV             R0, R8
EC8E8:  MOVS            R1, #0x1C
EC8EA:  BL              sub_ECC3C
EC8EE:  ADD.W           R9, R4, #0x90
EC8F2:  LDR             R1, =(aC - 0xEC8FA); "C" ...
EC8F4:  MOV             R0, R9; int
EC8F6:  ADD             R1, PC; "C"
EC8F8:  BL              sub_5FBF8
EC8FC:  LDR             R0, [R4,#8]
EC8FE:  MOVS            R5, #0
EC900:  STR             R0, [R4,#0xC]
EC902:  LDR             R0, =(_ZTVNSt6__ndk17collateIcEE_ptr - 0xEC90A)
EC904:  LDR             R1, =(byte_1AF440 - 0xEC90C)
EC906:  ADD             R0, PC; _ZTVNSt6__ndk17collateIcEE_ptr
EC908:  ADD             R1, PC; byte_1AF440
EC90A:  LDR             R0, [R0]; `vtable for'std::collate<char> ...
EC90C:  MOV             R11, R1
EC90E:  ADDS            R0, #8
EC910:  STR.W           R0, [R1,#(dword_1AF450 - 0x1AF440)]!
EC914:  STR             R5, [R1,#(dword_1AF454 - 0x1AF450)]
EC916:  MOV             R0, R4
EC918:  BL              sub_ECC70
EC91C:  LDR             R0, =(_ZTVNSt6__ndk17collateIwEE_ptr - 0xEC924)
EC91E:  MOV             R1, R11
EC920:  ADD             R0, PC; _ZTVNSt6__ndk17collateIwEE_ptr
EC922:  LDR             R0, [R0]; `vtable for'std::collate<wchar_t> ...
EC924:  ADDS            R0, #8
EC926:  STR.W           R0, [R1,#(dword_1AF458 - 0x1AF440)]!
EC92A:  STR             R5, [R1,#(dword_1AF45C - 0x1AF458)]
EC92C:  MOV             R0, R4
EC92E:  BL              sub_ECC94
EC932:  LDR             R0, =(_ZTVNSt6__ndk15ctypeIcEE_ptr - 0xEC93C)
EC934:  MOVS            R6, #0
EC936:  LDR             R1, =(unk_1AF530 - 0xEC93E)
EC938:  ADD             R0, PC; _ZTVNSt6__ndk15ctypeIcEE_ptr
EC93A:  ADD             R1, PC; unk_1AF530
EC93C:  LDR             R0, [R0]; `vtable for'std::ctype<char> ...
EC93E:  MOV             R10, R1
EC940:  ADDS            R0, #8
EC942:  STR.W           R0, [R1,#(dword_1AF558 - 0x1AF530)]!
EC946:  STRB            R6, [R1,#(byte_1AF564 - 0x1AF558)]
EC948:  LDR             R0, =(unk_5CFB8 - 0xEC94E)
EC94A:  ADD             R0, PC; unk_5CFB8
EC94C:  STRD.W          R6, R0, [R1,#(dword_1AF55C - 0x1AF558)]
EC950:  MOV             R0, R4
EC952:  BL              sub_ECCB8
EC956:  LDR             R0, =(_ZTVNSt6__ndk15ctypeIwEE_ptr - 0xEC95E)
EC958:  MOV             R1, R11
EC95A:  ADD             R0, PC; _ZTVNSt6__ndk15ctypeIwEE_ptr
EC95C:  LDR             R0, [R0]; `vtable for'std::ctype<wchar_t> ...
EC95E:  ADDS            R0, #8
EC960:  STR.W           R0, [R1,#(dword_1AF460 - 0x1AF440)]!
EC964:  STR             R6, [R1,#(dword_1AF464 - 0x1AF460)]
EC966:  MOV             R0, R4
EC968:  BL              sub_ECCDC
EC96C:  LDR             R0, =(_ZTVNSt6__ndk17codecvtIcc9mbstate_tEE_ptr - 0xEC974)
EC96E:  MOV             R1, R11
EC970:  ADD             R0, PC; _ZTVNSt6__ndk17codecvtIcc9mbstate_tEE_ptr
EC972:  LDR             R0, [R0]; `vtable for'std::codecvt<char,char,mbstate_t> ...
EC974:  ADDS            R0, #8
EC976:  STR.W           R0, [R1,#(dword_1AF468 - 0x1AF440)]!
EC97A:  MOVS            R0, #0
EC97C:  STR             R0, [R1,#(dword_1AF46C - 0x1AF468)]
EC97E:  MOV             R0, R4
EC980:  BL              sub_ECD00
EC984:  ADD.W           R6, R10, #0x38 ; '8'
EC988:  MOV             R0, R10
EC98A:  MOVS            R1, #1
EC98C:  MOV             R0, R6
EC98E:  BLX             j__ZNSt6__ndk17codecvtIwc9mbstate_tEC2Ej; std::codecvt<wchar_t,char,mbstate_t>::codecvt(uint)
EC992:  MOV             R0, R4
EC994:  MOV             R1, R6
EC996:  BL              sub_ECD24
EC99A:  LDR             R0, =(_ZTVNSt6__ndk17codecvtIDsc9mbstate_tEE_ptr - 0xEC9A4)
EC99C:  MOV             R1, R11
EC99E:  MOVS            R5, #0
EC9A0:  ADD             R0, PC; _ZTVNSt6__ndk17codecvtIDsc9mbstate_tEE_ptr
EC9A2:  LDR             R0, [R0]; `vtable for'std::codecvt<char16_t,char,mbstate_t> ...
EC9A4:  ADDS            R0, #8
EC9A6:  STR.W           R0, [R1,#(dword_1AF470 - 0x1AF440)]!
EC9AA:  STR             R5, [R1,#(dword_1AF474 - 0x1AF470)]
EC9AC:  MOV             R0, R4
EC9AE:  BL              sub_ECD48
EC9B2:  LDR             R0, =(_ZTVNSt6__ndk17codecvtIDic9mbstate_tEE_ptr - 0xEC9BA)
EC9B4:  MOV             R1, R11
EC9B6:  ADD             R0, PC; _ZTVNSt6__ndk17codecvtIDic9mbstate_tEE_ptr
EC9B8:  LDR             R0, [R0]; `vtable for'std::codecvt<char32_t,char,mbstate_t> ...
EC9BA:  ADDS            R0, #8
EC9BC:  STR.W           R0, [R1,#(dword_1AF478 - 0x1AF440)]!
EC9C0:  STR             R5, [R1,#(dword_1AF47C - 0x1AF478)]
EC9C2:  MOV             R0, R4
EC9C4:  BL              sub_ECD6C
EC9C8:  LDR             R5, =(unk_1AF5A8 - 0xEC9D0)
EC9CA:  MOVS            R1, #1
EC9CC:  ADD             R5, PC; unk_1AF5A8
EC9CE:  ADD.W           R6, R5, #0x40 ; '@'
EC9D2:  MOV             R0, R6
EC9D4:  BLX             j__ZNSt6__ndk18numpunctIcEC2Ej; std::numpunct<char>::numpunct(uint)
EC9D8:  MOV             R0, R4
EC9DA:  MOV             R1, R6
EC9DC:  BL              sub_ECD90
EC9E0:  ADD.W           R6, R5, #0x58 ; 'X'
EC9E4:  MOVS            R1, #1
EC9E6:  MOV             R0, R6
EC9E8:  BLX             j__ZNSt6__ndk18numpunctIwEC2Ej; std::numpunct<wchar_t>::numpunct(uint)
EC9EC:  MOV             R0, R4
EC9EE:  MOV             R1, R6
EC9F0:  BL              sub_ECDB4
EC9F4:  LDR             R0, =(_ZTVNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0xEC9FE)
EC9F6:  MOV             R1, R11
EC9F8:  MOVS            R5, #0
EC9FA:  ADD             R0, PC; _ZTVNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
EC9FC:  LDR             R0, [R0]; `vtable for'std::num_get<char,std::istreambuf_iterator<char>> ...
EC9FE:  ADDS            R0, #8
ECA00:  STR.W           R0, [R1,#(dword_1AF480 - 0x1AF440)]!
ECA04:  STR             R5, [R1,#(dword_1AF484 - 0x1AF480)]
ECA06:  MOV             R0, R4
ECA08:  BL              sub_ECDD8
ECA0C:  LDR             R0, =(_ZTVNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0xECA14)
ECA0E:  MOV             R1, R11
ECA10:  ADD             R0, PC; _ZTVNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
ECA12:  LDR             R0, [R0]; `vtable for'std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>> ...
ECA14:  ADDS            R0, #8
ECA16:  STR.W           R0, [R1,#(dword_1AF488 - 0x1AF440)]!
ECA1A:  STR             R5, [R1,#(dword_1AF48C - 0x1AF488)]
ECA1C:  MOV             R0, R4
ECA1E:  BL              sub_ECDFC
ECA22:  LDR             R0, =(_ZTVNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0xECA2C)
ECA24:  MOV             R1, R11
ECA26:  MOVS            R5, #0
ECA28:  ADD             R0, PC; _ZTVNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
ECA2A:  LDR             R0, [R0]; `vtable for'std::num_put<char,std::ostreambuf_iterator<char>> ...
ECA2C:  ADDS            R0, #8
ECA2E:  STR.W           R0, [R1,#(dword_1AF490 - 0x1AF440)]!
ECA32:  STR             R5, [R1,#(dword_1AF494 - 0x1AF490)]
ECA34:  MOV             R0, R4
ECA36:  BL              sub_ECE20
ECA3A:  LDR             R0, =(_ZTVNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0xECA42)
ECA3C:  MOV             R1, R11
ECA3E:  ADD             R0, PC; _ZTVNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
ECA40:  LDR             R0, [R0]; `vtable for'std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>> ...
ECA42:  ADDS            R0, #8
ECA44:  STR.W           R0, [R1,#(dword_1AF498 - 0x1AF440)]!
ECA48:  STR             R5, [R1,#(dword_1AF49C - 0x1AF498)]
ECA4A:  MOV             R0, R4
ECA4C:  BL              sub_ECE44
ECA50:  LDR             R0, =(_ZTVNSt6__ndk110moneypunctIcLb0EEE_ptr - 0xECA5A)
ECA52:  MOV             R1, R11
ECA54:  MOVS            R5, #0
ECA56:  ADD             R0, PC; _ZTVNSt6__ndk110moneypunctIcLb0EEE_ptr
ECA58:  LDR             R0, [R0]; `vtable for'std::moneypunct<char,false> ...
ECA5A:  ADDS            R0, #8
ECA5C:  STR.W           R0, [R1,#(dword_1AF4A0 - 0x1AF440)]!
ECA60:  STR             R5, [R1,#(dword_1AF4A4 - 0x1AF4A0)]
ECA62:  MOV             R0, R4
ECA64:  BL              sub_ECE68
ECA68:  LDR             R0, =(_ZTVNSt6__ndk110moneypunctIcLb1EEE_ptr - 0xECA70)
ECA6A:  MOV             R1, R11
ECA6C:  ADD             R0, PC; _ZTVNSt6__ndk110moneypunctIcLb1EEE_ptr
ECA6E:  LDR             R0, [R0]; `vtable for'std::moneypunct<char,true> ...
ECA70:  ADDS            R0, #8
ECA72:  STR.W           R0, [R1,#(dword_1AF4A8 - 0x1AF440)]!
ECA76:  STR             R5, [R1,#(dword_1AF4AC - 0x1AF4A8)]
ECA78:  MOV             R0, R4
ECA7A:  BL              sub_ECE8C
ECA7E:  LDR             R0, =(_ZTVNSt6__ndk110moneypunctIwLb0EEE_ptr - 0xECA88)
ECA80:  MOV             R1, R11
ECA82:  MOVS            R6, #0
ECA84:  ADD             R0, PC; _ZTVNSt6__ndk110moneypunctIwLb0EEE_ptr
ECA86:  LDR             R0, [R0]; `vtable for'std::moneypunct<wchar_t,false> ...
ECA88:  ADDS            R0, #8
ECA8A:  STR.W           R0, [R1,#(dword_1AF4B0 - 0x1AF440)]!
ECA8E:  STR             R6, [R1,#(dword_1AF4B4 - 0x1AF4B0)]
ECA90:  MOV             R0, R4
ECA92:  BL              sub_ECEB0
ECA96:  LDR             R5, =(dword_1AF4B8 - 0xECA9E)
ECA98:  LDR             R0, =(_ZTVNSt6__ndk110moneypunctIwLb1EEE_ptr - 0xECAA0)
ECA9A:  ADD             R5, PC; dword_1AF4B8
ECA9C:  ADD             R0, PC; _ZTVNSt6__ndk110moneypunctIwLb1EEE_ptr
ECA9E:  LDR             R0, [R0]; `vtable for'std::moneypunct<wchar_t,true> ...
ECAA0:  ADDS            R0, #8
ECAA2:  STRD.W          R0, R6, [R5]
ECAA6:  MOV             R0, R4
ECAA8:  MOV             R1, R5
ECAAA:  BL              sub_ECED4
ECAAE:  LDR             R0, =(_ZTVNSt6__ndk19money_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0xECAB8)
ECAB0:  MOV             R1, R5
ECAB2:  MOVS            R6, #0
ECAB4:  ADD             R0, PC; _ZTVNSt6__ndk19money_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
ECAB6:  LDR             R0, [R0]; `vtable for'std::money_get<char,std::istreambuf_iterator<char>> ...
ECAB8:  ADDS            R0, #8
ECABA:  STR.W           R0, [R1,#(dword_1AF4C0 - 0x1AF4B8)]!
ECABE:  STR             R6, [R1,#(dword_1AF4C4 - 0x1AF4C0)]
ECAC0:  MOV             R0, R4
ECAC2:  BL              sub_ECEF8
ECAC6:  LDR             R0, =(_ZTVNSt6__ndk19money_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0xECACE)
ECAC8:  MOV             R1, R5
ECACA:  ADD             R0, PC; _ZTVNSt6__ndk19money_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
ECACC:  LDR             R0, [R0]; `vtable for'std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>> ...
ECACE:  ADDS            R0, #8
ECAD0:  STR.W           R0, [R1,#(dword_1AF4C8 - 0x1AF4B8)]!
ECAD4:  STR             R6, [R1,#(dword_1AF4CC - 0x1AF4C8)]
ECAD6:  MOV             R0, R4
ECAD8:  BL              sub_ECF1C
ECADC:  LDR             R0, =(_ZTVNSt6__ndk19money_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0xECAE6)
ECADE:  MOV             R1, R5
ECAE0:  MOVS            R6, #0
ECAE2:  ADD             R0, PC; _ZTVNSt6__ndk19money_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
ECAE4:  LDR             R0, [R0]; `vtable for'std::money_put<char,std::ostreambuf_iterator<char>> ...
ECAE6:  ADDS            R0, #8
ECAE8:  STR.W           R0, [R1,#(dword_1AF4D0 - 0x1AF4B8)]!
ECAEC:  STR             R6, [R1,#(dword_1AF4D4 - 0x1AF4D0)]
ECAEE:  MOV             R0, R4
ECAF0:  BL              sub_ECF40
ECAF4:  LDR             R0, =(_ZTVNSt6__ndk19money_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0xECAFC)
ECAF6:  MOV             R1, R5
ECAF8:  ADD             R0, PC; _ZTVNSt6__ndk19money_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
ECAFA:  LDR             R0, [R0]; `vtable for'std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>> ...
ECAFC:  ADDS            R0, #8
ECAFE:  STR.W           R0, [R1,#(dword_1AF4D8 - 0x1AF4B8)]!
ECB02:  STR             R6, [R1,#(dword_1AF4DC - 0x1AF4D8)]
ECB04:  MOV             R0, R4
ECB06:  BL              sub_ECF64
ECB0A:  LDR             R0, =(_ZTVNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0xECB14)
ECB0C:  MOV             R1, R10
ECB0E:  MOVS            R6, #0
ECB10:  ADD             R0, PC; _ZTVNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
ECB12:  LDR             R0, [R0]; `vtable for'std::time_get<char,std::istreambuf_iterator<char>> ...
ECB14:  ADD.W           R2, R0, #8
ECB18:  STR.W           R2, [R1,#(dword_1AF578 - 0x1AF530)]!
ECB1C:  ADDS            R0, #0x38 ; '8'
ECB1E:  STRD.W          R6, R0, [R1,#(dword_1AF57C - 0x1AF578)]
ECB22:  MOV             R0, R4
ECB24:  BL              sub_ECF88
ECB28:  LDR             R0, =(_ZTVNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0xECB30)
ECB2A:  MOV             R1, R10
ECB2C:  ADD             R0, PC; _ZTVNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
ECB2E:  LDR             R0, [R0]; `vtable for'std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>> ...
ECB30:  ADD.W           R2, R0, #8
ECB34:  STR.W           R2, [R1,#(dword_1AF588 - 0x1AF530)]!
ECB38:  ADDS            R0, #0x38 ; '8'
ECB3A:  STRD.W          R6, R0, [R1,#(dword_1AF58C - 0x1AF588)]
ECB3E:  MOV             R0, R4
ECB40:  BL              sub_ECFAC
ECB44:  ADD.W           R6, R10, #0x68 ; 'h'
ECB48:  MOVS            R1, #1
ECB4A:  MOV             R0, R6
ECB4C:  BL              sub_F635C
ECB50:  MOV             R0, R4
ECB52:  MOV             R1, R6
ECB54:  BL              sub_ECFD0
ECB58:  LDR             R0, =(unk_1AF5A8 - 0xECB60)
ECB5A:  MOVS            R1, #1
ECB5C:  ADD             R0, PC; unk_1AF5A8
ECB5E:  BL              sub_F6398
ECB62:  LDR             R1, =(unk_1AF5A8 - 0xECB6A)
ECB64:  MOV             R0, R4
ECB66:  ADD             R1, PC; unk_1AF5A8
ECB68:  BL              sub_ECFF4
ECB6C:  LDR             R0, =(_ZTVNSt6__ndk18messagesIcEE_ptr - 0xECB76)
ECB6E:  MOV             R1, R5
ECB70:  MOVS            R6, #0
ECB72:  ADD             R0, PC; _ZTVNSt6__ndk18messagesIcEE_ptr
ECB74:  LDR             R0, [R0]; `vtable for'std::messages<char> ...
ECB76:  ADDS            R0, #8
ECB78:  STR.W           R0, [R1,#(dword_1AF4E0 - 0x1AF4B8)]!
ECB7C:  STR             R6, [R1,#(dword_1AF4E4 - 0x1AF4E0)]
ECB7E:  MOV             R0, R4
ECB80:  BL              sub_ED018
ECB84:  LDR             R0, =(_ZTVNSt6__ndk18messagesIwEE_ptr - 0xECB8A)
ECB86:  ADD             R0, PC; _ZTVNSt6__ndk18messagesIwEE_ptr
ECB88:  LDR             R0, [R0]; `vtable for'std::messages<wchar_t> ...
ECB8A:  ADDS            R0, #8
ECB8C:  STR.W           R0, [R5,#(dword_1AF4E8 - 0x1AF4B8)]!
ECB90:  STR             R6, [R5,#(dword_1AF4EC - 0x1AF4E8)]
ECB92:  MOV             R0, R4
ECB94:  MOV             R1, R5
ECB96:  BL              sub_ED03C
ECB9A:  MOV             R0, R4
ECB9C:  POP.W           {R3,R8-R11}
ECBA0:  POP             {R4-R7,PC}
