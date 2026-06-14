; =========================================================
; Game Engine Function: sub_12DF78
; Address            : 0x12DF78 - 0x12DF9E
; =========================================================

12DF78:  PUSH            {R4,R5,R7,LR}
12DF7A:  ADD             R7, SP, #8
12DF7C:  MOV             R4, R0
12DF7E:  LDR             R0, =(_ZTVN7sigslot11signal_baseINSt6__ndk15mutexEJNS1_17basic_string_viewIcNS1_11char_traitsIcEEEEEEE - 0x12DF84); `vtable for'sigslot::signal_base<std::mutex,std::string_view> ...
12DF80:  ADD             R0, PC; `vtable for'sigslot::signal_base<std::mutex,std::string_view>
12DF82:  ADDS            R0, #8
12DF84:  STR             R0, [R4]
12DF86:  MOV             R0, R4
12DF88:  BL              sub_12DFB8
12DF8C:  ADD.W           R0, R4, #8
12DF90:  BL              sub_12DFE0
12DF94:  ADDS            R0, R4, #4; this
12DF96:  BLX             j__ZNSt6__ndk15mutexD2Ev; std::mutex::~mutex()
12DF9A:  MOV             R0, R4
12DF9C:  POP             {R4,R5,R7,PC}
