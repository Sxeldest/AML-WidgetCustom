; =========================================================
; Game Engine Function: sub_F7C48
; Address            : 0xF7C48 - 0xF7C86
; =========================================================

F7C48:  PUSH            {R4-R7,LR}
F7C4A:  ADD             R7, SP, #0xC
F7C4C:  PUSH.W          {R8,R9,R11}
F7C50:  MOV             R4, R0
F7C52:  MOVS            R0, #0x20 ; ' '; unsigned int
F7C54:  MOV             R8, R3
F7C56:  MOV             R6, R1
F7C58:  BLX             j__Znwj; operator new(uint)
F7C5C:  LDR.W           R1, [R8]
F7C60:  MOV             R5, R0
F7C62:  ADDS            R0, R6, #4
F7C64:  MOV.W           R9, #0
F7C68:  STRB.W          R9, [R4,#8]
F7C6C:  STRD.W          R5, R0, [R4]
F7C70:  ADD.W           R0, R5, #0x10
F7C74:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
F7C78:  MOVS            R0, #1
F7C7A:  STR.W           R9, [R5,#0x1C]
F7C7E:  STRB            R0, [R4,#8]
F7C80:  POP.W           {R8,R9,R11}
F7C84:  POP             {R4-R7,PC}
