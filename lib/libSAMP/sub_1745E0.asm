; =========================================================
; Game Engine Function: sub_1745E0
; Address            : 0x1745E0 - 0x1746E2
; =========================================================

1745E0:  PUSH            {R4-R7,LR}
1745E2:  ADD             R7, SP, #0xC
1745E4:  PUSH.W          {R8-R10}
1745E8:  SUB             SP, SP, #0x30
1745EA:  LDR.W           R10, [R7,#arg_0]
1745EE:  CMP.W           R10, #0x1000000
1745F2:  BCC             loc_1746DA
1745F4:  MOV             R4, R0
1745F6:  LDRD.W          R8, R0, [R7,#arg_4]
1745FA:  MOV             R6, R3
1745FC:  MOV             R5, R2
1745FE:  MOV             R9, R1
174600:  CBNZ            R0, loc_17460A
174602:  MOV             R0, R8; s
174604:  BLX             strlen
174608:  ADD             R0, R8
17460A:  CMP             R0, R8
17460C:  BEQ             loc_1746DA
17460E:  VMOV            S0, R5
174612:  CMP.W           R9, #0
174616:  ITT EQ
174618:  LDREQ           R1, [R4,#0x28]
17461A:  LDREQ.W         R9, [R1,#8]
17461E:  VLDR            S2, [R7,#arg_C]
174622:  VCMP.F32        S0, #0.0
174626:  LDR             R1, [R7,#arg_10]
174628:  VMRS            APSR_nzcv, FPSCR
17462C:  ITT EQ
17462E:  LDREQ           R2, [R4,#0x28]
174630:  VLDREQ          S0, [R2,#0xC]
174634:  LDR             R2, [R4,#0x40]
174636:  ADD             R5, SP, #0x48+var_28
174638:  LDR             R3, [R4,#0x48]
17463A:  ADD.W           R2, R3, R2,LSL#4
17463E:  SUB.W           R2, R2, #0x10
174642:  VLD1.32         {D16-D17}, [R2]
174646:  VST1.64         {D16-D17}, [R5]
17464A:  CBZ             R1, loc_1746B4
17464C:  VLDR            S4, [SP,#0x48+var_28]
174650:  VLDR            S12, [R1]
174654:  VLDR            S6, [SP,#0x48+var_24]
174658:  VLDR            S14, [R1,#4]
17465C:  VCMP.F32        S4, S12
174660:  VLDR            S8, [SP,#0x48+var_20]
174664:  VLDR            S1, [R1,#8]
174668:  VMRS            APSR_nzcv, FPSCR
17466C:  VCMP.F32        S6, S14
174670:  VLDR            S10, [SP,#0x48+var_1C]
174674:  VLDR            S3, [R1,#0xC]
174678:  IT GE
17467A:  VMOVGE.F32      S12, S4
17467E:  VMRS            APSR_nzcv, FPSCR
174682:  VCMP.F32        S8, S1
174686:  IT GE
174688:  VMOVGE.F32      S14, S6
17468C:  VMRS            APSR_nzcv, FPSCR
174690:  VCMP.F32        S10, S3
174694:  IT MI
174696:  VMOVMI.F32      S1, S8
17469A:  VMRS            APSR_nzcv, FPSCR
17469E:  IT MI
1746A0:  VMOVMI.F32      S3, S10
1746A4:  VSTR            S12, [SP,#0x48+var_28]
1746A8:  VSTR            S14, [SP,#0x48+var_24]
1746AC:  VSTR            S1, [SP,#0x48+var_20]
1746B0:  VSTR            S3, [SP,#0x48+var_1C]
1746B4:  VMOV            R2, S0; int
1746B8:  LDRD.W          R3, R6, [R6]; int
1746BC:  CMP             R1, #0
1746BE:  IT NE
1746C0:  MOVNE           R1, #1
1746C2:  STR             R1, [SP,#0x48+var_30]; int
1746C4:  MOV             R1, R4; int
1746C6:  STR             R0, [SP,#0x48+var_38]; int
1746C8:  MOV             R0, R9; int
1746CA:  VSTR            S2, [SP,#0x48+var_34]
1746CE:  STRD.W          R6, R10, [SP,#0x48+var_48]; float
1746D2:  STRD.W          R5, R8, [SP,#0x48+var_40]; int
1746D6:  BL              sub_1746E4
1746DA:  ADD             SP, SP, #0x30 ; '0'
1746DC:  POP.W           {R8-R10}
1746E0:  POP             {R4-R7,PC}
