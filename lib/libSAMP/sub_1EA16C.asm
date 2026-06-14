; =========================================================
; Game Engine Function: sub_1EA16C
; Address            : 0x1EA16C - 0x1EA1E0
; =========================================================

1EA16C:  PUSH            {R4-R7,LR}
1EA16E:  ADD             R7, SP, #0xC
1EA170:  PUSH.W          {R8}
1EA174:  SUB             SP, SP, #8
1EA176:  MOV             R8, R0
1EA178:  LDR             R0, [R7,#arg_4]
1EA17A:  STR             R0, [SP,#0x18+var_18]
1EA17C:  MOV             R0, R8
1EA17E:  MOV             R5, R3
1EA180:  MOV             R6, R2
1EA182:  MOV             R4, R1
1EA184:  BLX             j__ZNSt6__ndk17__sort4IRNS_6__lessIssEEPsEEjT0_S5_S5_S5_T_; std::__sort4<std::__less<short,short> &,short *>(short *,short *,short *,short *,std::__less<short,short> &)
1EA188:  LDR             R2, [R7,#arg_0]
1EA18A:  LDRSH.W         R1, [R5]
1EA18E:  LDRSH.W         R3, [R2]
1EA192:  CMP             R3, R1
1EA194:  BGE             loc_1EA1D8
1EA196:  STRH            R3, [R5]
1EA198:  STRH            R1, [R2]
1EA19A:  LDRSH.W         R1, [R6]
1EA19E:  LDRSH.W         R2, [R5]
1EA1A2:  CMP             R2, R1
1EA1A4:  BGE             loc_1EA1D2
1EA1A6:  STRH            R2, [R6]
1EA1A8:  STRH            R1, [R5]
1EA1AA:  LDRSH.W         R1, [R4]
1EA1AE:  LDRSH.W         R2, [R6]
1EA1B2:  CMP             R2, R1
1EA1B4:  BGE             loc_1EA1D6
1EA1B6:  STRH            R2, [R4]
1EA1B8:  STRH            R1, [R6]
1EA1BA:  LDRSH.W         R1, [R8]
1EA1BE:  LDRSH.W         R2, [R4]
1EA1C2:  CMP             R2, R1
1EA1C4:  ITEEE GE
1EA1C6:  ADDGE           R0, #3
1EA1C8:  STRHLT.W        R2, [R8]
1EA1CC:  STRHLT          R1, [R4]
1EA1CE:  ADDLT           R0, #4
1EA1D0:  B               loc_1EA1D8
1EA1D2:  ADDS            R0, #1
1EA1D4:  B               loc_1EA1D8
1EA1D6:  ADDS            R0, #2
1EA1D8:  ADD             SP, SP, #8
1EA1DA:  POP.W           {R8}
1EA1DE:  POP             {R4-R7,PC}
