; =========================================================
; Game Engine Function: sub_E7C78
; Address            : 0xE7C78 - 0xE7CD2
; =========================================================

E7C78:  PUSH            {R4-R7,LR}
E7C7A:  ADD             R7, SP, #0xC
E7C7C:  PUSH.W          {R8,R9,R11}
E7C80:  SUB             SP, SP, #0x18
E7C82:  LDRD.W          R6, R5, [R1,#0x20]
E7C86:  MOV.W           R9, #0
E7C8A:  STRD.W          R9, R9, [R0]
E7C8E:  CMP             R6, R5
E7C90:  STR.W           R9, [R0,#8]
E7C94:  BEQ             loc_E7CCA
E7C96:  ADD.W           R8, SP, #0x30+var_28
E7C9A:  MOV             R4, R0
E7C9C:  LDRB            R1, [R6]
E7C9E:  CMP             R1, #0x1F
E7CA0:  BHI             loc_E7CBE
E7CA2:  STRD.W          R9, R9, [SP,#0x30+var_28]
E7CA6:  STRB.W          R9, [SP,#0x30+var_20]
E7CAA:  MOV             R0, R8
E7CAC:  MOVS            R2, #9
E7CAE:  STR             R1, [SP,#0x30+var_30]
E7CB0:  BL              sub_EB088
E7CB4:  MOV             R0, R4; int
E7CB6:  MOV             R1, R8; s
E7CB8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
E7CBC:  B               loc_E7CC4
E7CBE:  MOV             R0, R4
E7CC0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E7CC4:  ADDS            R6, #1
E7CC6:  CMP             R6, R5
E7CC8:  BNE             loc_E7C9C
E7CCA:  ADD             SP, SP, #0x18
E7CCC:  POP.W           {R8,R9,R11}
E7CD0:  POP             {R4-R7,PC}
