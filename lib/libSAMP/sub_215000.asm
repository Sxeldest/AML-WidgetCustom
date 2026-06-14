; =========================================================
; Game Engine Function: sub_215000
; Address            : 0x215000 - 0x21502A
; =========================================================

215000:  PUSH            {R7,LR}
215002:  MOV             R7, SP
215004:  CMP.W           R1, #0x20000000
215008:  BCS             loc_215026
21500A:  LDR             R2, [R0]
21500C:  LDR             R0, [R0,#8]
21500E:  SUBS            R0, R0, R2
215010:  LDR             R2, =0x7FFFFFF8
215012:  CMP.W           R1, R0,ASR#2
215016:  IT LS
215018:  ASRLS           R1, R0, #2
21501A:  CMP             R0, R2
21501C:  IT CS
21501E:  MOVCS           R1, #0x1FFFFFFF
215022:  MOV             R0, R1
215024:  POP             {R7,PC}
215026:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
