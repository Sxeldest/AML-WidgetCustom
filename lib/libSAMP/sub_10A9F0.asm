; =========================================================
; Game Engine Function: sub_10A9F0
; Address            : 0x10A9F0 - 0x10AB26
; =========================================================

10A9F0:  PUSH            {R4-R7,LR}
10A9F2:  ADD             R7, SP, #0xC
10A9F4:  PUSH.W          {R8,R9,R11}
10A9F8:  SUB             SP, SP, #0x18
10A9FA:  MOV             R4, R0
10A9FC:  LDR             R0, =(off_23494C - 0x10AA06)
10A9FE:  MOVW            R2, #:lower16:unk_2BCB21
10AA02:  ADD             R0, PC; off_23494C
10AA04:  MOVT            R2, #:upper16:unk_2BCB21
10AA08:  LDR             R5, [R0]; dword_23DF24
10AA0A:  LDR             R0, =(dword_26304C - 0x10AA12)
10AA0C:  LDR             R1, [R5]
10AA0E:  ADD             R0, PC; dword_26304C
10AA10:  ADDS            R1, R1, R2
10AA12:  STR             R1, [R0]
10AA14:  ITT NE
10AA16:  MOVNE           R0, R4
10AA18:  BLXNE           R1
10AA1A:  LDR             R6, =(dword_263080 - 0x10AA20)
10AA1C:  ADD             R6, PC; dword_263080
10AA1E:  LDR             R0, [R6,#(dword_263084 - 0x263080)]; this
10AA20:  CMP             R0, #0
10AA22:  BEQ             loc_10AB1E
10AA24:  LDR             R1, [R0,#4]
10AA26:  ADDS            R1, #1
10AA28:  BEQ             loc_10AB1E
10AA2A:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
10AA2E:  CMP             R0, #0
10AA30:  STR             R0, [SP,#0x30+var_1C]
10AA32:  BEQ             loc_10AB1E
10AA34:  LDR             R6, [R6]
10AA36:  MOV             R8, R0
10AA38:  STR             R6, [SP,#0x30+var_20]
10AA3A:  CMP             R6, #0
10AA3C:  BEQ             loc_10AAF2
10AA3E:  LDR             R0, [R5]
10AA40:  MOV             R9, #0x9FC900
10AA48:  VLDR            S2, =1620.0
10AA4C:  ADD             R0, R9
10AA4E:  VLDR            S0, [R0,#4]
10AA52:  LDR             R0, [R6]
10AA54:  VCVT.F32.S32    S0, S0
10AA58:  LDR             R2, [R0,#0x14]
10AA5A:  VDIV.F32        S0, S0, S2
10AA5E:  VMOV            R1, S0
10AA62:  MOV             R0, R6
10AA64:  BLX             R2
10AA66:  LDR             R0, [R5]
10AA68:  ADD             R0, R9
10AA6A:  VLDR            S0, [R0]
10AA6E:  VLDR            S2, [R0,#4]
10AA72:  VCVT.F32.S32    S0, S0
10AA76:  LDR             R0, [R6]
10AA78:  VCVT.F32.S32    S2, S2
10AA7C:  LDR             R3, [R0,#0x1C]
10AA7E:  VMOV            R1, S0
10AA82:  VMOV            R2, S2
10AA86:  MOV             R0, R6
10AA88:  BLX             R3
10AA8A:  LDR             R0, [R6]
10AA8C:  LDR             R2, [R0,#0x10]
10AA8E:  MOV             R0, SP
10AA90:  MOV             R1, R6
10AA92:  BLX             R2
10AA94:  LDR             R0, [SP,#0x30+var_30]
10AA96:  STR.W           R0, [R4,#0x98]
10AA9A:  LDR             R0, [R6]
10AA9C:  LDR             R2, [R0,#0x10]
10AA9E:  MOV             R0, SP
10AAA0:  MOV             R1, R6
10AAA2:  BLX             R2
10AAA4:  LDR             R0, [SP,#0x30+var_2C]
10AAA6:  STR.W           R0, [R4,#0x9C]
10AAAA:  LDR             R0, [R6]
10AAAC:  LDR             R2, [R0,#0x10]
10AAAE:  MOV             R0, SP
10AAB0:  MOV             R1, R6
10AAB2:  BLX             R2
10AAB4:  LDR             R0, [SP,#0x30+var_28]
10AAB6:  STR.W           R0, [R4,#0xA0]
10AABA:  LDR             R0, [R6]
10AABC:  LDR             R2, [R0,#0x10]
10AABE:  MOV             R0, SP
10AAC0:  MOV             R1, R6
10AAC2:  BLX             R2
10AAC4:  LDR.W           R0, [R4,#0x88]
10AAC8:  VLDR            S0, [SP,#0x30+var_24]
10AACC:  LDR.W           R1, [R4,#0x98]
10AAD0:  VSTR            S0, [R4,#0xA4]
10AAD4:  STR             R1, [R0,#0xC]
10AAD6:  LDR.W           R0, [R4,#0x88]
10AADA:  VSTR            S0, [R0,#0x10]
10AADE:  LDR.W           R0, [R4,#0x88]
10AAE2:  LDR.W           R1, [R4,#0xA0]
10AAE6:  STR             R1, [R0,#0x14]
10AAE8:  LDR.W           R0, [R4,#0x88]
10AAEC:  LDR.W           R1, [R4,#0x9C]
10AAF0:  STR             R1, [R0,#0x18]
10AAF2:  ADD.W           R0, R8, #4
10AAF6:  DMB.W           ISH
10AAFA:  LDREX.W         R1, [R0]
10AAFE:  SUBS            R2, R1, #1
10AB00:  STREX.W         R3, R2, [R0]
10AB04:  CMP             R3, #0
10AB06:  BNE             loc_10AAFA
10AB08:  DMB.W           ISH
10AB0C:  CBNZ            R1, loc_10AB1E
10AB0E:  LDR.W           R0, [R8]
10AB12:  LDR             R1, [R0,#8]
10AB14:  MOV             R0, R8
10AB16:  BLX             R1
10AB18:  MOV             R0, R8; this
10AB1A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10AB1E:  ADD             SP, SP, #0x18
10AB20:  POP.W           {R8,R9,R11}
10AB24:  POP             {R4-R7,PC}
