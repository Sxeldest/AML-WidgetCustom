; =========================================================
; Game Engine Function: sub_155A20
; Address            : 0x155A20 - 0x155B40
; =========================================================

155A20:  PUSH            {R4-R7,LR}
155A22:  ADD             R7, SP, #0xC
155A24:  PUSH.W          {R8-R10}
155A28:  SUB.W           SP, SP, #0x280
155A2C:  LDR             R5, [R0]
155A2E:  MOV             R4, R0
155A30:  MOVS            R6, #0
155A32:  MOV             R8, R1
155A34:  LDR.W           R0, [R5,#-0xC]
155A38:  ADD             R0, R4
155A3A:  LDR.W           R9, [R0,#0xC]
155A3E:  STR             R6, [R0,#0xC]
155A40:  MOVS            R0, #0x14; unsigned int
155A42:  BLX             j__Znwj; operator new(uint)
155A46:  LDR             R1, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN8nlohmann6detail21output_stream_adapterIcEENS_9allocatorIS4_EEEE - 0x155A52); `vtable for'std::__shared_ptr_emplace<nlohmann::detail::output_stream_adapter<char>> ...
155A48:  BIC.W           R10, R9, R9,ASR#31
155A4C:  LDR             R2, =(_ZTVN8nlohmann6detail21output_stream_adapterIcEE - 0x155A58); `vtable for'nlohmann::detail::output_stream_adapter<char> ...
155A4E:  ADD             R1, PC; `vtable for'std::__shared_ptr_emplace<nlohmann::detail::output_stream_adapter<char>>
155A50:  STR             R6, [R0,#8]
155A52:  ADDS            R1, #8
155A54:  ADD             R2, PC; `vtable for'nlohmann::detail::output_stream_adapter<char>
155A56:  STR             R1, [R0]
155A58:  ADD.W           R1, R2, #8
155A5C:  MOV             R2, R0
155A5E:  STR             R4, [R0,#0x10]
155A60:  STR.W           R1, [R2,#0xC]!
155A64:  STR             R0, [SP,#0x298+var_288]
155A66:  STRD.W          R2, R0, [SP,#0x298+var_284]
155A6A:  STR.W           R6, [R0,#4]!
155A6E:  STR             R2, [SP,#0x298+var_28C]
155A70:  LDREX.W         R1, [R0]
155A74:  ADDS            R1, #1
155A76:  STREX.W         R2, R1, [R0]
155A7A:  CMP             R2, #0
155A7C:  BNE             loc_155A70
155A7E:  LDR.W           R0, [R5,#-0xC]
155A82:  ADDS            R6, R4, R0
155A84:  LDR             R5, [R6,#0x4C]
155A86:  ADDS            R0, R5, #1
155A88:  BNE             loc_155AB0
155A8A:  ADD             R0, SP, #0x298+var_1C; this
155A8C:  MOV             R1, R6
155A8E:  BLX             j__ZNKSt6__ndk18ios_base6getlocEv; std::ios_base::getloc(void)
155A92:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0x155A98)
155A94:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
155A96:  LDR             R1, [R0]; std::locale::id *
155A98:  ADD             R0, SP, #0x298+var_1C; this
155A9A:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
155A9E:  LDR             R1, [R0]
155AA0:  LDR             R2, [R1,#0x1C]
155AA2:  MOVS            R1, #0x20 ; ' '
155AA4:  BLX             R2
155AA6:  MOV             R5, R0
155AA8:  ADD             R0, SP, #0x298+var_1C; this
155AAA:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
155AAE:  STR             R5, [R6,#0x4C]
155AB0:  ADD             R0, SP, #0x298+var_27C
155AB2:  ADD             R1, SP, #0x298+var_284
155AB4:  UXTB            R2, R5
155AB6:  MOVS            R3, #0
155AB8:  BL              sub_156334
155ABC:  LDR             R6, [SP,#0x298+var_280]
155ABE:  CBZ             R6, loc_155AE8
155AC0:  ADDS            R0, R6, #4
155AC2:  DMB.W           ISH
155AC6:  LDREX.W         R1, [R0]
155ACA:  SUBS            R2, R1, #1
155ACC:  STREX.W         R3, R2, [R0]
155AD0:  CMP             R3, #0
155AD2:  BNE             loc_155AC6
155AD4:  DMB.W           ISH
155AD8:  CBNZ            R1, loc_155AE8
155ADA:  LDR             R0, [R6]
155ADC:  LDR             R1, [R0,#8]
155ADE:  MOV             R0, R6
155AE0:  BLX             R1
155AE2:  MOV             R0, R6; this
155AE4:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
155AE8:  LDR             R6, [SP,#0x298+var_288]
155AEA:  CBZ             R6, loc_155B14
155AEC:  ADDS            R0, R6, #4
155AEE:  DMB.W           ISH
155AF2:  LDREX.W         R1, [R0]
155AF6:  SUBS            R2, R1, #1
155AF8:  STREX.W         R3, R2, [R0]
155AFC:  CMP             R3, #0
155AFE:  BNE             loc_155AF2
155B00:  DMB.W           ISH
155B04:  CBNZ            R1, loc_155B14
155B06:  LDR             R0, [R6]
155B08:  LDR             R1, [R0,#8]
155B0A:  MOV             R0, R6
155B0C:  BLX             R1
155B0E:  MOV             R0, R6; this
155B10:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
155B14:  MOVS            R0, #0
155B16:  MOVS            R2, #0
155B18:  STRD.W          R10, R0, [SP,#0x298+var_298]
155B1C:  ADD             R0, SP, #0x298+var_27C
155B1E:  MOV             R1, R8
155B20:  MOVS            R3, #0
155B22:  CMP.W           R9, #0
155B26:  IT GT
155B28:  MOVGT           R2, #1
155B2A:  BL              sub_156414
155B2E:  ADD             R0, SP, #0x298+var_27C
155B30:  BL              sub_156A98
155B34:  MOV             R0, R4
155B36:  ADD.W           SP, SP, #0x280
155B3A:  POP.W           {R8-R10}
155B3E:  POP             {R4-R7,PC}
