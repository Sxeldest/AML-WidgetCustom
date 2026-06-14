; =========================================================
; Game Engine Function: sub_1F3168
; Address            : 0x1F3168 - 0x1F3198
; =========================================================

1F3168:  PUSH            {R4,R5,R7,LR}
1F316A:  ADD             R7, SP, #8
1F316C:  LDR             R5, =0x15555555
1F316E:  CMP             R1, R5
1F3170:  BHI             loc_1F3194
1F3172:  MOV             R4, R1
1F3174:  LDR             R1, [R0]
1F3176:  LDR             R0, [R0,#8]
1F3178:  SUBS            R0, R0, R1
1F317A:  MOVS            R1, #0xC
1F317C:  BLX             sub_220A40
1F3180:  LDR             R1, =0xAAAAAAA
1F3182:  CMP.W           R4, R0,LSL#1
1F3186:  IT LS
1F3188:  LSLLS           R4, R0, #1
1F318A:  CMP             R0, R1
1F318C:  IT CC
1F318E:  MOVCC           R5, R4
1F3190:  MOV             R0, R5
1F3192:  POP             {R4,R5,R7,PC}
1F3194:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
