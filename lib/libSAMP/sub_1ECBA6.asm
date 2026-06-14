; =========================================================
; Game Engine Function: sub_1ECBA6
; Address            : 0x1ECBA6 - 0x1ECC40
; =========================================================

1ECBA6:  PUSH            {R4-R7,LR}
1ECBA8:  ADD             R7, SP, #0xC
1ECBAA:  PUSH.W          {R8}
1ECBAE:  SUB             SP, SP, #8
1ECBB0:  MOV             R8, R0
1ECBB2:  LDR             R0, [R7,#arg_4]
1ECBB4:  STR             R0, [SP,#0x18+var_18]
1ECBB6:  MOV             R0, R8
1ECBB8:  MOV             R5, R3
1ECBBA:  MOV             R6, R2
1ECBBC:  MOV             R4, R1
1ECBBE:  BLX             j__ZNSt6__ndk17__sort4IRNS_6__lessIddEEPdEEjT0_S5_S5_S5_T_; std::__sort4<std::__less<double,double> &,double *>(double *,double *,double *,double *,std::__less<double,double> &)
1ECBC2:  LDR             R1, [R7,#arg_0]
1ECBC4:  VLDR            D16, [R5]
1ECBC8:  VLDR            D17, [R1]
1ECBCC:  VCMP.F64        D17, D16
1ECBD0:  VMRS            APSR_nzcv, FPSCR
1ECBD4:  BPL             loc_1ECC38
1ECBD6:  VSTR            D17, [R5]
1ECBDA:  VSTR            D16, [R1]
1ECBDE:  VLDR            D16, [R6]
1ECBE2:  VLDR            D17, [R5]
1ECBE6:  VCMP.F64        D17, D16
1ECBEA:  VMRS            APSR_nzcv, FPSCR
1ECBEE:  BPL             loc_1ECC32
1ECBF0:  VSTR            D17, [R6]
1ECBF4:  VSTR            D16, [R5]
1ECBF8:  VLDR            D16, [R4]
1ECBFC:  VLDR            D17, [R6]
1ECC00:  VCMP.F64        D17, D16
1ECC04:  VMRS            APSR_nzcv, FPSCR
1ECC08:  BPL             loc_1ECC36
1ECC0A:  VSTR            D17, [R4]
1ECC0E:  VSTR            D16, [R6]
1ECC12:  VLDR            D16, [R8]
1ECC16:  VLDR            D17, [R4]
1ECC1A:  VCMP.F64        D17, D16
1ECC1E:  VMRS            APSR_nzcv, FPSCR
1ECC22:  ITEEE PL
1ECC24:  ADDPL           R0, #3
1ECC26:  VSTRMI          D17, [R8]
1ECC2A:  VSTRMI          D16, [R4]
1ECC2E:  ADDMI           R0, #4
1ECC30:  B               loc_1ECC38
1ECC32:  ADDS            R0, #1
1ECC34:  B               loc_1ECC38
1ECC36:  ADDS            R0, #2
1ECC38:  ADD             SP, SP, #8
1ECC3A:  POP.W           {R8}
1ECC3E:  POP             {R4-R7,PC}
