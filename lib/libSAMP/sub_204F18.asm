; =========================================================
; Game Engine Function: sub_204F18
; Address            : 0x204F18 - 0x20517E
; =========================================================

204F18:  PUSH            {R4-R7,LR}
204F1A:  ADD             R7, SP, #0xC
204F1C:  PUSH.W          {R8,R9,R11}
204F20:  MOV             R4, R0
204F22:  LDR             R0, =(_ZTVNSt6__ndk16locale5__impE - 0x204F2C); `vtable for'std::locale::__imp ...
204F24:  MOV             R5, R1
204F26:  SUBS            R1, R2, #1
204F28:  ADD             R0, PC; `vtable for'std::locale::__imp
204F2A:  ADD.W           R9, R4, #8
204F2E:  ADDS            R0, #8
204F30:  STRD.W          R0, R1, [R4]
204F34:  MOV             R0, R9
204F36:  MOVS            R1, #0x1C
204F38:  BL              sub_204AF4
204F3C:  ADD.W           R6, R4, #0x90
204F40:  MOV             R0, R6
204F42:  MOV             R1, R5
204F44:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
204F48:  BLX             j__ZNSt6__ndk16locale7classicEv; std::locale::classic(void)
204F4C:  LDR             R0, [R0]
204F4E:  ADD.W           R1, R0, #8
204F52:  MOV             R0, R9; int
204F54:  BL              sub_20524C
204F58:  MOVS            R5, #0
204F5A:  LDRD.W          R0, R1, [R4,#8]
204F5E:  SUBS            R1, R1, R0
204F60:  CMP.W           R5, R1,ASR#2
204F64:  BCS             loc_204F74
204F66:  LDR.W           R0, [R0,R5,LSL#2]; this
204F6A:  CBZ             R0, loc_204F70
204F6C:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
204F70:  ADDS            R5, #1
204F72:  B               loc_204F5A
204F74:  MOVS            R0, #0xC; unsigned int
204F76:  BLX             j__Znwj; operator new(uint)
204F7A:  MOV             R5, R0
204F7C:  MOV             R1, R6
204F7E:  MOVS            R2, #0
204F80:  BLX             j__ZNSt6__ndk114collate_bynameIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::collate_byname<char>::collate_byname(std::string const&,uint)
204F84:  MOV             R0, R4
204F86:  MOV             R1, R5
204F88:  BL              sub_205264
204F8C:  MOVS            R0, #0xC; unsigned int
204F8E:  BLX             j__Znwj; operator new(uint)
204F92:  MOV             R5, R0
204F94:  MOV             R1, R6
204F96:  MOVS            R2, #0
204F98:  BLX             j__ZNSt6__ndk114collate_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::collate_byname<wchar_t>::collate_byname(std::string const&,uint)
204F9C:  MOV             R0, R4
204F9E:  MOV             R1, R5
204FA0:  BL              sub_205288
204FA4:  MOVS            R0, #0x14; unsigned int
204FA6:  BLX             j__Znwj; operator new(uint)
204FAA:  MOV             R5, R0
204FAC:  MOV             R1, R6
204FAE:  MOVS            R2, #0
204FB0:  BLX             j__ZNSt6__ndk112ctype_bynameIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::ctype_byname<char>::ctype_byname(std::string const&,uint)
204FB4:  MOV             R0, R4
204FB6:  MOV             R1, R5
204FB8:  BL              sub_2052AC
204FBC:  MOVS            R0, #0xC; unsigned int
204FBE:  BLX             j__Znwj; operator new(uint)
204FC2:  MOV             R5, R0
204FC4:  MOV             R1, R6
204FC6:  MOVS            R2, #0
204FC8:  BLX             j__ZNSt6__ndk112ctype_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::ctype_byname<wchar_t>::ctype_byname(std::string const&,uint)
204FCC:  MOV             R0, R4
204FCE:  MOV             R1, R5
204FD0:  BL              sub_2052D0
204FD4:  MOVS            R0, #8; unsigned int
204FD6:  BLX             j__Znwj; operator new(uint)
204FDA:  MOV             R1, R0
204FDC:  LDR             R2, =(_ZTVNSt6__ndk114codecvt_bynameIcc9mbstate_tEE_ptr - 0x204FE6)
204FDE:  MOV.W           R0, #0xFFFFFFFF
204FE2:  ADD             R2, PC; _ZTVNSt6__ndk114codecvt_bynameIcc9mbstate_tEE_ptr
204FE4:  LDR             R2, [R2]; `vtable for'std::codecvt_byname<char,char,mbstate_t> ...
204FE6:  ADDS            R2, #8
204FE8:  STRD.W          R2, R0, [R1]
204FEC:  MOV             R0, R4
204FEE:  BL              sub_2052F4
204FF2:  MOVS            R0, #0xC; unsigned int
204FF4:  BLX             j__Znwj; operator new(uint)
204FF8:  MOV             R5, R0
204FFA:  MOV             R1, R6
204FFC:  MOVS            R2, #0
204FFE:  BL              sub_20533C
205002:  MOV             R0, R4
205004:  MOV             R1, R5
205006:  BL              sub_205318
20500A:  MOVS            R0, #8; unsigned int
20500C:  BLX             j__Znwj; operator new(uint)
205010:  MOV             R1, R0
205012:  LDR             R2, =(_ZTVNSt6__ndk114codecvt_bynameIDsc9mbstate_tEE_ptr - 0x20501C)
205014:  MOV.W           R0, #0xFFFFFFFF
205018:  ADD             R2, PC; _ZTVNSt6__ndk114codecvt_bynameIDsc9mbstate_tEE_ptr
20501A:  LDR             R2, [R2]; `vtable for'std::codecvt_byname<char16_t,char,mbstate_t> ...
20501C:  ADDS            R2, #8
20501E:  STRD.W          R2, R0, [R1]
205022:  MOV             R0, R4
205024:  BL              sub_205360
205028:  MOVS            R0, #8; unsigned int
20502A:  BLX             j__Znwj; operator new(uint)
20502E:  MOV             R1, R0
205030:  LDR             R2, =(_ZTVNSt6__ndk114codecvt_bynameIDic9mbstate_tEE_ptr - 0x20503A)
205032:  MOV.W           R0, #0xFFFFFFFF
205036:  ADD             R2, PC; _ZTVNSt6__ndk114codecvt_bynameIDic9mbstate_tEE_ptr
205038:  LDR             R2, [R2]; `vtable for'std::codecvt_byname<char32_t,char,mbstate_t> ...
20503A:  ADDS            R2, #8
20503C:  STRD.W          R2, R0, [R1]
205040:  MOV             R0, R4
205042:  BL              sub_205384
205046:  MOVS            R0, #0x18; unsigned int
205048:  BLX             j__Znwj; operator new(uint)
20504C:  MOV             R5, R0
20504E:  MOV             R1, R6
205050:  MOVS            R2, #0
205052:  BLX             j__ZNSt6__ndk115numpunct_bynameIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::numpunct_byname<char>::numpunct_byname(std::string const&,uint)
205056:  MOV             R0, R4
205058:  MOV             R1, R5
20505A:  BL              sub_2053A8
20505E:  MOVS            R0, #0x1C; unsigned int
205060:  BLX             j__Znwj; operator new(uint)
205064:  MOV             R5, R0
205066:  MOV             R1, R6
205068:  MOVS            R2, #0
20506A:  BLX             j__ZNSt6__ndk115numpunct_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::numpunct_byname<wchar_t>::numpunct_byname(std::string const&,uint)
20506E:  MOV             R0, R4
205070:  MOV             R1, R5
205072:  BL              sub_2053CC
205076:  MOVS            R0, #0x48 ; 'H'; unsigned int
205078:  BLX             j__Znwj; operator new(uint)
20507C:  MOV             R5, R0
20507E:  MOV             R1, R6
205080:  MOVS            R2, #0
205082:  BL              sub_205414
205086:  MOV             R0, R4
205088:  MOV             R1, R5
20508A:  BL              sub_2053F0
20508E:  MOVS            R0, #0x48 ; 'H'; unsigned int
205090:  BLX             j__Znwj; operator new(uint)
205094:  MOV             R5, R0
205096:  MOV             R1, R6
205098:  MOVS            R2, #0
20509A:  BL              sub_2054BC
20509E:  MOV             R0, R4
2050A0:  MOV             R1, R5
2050A2:  BL              sub_205498
2050A6:  MOVS            R0, #0x4C ; 'L'; unsigned int
2050A8:  BLX             j__Znwj; operator new(uint)
2050AC:  MOV             R5, R0
2050AE:  MOV             R1, R6
2050B0:  MOVS            R2, #0
2050B2:  BL              sub_205564
2050B6:  MOV             R0, R4
2050B8:  MOV             R1, R5
2050BA:  BL              sub_205540
2050BE:  MOVS            R0, #0x4C ; 'L'; unsigned int
2050C0:  BLX             j__Znwj; operator new(uint)
2050C4:  MOV             R5, R0
2050C6:  MOV             R1, R6
2050C8:  MOVS            R2, #0
2050CA:  BL              sub_205610
2050CE:  MOV             R0, R4
2050D0:  MOV             R1, R5
2050D2:  BL              sub_2055EC
2050D6:  MOV.W           R0, #0x220; unsigned int
2050DA:  BLX             j__Znwj; operator new(uint)
2050DE:  MOV             R5, R0
2050E0:  MOV             R1, R6
2050E2:  MOVS            R2, #0
2050E4:  BL              sub_2056BC
2050E8:  MOV             R0, R4
2050EA:  MOV             R1, R5
2050EC:  BL              sub_205698
2050F0:  MOV.W           R0, #0x220; unsigned int
2050F4:  BLX             j__Znwj; operator new(uint)
2050F8:  MOV             R5, R0
2050FA:  MOV             R1, R6
2050FC:  MOVS            R2, #0
2050FE:  BL              sub_205728
205102:  MOV             R0, R4
205104:  MOV             R1, R5
205106:  BL              sub_205704
20510A:  MOVS            R0, #0xC; unsigned int
20510C:  BLX             j__Znwj; operator new(uint)
205110:  MOV             R5, R0
205112:  MOV             R1, R6
205114:  MOVS            R2, #0
205116:  BL              sub_205794
20511A:  MOV             R0, R4
20511C:  MOV             R1, R5
20511E:  BL              sub_205770
205122:  MOVS            R0, #0xC; unsigned int
205124:  BLX             j__Znwj; operator new(uint)
205128:  MOV             R5, R0
20512A:  MOV             R1, R6
20512C:  MOVS            R2, #0
20512E:  BL              sub_2057D0
205132:  MOV             R0, R4
205134:  MOV             R1, R5
205136:  BL              sub_2057AC
20513A:  MOVS            R0, #8; unsigned int
20513C:  BLX             j__Znwj; operator new(uint)
205140:  MOV             R1, R0
205142:  LDR             R2, =(_ZTVNSt6__ndk115messages_bynameIcEE_ptr - 0x20514C)
205144:  MOV.W           R0, #0xFFFFFFFF
205148:  ADD             R2, PC; _ZTVNSt6__ndk115messages_bynameIcEE_ptr
20514A:  LDR             R2, [R2]; `vtable for'std::messages_byname<char> ...
20514C:  ADDS            R2, #8
20514E:  STRD.W          R2, R0, [R1]
205152:  MOV             R0, R4
205154:  BL              sub_2057E8
205158:  MOVS            R0, #8; unsigned int
20515A:  BLX             j__Znwj; operator new(uint)
20515E:  MOV             R1, R0
205160:  LDR             R2, =(_ZTVNSt6__ndk115messages_bynameIwEE_ptr - 0x20516A)
205162:  MOV.W           R0, #0xFFFFFFFF
205166:  ADD             R2, PC; _ZTVNSt6__ndk115messages_bynameIwEE_ptr
205168:  LDR             R2, [R2]; `vtable for'std::messages_byname<wchar_t> ...
20516A:  ADDS            R2, #8
20516C:  STRD.W          R2, R0, [R1]
205170:  MOV             R0, R4
205172:  BL              sub_20580C
205176:  MOV             R0, R4
205178:  POP.W           {R8,R9,R11}
20517C:  POP             {R4-R7,PC}
