; =========================================================
; Game Engine Function: sub_F6918
; Address            : 0xF6918 - 0xF6934
; =========================================================

F6918:  PUSH            {R4,R6,R7,LR}
F691A:  ADD             R7, SP, #8
F691C:  LDRB            R2, [R0]
F691E:  MOV             R4, R1
F6920:  LDR             R1, [R0,#8]
F6922:  LSLS            R2, R2, #0x1F
F6924:  IT EQ
F6926:  ADDEQ           R1, R0, #1
F6928:  SUBS            R1, R4, R1
F692A:  MOVS            R2, #1
F692C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEjj; std::string::erase(uint,uint)
F6930:  MOV             R0, R4
F6932:  POP             {R4,R6,R7,PC}
