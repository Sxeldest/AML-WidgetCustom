; =========================================================
; Game Engine Function: sub_ED060
; Address            : 0xED060 - 0xED2C6
; =========================================================

ED060:  PUSH            {R4-R7,LR}
ED062:  ADD             R7, SP, #0xC
ED064:  PUSH.W          {R8,R9,R11}
ED068:  MOV             R4, R0
ED06A:  LDR             R0, =(_ZTVNSt6__ndk16locale5__impE - 0xED074); `vtable for'std::locale::__imp ...
ED06C:  MOV             R5, R1
ED06E:  SUBS            R1, R2, #1
ED070:  ADD             R0, PC; `vtable for'std::locale::__imp
ED072:  ADD.W           R9, R4, #8
ED076:  ADDS            R0, #8
ED078:  STRD.W          R0, R1, [R4]
ED07C:  MOV             R0, R9
ED07E:  MOVS            R1, #0x1C
ED080:  BL              sub_ECC3C
ED084:  ADD.W           R6, R4, #0x90
ED088:  MOV             R0, R6
ED08A:  MOV             R1, R5
ED08C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
ED090:  BLX             j__ZNSt6__ndk16locale7classicEv; std::locale::classic(void)
ED094:  LDR             R0, [R0]
ED096:  ADD.W           R1, R0, #8
ED09A:  MOV             R0, R9; int
ED09C:  BL              sub_ED394
ED0A0:  MOVS            R5, #0
ED0A2:  LDRD.W          R0, R1, [R4,#8]
ED0A6:  SUBS            R1, R1, R0
ED0A8:  CMP.W           R5, R1,ASR#2
ED0AC:  BCS             loc_ED0BC
ED0AE:  LDR.W           R0, [R0,R5,LSL#2]; this
ED0B2:  CBZ             R0, loc_ED0B8
ED0B4:  BLX             j__ZNSt6__ndk114__shared_count12__add_sharedEv; std::__shared_count::__add_shared(void)
ED0B8:  ADDS            R5, #1
ED0BA:  B               loc_ED0A2
ED0BC:  MOVS            R0, #0xC; unsigned int
ED0BE:  BLX             j__Znwj; operator new(uint)
ED0C2:  MOV             R5, R0
ED0C4:  MOV             R1, R6
ED0C6:  MOVS            R2, #0
ED0C8:  BLX             j__ZNSt6__ndk114collate_bynameIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::collate_byname<char>::collate_byname(std::string const&,uint)
ED0CC:  MOV             R0, R4
ED0CE:  MOV             R1, R5
ED0D0:  BL              sub_ED3AC
ED0D4:  MOVS            R0, #0xC; unsigned int
ED0D6:  BLX             j__Znwj; operator new(uint)
ED0DA:  MOV             R5, R0
ED0DC:  MOV             R1, R6
ED0DE:  MOVS            R2, #0
ED0E0:  BLX             j__ZNSt6__ndk114collate_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::collate_byname<wchar_t>::collate_byname(std::string const&,uint)
ED0E4:  MOV             R0, R4
ED0E6:  MOV             R1, R5
ED0E8:  BL              sub_ED3D0
ED0EC:  MOVS            R0, #0x14; unsigned int
ED0EE:  BLX             j__Znwj; operator new(uint)
ED0F2:  MOV             R5, R0
ED0F4:  MOV             R1, R6
ED0F6:  MOVS            R2, #0
ED0F8:  BLX             j__ZNSt6__ndk112ctype_bynameIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::ctype_byname<char>::ctype_byname(std::string const&,uint)
ED0FC:  MOV             R0, R4
ED0FE:  MOV             R1, R5
ED100:  BL              sub_ED3F4
ED104:  MOVS            R0, #0xC; unsigned int
ED106:  BLX             j__Znwj; operator new(uint)
ED10A:  MOV             R5, R0
ED10C:  MOV             R1, R6
ED10E:  MOVS            R2, #0
ED110:  BLX             j__ZNSt6__ndk112ctype_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::ctype_byname<wchar_t>::ctype_byname(std::string const&,uint)
ED114:  MOV             R0, R4
ED116:  MOV             R1, R5
ED118:  BL              sub_ED418
ED11C:  MOVS            R0, #8; unsigned int
ED11E:  BLX             j__Znwj; operator new(uint)
ED122:  MOV             R1, R0
ED124:  LDR             R2, =(_ZTVNSt6__ndk114codecvt_bynameIcc9mbstate_tEE_ptr - 0xED12E)
ED126:  MOV.W           R0, #0xFFFFFFFF
ED12A:  ADD             R2, PC; _ZTVNSt6__ndk114codecvt_bynameIcc9mbstate_tEE_ptr
ED12C:  LDR             R2, [R2]; `vtable for'std::codecvt_byname<char,char,mbstate_t> ...
ED12E:  ADDS            R2, #8
ED130:  STRD.W          R2, R0, [R1]
ED134:  MOV             R0, R4
ED136:  BL              sub_ED43C
ED13A:  MOVS            R0, #0xC; unsigned int
ED13C:  BLX             j__Znwj; operator new(uint)
ED140:  MOV             R5, R0
ED142:  MOV             R1, R6
ED144:  MOVS            R2, #0
ED146:  BL              sub_ED484
ED14A:  MOV             R0, R4
ED14C:  MOV             R1, R5
ED14E:  BL              sub_ED460
ED152:  MOVS            R0, #8; unsigned int
ED154:  BLX             j__Znwj; operator new(uint)
ED158:  MOV             R1, R0
ED15A:  LDR             R2, =(_ZTVNSt6__ndk114codecvt_bynameIDsc9mbstate_tEE_ptr - 0xED164)
ED15C:  MOV.W           R0, #0xFFFFFFFF
ED160:  ADD             R2, PC; _ZTVNSt6__ndk114codecvt_bynameIDsc9mbstate_tEE_ptr
ED162:  LDR             R2, [R2]; `vtable for'std::codecvt_byname<char16_t,char,mbstate_t> ...
ED164:  ADDS            R2, #8
ED166:  STRD.W          R2, R0, [R1]
ED16A:  MOV             R0, R4
ED16C:  BL              sub_ED4A8
ED170:  MOVS            R0, #8; unsigned int
ED172:  BLX             j__Znwj; operator new(uint)
ED176:  MOV             R1, R0
ED178:  LDR             R2, =(_ZTVNSt6__ndk114codecvt_bynameIDic9mbstate_tEE_ptr - 0xED182)
ED17A:  MOV.W           R0, #0xFFFFFFFF
ED17E:  ADD             R2, PC; _ZTVNSt6__ndk114codecvt_bynameIDic9mbstate_tEE_ptr
ED180:  LDR             R2, [R2]; `vtable for'std::codecvt_byname<char32_t,char,mbstate_t> ...
ED182:  ADDS            R2, #8
ED184:  STRD.W          R2, R0, [R1]
ED188:  MOV             R0, R4
ED18A:  BL              sub_ED4CC
ED18E:  MOVS            R0, #0x18; unsigned int
ED190:  BLX             j__Znwj; operator new(uint)
ED194:  MOV             R5, R0
ED196:  MOV             R1, R6
ED198:  MOVS            R2, #0
ED19A:  BLX             j__ZNSt6__ndk115numpunct_bynameIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::numpunct_byname<char>::numpunct_byname(std::string const&,uint)
ED19E:  MOV             R0, R4
ED1A0:  MOV             R1, R5
ED1A2:  BL              sub_ED4F0
ED1A6:  MOVS            R0, #0x1C; unsigned int
ED1A8:  BLX             j__Znwj; operator new(uint)
ED1AC:  MOV             R5, R0
ED1AE:  MOV             R1, R6
ED1B0:  MOVS            R2, #0
ED1B2:  BLX             j__ZNSt6__ndk115numpunct_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::numpunct_byname<wchar_t>::numpunct_byname(std::string const&,uint)
ED1B6:  MOV             R0, R4
ED1B8:  MOV             R1, R5
ED1BA:  BL              sub_ED514
ED1BE:  MOVS            R0, #0x48 ; 'H'; unsigned int
ED1C0:  BLX             j__Znwj; operator new(uint)
ED1C4:  MOV             R5, R0
ED1C6:  MOV             R1, R6
ED1C8:  MOVS            R2, #0
ED1CA:  BL              sub_ED55C
ED1CE:  MOV             R0, R4
ED1D0:  MOV             R1, R5
ED1D2:  BL              sub_ED538
ED1D6:  MOVS            R0, #0x48 ; 'H'; unsigned int
ED1D8:  BLX             j__Znwj; operator new(uint)
ED1DC:  MOV             R5, R0
ED1DE:  MOV             R1, R6
ED1E0:  MOVS            R2, #0
ED1E2:  BL              sub_ED604
ED1E6:  MOV             R0, R4
ED1E8:  MOV             R1, R5
ED1EA:  BL              sub_ED5E0
ED1EE:  MOVS            R0, #0x4C ; 'L'; unsigned int
ED1F0:  BLX             j__Znwj; operator new(uint)
ED1F4:  MOV             R5, R0
ED1F6:  MOV             R1, R6
ED1F8:  MOVS            R2, #0
ED1FA:  BL              sub_ED6AC
ED1FE:  MOV             R0, R4
ED200:  MOV             R1, R5
ED202:  BL              sub_ED688
ED206:  MOVS            R0, #0x4C ; 'L'; unsigned int
ED208:  BLX             j__Znwj; operator new(uint)
ED20C:  MOV             R5, R0
ED20E:  MOV             R1, R6
ED210:  MOVS            R2, #0
ED212:  BL              sub_ED758
ED216:  MOV             R0, R4
ED218:  MOV             R1, R5
ED21A:  BL              sub_ED734
ED21E:  MOV.W           R0, #0x220; unsigned int
ED222:  BLX             j__Znwj; operator new(uint)
ED226:  MOV             R5, R0
ED228:  MOV             R1, R6
ED22A:  MOVS            R2, #0
ED22C:  BL              sub_ED804
ED230:  MOV             R0, R4
ED232:  MOV             R1, R5
ED234:  BL              sub_ED7E0
ED238:  MOV.W           R0, #0x220; unsigned int
ED23C:  BLX             j__Znwj; operator new(uint)
ED240:  MOV             R5, R0
ED242:  MOV             R1, R6
ED244:  MOVS            R2, #0
ED246:  BL              sub_ED870
ED24A:  MOV             R0, R4
ED24C:  MOV             R1, R5
ED24E:  BL              sub_ED84C
ED252:  MOVS            R0, #0xC; unsigned int
ED254:  BLX             j__Znwj; operator new(uint)
ED258:  MOV             R5, R0
ED25A:  MOV             R1, R6
ED25C:  MOVS            R2, #0
ED25E:  BL              sub_ED8DC
ED262:  MOV             R0, R4
ED264:  MOV             R1, R5
ED266:  BL              sub_ED8B8
ED26A:  MOVS            R0, #0xC; unsigned int
ED26C:  BLX             j__Znwj; operator new(uint)
ED270:  MOV             R5, R0
ED272:  MOV             R1, R6
ED274:  MOVS            R2, #0
ED276:  BL              sub_ED918
ED27A:  MOV             R0, R4
ED27C:  MOV             R1, R5
ED27E:  BL              sub_ED8F4
ED282:  MOVS            R0, #8; unsigned int
ED284:  BLX             j__Znwj; operator new(uint)
ED288:  MOV             R1, R0
ED28A:  LDR             R2, =(_ZTVNSt6__ndk115messages_bynameIcEE_ptr - 0xED294)
ED28C:  MOV.W           R0, #0xFFFFFFFF
ED290:  ADD             R2, PC; _ZTVNSt6__ndk115messages_bynameIcEE_ptr
ED292:  LDR             R2, [R2]; `vtable for'std::messages_byname<char> ...
ED294:  ADDS            R2, #8
ED296:  STRD.W          R2, R0, [R1]
ED29A:  MOV             R0, R4
ED29C:  BL              sub_ED930
ED2A0:  MOVS            R0, #8; unsigned int
ED2A2:  BLX             j__Znwj; operator new(uint)
ED2A6:  MOV             R1, R0
ED2A8:  LDR             R2, =(_ZTVNSt6__ndk115messages_bynameIwEE_ptr - 0xED2B2)
ED2AA:  MOV.W           R0, #0xFFFFFFFF
ED2AE:  ADD             R2, PC; _ZTVNSt6__ndk115messages_bynameIwEE_ptr
ED2B0:  LDR             R2, [R2]; `vtable for'std::messages_byname<wchar_t> ...
ED2B2:  ADDS            R2, #8
ED2B4:  STRD.W          R2, R0, [R1]
ED2B8:  MOV             R0, R4
ED2BA:  BL              sub_ED954
ED2BE:  MOV             R0, R4
ED2C0:  POP.W           {R8,R9,R11}
ED2C4:  POP             {R4-R7,PC}
