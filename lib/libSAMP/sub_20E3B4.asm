; =========================================================
; Game Engine Function: sub_20E3B4
; Address            : 0x20E3B4 - 0x20E3DE
; =========================================================

20E3B4:  PUSH            {R7,LR}
20E3B6:  MOV             R7, SP
20E3B8:  CMP.W           R1, #0x40000000
20E3BC:  BCS             loc_20E3DA
20E3BE:  LDR             R2, [R0]
20E3C0:  LDR             R0, [R0,#8]
20E3C2:  SUBS            R0, R0, R2
20E3C4:  LDR             R2, =0x7FFFFFFC
20E3C6:  CMP.W           R1, R0,ASR#1
20E3CA:  IT LS
20E3CC:  ASRLS           R1, R0, #1
20E3CE:  CMP             R0, R2
20E3D0:  IT CS
20E3D2:  MOVCS           R1, #0x3FFFFFFF
20E3D6:  MOV             R0, R1
20E3D8:  POP             {R7,PC}
20E3DA:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
