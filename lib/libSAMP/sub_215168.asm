; =========================================================
; Game Engine Function: sub_215168
; Address            : 0x215168 - 0x215192
; =========================================================

215168:  PUSH            {R7,LR}
21516A:  MOV             R7, SP
21516C:  CMP.W           R1, #0x40000000
215170:  BCS             loc_21518E
215172:  LDR             R2, [R0]
215174:  LDR             R0, [R0,#8]
215176:  SUBS            R0, R0, R2
215178:  LDR             R2, =0x7FFFFFFC
21517A:  CMP.W           R1, R0,ASR#1
21517E:  IT LS
215180:  ASRLS           R1, R0, #1
215182:  CMP             R0, R2
215184:  IT CS
215186:  MOVCS           R1, #0x3FFFFFFF
21518A:  MOV             R0, R1
21518C:  POP             {R7,PC}
21518E:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
