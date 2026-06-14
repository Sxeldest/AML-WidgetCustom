; =========================================================
; Game Engine Function: sub_112F64
; Address            : 0x112F64 - 0x11308C
; =========================================================

112F64:  PUSH            {R4-R7,LR}
112F66:  ADD             R7, SP, #0xC
112F68:  PUSH.W          {R8-R10}
112F6C:  SUB             SP, SP, #0x20
112F6E:  MOV             R8, R0
112F70:  MOVS            R0, #0x28 ; '('; unsigned int
112F72:  MOV             R10, R3
112F74:  MOV             R4, R2
112F76:  MOV             R9, R1
112F78:  BLX             j__Znwj; operator new(uint)
112F7C:  LDR             R1, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN7sigslot6detail8slot_pmfIM18custom_speedometerFvRN11game_events7touch_tEEPS4_JS7_EEENS_9allocatorISB_EEEE - 0x112F88); `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot_pmf<void (custom_speedometer::*)(game_events::touch_t &),custom_speedometer*,game_events::touch_t &>> ...
112F7E:  MOV             R5, R0
112F80:  LDR             R0, =(_ZTVN7sigslot6detail8slot_pmfIM18custom_speedometerFvRN11game_events7touch_tEEPS2_JS5_EEE - 0x112F8E); `vtable for'sigslot::detail::slot_pmf<void (custom_speedometer::*)(game_events::touch_t &),custom_speedometer*,game_events::touch_t &> ...
112F82:  MOVS            R6, #1
112F84:  ADD             R1, PC; `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot_pmf<void (custom_speedometer::*)(game_events::touch_t &),custom_speedometer*,game_events::touch_t &>>
112F86:  LDRD.W          R2, R3, [R4]
112F8A:  ADD             R0, PC; `vtable for'sigslot::detail::slot_pmf<void (custom_speedometer::*)(game_events::touch_t &),custom_speedometer*,game_events::touch_t &>
112F8C:  ADDS            R1, #8
112F8E:  STR             R1, [R5]
112F90:  ADDS            R0, #8
112F92:  MOV             R1, R5
112F94:  MOVS            R4, #0
112F96:  STR.W           R0, [R1,#0xC]!
112F9A:  MOV             R0, R5
112F9C:  STRH            R6, [R5,#0x14]
112F9E:  LDR.W           R6, [R10]
112FA2:  STR.W           R4, [R0,#4]!
112FA6:  STR             R4, [R5,#8]
112FA8:  STR             R4, [R5,#0x10]
112FAA:  STRD.W          R9, R2, [R5,#0x18]
112FAE:  STRD.W          R3, R6, [R5,#0x20]
112FB2:  STR             R5, [SP,#0x38+var_30]
112FB4:  STR             R1, [SP,#0x38+var_34]
112FB6:  LDREX.W         R1, [R0]
112FBA:  ADDS            R1, #1
112FBC:  STREX.W         R2, R1, [R0]
112FC0:  CMP             R2, #0
112FC2:  BNE             loc_112FB6
112FC4:  DMB.W           ISH
112FC8:  LDREX.W         R1, [R0]
112FCC:  SUBS            R2, R1, #1
112FCE:  STREX.W         R3, R2, [R0]
112FD2:  CMP             R3, #0
112FD4:  BNE             loc_112FC8
112FD6:  DMB.W           ISH
112FDA:  CBNZ            R1, loc_112FEA
112FDC:  LDR             R0, [R5]
112FDE:  LDR             R1, [R0,#8]
112FE0:  MOV             R0, R5
112FE2:  BLX             R1
112FE4:  MOV             R0, R5; this
112FE6:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
112FEA:  LDRD.W          R4, R6, [SP,#0x38+var_34]
112FEE:  CBZ             R6, loc_113002
112FF0:  ADD.W           R0, R6, #8
112FF4:  LDREX.W         R1, [R0]
112FF8:  ADDS            R1, #1
112FFA:  STREX.W         R2, R1, [R0]
112FFE:  CMP             R2, #0
113000:  BNE             loc_112FF4
113002:  MOV             R5, R9
113004:  LDR             R2, =(_ZTVN7sigslot10connectionE - 0x11300E); `vtable for'sigslot::connection ...
113006:  LDR.W           R0, [R5,#8]!
11300A:  ADD             R2, PC; `vtable for'sigslot::connection
11300C:  STR.W           R6, [R8,#8]
113010:  LDRD.W          R1, R3, [R5,#4]
113014:  ADD.W           R10, R2, #8
113018:  STRD.W          R10, R4, [R8]
11301C:  SUBS            R2, R1, R0
11301E:  CMP             R1, R3
113020:  MOV.W           R2, R2,ASR#3
113024:  STR             R2, [R4,#4]
113026:  BCS             loc_113036
113028:  STRD.W          R4, R6, [R1]
11302C:  ADD.W           R0, R1, #8
113030:  STR.W           R0, [R9,#0xC]
113034:  B               loc_11307E
113036:  ADDS            R1, R2, #1
113038:  CMP.W           R1, #0x20000000
11303C:  BCS             loc_113086
11303E:  SUBS            R0, R3, R0
113040:  MOV             R3, #0x7FFFFFF8
113048:  CMP.W           R1, R0,ASR#2
11304C:  IT LS
11304E:  ASRLS           R1, R0, #2
113050:  CMP             R0, R3
113052:  IT CS
113054:  MOVCS           R1, #0x1FFFFFFF
113058:  ADD.W           R3, R9, #0x10
11305C:  ADD             R0, SP, #0x38+var_2C
11305E:  BL              sub_113670
113062:  LDR             R0, [SP,#0x38+var_24]
113064:  STRD.W          R4, R6, [R0],#8
113068:  STR             R0, [SP,#0x38+var_24]
11306A:  MOVS            R0, #0
11306C:  STRD.W          R0, R0, [SP,#0x38+var_34]
113070:  ADD             R1, SP, #0x38+var_2C
113072:  MOV             R0, R5
113074:  BL              sub_1136B8
113078:  ADD             R0, SP, #0x38+var_2C
11307A:  BL              sub_113708
11307E:  ADD             SP, SP, #0x20 ; ' '
113080:  POP.W           {R8-R10}
113084:  POP             {R4-R7,PC}
113086:  MOV             R0, R5
113088:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
