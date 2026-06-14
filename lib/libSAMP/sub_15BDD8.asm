; =========================================================
; Game Engine Function: sub_15BDD8
; Address            : 0x15BDD8 - 0x15BE26
; =========================================================

15BDD8:  PUSH            {R4-R7,LR}
15BDDA:  ADD             R7, SP, #0xC
15BDDC:  PUSH.W          {R11}
15BDE0:  SUB             SP, SP, #0x18
15BDE2:  MOV             R5, R1
15BDE4:  LDR             R1, [R1,#0xC]; std::__itoa *
15BDE6:  MOV             R6, SP
15BDE8:  MOV             R4, R0
15BDEA:  MOV             R0, R6; this
15BDEC:  BLX             j__ZNSt6__ndk19to_stringEj; std::to_string(uint)
15BDF0:  LDRB            R2, [R5,#0x10]
15BDF2:  ADD             R0, SP, #0x28+var_1C
15BDF4:  MOV             R1, R6
15BDF6:  BL              sub_15A2FC
15BDFA:  ADD             R1, SP, #0x28+var_1C
15BDFC:  MOV             R0, R4
15BDFE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
15BE02:  LDRB.W          R0, [SP,#0x28+var_1C]
15BE06:  LSLS            R0, R0, #0x1F
15BE08:  ITT NE
15BE0A:  LDRNE           R0, [SP,#0x28+var_14]; void *
15BE0C:  BLXNE           j__ZdlPv; operator delete(void *)
15BE10:  LDRB.W          R0, [SP,#0x28+var_28]
15BE14:  LSLS            R0, R0, #0x1F
15BE16:  ITT NE
15BE18:  LDRNE           R0, [SP,#0x28+var_20]; void *
15BE1A:  BLXNE           j__ZdlPv; operator delete(void *)
15BE1E:  ADD             SP, SP, #0x18
15BE20:  POP.W           {R11}
15BE24:  POP             {R4-R7,PC}
