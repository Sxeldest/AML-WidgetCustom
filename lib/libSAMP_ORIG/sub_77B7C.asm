; =========================================================
; Game Engine Function: sub_77B7C
; Address            : 0x77B7C - 0x77C14
; =========================================================

77B7C:  PUSH            {R4-R7,LR}
77B7E:  ADD             R7, SP, #0xC
77B80:  PUSH.W          {R8-R11}
77B84:  SUB             SP, SP, #4
77B86:  MOV             R8, R0
77B88:  MOVS            R0, #0
77B8A:  STRD.W          R0, R0, [R8]
77B8E:  MOV             R11, R2
77B90:  STR.W           R0, [R8,#8]
77B94:  MOV             R0, R2; s
77B96:  MOV             R4, R1
77B98:  LDR             R6, [R1,#4]
77B9A:  LDRB            R5, [R1]
77B9C:  BLX             strlen
77BA0:  MOV             R9, R0
77BA2:  LDR.W           R10, [R4,#8]
77BA6:  ANDS.W          R0, R5, #1
77BAA:  ITT EQ
77BAC:  ADDEQ.W         R10, R4, #1
77BB0:  LSREQ           R6, R5, #1
77BB2:  ADD.W           R0, R6, R9
77BB6:  CMN.W           R0, #0x10
77BBA:  BCS             loc_77C0E
77BBC:  CMP             R0, #0xA
77BBE:  BHI             loc_77BEA
77BC0:  LSLS            R0, R6, #1
77BC2:  MOV             R4, R8
77BC4:  STRB.W          R0, [R4],#1
77BC8:  CBZ             R6, loc_77BD4
77BCA:  MOV             R0, R4; dest
77BCC:  MOV             R1, R10; src
77BCE:  MOV             R2, R6; n
77BD0:  BLX             j_memcpy
77BD4:  MOVS            R0, #0
77BD6:  STRB            R0, [R4,R6]
77BD8:  MOV             R0, R8
77BDA:  MOV             R1, R11
77BDC:  MOV             R2, R9
77BDE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
77BE2:  ADD             SP, SP, #4
77BE4:  POP.W           {R8-R11}
77BE8:  POP             {R4-R7,PC}
77BEA:  ADDS            R0, #0x10
77BEC:  MOV             R5, R11
77BEE:  BIC.W           R11, R0, #0xF
77BF2:  MOV             R0, R11; unsigned int
77BF4:  BLX             j__Znwj; operator new(uint)
77BF8:  MOV             R4, R0
77BFA:  ORR.W           R0, R11, #1
77BFE:  MOV             R11, R5
77C00:  STRD.W          R0, R6, [R8]
77C04:  STR.W           R4, [R8,#8]
77C08:  CMP             R6, #0
77C0A:  BNE             loc_77BCA
77C0C:  B               loc_77BD4
77C0E:  MOV             R0, R8
77C10:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
