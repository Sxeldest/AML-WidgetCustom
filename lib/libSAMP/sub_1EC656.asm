; =========================================================
; Game Engine Function: sub_1EC656
; Address            : 0x1EC656 - 0x1EC6F0
; =========================================================

1EC656:  PUSH            {R4-R7,LR}
1EC658:  ADD             R7, SP, #0xC
1EC65A:  PUSH.W          {R8}
1EC65E:  SUB             SP, SP, #8
1EC660:  MOV             R8, R0
1EC662:  LDR             R0, [R7,#arg_4]
1EC664:  STR             R0, [SP,#0x18+var_18]
1EC666:  MOV             R0, R8
1EC668:  MOV             R5, R3
1EC66A:  MOV             R6, R2
1EC66C:  MOV             R4, R1
1EC66E:  BLX             j__ZNSt6__ndk17__sort4IRNS_6__lessIffEEPfEEjT0_S5_S5_S5_T_; std::__sort4<std::__less<float,float> &,float *>(float *,float *,float *,float *,std::__less<float,float> &)
1EC672:  LDR             R1, [R7,#arg_0]
1EC674:  VLDR            S0, [R5]
1EC678:  VLDR            S2, [R1]
1EC67C:  VCMP.F32        S2, S0
1EC680:  VMRS            APSR_nzcv, FPSCR
1EC684:  BPL             loc_1EC6E8
1EC686:  VSTR            S2, [R5]
1EC68A:  VSTR            S0, [R1]
1EC68E:  VLDR            S0, [R6]
1EC692:  VLDR            S2, [R5]
1EC696:  VCMP.F32        S2, S0
1EC69A:  VMRS            APSR_nzcv, FPSCR
1EC69E:  BPL             loc_1EC6E2
1EC6A0:  VSTR            S2, [R6]
1EC6A4:  VSTR            S0, [R5]
1EC6A8:  VLDR            S0, [R4]
1EC6AC:  VLDR            S2, [R6]
1EC6B0:  VCMP.F32        S2, S0
1EC6B4:  VMRS            APSR_nzcv, FPSCR
1EC6B8:  BPL             loc_1EC6E6
1EC6BA:  VSTR            S2, [R4]
1EC6BE:  VSTR            S0, [R6]
1EC6C2:  VLDR            S0, [R8]
1EC6C6:  VLDR            S2, [R4]
1EC6CA:  VCMP.F32        S2, S0
1EC6CE:  VMRS            APSR_nzcv, FPSCR
1EC6D2:  ITEEE PL
1EC6D4:  ADDPL           R0, #3
1EC6D6:  VSTRMI          S2, [R8]
1EC6DA:  VSTRMI          S0, [R4]
1EC6DE:  ADDMI           R0, #4
1EC6E0:  B               loc_1EC6E8
1EC6E2:  ADDS            R0, #1
1EC6E4:  B               loc_1EC6E8
1EC6E6:  ADDS            R0, #2
1EC6E8:  ADD             SP, SP, #8
1EC6EA:  POP.W           {R8}
1EC6EE:  POP             {R4-R7,PC}
