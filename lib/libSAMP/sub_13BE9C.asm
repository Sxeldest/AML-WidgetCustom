; =========================================================
; Game Engine Function: sub_13BE9C
; Address            : 0x13BE9C - 0x13BF2C
; =========================================================

13BE9C:  PUSH            {R4-R7,LR}
13BE9E:  ADD             R7, SP, #0xC
13BEA0:  PUSH.W          {R11}
13BEA4:  SUB             SP, SP, #0x18
13BEA6:  MOV             R4, R0
13BEA8:  LDRD.W          R6, R0, [R0,#4]
13BEAC:  MOV             R5, R1
13BEAE:  CMP             R6, R0
13BEB0:  BEQ             loc_13BEC2
13BEB2:  MOV             R0, R6
13BEB4:  MOV             R1, R5
13BEB6:  BL              sub_13C1F6
13BEBA:  ADD.W           R0, R6, #0xC
13BEBE:  STR             R0, [R4,#4]
13BEC0:  B               loc_13BF1E
13BEC2:  LDR             R0, [R4]
13BEC4:  MOV             R1, #0xAAAAAAAB
13BECC:  SUBS            R0, R6, R0
13BECE:  ASRS            R0, R0, #2
13BED0:  MUL.W           R2, R0, R1
13BED4:  MOV             R1, #0x15555555
13BEDC:  ADDS            R0, R2, #1
13BEDE:  CMP             R0, R1
13BEE0:  BHI             loc_13BF26
13BEE2:  MOVW            R3, #0xAAAA
13BEE6:  CMP.W           R0, R2,LSL#1
13BEEA:  IT LS
13BEEC:  LSLLS           R0, R2, #1
13BEEE:  MOVT            R3, #0xAAA
13BEF2:  CMP             R2, R3
13BEF4:  IT CC
13BEF6:  MOVCC           R1, R0
13BEF8:  ADD.W           R3, R4, #8
13BEFC:  ADD             R0, SP, #0x28+var_24
13BEFE:  BL              sub_13C270
13BF02:  LDR             R0, [SP,#0x28+var_1C]
13BF04:  MOV             R1, R5
13BF06:  BL              sub_13C1F6
13BF0A:  LDR             R0, [SP,#0x28+var_1C]
13BF0C:  ADDS            R0, #0xC
13BF0E:  STR             R0, [SP,#0x28+var_1C]
13BF10:  ADD             R1, SP, #0x28+var_24
13BF12:  MOV             R0, R4
13BF14:  BL              sub_13C2C8
13BF18:  ADD             R0, SP, #0x28+var_24
13BF1A:  BL              sub_13C326
13BF1E:  ADD             SP, SP, #0x18
13BF20:  POP.W           {R11}
13BF24:  POP             {R4-R7,PC}
13BF26:  MOV             R0, R4
13BF28:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
