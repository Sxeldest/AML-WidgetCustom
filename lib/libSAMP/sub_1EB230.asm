; =========================================================
; Game Engine Function: sub_1EB230
; Address            : 0x1EB230 - 0x1EB296
; =========================================================

1EB230:  PUSH            {R4-R7,LR}
1EB232:  ADD             R7, SP, #0xC
1EB234:  PUSH.W          {R8}
1EB238:  SUB             SP, SP, #8
1EB23A:  MOV             R8, R0
1EB23C:  LDR             R0, [R7,#arg_4]
1EB23E:  STR             R0, [SP,#0x18+var_18]
1EB240:  MOV             R0, R8
1EB242:  MOV             R5, R3
1EB244:  MOV             R6, R2
1EB246:  MOV             R4, R1
1EB248:  BLX             j__ZNSt6__ndk17__sort4IRNS_6__lessIllEEPlEEjT0_S5_S5_S5_T_; std::__sort4<std::__less<long,long> &,long *>(long *,long *,long *,long *,std::__less<long,long> &)
1EB24C:  LDR             R2, [R7,#arg_0]
1EB24E:  LDR             R1, [R5]
1EB250:  LDR             R3, [R2]
1EB252:  CMP             R3, R1
1EB254:  BGE             loc_1EB28E
1EB256:  STR             R3, [R5]
1EB258:  STR             R1, [R2]
1EB25A:  LDR             R1, [R6]
1EB25C:  LDR             R2, [R5]
1EB25E:  CMP             R2, R1
1EB260:  BGE             loc_1EB288
1EB262:  STR             R2, [R6]
1EB264:  STR             R1, [R5]
1EB266:  LDR             R1, [R4]
1EB268:  LDR             R2, [R6]
1EB26A:  CMP             R2, R1
1EB26C:  BGE             loc_1EB28C
1EB26E:  STR             R2, [R4]
1EB270:  STR             R1, [R6]
1EB272:  LDR.W           R1, [R8]
1EB276:  LDR             R2, [R4]
1EB278:  CMP             R2, R1
1EB27A:  ITEEE GE
1EB27C:  ADDGE           R0, #3
1EB27E:  STRLT.W         R2, [R8]
1EB282:  STRLT           R1, [R4]
1EB284:  ADDLT           R0, #4
1EB286:  B               loc_1EB28E
1EB288:  ADDS            R0, #1
1EB28A:  B               loc_1EB28E
1EB28C:  ADDS            R0, #2
1EB28E:  ADD             SP, SP, #8
1EB290:  POP.W           {R8}
1EB294:  POP             {R4-R7,PC}
