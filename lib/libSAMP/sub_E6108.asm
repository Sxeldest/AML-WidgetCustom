; =========================================================
; Game Engine Function: sub_E6108
; Address            : 0xE6108 - 0xE619E
; =========================================================

E6108:  PUSH            {R4-R7,LR}
E610A:  ADD             R7, SP, #0xC
E610C:  PUSH.W          {R8}
E6110:  SUB             SP, SP, #8
E6112:  MOV             R4, R0
E6114:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
E6118:  LDR             R0, =(_ZTVNSt6__ndk113basic_filebufIcNS_11char_traitsIcEEEE_ptr - 0xE6126)
E611A:  VMOV.I32        Q8, #0
E611E:  MOVS            R2, #0xF
E6120:  MOVS            R1, #0
E6122:  ADD             R0, PC; _ZTVNSt6__ndk113basic_filebufIcNS_11char_traitsIcEEEE_ptr
E6124:  ADD.W           R8, R4, #4
E6128:  STRD.W          R1, R1, [R4,#0x20]
E612C:  LDR             R0, [R0]; `vtable for'std::filebuf ...
E612E:  STR             R1, [R4,#0x28]
E6130:  ADDS            R0, #8
E6132:  STR             R0, [R4]
E6134:  ADD.W           R0, R4, #0x34 ; '4'
E6138:  STR.W           R1, [R4,#0x57]
E613C:  VST1.32         {D16-D17}, [R0]!
E6140:  VST1.32         {D16-D17}, [R0],R2
E6144:  STR             R1, [R0]
E6146:  ADD             R0, SP, #0x18+var_14; this
E6148:  MOV             R1, R8; std::locale *
E614A:  BLX             j__ZNSt6__ndk16localeC2ERKS0_; std::locale::locale(std::locale const&)
E614E:  LDR             R1, =(_ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr - 0xE6154)
E6150:  ADD             R1, PC; _ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr
E6152:  LDR             R6, [R1]; std::codecvt<char,char,mbstate_t>::id ...
E6154:  MOV             R1, R6; std::locale::id *
E6156:  BLX             j__ZNKSt6__ndk16locale9has_facetERNS0_2idE; std::locale::has_facet(std::locale::id &)
E615A:  MOV             R5, R0
E615C:  ADD             R0, SP, #0x18+var_14; this
E615E:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
E6162:  CBZ             R5, loc_E6186
E6164:  MOV             R0, SP; this
E6166:  MOV             R1, R8; std::locale *
E6168:  BLX             j__ZNSt6__ndk16localeC2ERKS0_; std::locale::locale(std::locale const&)
E616C:  MOV             R1, R6; std::locale::id *
E616E:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
E6172:  STR             R0, [R4,#0x44]
E6174:  MOV             R0, SP; this
E6176:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
E617A:  LDR             R0, [R4,#0x44]
E617C:  LDR             R1, [R0]
E617E:  LDR             R1, [R1,#0x1C]
E6180:  BLX             R1
E6182:  STRB.W          R0, [R4,#0x5A]
E6186:  LDR             R0, [R4]
E6188:  LDR             R3, [R0,#0xC]
E618A:  MOV             R0, R4
E618C:  MOVS            R1, #0
E618E:  MOV.W           R2, #0x1000
E6192:  BLX             R3
E6194:  MOV             R0, R4
E6196:  ADD             SP, SP, #8
E6198:  POP.W           {R8}
E619C:  POP             {R4-R7,PC}
