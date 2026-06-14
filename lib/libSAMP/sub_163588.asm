; =========================================================
; Game Engine Function: sub_163588
; Address            : 0x163588 - 0x16363C
; =========================================================

163588:  PUSH            {R4,R6,R7,LR}
16358A:  ADD             R7, SP, #8
16358C:  SUB             SP, SP, #0x28
16358E:  VMOV            S2, R3
163592:  LDR             R3, [R0]
163594:  VLDR            S0, [R7,#arg_4]
163598:  VLDR            S4, [R7,#arg_0]
16359C:  CBZ             R3, loc_1635C6
16359E:  LDR             R3, [R3]
1635A0:  CBZ             R3, loc_1635C6
1635A2:  VCMP.F32        S2, #0.0
1635A6:  VMRS            APSR_nzcv, FPSCR
1635AA:  VCMP.F32        S4, #0.0
1635AE:  ITT EQ
1635B0:  VLDREQ          S2, [R3,#0xC]
1635B4:  VCVTEQ.F32.S32  S2, S2
1635B8:  VMRS            APSR_nzcv, FPSCR
1635BC:  ITT EQ
1635BE:  VLDREQ          S4, [R3,#0x10]
1635C2:  VCVTEQ.F32.S32  S4, S4
1635C6:  VCMP.F32        S0, #0.0
1635CA:  VMRS            APSR_nzcv, FPSCR
1635CE:  BLS             loc_163638
1635D0:  VCMP.F32        S2, #0.0
1635D4:  VMRS            APSR_nzcv, FPSCR
1635D8:  ITT NE
1635DA:  VCMPNE.F32      S4, #0.0
1635DE:  VMRSNE          APSR_nzcv, FPSCR
1635E2:  BEQ             loc_163638
1635E4:  VMOV.F32        S8, #1.0
1635E8:  LDR.W           R12, [R7,#arg_8]
1635EC:  VMOV            S6, R2
1635F0:  MOV.W           LR, #0x3F800000
1635F4:  VMOV            R3, S2
1635F8:  MOVS            R4, #0
1635FA:  VCMP.F32        S0, S8
1635FE:  VMRS            APSR_nzcv, FPSCR
163602:  IT GT
163604:  VMOVGT.F32      S0, S8
163608:  VMUL.F32        S8, S0, S4
16360C:  STR.W           LR, [SP,#0x30+var_10]
163610:  STRD.W          R12, R4, [SP,#0x30+var_2C]
163614:  STRD.W          R4, LR, [SP,#0x30+var_24]
163618:  STRD.W          R4, R4, [SP,#0x30+var_1C]
16361C:  VSTR            S0, [SP,#0x30+var_C]
163620:  VSTR            S0, [SP,#0x30+var_14]
163624:  VSUB.F32        S4, S4, S8
163628:  VSTR            S8, [SP,#0x30+var_30]
16362C:  VADD.F32        S4, S4, S6
163630:  VMOV            R2, S4
163634:  BL              sub_163444
163638:  ADD             SP, SP, #0x28 ; '('
16363A:  POP             {R4,R6,R7,PC}
