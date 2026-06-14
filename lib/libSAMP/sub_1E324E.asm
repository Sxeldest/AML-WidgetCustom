; =========================================================
; Game Engine Function: sub_1E324E
; Address            : 0x1E324E - 0x1E326E
; =========================================================

1E324E:  PUSH            {R4,R5,R7,LR}
1E3250:  ADD             R7, SP, #8
1E3252:  LDR             R2, [R0,#4]
1E3254:  LDR             R4, [R1]
1E3256:  LDR             R5, [R2]
1E3258:  CMP             R4, R5
1E325A:  BNE             loc_1E3264
1E325C:  LDR             R0, [R0,#8]
1E325E:  ADDS            R1, #0x10
1E3260:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
1E3264:  SUBS            R0, R4, R5
1E3266:  CLZ.W           R0, R0
1E326A:  LSRS            R0, R0, #5
1E326C:  POP             {R4,R5,R7,PC}
