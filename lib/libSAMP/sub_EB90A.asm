; =========================================================
; Game Engine Function: sub_EB90A
; Address            : 0xEB90A - 0xEBA02
; =========================================================

EB90A:  PUSH            {R4-R7,LR}
EB90C:  ADD             R7, SP, #0xC
EB90E:  PUSH.W          {R11}
EB912:  SUB             SP, SP, #0x38
EB914:  MOV             R4, R0
EB916:  LDRD.W          R1, R0, [R0,#4]
EB91A:  CMP             R1, R0
EB91C:  BEQ             loc_EB940
EB91E:  LDR.W           R0, [R0,#-4]
EB922:  LDRB            R1, [R0]
EB924:  CMP             R1, #2
EB926:  BNE             loc_EB968
EB928:  LDR             R5, [R0,#8]
EB92A:  LDRD.W          R1, R0, [R5,#4]
EB92E:  CMP             R1, R0
EB930:  BCS             loc_EB990
EB932:  MOVS            R0, #0
EB934:  STR             R0, [R1,#8]
EB936:  STRB            R0, [R1]
EB938:  ADD.W           R0, R1, #0x10
EB93C:  STR             R0, [R5,#4]
EB93E:  B               loc_EB9E8
EB940:  LDR             R0, [R4]
EB942:  MOVS            R1, #0
EB944:  STR             R1, [SP,#0x48+var_30]
EB946:  LDRD.W          R3, R6, [R0,#8]
EB94A:  LDRB            R2, [R0]
EB94C:  STRB            R1, [R0]
EB94E:  LDRD.W          R1, R5, [SP,#0x48+var_30]
EB952:  STRD.W          R1, R5, [R0,#8]
EB956:  ADD             R0, SP, #0x48+var_38
EB958:  STRB.W          R2, [SP,#0x48+var_38]
EB95C:  STRD.W          R3, R6, [SP,#0x48+var_30]
EB960:  BL              sub_E3F7A
EB964:  LDR             R0, [R4]
EB966:  B               loc_EB9F4
EB968:  LDR             R0, [R4,#0x10]
EB96A:  MOVS            R1, #0
EB96C:  STR             R1, [SP,#0x48+var_40]
EB96E:  LDRD.W          R3, R6, [R0,#8]
EB972:  LDRB            R2, [R0]
EB974:  STRB            R1, [R0]
EB976:  LDRD.W          R1, R5, [SP,#0x48+var_40]
EB97A:  STRD.W          R1, R5, [R0,#8]
EB97E:  MOV             R0, SP
EB980:  STRB.W          R2, [SP,#0x48+var_48]
EB984:  STRD.W          R3, R6, [SP,#0x48+var_40]
EB988:  BL              sub_E3F7A
EB98C:  LDR             R0, [R4,#0x10]
EB98E:  B               loc_EB9F4
EB990:  LDR             R3, [R5]
EB992:  SUBS            R2, R1, R3
EB994:  MOVS            R1, #1
EB996:  ADD.W           R1, R1, R2,ASR#4
EB99A:  CMP.W           R1, #0x10000000
EB99E:  BCS             loc_EB9FC
EB9A0:  SUBS            R0, R0, R3
EB9A2:  MOV             R3, #0x7FFFFFF0
EB9AA:  ADD             R6, SP, #0x48+var_24
EB9AC:  CMP.W           R1, R0,ASR#3
EB9B0:  IT LS
EB9B2:  ASRLS           R1, R0, #3
EB9B4:  CMP             R0, R3
EB9B6:  ADD.W           R3, R5, #8
EB9BA:  MOV.W           R2, R2,ASR#4
EB9BE:  MOV             R0, R6
EB9C0:  IT CS
EB9C2:  MOVCS           R1, #0xFFFFFFF
EB9C6:  BL              sub_E5D88
EB9CA:  LDR             R0, [SP,#0x48+var_1C]
EB9CC:  MOVS            R1, #0
EB9CE:  STR             R1, [R0,#8]
EB9D0:  LDR             R2, [SP,#0x48+var_1C]
EB9D2:  STRB            R1, [R0]
EB9D4:  ADD.W           R0, R2, #0x10
EB9D8:  STR             R0, [SP,#0x48+var_1C]
EB9DA:  MOV             R0, R5
EB9DC:  MOV             R1, R6
EB9DE:  BL              sub_E5DD0
EB9E2:  ADD             R0, SP, #0x48+var_24
EB9E4:  BL              sub_E5E26
EB9E8:  LDR             R0, [R4,#8]
EB9EA:  LDR.W           R0, [R0,#-4]
EB9EE:  LDR             R0, [R0,#8]
EB9F0:  LDR             R0, [R0,#4]
EB9F2:  SUBS            R0, #0x10
EB9F4:  ADD             SP, SP, #0x38 ; '8'
EB9F6:  POP.W           {R11}
EB9FA:  POP             {R4-R7,PC}
EB9FC:  MOV             R0, R5
EB9FE:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
