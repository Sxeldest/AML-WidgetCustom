; =========================================================
; Game Engine Function: sub_1128A0
; Address            : 0x1128A0 - 0x1129C8
; =========================================================

1128A0:  PUSH            {R4-R7,LR}
1128A2:  ADD             R7, SP, #0xC
1128A4:  PUSH.W          {R8-R10}
1128A8:  SUB             SP, SP, #0x20
1128AA:  MOV             R8, R0
1128AC:  MOVS            R0, #0x28 ; '('; unsigned int
1128AE:  MOV             R10, R3
1128B0:  MOV             R4, R2
1128B2:  MOV             R9, R1
1128B4:  BLX             j__Znwj; operator new(uint)
1128B8:  LDR             R1, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN7sigslot6detail8slot_pmfIM18custom_speedometerFvRN6RakNet9BitStreamEEPS4_JS7_EEENS_9allocatorISB_EEEE - 0x1128C4); `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot_pmf<void (custom_speedometer::*)(RakNet::BitStream &),custom_speedometer*,RakNet::BitStream &>> ...
1128BA:  MOV             R5, R0
1128BC:  LDR             R0, =(_ZTVN7sigslot6detail8slot_pmfIM18custom_speedometerFvRN6RakNet9BitStreamEEPS2_JS5_EEE - 0x1128CA); `vtable for'sigslot::detail::slot_pmf<void (custom_speedometer::*)(RakNet::BitStream &),custom_speedometer*,RakNet::BitStream &> ...
1128BE:  MOVS            R6, #1
1128C0:  ADD             R1, PC; `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot_pmf<void (custom_speedometer::*)(RakNet::BitStream &),custom_speedometer*,RakNet::BitStream &>>
1128C2:  LDRD.W          R2, R3, [R4]
1128C6:  ADD             R0, PC; `vtable for'sigslot::detail::slot_pmf<void (custom_speedometer::*)(RakNet::BitStream &),custom_speedometer*,RakNet::BitStream &>
1128C8:  ADDS            R1, #8
1128CA:  STR             R1, [R5]
1128CC:  ADDS            R0, #8
1128CE:  MOV             R1, R5
1128D0:  MOVS            R4, #0
1128D2:  STR.W           R0, [R1,#0xC]!
1128D6:  MOV             R0, R5
1128D8:  STRH            R6, [R5,#0x14]
1128DA:  LDR.W           R6, [R10]
1128DE:  STR.W           R4, [R0,#4]!
1128E2:  STR             R4, [R5,#8]
1128E4:  STR             R4, [R5,#0x10]
1128E6:  STRD.W          R9, R2, [R5,#0x18]
1128EA:  STRD.W          R3, R6, [R5,#0x20]
1128EE:  STR             R5, [SP,#0x38+var_30]
1128F0:  STR             R1, [SP,#0x38+var_34]
1128F2:  LDREX.W         R1, [R0]
1128F6:  ADDS            R1, #1
1128F8:  STREX.W         R2, R1, [R0]
1128FC:  CMP             R2, #0
1128FE:  BNE             loc_1128F2
112900:  DMB.W           ISH
112904:  LDREX.W         R1, [R0]
112908:  SUBS            R2, R1, #1
11290A:  STREX.W         R3, R2, [R0]
11290E:  CMP             R3, #0
112910:  BNE             loc_112904
112912:  DMB.W           ISH
112916:  CBNZ            R1, loc_112926
112918:  LDR             R0, [R5]
11291A:  LDR             R1, [R0,#8]
11291C:  MOV             R0, R5
11291E:  BLX             R1
112920:  MOV             R0, R5; this
112922:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
112926:  LDRD.W          R4, R6, [SP,#0x38+var_34]
11292A:  CBZ             R6, loc_11293E
11292C:  ADD.W           R0, R6, #8
112930:  LDREX.W         R1, [R0]
112934:  ADDS            R1, #1
112936:  STREX.W         R2, R1, [R0]
11293A:  CMP             R2, #0
11293C:  BNE             loc_112930
11293E:  MOV             R5, R9
112940:  LDR             R2, =(_ZTVN7sigslot10connectionE - 0x11294A); `vtable for'sigslot::connection ...
112942:  LDR.W           R0, [R5,#8]!
112946:  ADD             R2, PC; `vtable for'sigslot::connection
112948:  STR.W           R6, [R8,#8]
11294C:  LDRD.W          R1, R3, [R5,#4]
112950:  ADD.W           R10, R2, #8
112954:  STRD.W          R10, R4, [R8]
112958:  SUBS            R2, R1, R0
11295A:  CMP             R1, R3
11295C:  MOV.W           R2, R2,ASR#3
112960:  STR             R2, [R4,#4]
112962:  BCS             loc_112972
112964:  STRD.W          R4, R6, [R1]
112968:  ADD.W           R0, R1, #8
11296C:  STR.W           R0, [R9,#0xC]
112970:  B               loc_1129BA
112972:  ADDS            R1, R2, #1
112974:  CMP.W           R1, #0x20000000
112978:  BCS             loc_1129C2
11297A:  SUBS            R0, R3, R0
11297C:  MOV             R3, #0x7FFFFFF8
112984:  CMP.W           R1, R0,ASR#2
112988:  IT LS
11298A:  ASRLS           R1, R0, #2
11298C:  CMP             R0, R3
11298E:  IT CS
112990:  MOVCS           R1, #0x1FFFFFFF
112994:  ADD.W           R3, R9, #0x10
112998:  ADD             R0, SP, #0x38+var_2C
11299A:  BL              sub_113470
11299E:  LDR             R0, [SP,#0x38+var_24]
1129A0:  STRD.W          R4, R6, [R0],#8
1129A4:  STR             R0, [SP,#0x38+var_24]
1129A6:  MOVS            R0, #0
1129A8:  STRD.W          R0, R0, [SP,#0x38+var_34]
1129AC:  ADD             R1, SP, #0x38+var_2C
1129AE:  MOV             R0, R5
1129B0:  BL              sub_1134B8
1129B4:  ADD             R0, SP, #0x38+var_2C
1129B6:  BL              sub_113508
1129BA:  ADD             SP, SP, #0x20 ; ' '
1129BC:  POP.W           {R8-R10}
1129C0:  POP             {R4-R7,PC}
1129C2:  MOV             R0, R5
1129C4:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
