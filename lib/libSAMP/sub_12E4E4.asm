; =========================================================
; Game Engine Function: sub_12E4E4
; Address            : 0x12E4E4 - 0x12E510
; =========================================================

12E4E4:  PUSH            {R4,R6,R7,LR}
12E4E6:  ADD             R7, SP, #8
12E4E8:  LDR             R1, =(_ZTVN7sigslot6detail4slotIRNSt6__ndk18functionIFvNS2_17basic_string_viewIcNS2_11char_traitsIcEEEEEEEJS7_EEE - 0x12E4F2); `vtable for'sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view> ...
12E4EA:  MOV             R4, R0
12E4EC:  LDR             R0, [R0,#0x20]
12E4EE:  ADD             R1, PC; `vtable for'sigslot::detail::slot<std::function<void ()(std::string_view)> &,std::string_view>
12E4F0:  ADDS            R1, #8
12E4F2:  STR             R1, [R4]
12E4F4:  ADD.W           R1, R4, #0x10
12E4F8:  CMP             R1, R0
12E4FA:  BEQ             loc_12E502
12E4FC:  CBZ             R0, loc_12E50C
12E4FE:  MOVS            R1, #5
12E500:  B               loc_12E504
12E502:  MOVS            R1, #4
12E504:  LDR             R2, [R0]
12E506:  LDR.W           R1, [R2,R1,LSL#2]
12E50A:  BLX             R1
12E50C:  MOV             R0, R4
12E50E:  POP             {R4,R6,R7,PC}
