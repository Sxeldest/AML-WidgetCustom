; =========================================================
; Game Engine Function: sub_12E404
; Address            : 0x12E404 - 0x12E43A
; =========================================================

12E404:  PUSH            {R4,R6,R7,LR}
12E406:  ADD             R7, SP, #8
12E408:  MOV             R4, R0
12E40A:  LDR             R0, =(_ZTVN7sigslot6detail4slotIRNSt6__ndk18functionIFvNS2_17basic_string_viewIcNS2_11char_traitsIcEEEEEEEJS7_EEE - 0x12E414); `vtable for'sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view> ...
12E40C:  LDR             R3, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN7sigslot6detail4slotIRNS_8functionIFvNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEEJS8_EEENS_9allocatorISC_EEEE - 0x12E41A); `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view>> ...
12E40E:  MOV             R12, R2
12E410:  ADD             R0, PC; `vtable for'sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view>
12E412:  STR             R1, [R4,#0x1C]
12E414:  MOVS            R1, #1
12E416:  ADD             R3, PC; `vtable for'std::__shared_ptr_emplace<sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view>>
12E418:  STRH            R1, [R4,#0x18]
12E41A:  ADD.W           R1, R3, #8
12E41E:  ADDS            R0, #8
12E420:  MOVS            R2, #0
12E422:  STRD.W          R1, R2, [R4]
12E426:  STR             R2, [R4,#8]
12E428:  STRD.W          R0, R2, [R4,#0x10]
12E42C:  ADD.W           R0, R4, #0x20 ; ' '
12E430:  MOV             R1, R12
12E432:  BL              sub_12E574
12E436:  MOV             R0, R4
12E438:  POP             {R4,R6,R7,PC}
