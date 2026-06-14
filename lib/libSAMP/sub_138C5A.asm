; =========================================================
; Game Engine Function: sub_138C5A
; Address            : 0x138C5A - 0x138C98
; =========================================================

138C5A:  PUSH            {R4-R7,LR}
138C5C:  ADD             R7, SP, #0xC
138C5E:  PUSH.W          {R8,R9,R11}
138C62:  MOV             R4, R0
138C64:  MOVS            R0, #0x24 ; '$'; unsigned int
138C66:  MOV             R8, R3
138C68:  MOV             R6, R1
138C6A:  BLX             j__Znwj; operator new(uint)
138C6E:  LDR.W           R1, [R8]
138C72:  MOV             R5, R0
138C74:  ADDS            R0, R6, #4
138C76:  MOV.W           R9, #0
138C7A:  STRB.W          R9, [R4,#8]
138C7E:  STRD.W          R5, R0, [R4]
138C82:  ADD.W           R0, R5, #0x10
138C86:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
138C8A:  MOVS            R0, #1
138C8C:  STRD.W          R9, R9, [R5,#0x1C]
138C90:  STRB            R0, [R4,#8]
138C92:  POP.W           {R8,R9,R11}
138C96:  POP             {R4-R7,PC}
