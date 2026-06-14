; =========================================================
; Game Engine Function: sub_1117B4
; Address            : 0x1117B4 - 0x11189E
; =========================================================

1117B4:  PUSH            {R4-R7,LR}
1117B6:  ADD             R7, SP, #0xC
1117B8:  PUSH.W          {R8-R10}
1117BC:  SUB             SP, SP, #8
1117BE:  MOV             R9, R0
1117C0:  MOVS            R0, #0x28 ; '('; unsigned int
1117C2:  MOV             R10, R3
1117C4:  MOV             R4, R2
1117C6:  MOV             R8, R1
1117C8:  BLX             j__Znwj; operator new(uint)
1117CC:  LDR             R1, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN7sigslot6detail8slot_pmfIM12custom_radarFvPfPjEPS4_JS5_S6_EEENS_9allocatorISA_EEEE - 0x1117D8); `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot_pmf<void (custom_radar::*)(float *,uint *),custom_radar*,float *,uint *>> ...
1117CE:  MOV             R6, R0
1117D0:  LDR             R0, =(_ZTVN7sigslot6detail8slot_pmfIM12custom_radarFvPfPjEPS2_JS3_S4_EEE - 0x1117DE); `vtable for'sigslot::detail::slot_pmf<void (custom_radar::*)(float *,uint *),custom_radar*,float *,uint *> ...
1117D2:  MOVS            R5, #1
1117D4:  ADD             R1, PC; `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot_pmf<void (custom_radar::*)(float *,uint *),custom_radar*,float *,uint *>>
1117D6:  LDRD.W          R2, R3, [R4]
1117DA:  ADD             R0, PC; `vtable for'sigslot::detail::slot_pmf<void (custom_radar::*)(float *,uint *),custom_radar*,float *,uint *>
1117DC:  ADDS            R1, #8
1117DE:  STR             R1, [R6]
1117E0:  ADDS            R0, #8
1117E2:  MOV             R1, R6
1117E4:  MOVS            R4, #0
1117E6:  STR.W           R0, [R1,#0xC]!
1117EA:  MOV             R0, R6
1117EC:  STRH            R5, [R6,#0x14]
1117EE:  LDR.W           R5, [R10]
1117F2:  STR.W           R4, [R0,#4]!
1117F6:  STR             R4, [R6,#8]
1117F8:  STR             R4, [R6,#0x10]
1117FA:  STRD.W          R8, R2, [R6,#0x18]
1117FE:  STRD.W          R3, R5, [R6,#0x20]
111802:  STR             R6, [SP,#0x20+var_1C]
111804:  STR             R1, [SP,#0x20+var_20]
111806:  LDREX.W         R1, [R0]
11180A:  ADDS            R1, #1
11180C:  STREX.W         R2, R1, [R0]
111810:  CMP             R2, #0
111812:  BNE             loc_111806
111814:  DMB.W           ISH
111818:  LDREX.W         R1, [R0]
11181C:  SUBS            R2, R1, #1
11181E:  STREX.W         R3, R2, [R0]
111822:  CMP             R3, #0
111824:  BNE             loc_111818
111826:  DMB.W           ISH
11182A:  CBNZ            R1, loc_11183A
11182C:  LDR             R0, [R6]
11182E:  LDR             R1, [R0,#8]
111830:  MOV             R0, R6
111832:  BLX             R1
111834:  MOV             R0, R6; this
111836:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
11183A:  LDRD.W          R0, R6, [SP,#0x20+var_20]
11183E:  CBZ             R6, loc_111852
111840:  ADD.W           R1, R6, #8
111844:  LDREX.W         R2, [R1]
111848:  ADDS            R2, #1
11184A:  STREX.W         R3, R2, [R1]
11184E:  CMP             R3, #0
111850:  BNE             loc_111844
111852:  LDR             R1, =(_ZTVN7sigslot10connectionE - 0x11185C); `vtable for'sigslot::connection ...
111854:  STR.W           R6, [R9,#8]
111858:  ADD             R1, PC; `vtable for'sigslot::connection
11185A:  ADD.W           R4, R1, #8
11185E:  STRD.W          R4, R0, [R9]
111862:  MOV             R1, SP
111864:  MOV             R0, R8
111866:  BL              sub_111CA0
11186A:  LDR             R4, [SP,#0x20+var_1C]
11186C:  CBZ             R4, loc_111896
11186E:  ADDS            R0, R4, #4
111870:  DMB.W           ISH
111874:  LDREX.W         R1, [R0]
111878:  SUBS            R2, R1, #1
11187A:  STREX.W         R3, R2, [R0]
11187E:  CMP             R3, #0
111880:  BNE             loc_111874
111882:  DMB.W           ISH
111886:  CBNZ            R1, loc_111896
111888:  LDR             R0, [R4]
11188A:  LDR             R1, [R0,#8]
11188C:  MOV             R0, R4
11188E:  BLX             R1
111890:  MOV             R0, R4; this
111892:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
111896:  ADD             SP, SP, #8
111898:  POP.W           {R8-R10}
11189C:  POP             {R4-R7,PC}
