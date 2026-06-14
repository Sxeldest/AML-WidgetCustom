; =========================================================
; Game Engine Function: sub_252648
; Address            : 0x252648 - 0x2528A8
; =========================================================

252648:  PUSH            {R4-R7,LR}
25264A:  ADD             R7, SP, #0xC
25264C:  PUSH.W          {R8-R11}
252650:  SUB             SP, SP, #4
252652:  VPUSH           {D10-D13}
252656:  VPUSH           {D8}
25265A:  SUB             SP, SP, #0x30
25265C:  MOV             R4, SP
25265E:  BFC.W           R4, #0, #4
252662:  MOV             SP, R4
252664:  MOV             R5, R0
252666:  MOV             R10, R3
252668:  MOV             R11, R2
25266A:  CMP             R1, #0
25266C:  ADD.W           R0, R5, #0x1E0
252670:  STRD.W          R0, R1, [SP,#0x78+var_78]
252674:  BEQ.W           loc_252838
252678:  VMOV.F32        S16, #0.5
25267C:  LDR.W           R0, [R5,#0x1D8]
252680:  ADD.W           R1, R5, #0x54 ; 'T'
252684:  STR             R1, [SP,#0x78+var_70]
252686:  LDRD.W          R1, R8, [SP,#0x78+var_78]
25268A:  STR             R1, [SP,#0x78+var_6C]
25268C:  VLDR            S0, [R11]
252690:  VLDR            S4, [R5,#0x1C]
252694:  VLDR            S2, [R5,#0x18]
252698:  VSUB.F32        S4, S4, S0
25269C:  VLDR            S6, [R5,#0x20]
2526A0:  LDRD.W          R1, R2, [R5,#0x40]
2526A4:  ANDS            R0, R1
2526A6:  ADD.W           R0, R2, R0,LSL#2
2526AA:  VMUL.F32        S4, S2, S4
2526AE:  VADD.F32        S0, S0, S4
2526B2:  VSUB.F32        S4, S6, S0
2526B6:  VSTR            S0, [R5,#0x1C]
2526BA:  VMUL.F32        S2, S2, S4
2526BE:  VADD.F32        S2, S0, S2
2526C2:  VSTR            S2, [R5,#0x20]
2526C6:  VSTR            S2, [R0]
2526CA:  LDR.W           R4, [R5,#0x84]
2526CE:  LDR.W           R0, [R5,#0x1D8]
2526D2:  LDRD.W          R6, LR, [R5,#0x40]
2526D6:  LDR.W           R3, [R5,#0x90]
2526DA:  SUBS            R4, R0, R4
2526DC:  LDR.W           R9, [R5,#0x7C]
2526E0:  SUBS            R3, R0, R3
2526E2:  LDR.W           R2, [R5,#0x80]
2526E6:  AND.W           R3, R3, R9
2526EA:  LDR             R1, [R5,#0x64]
2526EC:  LDR.W           R12, [R5,#0x48]
2526F0:  ADD.W           R2, R2, R3,LSL#2
2526F4:  LDR.W           R3, [R5,#0x8C]
2526F8:  ANDS            R4, R1
2526FA:  VLDR            S3, [R2]
2526FE:  SUBS            R2, R0, R3
252700:  LDR             R3, [R5,#0x74]
252702:  ANDS            R2, R3
252704:  LDR             R3, [R5,#0x78]
252706:  ADD.W           R2, R3, R2,LSL#2
25270A:  LDR.W           R3, [R5,#0x88]
25270E:  VLDR            S2, [R2]
252712:  SUBS            R2, R0, R3
252714:  LDR             R3, [R5,#0x6C]
252716:  ANDS            R2, R3
252718:  LDR             R3, [R5,#0x70]
25271A:  ADD.W           R2, R3, R2,LSL#2
25271E:  LDR             R3, [R5,#0x68]
252720:  VLDR            S1, [R2]
252724:  ADD.W           R2, R3, R4,LSL#2
252728:  ADD.W           R4, R5, #0xB8
25272C:  VLDR            S0, [R2]
252730:  LDR             R2, [SP,#0x78+var_70]
252732:  VLD1.32         {D16-D17}, [R2]
252736:  SUB.W           R2, R0, R12
25273A:  VMUL.F32        Q0, Q8, Q0
25273E:  ANDS            R2, R6
252740:  ANDS            R0, R1
252742:  ADD.W           R2, LR, R2,LSL#2
252746:  ADD.W           R0, R3, R0,LSL#2
25274A:  VLDR            S6, [R2]
25274E:  VADD.F32        S4, S0, S1
252752:  VADD.F32        S4, S4, S2
252756:  VADD.F32        S4, S4, S3
25275A:  VMUL.F32        S4, S4, S16
25275E:  VADD.F32        S4, S6, S4
252762:  VDUP.32         Q8, D2[0]
252766:  VSUB.F32        Q5, Q8, Q0
25276A:  VST1.32         {D10[0]}, [R0@32]
25276E:  LDRD.W          R0, R1, [R5,#0x6C]
252772:  LDR.W           R2, [R5,#0x1D8]
252776:  ANDS            R0, R2
252778:  ADD.W           R0, R1, R0,LSL#2
25277C:  VST1.32         {D10[1]}, [R0@32]
252780:  LDRD.W          R0, R1, [R5,#0x74]
252784:  LDR.W           R2, [R5,#0x1D8]
252788:  ANDS            R0, R2
25278A:  ADD.W           R0, R1, R0,LSL#2
25278E:  VST1.32         {D11[0]}, [R0@32]
252792:  LDRD.W          R0, R1, [R5,#0x7C]
252796:  LDR.W           R2, [R5,#0x1D8]
25279A:  ANDS            R0, R2
25279C:  ADD.W           R0, R1, R0,LSL#2
2527A0:  VST1.32         {D11[1]}, [R0@32]
2527A4:  LDR             R0, [R5,#0x4C]
2527A6:  LDR.W           R1, [R5,#0x1D8]
2527AA:  VLDR            S0, [R5,#0xD0]
2527AE:  LDRD.W          R2, R3, [R5,#0x40]
2527B2:  SUBS            R0, R1, R0
2527B4:  ANDS            R0, R2
2527B6:  ADD.W           R0, R3, R0,LSL#2
2527BA:  VLDR            S2, [R0]
2527BE:  ADD.W           R0, R5, #0x50 ; 'P'
2527C2:  LDRD.W          R2, R3, [R5,#0xB8]
2527C6:  VMUL.F32        S0, S2, S0
2527CA:  VLD1.32         {D12[]-D13[]}, [R0@32]
2527CE:  AND.W           R0, R2, R1
2527D2:  ADD.W           R0, R3, R0,LSL#2
2527D6:  VSTR            S0, [R0]
2527DA:  VSTR            S0, [SP,#0x78+var_68]
2527DE:  LDM             R4, {R0-R4}
2527E0:  LDR.W           R6, [R5,#0x1D8]
2527E4:  SUBS            R2, R6, R2
2527E6:  ANDS            R2, R0
2527E8:  LDR.W           R2, [R1,R2,LSL#2]
2527EC:  STR             R2, [SP,#0x78+var_64]
2527EE:  SUBS            R2, R6, R3
2527F0:  ANDS            R2, R0
2527F2:  LDR.W           R2, [R1,R2,LSL#2]
2527F6:  STR             R2, [SP,#0x78+var_60]
2527F8:  SUBS            R2, R6, R4
2527FA:  ADD             R4, SP, #0x78+var_58
2527FC:  ANDS            R0, R2
2527FE:  MOV             R2, R4
252800:  LDR.W           R0, [R1,R0,LSL#2]
252804:  ADD             R1, SP, #0x78+var_68
252806:  STR             R0, [SP,#0x78+var_5C]
252808:  MOV             R0, R5
25280A:  BL              sub_262404
25280E:  VMUL.F32        Q8, Q5, Q6
252812:  VLD1.64         {D18-D19}, [R4@128]
252816:  SUBS.W          R8, R8, #1
25281A:  ADD.W           R11, R11, #4
25281E:  LDR             R1, [SP,#0x78+var_6C]
252820:  VADD.F32        Q8, Q8, Q9
252824:  VST1.32         {D16-D17}, [R1]!
252828:  LDR.W           R0, [R5,#0x1D8]
25282C:  ADD.W           R0, R0, #1
252830:  STR.W           R0, [R5,#0x1D8]
252834:  BNE.W           loc_25268A
252838:  LDR.W           R0, [R5,#0x1DC]
25283C:  MOVS            R1, #0
25283E:  LDRD.W          R12, R5, [SP,#0x78+var_78]
252842:  MOVS            R2, #0
252844:  VLDR            S0, =0.00001
252848:  ADD.W           R3, R0, R2,LSL#2
25284C:  VLDR            S2, [R3]
252850:  VCMPE.F32       S2, S0
252854:  VMRS            APSR_nzcv, FPSCR
252858:  BLE             loc_252886
25285A:  CBZ             R5, loc_252886
25285C:  AND.W           R3, R1, #3
252860:  MOV             R6, R5
252862:  MOV             R4, R10
252864:  ADD.W           R3, R12, R3,LSL#2
252868:  VLDR            S4, [R3]
25286C:  ADDS            R3, #0x10
25286E:  VLDR            S6, [R4]
252872:  SUBS            R6, #1
252874:  VMUL.F32        S4, S2, S4
252878:  VADD.F32        S4, S6, S4
25287C:  VSTR            S4, [R4]
252880:  ADD.W           R4, R4, #4
252884:  BNE             loc_252868
252886:  ADDS            R2, #1
252888:  ADDS            R1, #1
25288A:  ADD.W           R10, R10, #0x2000
25288E:  CMP             R2, #9
252890:  BNE             loc_252848
252892:  SUB.W           R4, R7, #-var_48
252896:  MOV             SP, R4
252898:  VPOP            {D8}
25289C:  VPOP            {D10-D13}
2528A0:  ADD             SP, SP, #4
2528A2:  POP.W           {R8-R11}
2528A6:  POP             {R4-R7,PC}
