; =========================================================
; Game Engine Function: sub_EB862
; Address            : 0xEB862 - 0xEB900
; =========================================================

EB862:  PUSH            {R4-R7,LR}
EB864:  ADD             R7, SP, #0xC
EB866:  PUSH.W          {R11}
EB86A:  SUB             SP, SP, #0x18
EB86C:  MOV             R4, R0
EB86E:  LDRD.W          R6, R0, [R0,#4]
EB872:  MOV             R5, R1
EB874:  CMP             R6, R0
EB876:  BCS             loc_EB890
EB878:  MOVS            R0, #0
EB87A:  STRD.W          R0, R0, [R6,#8]
EB87E:  LDRB            R1, [R5]
EB880:  STRB            R0, [R6]
EB882:  MOV             R0, R6
EB884:  BL              sub_EA862
EB888:  ADD.W           R0, R6, #0x10
EB88C:  STR             R0, [R4,#4]
EB88E:  B               loc_EB8F0
EB890:  LDR             R3, [R4]
EB892:  MOVS            R1, #1
EB894:  SUBS            R2, R6, R3
EB896:  ADD.W           R1, R1, R2,ASR#4
EB89A:  CMP.W           R1, #0x10000000
EB89E:  BCS             loc_EB8FA
EB8A0:  SUBS            R0, R0, R3
EB8A2:  MOV             R3, #0x7FFFFFF0
EB8AA:  ADD             R6, SP, #0x28+var_24
EB8AC:  CMP.W           R1, R0,ASR#3
EB8B0:  IT LS
EB8B2:  ASRLS           R1, R0, #3
EB8B4:  CMP             R0, R3
EB8B6:  ADD.W           R3, R4, #8
EB8BA:  MOV.W           R2, R2,ASR#4
EB8BE:  MOV             R0, R6
EB8C0:  IT CS
EB8C2:  MOVCS           R1, #0xFFFFFFF
EB8C6:  BL              sub_E5D88
EB8CA:  LDR             R0, [SP,#0x28+var_1C]
EB8CC:  MOVS            R2, #0
EB8CE:  STRD.W          R2, R2, [R0,#8]
EB8D2:  LDRB            R1, [R5]
EB8D4:  STRB            R2, [R0]
EB8D6:  BL              sub_EA862
EB8DA:  LDR             R0, [SP,#0x28+var_1C]
EB8DC:  ADDS            R0, #0x10
EB8DE:  STR             R0, [SP,#0x28+var_1C]
EB8E0:  MOV             R0, R4
EB8E2:  MOV             R1, R6
EB8E4:  BL              sub_E5DD0
EB8E8:  ADD             R0, SP, #0x28+var_24
EB8EA:  BL              sub_E5E26
EB8EE:  LDR             R0, [R4,#4]
EB8F0:  SUBS            R0, #0x10
EB8F2:  ADD             SP, SP, #0x18
EB8F4:  POP.W           {R11}
EB8F8:  POP             {R4-R7,PC}
EB8FA:  MOV             R0, R4
EB8FC:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
