; =========================================================
; Game Engine Function: sub_1E9900
; Address            : 0x1E9900 - 0x1E9974
; =========================================================

1E9900:  PUSH            {R4-R7,LR}
1E9902:  ADD             R7, SP, #0xC
1E9904:  PUSH.W          {R8}
1E9908:  SUB             SP, SP, #8
1E990A:  MOV             R8, R0
1E990C:  LDR             R0, [R7,#arg_4]
1E990E:  STR             R0, [SP,#0x18+var_18]
1E9910:  MOV             R0, R8
1E9912:  MOV             R5, R3
1E9914:  MOV             R6, R2
1E9916:  MOV             R4, R1
1E9918:  BLX             j__ZNSt6__ndk17__sort4IRNS_6__lessIaaEEPaEEjT0_S5_S5_S5_T_; std::__sort4<std::__less<signed char,signed char> &,signed char *>(signed char *,signed char *,signed char *,signed char *,std::__less<signed char,signed char> &)
1E991C:  LDR             R2, [R7,#arg_0]
1E991E:  LDRSB.W         R1, [R5]
1E9922:  LDRSB.W         R3, [R2]
1E9926:  CMP             R3, R1
1E9928:  BGE             loc_1E996C
1E992A:  STRB            R3, [R5]
1E992C:  STRB            R1, [R2]
1E992E:  LDRSB.W         R1, [R6]
1E9932:  LDRSB.W         R2, [R5]
1E9936:  CMP             R2, R1
1E9938:  BGE             loc_1E9966
1E993A:  STRB            R2, [R6]
1E993C:  STRB            R1, [R5]
1E993E:  LDRSB.W         R1, [R4]
1E9942:  LDRSB.W         R2, [R6]
1E9946:  CMP             R2, R1
1E9948:  BGE             loc_1E996A
1E994A:  STRB            R2, [R4]
1E994C:  STRB            R1, [R6]
1E994E:  LDRSB.W         R1, [R8]
1E9952:  LDRSB.W         R2, [R4]
1E9956:  CMP             R2, R1
1E9958:  ITEEE GE
1E995A:  ADDGE           R0, #3
1E995C:  STRBLT.W        R2, [R8]
1E9960:  STRBLT          R1, [R4]
1E9962:  ADDLT           R0, #4
1E9964:  B               loc_1E996C
1E9966:  ADDS            R0, #1
1E9968:  B               loc_1E996C
1E996A:  ADDS            R0, #2
1E996C:  ADD             SP, SP, #8
1E996E:  POP.W           {R8}
1E9972:  POP             {R4-R7,PC}
