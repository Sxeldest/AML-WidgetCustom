; =========================================================
; Game Engine Function: sub_12FBF8
; Address            : 0x12FBF8 - 0x12FC38
; =========================================================

12FBF8:  PUSH            {R4,R5,R7,LR}
12FBFA:  ADD             R7, SP, #8
12FBFC:  MOV             R4, R1
12FBFE:  LDR.W           R1, [R0,#0x7C]!
12FC02:  MOVW            R5, #0xAAAB
12FC06:  LDR             R3, [R0,#4]
12FC08:  MOVT            R5, #0xAAAA
12FC0C:  SUBS            R3, R3, R1
12FC0E:  ASRS            R3, R3, #2
12FC10:  MULS            R3, R5
12FC12:  SUBS            R5, R3, #1
12FC14:  CMP             R5, R4
12FC16:  BCC             loc_12FC2A
12FC18:  CMP             R3, R4
12FC1A:  BLS             loc_12FC34
12FC1C:  ADD.W           R0, R4, R4,LSL#1
12FC20:  ADD.W           R1, R1, R0,LSL#2
12FC24:  MOV             R0, R2
12FC26:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
12FC2A:  MOVS            R0, #0
12FC2C:  CMP             R5, R4
12FC2E:  IT CS
12FC30:  MOVCS           R0, #1
12FC32:  POP             {R4,R5,R7,PC}
12FC34:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_out_of_rangeEv; std::__vector_base_common<true>::__throw_out_of_range(void)
