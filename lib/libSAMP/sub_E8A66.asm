; =========================================================
; Game Engine Function: sub_E8A66
; Address            : 0xE8A66 - 0xE8A8C
; =========================================================

E8A66:  PUSH            {R4,R5,R7,LR}
E8A68:  ADD             R7, SP, #8
E8A6A:  MOV             R4, R0
E8A6C:  CMP.W           R1, #0xFFFFFFFF
E8A70:  BLE             loc_E8A86
E8A72:  SUBS            R0, R1, #1
E8A74:  MOVS            R1, #1
E8A76:  ADD.W           R5, R1, R0,LSR#5
E8A7A:  LSLS            R0, R5, #2; unsigned int
E8A7C:  BLX             j__Znwj; operator new(uint)
E8A80:  MOVS            R1, #0
E8A82:  STM             R4!, {R0,R1,R5}
E8A84:  POP             {R4,R5,R7,PC}
E8A86:  MOV             R0, R4
E8A88:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
