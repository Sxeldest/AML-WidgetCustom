; =========================================================
; Game Engine Function: sub_F4040
; Address            : 0xF4040 - 0xF40D0
; =========================================================

F4040:  PUSH            {R4-R7,LR}
F4042:  ADD             R7, SP, #0xC
F4044:  PUSH.W          {R11}
F4048:  SUB             SP, SP, #0x18
F404A:  MOV             R4, R0
F404C:  MOV             R5, R1
F404E:  LDR             R0, [R0]
F4050:  LDR             R1, [R4,#4]
F4052:  SUBS            R2, R1, R0
F4054:  MOVS            R1, #1
F4056:  ADD.W           R1, R1, R2,ASR#4
F405A:  CMP.W           R1, #0x10000000
F405E:  BCS             loc_F40CA
F4060:  MOV             R3, R4
F4062:  ASRS            R2, R2, #4
F4064:  LDR.W           R6, [R3,#8]!
F4068:  SUBS            R0, R6, R0
F406A:  MOV             R6, #0x7FFFFFF0
F4072:  CMP.W           R1, R0,ASR#3
F4076:  IT LS
F4078:  ASRLS           R1, R0, #3
F407A:  CMP             R0, R6
F407C:  ADD             R6, SP, #0x28+var_24
F407E:  IT CS
F4080:  MOVCS           R1, #0xFFFFFFF
F4084:  MOV             R0, R6
F4086:  BL              sub_F40DC
F408A:  LDR             R0, [SP,#0x28+var_1C]
F408C:  VLD1.32         {D16-D17}, [R5]
F4090:  VST1.32         {D16-D17}, [R0]
F4094:  LDR             R0, [SP,#0x28+var_1C]
F4096:  ADDS            R0, #0x10
F4098:  STR             R0, [SP,#0x28+var_1C]
F409A:  MOV             R0, R4
F409C:  MOV             R1, R6
F409E:  BL              sub_F4124
F40A2:  LDRD.W          R1, R0, [SP,#0x28+var_20]
F40A6:  CMP             R0, R1
F40A8:  ITTTT NE
F40AA:  SUBNE           R1, R0, R1
F40AC:  SUBNE           R1, #0x10
F40AE:  MVNNE.W         R1, R1,LSR#4
F40B2:  ADDNE.W         R0, R0, R1,LSL#4
F40B6:  IT NE
F40B8:  STRNE           R0, [SP,#0x28+var_1C]
F40BA:  LDR             R0, [SP,#0x28+var_24]; void *
F40BC:  CBZ             R0, loc_F40C2
F40BE:  BLX             j__ZdlPv; operator delete(void *)
F40C2:  ADD             SP, SP, #0x18
F40C4:  POP.W           {R11}
F40C8:  POP             {R4-R7,PC}
F40CA:  MOV             R0, R4
F40CC:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
