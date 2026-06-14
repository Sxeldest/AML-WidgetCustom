; =========================================================
; Game Engine Function: sub_13B750
; Address            : 0x13B750 - 0x13B7BC
; =========================================================

13B750:  PUSH            {R4-R7,LR}
13B752:  ADD             R7, SP, #0xC
13B754:  PUSH.W          {R11}
13B758:  SUB             SP, SP, #0x10
13B75A:  MOV             R6, R1
13B75C:  MOV             R4, R0
13B75E:  BL              sub_12BC78
13B762:  LDR             R0, =(_ZTV11InputWidget - 0x13B768); `vtable for'InputWidget ...
13B764:  ADD             R0, PC; `vtable for'InputWidget
13B766:  ADDS            R0, #8
13B768:  STR             R0, [R4]
13B76A:  MOVS            R0, #0x64 ; 'd'; unsigned int
13B76C:  BLX             j__Znwj; operator new(uint)
13B770:  MOV             R5, R0
13B772:  BL              sub_13C4F8
13B776:  STR             R5, [R4,#0x54]
13B778:  MOV             R0, R4
13B77A:  MOV             R1, R5
13B77C:  BL              sub_12BDF6
13B780:  MOVS            R0, #0x64 ; 'd'; unsigned int
13B782:  BLX             j__Znwj; operator new(uint)
13B786:  MOV             R5, R0
13B788:  ADD             R0, SP, #0x20+var_1C
13B78A:  MOV             R1, R6
13B78C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
13B790:  ADD             R1, SP, #0x20+var_1C
13B792:  MOV             R0, R5
13B794:  BL              sub_13D05C
13B798:  LDRB.W          R0, [SP,#0x20+var_1C]
13B79C:  STR             R5, [R4,#0x58]
13B79E:  LSLS            R0, R0, #0x1F
13B7A0:  BEQ             loc_13B7AA
13B7A2:  LDR             R0, [SP,#0x20+var_14]; void *
13B7A4:  BLX             j__ZdlPv; operator delete(void *)
13B7A8:  LDR             R5, [R4,#0x58]
13B7AA:  MOV             R0, R4
13B7AC:  MOV             R1, R5
13B7AE:  BL              sub_12BDF6
13B7B2:  MOV             R0, R4
13B7B4:  ADD             SP, SP, #0x10
13B7B6:  POP.W           {R11}
13B7BA:  POP             {R4-R7,PC}
