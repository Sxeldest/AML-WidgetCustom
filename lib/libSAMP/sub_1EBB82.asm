; =========================================================
; Game Engine Function: sub_1EBB82
; Address            : 0x1EBB82 - 0x1EBC12
; =========================================================

1EBB82:  PUSH            {R4-R7,LR}
1EBB84:  ADD             R7, SP, #0xC
1EBB86:  PUSH.W          {R6-R10}
1EBB8A:  MOV             R8, R0
1EBB8C:  LDR             R0, [R7,#arg_4]
1EBB8E:  STR             R0, [SP,#0x20+var_20]
1EBB90:  MOV             R0, R8
1EBB92:  MOV             R5, R3
1EBB94:  MOV             R10, R2
1EBB96:  MOV             R9, R1
1EBB98:  BLX             j__ZNSt6__ndk17__sort4IRNS_6__lessIxxEEPxEEjT0_S5_S5_S5_T_; std::__sort4<std::__less<long long,long long> &,long long *>(long long *,long long *,long long *,long long *,std::__less<long long,long long> &)
1EBB9C:  LDR.W           R12, [R7,#arg_0]
1EBBA0:  LDRD.W          R1, R2, [R5]
1EBBA4:  LDRD.W          R4, R3, [R12]
1EBBA8:  SUBS            R6, R4, R1
1EBBAA:  SBCS.W          R6, R3, R2
1EBBAE:  BGE             loc_1EBC0C
1EBBB0:  STRD.W          R4, R3, [R5]
1EBBB4:  STRD.W          R1, R2, [R12]
1EBBB8:  LDRD.W          R1, R2, [R10]
1EBBBC:  LDRD.W          R3, R4, [R5]
1EBBC0:  SUBS            R6, R3, R1
1EBBC2:  SBCS.W          R6, R4, R2
1EBBC6:  BGE             loc_1EBC06
1EBBC8:  STRD.W          R3, R4, [R10]
1EBBCC:  STRD.W          R1, R2, [R5]
1EBBD0:  LDRD.W          R1, R2, [R9]
1EBBD4:  LDRD.W          R3, R4, [R10]
1EBBD8:  SUBS            R5, R3, R1
1EBBDA:  SBCS.W          R5, R4, R2
1EBBDE:  BGE             loc_1EBC0A
1EBBE0:  STRD.W          R3, R4, [R9]
1EBBE4:  STRD.W          R1, R2, [R10]
1EBBE8:  LDRD.W          R1, R2, [R8]
1EBBEC:  LDRD.W          R3, R4, [R9]
1EBBF0:  SUBS            R5, R3, R1
1EBBF2:  SBCS.W          R5, R4, R2
1EBBF6:  ITEEE GE
1EBBF8:  ADDGE           R0, #3
1EBBFA:  STRDLT.W        R3, R4, [R8]
1EBBFE:  STRDLT.W        R1, R2, [R9]
1EBC02:  ADDLT           R0, #4
1EBC04:  B               loc_1EBC0C
1EBC06:  ADDS            R0, #1
1EBC08:  B               loc_1EBC0C
1EBC0A:  ADDS            R0, #2
1EBC0C:  POP.W           {R2,R3,R8-R10}
1EBC10:  POP             {R4-R7,PC}
