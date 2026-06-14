; =========================================================
; Game Engine Function: sub_12E354
; Address            : 0x12E354 - 0x12E38A
; =========================================================

12E354:  PUSH            {R4-R7,LR}
12E356:  ADD             R7, SP, #0xC
12E358:  PUSH.W          {R11}
12E35C:  MOV             R4, R0
12E35E:  LDR             R0, =(_ZTVN7sigslot11signal_baseINSt6__ndk15mutexEJNS1_17basic_string_viewIcNS1_11char_traitsIcEEEEEEE - 0x12E368); `vtable for'sigslot::signal_base<std::mutex,std::string_view> ...
12E360:  MOVS            R6, #0
12E362:  MOV             R5, R4
12E364:  ADD             R0, PC; `vtable for'sigslot::signal_base<std::mutex,std::string_view>
12E366:  STR.W           R6, [R5,#4]!
12E36A:  ADDS            R0, #8
12E36C:  STR             R0, [R4]
12E36E:  MOVS            R0, #0x10; unsigned int
12E370:  BLX             j__Znwj; operator new(uint)
12E374:  MOVS            R1, #1
12E376:  STRD.W          R6, R6, [R0,#8]
12E37A:  STRD.W          R1, R6, [R0]
12E37E:  STR             R0, [R4,#8]
12E380:  MOV             R0, R4
12E382:  STRB            R6, [R4,#0xC]
12E384:  POP.W           {R11}
12E388:  POP             {R4-R7,PC}
