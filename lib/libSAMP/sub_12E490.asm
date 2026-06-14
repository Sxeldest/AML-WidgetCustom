; =========================================================
; Game Engine Function: sub_12E490
; Address            : 0x12E490 - 0x12E4D0
; =========================================================

12E490:  PUSH            {R4,R6,R7,LR}
12E492:  ADD             R7, SP, #8
12E494:  LDR             R1, =(_ZTVN7sigslot6detail4slotIRNSt6__ndk18functionIFvNS2_17basic_string_viewIcNS2_11char_traitsIcEEEEEEEJS7_EEE - 0x12E49E); `vtable for'sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view> ...
12E496:  MOV             R4, R0
12E498:  LDR             R2, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN7sigslot6detail4slotIRNS_8functionIFvNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEEJS8_EEENS_9allocatorISC_EEEE - 0x12E4A4); `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view>> ...
12E49A:  ADD             R1, PC; `vtable for'sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view>
12E49C:  LDR             R0, [R0,#0x30]
12E49E:  ADDS            R1, #8
12E4A0:  ADD             R2, PC; `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view>>
12E4A2:  STR             R1, [R4,#0x10]
12E4A4:  ADD.W           R1, R2, #8
12E4A8:  STR             R1, [R4]
12E4AA:  ADD.W           R1, R4, #0x20 ; ' '
12E4AE:  CMP             R1, R0
12E4B0:  BEQ             loc_12E4B8
12E4B2:  CBZ             R0, loc_12E4C2
12E4B4:  MOVS            R1, #5
12E4B6:  B               loc_12E4BA
12E4B8:  MOVS            R1, #4
12E4BA:  LDR             R2, [R0]
12E4BC:  LDR.W           R1, [R2,R1,LSL#2]
12E4C0:  BLX             R1
12E4C2:  MOV             R0, R4; this
12E4C4:  BLX             j__ZNSt6__ndk119__shared_weak_countD2Ev_0; std::__shared_weak_count::~__shared_weak_count()
12E4C8:  POP.W           {R4,R6,R7,LR}
12E4CC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
