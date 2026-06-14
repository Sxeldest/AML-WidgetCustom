; =========================================================
; Game Engine Function: sub_DD758
; Address            : 0xDD758 - 0xDD7B6
; =========================================================

DD758:  PUSH            {R4,R6,R7,LR}
DD75A:  ADD             R7, SP, #8
DD75C:  SUB             SP, SP, #0x20
DD75E:  MOV             R4, R0
DD760:  MOVS            R0, #0
DD762:  STRD.W          R0, R0, [R4]
DD766:  STR             R0, [R4,#8]
DD768:  CBZ             R2, loc_DD7AE
DD76A:  ADD             R0, SP, #0x28+var_18
DD76C:  BLX             j__ZN3fmt2v86detail18thousands_sep_implIcEENS1_20thousands_sep_resultIT_EENS1_10locale_refE; fmt::v8::detail::thousands_sep_impl<char>(fmt::v8::detail::locale_ref)
DD770:  ADD             R1, SP, #0x28+var_18
DD772:  MOV             R0, SP
DD774:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
DD778:  LDRB.W          R0, [SP,#0x28+var_18]
DD77C:  LDRB.W          R1, [SP,#0x28+var_C]
DD780:  STRB.W          R1, [SP,#0x28+var_1C]
DD784:  LSLS            R0, R0, #0x1F
DD786:  ITT NE
DD788:  LDRNE           R0, [SP,#0x28+var_10]; void *
DD78A:  BLXNE           j__ZdlPv; operator delete(void *)
DD78E:  LDRB            R0, [R4]
DD790:  LSLS            R0, R0, #0x1F
DD792:  ITT NE
DD794:  LDRNE           R0, [R4,#8]; void *
DD796:  BLXNE           j__ZdlPv; operator delete(void *)
DD79A:  VLDR            D16, [SP,#0x28+var_28]
DD79E:  LDRB.W          R0, [SP,#0x28+var_1C]
DD7A2:  LDR             R1, [SP,#0x28+var_20]
DD7A4:  STR             R1, [R4,#8]
DD7A6:  STRB            R0, [R4,#0xC]
DD7A8:  VSTR            D16, [R4]
DD7AC:  B               loc_DD7B0
DD7AE:  STRB            R0, [R4,#0xC]
DD7B0:  MOV             R0, R4
DD7B2:  ADD             SP, SP, #0x20 ; ' '
DD7B4:  POP             {R4,R6,R7,PC}
