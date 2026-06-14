; =========================================================
; Game Engine Function: sub_14F898
; Address            : 0x14F898 - 0x14F952
; =========================================================

14F898:  PUSH            {R4-R7,LR}
14F89A:  ADD             R7, SP, #0xC
14F89C:  PUSH.W          {R8,R9,R11}
14F8A0:  SUB             SP, SP, #0x10
14F8A2:  MOV             R8, R0
14F8A4:  MOVS            R0, #0
14F8A6:  CMP.W           R0, R1,LSR#11
14F8AA:  BNE             loc_14F94A
14F8AC:  ADD.W           R0, R8, R1
14F8B0:  MOV             R6, R1
14F8B2:  MOV.W           R1, #0x14000
14F8B6:  ADD.W           R9, R0, #0x14000
14F8BA:  LDRB            R1, [R0,R1]
14F8BC:  MOV             R4, R2
14F8BE:  CBZ             R1, loc_14F8EC
14F8C0:  ADD.W           R0, R6, R6,LSL#2
14F8C4:  LDR             R1, =(byte_8F794 - 0x14F8CE)
14F8C6:  ADD.W           R5, R8, R0,LSL#3
14F8CA:  ADD             R1, PC; byte_8F794 ; s
14F8CC:  MOV             R0, R5; int
14F8CE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
14F8D2:  VMOV.I32        Q8, #0
14F8D6:  ADD.W           R1, R5, #0xC
14F8DA:  MOVS            R2, #0xD
14F8DC:  MOVS            R0, #0
14F8DE:  VST1.32         {D16-D17}, [R1],R2
14F8E2:  STR.W           R0, [R5,#0x22]
14F8E6:  STR.W           R0, [R5,#0x1D]
14F8EA:  STR             R0, [R1]
14F8EC:  LDRB            R0, [R4]
14F8EE:  LDRD.W          R2, R1, [R4,#4]
14F8F2:  ANDS.W          R3, R0, #1
14F8F6:  ITT EQ
14F8F8:  ADDEQ           R1, R4, #1
14F8FA:  LSREQ           R2, R0, #1
14F8FC:  MOV             R0, SP
14F8FE:  BL              sub_164D04
14F902:  ADD.W           R0, R6, R6,LSL#2
14F906:  LDRB.W          R1, [R8,R0,LSL#3]
14F90A:  ADD.W           R5, R8, R0,LSL#3
14F90E:  LSLS            R0, R1, #0x1F
14F910:  ITT NE
14F912:  LDRNE           R0, [R5,#8]; void *
14F914:  BLXNE           j__ZdlPv; operator delete(void *)
14F918:  VLDR            D16, [SP,#0x28+var_28]
14F91C:  LDR             R0, [SP,#0x28+var_20]
14F91E:  STR             R0, [R5,#8]
14F920:  ADD.W           R0, R4, #0x10
14F924:  VSTR            D16, [R5]
14F928:  LDR             R1, [R4,#0xC]
14F92A:  LDR.W           R2, [R4,#0x22]
14F92E:  STR             R1, [R5,#0xC]
14F930:  MOVS            R1, #1
14F932:  VLD1.32         {D16-D17}, [R0]!
14F936:  STRB.W          R1, [R9]
14F93A:  ADD.W           R1, R5, #0x10
14F93E:  STR.W           R2, [R5,#0x22]
14F942:  VST1.32         {D16-D17}, [R1]!
14F946:  LDRB            R0, [R0]
14F948:  STRB            R0, [R1]
14F94A:  ADD             SP, SP, #0x10
14F94C:  POP.W           {R8,R9,R11}
14F950:  POP             {R4-R7,PC}
