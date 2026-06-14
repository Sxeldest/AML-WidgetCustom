; =========================================================
; Game Engine Function: sub_EE094
; Address            : 0xEE094 - 0xEE128
; =========================================================

EE094:  PUSH            {R4-R7,LR}
EE096:  ADD             R7, SP, #0xC
EE098:  PUSH.W          {R8-R11}
EE09C:  SUB             SP, SP, #4
EE09E:  MOV             R8, R0
EE0A0:  MOVS            R0, #0
EE0A2:  STRD.W          R0, R0, [R8]
EE0A6:  MOV             R11, R2
EE0A8:  STR.W           R0, [R8,#8]
EE0AC:  MOV             R0, R2; s
EE0AE:  MOV             R4, R1
EE0B0:  LDR             R6, [R1,#4]
EE0B2:  LDRB            R5, [R1]
EE0B4:  BLX             strlen
EE0B8:  MOV             R9, R0
EE0BA:  LDR.W           R10, [R4,#8]
EE0BE:  ANDS.W          R0, R5, #1
EE0C2:  ITT EQ
EE0C4:  ADDEQ.W         R10, R4, #1
EE0C8:  LSREQ           R6, R5, #1
EE0CA:  ADD.W           R0, R6, R9
EE0CE:  CMN.W           R0, #0x10
EE0D2:  BCS             loc_EE122
EE0D4:  CMP             R0, #0xA
EE0D6:  BHI             loc_EE0E2
EE0D8:  LSLS            R0, R6, #1
EE0DA:  MOV             R4, R8
EE0DC:  STRB.W          R0, [R4],#1
EE0E0:  B               loc_EE100
EE0E2:  ADDS            R0, #0x10
EE0E4:  MOV             R5, R11
EE0E6:  BIC.W           R11, R0, #0xF
EE0EA:  MOV             R0, R11; unsigned int
EE0EC:  BLX             j__Znwj; operator new(uint)
EE0F0:  MOV             R4, R0
EE0F2:  ORR.W           R0, R11, #1
EE0F6:  MOV             R11, R5
EE0F8:  STRD.W          R0, R6, [R8]
EE0FC:  STR.W           R4, [R8,#8]
EE100:  CBZ             R6, loc_EE10C
EE102:  MOV             R0, R4; dest
EE104:  MOV             R1, R10; src
EE106:  MOV             R2, R6; n
EE108:  BLX             j_memcpy
EE10C:  MOVS            R0, #0
EE10E:  STRB            R0, [R4,R6]
EE110:  MOV             R0, R8
EE112:  MOV             R1, R11
EE114:  MOV             R2, R9
EE116:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
EE11A:  ADD             SP, SP, #4
EE11C:  POP.W           {R8-R11}
EE120:  POP             {R4-R7,PC}
EE122:  MOV             R0, R8
EE124:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
