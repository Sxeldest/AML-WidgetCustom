; =========================================================
; Game Engine Function: sub_FE8B4
; Address            : 0xFE8B4 - 0xFE8E0
; =========================================================

FE8B4:  PUSH            {R4-R7,LR}
FE8B6:  ADD             R7, SP, #0xC
FE8B8:  PUSH.W          {R11}
FE8BC:  MOV             R6, R0
FE8BE:  LDR             R0, =(dword_25AE80 - 0xFE8C8)
FE8C0:  MOV             R4, R2
FE8C2:  MOV             R5, R1
FE8C4:  ADD             R0, PC; dword_25AE80 ; int
FE8C6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
FE8CA:  LDR             R0, =(off_25AE8C - 0xFE8D4)
FE8CC:  MOV             R1, R5
FE8CE:  MOV             R2, R4
FE8D0:  ADD             R0, PC; off_25AE8C
FE8D2:  LDR             R3, [R0]
FE8D4:  MOV             R0, R6
FE8D6:  POP.W           {R11}
FE8DA:  POP.W           {R4-R7,LR}
FE8DE:  BX              R3
