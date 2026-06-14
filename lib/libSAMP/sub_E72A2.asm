; =========================================================
; Game Engine Function: sub_E72A2
; Address            : 0xE72A2 - 0xE7324
; =========================================================

E72A2:  PUSH            {R4-R7,LR}
E72A4:  ADD             R7, SP, #0xC
E72A6:  PUSH.W          {R8}
E72AA:  SUB             SP, SP, #0x18
E72AC:  MOV             R4, R0
E72AE:  MOV             R8, R1
E72B0:  LDR             R0, [R0]
E72B2:  LDR             R1, [R4,#4]
E72B4:  SUBS            R5, R1, R0
E72B6:  ADDS            R6, R5, #1
E72B8:  CMP.W           R6, #0xFFFFFFFF
E72BC:  BLE             loc_E731E
E72BE:  MOV             R1, R4
E72C0:  LDR.W           R2, [R1,#8]!
E72C4:  STR             R1, [SP,#0x28+var_14]
E72C6:  MOV             R1, #0x3FFFFFFF
E72CA:  SUBS            R0, R2, R0
E72CC:  CMP.W           R6, R0,LSL#1
E72D0:  IT LS
E72D2:  LSLLS           R6, R0, #1
E72D4:  CMP             R0, R1
E72D6:  IT CS
E72D8:  MOVCS           R6, #0x7FFFFFFF
E72DC:  CBZ             R6, loc_E72E6
E72DE:  MOV             R0, R6; unsigned int
E72E0:  BLX             j__Znwj; operator new(uint)
E72E4:  B               loc_E72E8
E72E6:  MOVS            R0, #0
E72E8:  ADDS            R1, R0, R6
E72EA:  STR             R1, [SP,#0x28+var_18]
E72EC:  LDRB.W          R1, [R8]
E72F0:  ADDS            R2, R0, R5
E72F2:  STRD.W          R0, R2, [SP,#0x28+var_24]
E72F6:  STRB.W          R1, [R2],#1
E72FA:  STR             R2, [SP,#0x28+var_1C]
E72FC:  ADD             R1, SP, #0x28+var_24
E72FE:  MOV             R0, R4
E7300:  BL              sub_E733A
E7304:  LDRD.W          R0, R1, [SP,#0x28+var_20]
E7308:  CMP             R1, R0
E730A:  IT NE
E730C:  STRNE           R0, [SP,#0x28+var_1C]
E730E:  LDR             R0, [SP,#0x28+var_24]; void *
E7310:  CBZ             R0, loc_E7316
E7312:  BLX             j__ZdlPv; operator delete(void *)
E7316:  ADD             SP, SP, #0x18
E7318:  POP.W           {R8}
E731C:  POP             {R4-R7,PC}
E731E:  MOV             R0, R4
E7320:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
