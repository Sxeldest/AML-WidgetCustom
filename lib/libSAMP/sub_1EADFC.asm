; =========================================================
; Game Engine Function: sub_1EADFC
; Address            : 0x1EADFC - 0x1EAE62
; =========================================================

1EADFC:  PUSH            {R4-R7,LR}
1EADFE:  ADD             R7, SP, #0xC
1EAE00:  PUSH.W          {R8}
1EAE04:  SUB             SP, SP, #8
1EAE06:  MOV             R8, R0
1EAE08:  LDR             R0, [R7,#arg_4]
1EAE0A:  STR             R0, [SP,#0x18+var_18]
1EAE0C:  MOV             R0, R8
1EAE0E:  MOV             R5, R3
1EAE10:  MOV             R6, R2
1EAE12:  MOV             R4, R1
1EAE14:  BLX             j__ZNSt6__ndk17__sort4IRNS_6__lessIjjEEPjEEjT0_S5_S5_S5_T_; std::__sort4<std::__less<uint,uint> &,uint *>(uint *,uint *,uint *,uint *,std::__less<uint,uint> &)
1EAE18:  LDR             R2, [R7,#arg_0]
1EAE1A:  LDR             R1, [R5]
1EAE1C:  LDR             R3, [R2]
1EAE1E:  CMP             R3, R1
1EAE20:  BCS             loc_1EAE5A
1EAE22:  STR             R3, [R5]
1EAE24:  STR             R1, [R2]
1EAE26:  LDR             R1, [R6]
1EAE28:  LDR             R2, [R5]
1EAE2A:  CMP             R2, R1
1EAE2C:  BCS             loc_1EAE54
1EAE2E:  STR             R2, [R6]
1EAE30:  STR             R1, [R5]
1EAE32:  LDR             R1, [R4]
1EAE34:  LDR             R2, [R6]
1EAE36:  CMP             R2, R1
1EAE38:  BCS             loc_1EAE58
1EAE3A:  STR             R2, [R4]
1EAE3C:  STR             R1, [R6]
1EAE3E:  LDR.W           R1, [R8]
1EAE42:  LDR             R2, [R4]
1EAE44:  CMP             R2, R1
1EAE46:  ITEEE CS
1EAE48:  ADDCS           R0, #3
1EAE4A:  STRCC.W         R2, [R8]
1EAE4E:  STRCC           R1, [R4]
1EAE50:  ADDCC           R0, #4
1EAE52:  B               loc_1EAE5A
1EAE54:  ADDS            R0, #1
1EAE56:  B               loc_1EAE5A
1EAE58:  ADDS            R0, #2
1EAE5A:  ADD             SP, SP, #8
1EAE5C:  POP.W           {R8}
1EAE60:  POP             {R4-R7,PC}
