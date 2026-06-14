; =========================================================
; Game Engine Function: sub_11754C
; Address            : 0x11754C - 0x117576
; =========================================================

11754C:  PUSH            {R4,R6,R7,LR}
11754E:  ADD             R7, SP, #8
117550:  MOV             R4, R0
117552:  LDR             R0, =(_ZTV6IBgHud - 0x11755C); `vtable for'IBgHud ...
117554:  MOV.W           R2, #0x3F800000
117558:  ADD             R0, PC; `vtable for'IBgHud
11755A:  ADDS            R0, #8
11755C:  STRD.W          R0, R2, [R4]
117560:  ADD.W           R0, R4, #0x10
117564:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
117568:  MOV.W           R0, #0xFFFFFFFF
11756C:  MOVS            R1, #0
11756E:  STRD.W          R1, R0, [R4,#0x1C]
117572:  MOV             R0, R4
117574:  POP             {R4,R6,R7,PC}
