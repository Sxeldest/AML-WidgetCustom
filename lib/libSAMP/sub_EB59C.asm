; =========================================================
; Game Engine Function: sub_EB59C
; Address            : 0xEB59C - 0xEB62E
; =========================================================

EB59C:  PUSH            {R4-R7,LR}
EB59E:  ADD             R7, SP, #0xC
EB5A0:  PUSH.W          {R11}
EB5A4:  SUB             SP, SP, #0x18
EB5A6:  MOV             R4, R0
EB5A8:  LDRD.W          R6, R0, [R0,#4]
EB5AC:  MOV             R5, R1
EB5AE:  CMP             R6, R0
EB5B0:  BCS             loc_EB5C6
EB5B2:  LDRB            R1, [R5]
EB5B4:  MOV             R0, R6
EB5B6:  STRB.W          R1, [R0],#8
EB5BA:  BL              sub_E5EF8
EB5BE:  ADD.W           R0, R6, #0x10
EB5C2:  STR             R0, [R4,#4]
EB5C4:  B               loc_EB61E
EB5C6:  LDR             R3, [R4]
EB5C8:  MOVS            R1, #1
EB5CA:  SUBS            R2, R6, R3
EB5CC:  ADD.W           R1, R1, R2,ASR#4
EB5D0:  CMP.W           R1, #0x10000000
EB5D4:  BCS             loc_EB628
EB5D6:  SUBS            R0, R0, R3
EB5D8:  MOV             R3, #0x7FFFFFF0
EB5E0:  ASRS            R2, R2, #4
EB5E2:  CMP.W           R1, R0,ASR#3
EB5E6:  IT LS
EB5E8:  ASRLS           R1, R0, #3
EB5EA:  CMP             R0, R3
EB5EC:  ADD.W           R3, R4, #8
EB5F0:  ADD             R0, SP, #0x28+var_24
EB5F2:  IT CS
EB5F4:  MOVCS           R1, #0xFFFFFFF
EB5F8:  BL              sub_E5D88
EB5FC:  LDR             R0, [SP,#0x28+var_1C]
EB5FE:  LDRB            R1, [R5]
EB600:  STRB.W          R1, [R0],#8
EB604:  BL              sub_E5EF8
EB608:  LDR             R0, [SP,#0x28+var_1C]
EB60A:  ADDS            R0, #0x10
EB60C:  STR             R0, [SP,#0x28+var_1C]
EB60E:  ADD             R1, SP, #0x28+var_24
EB610:  MOV             R0, R4
EB612:  BL              sub_E5DD0
EB616:  ADD             R0, SP, #0x28+var_24
EB618:  BL              sub_E5E26
EB61C:  LDR             R0, [R4,#4]
EB61E:  SUBS            R0, #0x10
EB620:  ADD             SP, SP, #0x18
EB622:  POP.W           {R11}
EB626:  POP             {R4-R7,PC}
EB628:  MOV             R0, R4
EB62A:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
