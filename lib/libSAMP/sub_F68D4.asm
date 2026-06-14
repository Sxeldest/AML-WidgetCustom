; =========================================================
; Game Engine Function: sub_F68D4
; Address            : 0xF68D4 - 0xF6908
; =========================================================

F68D4:  PUSH            {R4,R5,R7,LR}
F68D6:  ADD             R7, SP, #8
F68D8:  SUB             SP, SP, #0x18
F68DA:  MOV             R5, SP
F68DC:  MOV             R4, R1
F68DE:  MOV             R1, R0
F68E0:  MOV             R0, R5
F68E2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
F68E6:  LDR             R1, =(dword_2402B4 - 0xF68EE)
F68E8:  STR             R4, [SP,#0x20+var_14]
F68EA:  ADD             R1, PC; dword_2402B4
F68EC:  ADD             R0, SP, #0x20+var_10
F68EE:  MOV             R2, R5
F68F0:  MOV             R3, R5
F68F2:  BL              sub_F77BE
F68F6:  LDRB.W          R0, [SP,#0x20+var_20]
F68FA:  LSLS            R0, R0, #0x1F
F68FC:  ITT NE
F68FE:  LDRNE           R0, [SP,#0x20+var_18]; void *
F6900:  BLXNE           j__ZdlPv; operator delete(void *)
F6904:  ADD             SP, SP, #0x18
F6906:  POP             {R4,R5,R7,PC}
