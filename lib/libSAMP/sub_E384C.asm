; =========================================================
; Game Engine Function: sub_E384C
; Address            : 0xE384C - 0xE38F8
; =========================================================

E384C:  PUSH            {R4-R7,LR}
E384E:  ADD             R7, SP, #0xC
E3850:  PUSH.W          {R8,R9,R11}
E3854:  SUB             SP, SP, #8
E3856:  MOV             R8, R0
E3858:  ADD             R0, SP, #0x20+var_1C
E385A:  MOV             R9, R2
E385C:  MOV             R6, R1
E385E:  MOV             R1, R8
E3860:  MOVS            R2, #1
E3862:  BLX             j__ZNSt6__ndk113basic_istreamIcNS_11char_traitsIcEEE6sentryC2ERS3_b; std::istream::sentry::sentry(std::istream&,bool)
E3866:  LDRB.W          R0, [SP,#0x20+var_1C]
E386A:  CMP             R0, #0
E386C:  BEQ             loc_E38EE
E386E:  LDRB            R0, [R6]
E3870:  LSLS            R0, R0, #0x1F
E3872:  BNE             loc_E387A
E3874:  MOVS            R0, #0
E3876:  STRH            R0, [R6]
E3878:  B               loc_E3882
E387A:  LDR             R0, [R6,#8]
E387C:  MOVS            R1, #0
E387E:  STRB            R1, [R0]
E3880:  STR             R1, [R6,#4]
E3882:  ADD.W           R5, R8, #0x18
E3886:  MOVS            R4, #0
E3888:  LDR.W           R0, [R8]
E388C:  LDR.W           R0, [R0,#-0xC]
E3890:  LDR             R0, [R5,R0]
E3892:  LDRD.W          R1, R2, [R0,#0xC]
E3896:  CMP             R1, R2
E3898:  BEQ             loc_E38A2
E389A:  ADDS            R2, R1, #1
E389C:  STR             R2, [R0,#0xC]
E389E:  LDRB            R2, [R1]
E38A0:  B               loc_E38AE
E38A2:  LDR             R1, [R0]
E38A4:  LDR             R1, [R1,#0x28]
E38A6:  BLX             R1
E38A8:  MOV             R2, R0
E38AA:  ADDS            R0, #1
E38AC:  BEQ             loc_E38D4
E38AE:  UXTB            R1, R2
E38B0:  CMP             R1, R9
E38B2:  BEQ             loc_E38D0
E38B4:  MOV             R0, R6
E38B6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E38BA:  LDRB            R0, [R6]
E38BC:  SUBS            R4, #1
E38BE:  LDR             R1, [R6,#4]
E38C0:  LSLS            R2, R0, #0x1F
E38C2:  IT EQ
E38C4:  LSREQ           R1, R0, #1
E38C6:  ADDS.W          R0, R1, #0x11
E38CA:  BNE             loc_E3888
E38CC:  MOVS            R2, #4
E38CE:  B               loc_E38DC
E38D0:  MOVS            R2, #0
E38D2:  B               loc_E38DC
E38D4:  MOVS            R2, #2
E38D6:  CMP             R4, #0
E38D8:  IT EQ
E38DA:  MOVEQ           R2, #6
E38DC:  LDR.W           R0, [R8]
E38E0:  LDR.W           R0, [R0,#-0xC]
E38E4:  ADD             R0, R8; this
E38E6:  LDR             R1, [R0,#0x10]
E38E8:  ORRS            R1, R2; unsigned int
E38EA:  BLX             j__ZNSt6__ndk18ios_base5clearEj; std::ios_base::clear(uint)
E38EE:  MOV             R0, R8
E38F0:  ADD             SP, SP, #8
E38F2:  POP.W           {R8,R9,R11}
E38F6:  POP             {R4-R7,PC}
