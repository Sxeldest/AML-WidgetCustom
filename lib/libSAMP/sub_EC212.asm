; =========================================================
; Game Engine Function: sub_EC212
; Address            : 0xEC212 - 0xEC236
; =========================================================

EC212:  PUSH            {R4,R5,R7,LR}
EC214:  ADD             R7, SP, #8
EC216:  MOV             R4, R0
EC218:  CMP.W           R1, #0xFFFFFFFF
EC21C:  BLE             loc_EC230
EC21E:  MOV             R0, R1; unsigned int
EC220:  MOV             R5, R1
EC222:  BLX             j__Znwj; operator new(uint)
EC226:  ADDS            R1, R0, R5
EC228:  STRD.W          R0, R0, [R4]
EC22C:  STR             R1, [R4,#8]
EC22E:  POP             {R4,R5,R7,PC}
EC230:  MOV             R0, R4
EC232:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
