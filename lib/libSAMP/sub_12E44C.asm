; =========================================================
; Game Engine Function: sub_12E44C
; Address            : 0x12E44C - 0x12E488
; =========================================================

12E44C:  PUSH            {R4,R6,R7,LR}
12E44E:  ADD             R7, SP, #8
12E450:  LDR             R1, =(_ZTVN7sigslot6detail4slotIRNSt6__ndk18functionIFvNS2_17basic_string_viewIcNS2_11char_traitsIcEEEEEEEJS7_EEE - 0x12E45A); `vtable for'sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view> ...
12E452:  MOV             R4, R0
12E454:  LDR             R2, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN7sigslot6detail4slotIRNS_8functionIFvNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEEJS8_EEENS_9allocatorISC_EEEE - 0x12E460); `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view>> ...
12E456:  ADD             R1, PC; `vtable for'sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view>
12E458:  LDR             R0, [R0,#0x30]
12E45A:  ADDS            R1, #8
12E45C:  ADD             R2, PC; `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view>>
12E45E:  STR             R1, [R4,#0x10]
12E460:  ADD.W           R1, R2, #8
12E464:  STR             R1, [R4]
12E466:  ADD.W           R1, R4, #0x20 ; ' '
12E46A:  CMP             R1, R0
12E46C:  BEQ             loc_12E474
12E46E:  CBZ             R0, loc_12E47E
12E470:  MOVS            R1, #5
12E472:  B               loc_12E476
12E474:  MOVS            R1, #4
12E476:  LDR             R2, [R0]
12E478:  LDR.W           R1, [R2,R1,LSL#2]
12E47C:  BLX             R1
12E47E:  MOV             R0, R4
12E480:  POP.W           {R4,R6,R7,LR}
12E484:  B.W             sub_2242D4
