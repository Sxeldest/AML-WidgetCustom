; =========================================================
; Game Engine Function: sub_EC0C2
; Address            : 0xEC0C2 - 0xEC0DC
; =========================================================

EC0C2:  PUSH            {R4,R5,R7,LR}
EC0C4:  ADD             R7, SP, #8
EC0C6:  MOV             R5, R1
EC0C8:  MOV             R4, R0
EC0CA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
EC0CE:  ADDS            R0, #0x10
EC0D0:  ADD.W           R1, R5, #0x10
EC0D4:  BL              sub_E4834
EC0D8:  MOV             R0, R4
EC0DA:  POP             {R4,R5,R7,PC}
