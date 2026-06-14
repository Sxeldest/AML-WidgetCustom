; =========================================================
; Game Engine Function: sub_EE274
; Address            : 0xEE274 - 0xEE2D0
; =========================================================

EE274:  PUSH            {R4,R5,R7,LR}
EE276:  ADD             R7, SP, #8
EE278:  SUB             SP, SP, #8
EE27A:  MOV             R4, R0
EE27C:  ADD             R0, SP, #0x10+var_C
EE27E:  MOV             R5, R1
EE280:  MOV             R1, R4
EE282:  MOVS            R2, #0
EE284:  BLX             j__ZNSt6__ndk113basic_istreamIcNS_11char_traitsIcEEE6sentryC2ERS3_b; std::istream::sentry::sentry(std::istream&,bool)
EE288:  LDRB.W          R0, [SP,#0x10+var_C]
EE28C:  CBZ             R0, loc_EE2C6
EE28E:  LDR             R0, [R4]
EE290:  LDR.W           R0, [R0,#-0xC]
EE294:  ADD             R0, R4
EE296:  LDR             R0, [R0,#0x18]
EE298:  LDRD.W          R1, R2, [R0,#0xC]
EE29C:  CMP             R1, R2
EE29E:  BEQ             loc_EE2A8
EE2A0:  ADDS            R2, R1, #1
EE2A2:  STR             R2, [R0,#0xC]
EE2A4:  LDRB            R0, [R1]
EE2A6:  B               loc_EE2B2
EE2A8:  LDR             R1, [R0]
EE2AA:  LDR             R1, [R1,#0x28]
EE2AC:  BLX             R1
EE2AE:  ADDS            R1, R0, #1
EE2B0:  BEQ             loc_EE2CC
EE2B2:  STRB            R0, [R5]
EE2B4:  MOVS            R1, #0
EE2B6:  LDR             R0, [R4]
EE2B8:  LDR.W           R0, [R0,#-0xC]
EE2BC:  ADD             R0, R4; this
EE2BE:  LDR             R2, [R0,#0x10]
EE2C0:  ORRS            R1, R2; unsigned int
EE2C2:  BLX             j__ZNSt6__ndk18ios_base5clearEj; std::ios_base::clear(uint)
EE2C6:  MOV             R0, R4
EE2C8:  ADD             SP, SP, #8
EE2CA:  POP             {R4,R5,R7,PC}
EE2CC:  MOVS            R1, #6
EE2CE:  B               loc_EE2B6
