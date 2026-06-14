; =========================================================
; Game Engine Function: sub_1E94BC
; Address            : 0x1E94BC - 0x1E9522
; =========================================================

1E94BC:  PUSH            {R4-R7,LR}
1E94BE:  ADD             R7, SP, #0xC
1E94C0:  PUSH.W          {R8}
1E94C4:  SUB             SP, SP, #8
1E94C6:  MOV             R8, R0
1E94C8:  LDR             R0, [R7,#arg_4]
1E94CA:  STR             R0, [SP,#0x18+var_18]
1E94CC:  MOV             R0, R8
1E94CE:  MOV             R5, R3
1E94D0:  MOV             R6, R2
1E94D2:  MOV             R4, R1
1E94D4:  BLX             j__ZNSt6__ndk17__sort4IRNS_6__lessIwwEEPwEEjT0_S5_S5_S5_T_; std::__sort4<std::__less<wchar_t,wchar_t> &,wchar_t *>(wchar_t *,wchar_t *,wchar_t *,wchar_t *,std::__less<wchar_t,wchar_t> &)
1E94D8:  LDR             R2, [R7,#arg_0]
1E94DA:  LDR             R1, [R5]
1E94DC:  LDR             R3, [R2]
1E94DE:  CMP             R3, R1
1E94E0:  BCS             loc_1E951A
1E94E2:  STR             R3, [R5]
1E94E4:  STR             R1, [R2]
1E94E6:  LDR             R1, [R6]
1E94E8:  LDR             R2, [R5]
1E94EA:  CMP             R2, R1
1E94EC:  BCS             loc_1E9514
1E94EE:  STR             R2, [R6]
1E94F0:  STR             R1, [R5]
1E94F2:  LDR             R1, [R4]
1E94F4:  LDR             R2, [R6]
1E94F6:  CMP             R2, R1
1E94F8:  BCS             loc_1E9518
1E94FA:  STR             R2, [R4]
1E94FC:  STR             R1, [R6]
1E94FE:  LDR.W           R1, [R8]
1E9502:  LDR             R2, [R4]
1E9504:  CMP             R2, R1
1E9506:  ITEEE CS
1E9508:  ADDCS           R0, #3
1E950A:  STRCC.W         R2, [R8]
1E950E:  STRCC           R1, [R4]
1E9510:  ADDCC           R0, #4
1E9512:  B               loc_1E951A
1E9514:  ADDS            R0, #1
1E9516:  B               loc_1E951A
1E9518:  ADDS            R0, #2
1E951A:  ADD             SP, SP, #8
1E951C:  POP.W           {R8}
1E9520:  POP             {R4-R7,PC}
