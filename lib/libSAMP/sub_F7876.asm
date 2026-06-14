; =========================================================
; Game Engine Function: sub_F7876
; Address            : 0xF7876 - 0xF78B4
; =========================================================

F7876:  PUSH            {R4-R7,LR}
F7878:  ADD             R7, SP, #0xC
F787A:  PUSH.W          {R8,R9,R11}
F787E:  MOV             R4, R0
F7880:  MOVS            R0, #0x20 ; ' '; unsigned int
F7882:  MOV             R5, R2
F7884:  MOV             R8, R1
F7886:  BLX             j__Znwj; operator new(uint)
F788A:  MOV             R6, R0
F788C:  ADD.W           R0, R8, #4
F7890:  MOV.W           R9, #0
F7894:  STRB.W          R9, [R4,#8]
F7898:  STRD.W          R6, R0, [R4]
F789C:  ADD.W           R0, R6, #0x10
F78A0:  MOV             R1, R5
F78A2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
F78A6:  MOVS            R0, #1
F78A8:  STRB            R0, [R4,#8]
F78AA:  LDR             R0, [R5,#0xC]
F78AC:  STR             R0, [R6,#0x1C]
F78AE:  POP.W           {R8,R9,R11}
F78B2:  POP             {R4-R7,PC}
