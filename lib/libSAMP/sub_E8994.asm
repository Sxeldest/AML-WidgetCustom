; =========================================================
; Game Engine Function: sub_E8994
; Address            : 0xE8994 - 0xE8A02
; =========================================================

E8994:  PUSH            {R4,R5,R7,LR}
E8996:  ADD             R7, SP, #8
E8998:  MOV             R4, R0
E899A:  LDR             R0, [R0,#4]
E899C:  LDR             R2, [R4,#8]
E899E:  MOV             R5, R1
E89A0:  CMP.W           R0, R2,LSL#5
E89A4:  BNE             loc_E89D6
E89A6:  ADDS            R1, R0, #1
E89A8:  CMP.W           R1, #0xFFFFFFFF
E89AC:  BLE             loc_E89FC
E89AE:  MOV             R1, #0x3FFFFFFE
E89B6:  CMP             R0, R1
E89B8:  BHI             loc_E89CA
E89BA:  ADDS            R0, #0x20 ; ' '
E89BC:  BIC.W           R1, R0, #0x1F
E89C0:  CMP.W           R1, R2,LSL#6
E89C4:  IT LS
E89C6:  LSLLS           R1, R2, #6
E89C8:  B               loc_E89CE
E89CA:  MOV             R1, #0x7FFFFFFF
E89CE:  MOV             R0, R4
E89D0:  BL              sub_E8A02
E89D4:  LDR             R0, [R4,#4]
E89D6:  ADDS            R1, R0, #1
E89D8:  LDRB            R3, [R5]
E89DA:  STR             R1, [R4,#4]
E89DC:  AND.W           R5, R0, #0x1F
E89E0:  LDR             R1, [R4]
E89E2:  MOVS            R2, #1
E89E4:  LSLS            R2, R5
E89E6:  LSRS            R0, R0, #5
E89E8:  CMP             R3, #0
E89EA:  LDR.W           R3, [R1,R0,LSL#2]
E89EE:  ITE EQ
E89F0:  BICEQ.W         R2, R3, R2
E89F4:  ORRNE           R2, R3
E89F6:  STR.W           R2, [R1,R0,LSL#2]
E89FA:  POP             {R4,R5,R7,PC}
E89FC:  MOV             R0, R4
E89FE:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
