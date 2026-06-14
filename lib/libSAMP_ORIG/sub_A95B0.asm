; =========================================================
; Game Engine Function: sub_A95B0
; Address            : 0xA95B0 - 0xA9ECE
; =========================================================

A95B0:  PUSH            {R4-R7,LR}
A95B2:  ADD             R7, SP, #0xC
A95B4:  PUSH.W          {R8-R11}
A95B8:  SUB             SP, SP, #4
A95BA:  VPUSH           {D8-D15}
A95BE:  SUB             SP, SP, #0x48
A95C0:  STR             R3, [SP,#0xA8+var_7C]
A95C2:  VMOV.F32        S16, #1.0
A95C6:  STR             R1, [SP,#0xA8+var_74]
A95C8:  MOVS            R5, #0
A95CA:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xA95DE)
A95CE:  VMOV.F32        S0, #-4.0
A95D2:  LDRD.W          R11, LR, [R7,#arg_0]
A95D6:  MOV.W           R8, #0
A95DA:  ADD             R1, PC; __stack_chk_guard_ptr
A95DC:  LDRD.W          R9, R12, [R7,#arg_8]
A95E0:  VLDR            S24, [R7,#arg_14]
A95E4:  LDR             R1, [R1]; __stack_chk_guard
A95E6:  VCMP.F32        S24, S16
A95EA:  LDR             R1, [R1]
A95EC:  STR             R1, [SP,#0xA8+var_64]
A95EE:  SUBS.W          R1, R9, R11
A95F2:  SBC.W           R3, R12, LR
A95F6:  SUBS.W          R4, R11, R9
A95FA:  SBCS.W          R6, LR, R12
A95FE:  IT LT
A9600:  MOVLT           R5, #1
A9602:  CMP             R5, #0
A9604:  STR             R3, [SP,#0xA8+var_8C]
A9606:  IT NE
A9608:  MOVNE           R6, R3
A960A:  STR             R1, [SP,#0xA8+var_88]
A960C:  IT NE
A960E:  MOVNE           R4, R1
A9610:  VMRS            APSR_nzcv, FPSCR
A9614:  MOV.W           R3, #0
A9618:  BIC.W           R1, R2, #1
A961C:  STR             R4, [SP,#0xA8+var_80]
A961E:  IT NE
A9620:  MOVNE           R3, #1
A9622:  STR             R1, [SP,#0xA8+var_90]
A9624:  SUBS            R1, #8
A9626:  CLZ.W           R1, R1
A962A:  STR             R2, [SP,#0xA8+var_94]
A962C:  MOV.W           R1, R1,LSR#5
A9630:  AND.W           R5, R1, R3
A9634:  LDR             R1, =(off_114D5C - 0xA963C)
A9636:  STR             R0, [SP,#0xA8+var_70]
A9638:  ADD             R1, PC; off_114D5C
A963A:  STR             R6, [SP,#0xA8+var_9C]
A963C:  LDR             R1, [R1]; dword_1ACF68
A963E:  STR             R1, [SP,#0xA8+var_98]
A9640:  LDR             R4, [R1]
A9642:  MOVW            R1, #0x1588
A9646:  ADD.W           R10, R4, R1
A964A:  LDR             R1, [R7,#arg_18]
A964C:  AND.W           R1, R1, #1
A9650:  VLDR            S20, [R10]
A9654:  STR             R1, [SP,#0xA8+var_78]
A9656:  ADD.W           R0, R0, R1,LSL#2
A965A:  VLDR            S26, [R0]
A965E:  VLDR            S30, [R0,#8]
A9662:  VSUB.F32        S2, S30, S26
A9666:  VADD.F32        S17, S2, S0
A966A:  BEQ             loc_A969A
A966C:  CMP             R6, #0
A966E:  BMI             loc_A969A
A9670:  LDR             R0, [SP,#0xA8+var_80]
A9672:  ADDS            R0, #1
A9674:  ADC.W           R1, R6, #0
A9678:  MOV             R6, R12
A967A:  BLX             sub_108B88
A967E:  VMOV            S0, R0
A9682:  LDR.W           LR, [R7,#arg_4]
A9686:  MOV             R12, R6
A9688:  VDIV.F32        S0, S17, S0
A968C:  VCMP.F32        S0, S20
A9690:  VMRS            APSR_nzcv, FPSCR
A9694:  IT GE
A9696:  VMOVGE.F32      S20, S0
A969A:  VMOV.F32        S25, #2.0
A969E:  UMULL.W         R0, R1, R9, R11
A96A2:  VMOV.F32        S18, #0.5
A96A6:  VCMP.F32        S20, S17
A96AA:  MLA.W           R0, R9, LR, R1
A96AE:  VMOV.F32        S22, S17
A96B2:  VMRS            APSR_nzcv, FPSCR
A96B6:  IT MI
A96B8:  VMOVMI.F32      S22, S20
A96BC:  MLA.W           R0, R12, R11, R0
A96C0:  VADD.F32        S26, S26, S25
A96C4:  VMUL.F32        S19, S22, S18
A96C8:  CMP             R0, #0
A96CA:  IT MI
A96CC:  MOVMI.W         R8, #1
A96D0:  AND.W           R0, R5, R8
A96D4:  STR             R5, [SP,#0xA8+var_84]
A96D6:  CMP             R0, #1
A96D8:  BNE             loc_A9768
A96DA:  MOV             R0, R11
A96DC:  MOV             R1, LR
A96DE:  STR             R4, [SP,#0xA8+var_A0]
A96E0:  MOV             R11, R12
A96E2:  MOV             R4, LR
A96E4:  BLX             sub_108B48
A96E8:  VCVT.F64.F32    D16, S24
A96EC:  EOR.W           R2, R1, #0x80000000
A96F0:  CMP.W           R4, #0xFFFFFFFF
A96F4:  VMOV.F64        D17, #1.0
A96F8:  VDIV.F64        D16, D17, D16
A96FC:  VMOV            R6, R4, D16
A9700:  VMOV            D17, R0, R2
A9704:  VMOV            D18, R0, R1
A9708:  IT GT
A970A:  VMOVGT.F64      D17, D18
A970E:  VMOV            R0, R1, D17; x
A9712:  MOV             R2, R6; y
A9714:  MOV             R3, R4; y
A9716:  BLX             pow
A971A:  MOV             R8, R0
A971C:  MOV             R5, R1
A971E:  MOV             R0, R9
A9720:  MOV             R1, R11
A9722:  BLX             sub_108B48
A9726:  EOR.W           R2, R1, #0x80000000
A972A:  VMOV            D17, R0, R1
A972E:  CMP.W           R11, #0xFFFFFFFF
A9732:  MOV             R3, R4; y
A9734:  VMOV            D16, R0, R2
A9738:  MOV             R2, R6; y
A973A:  IT GT
A973C:  VMOVGT.F64      D16, D17
A9740:  VMOV            R0, R1, D16; x
A9744:  LDR             R6, [SP,#0xA8+var_70]
A9746:  LDR             R4, [SP,#0xA8+var_A0]
A9748:  BLX             pow
A974C:  VMOV            D16, R0, R1
A9750:  MOV             R12, R11
A9752:  VMOV            D17, R8, R5
A9756:  LDR.W           LR, [R7,#arg_4]
A975A:  VADD.F64        D16, D17, D16
A975E:  VDIV.F64        D16, D17, D16
A9762:  VCVT.F32.F64    S28, D16
A9766:  B               loc_A9778
A9768:  VLDR            S28, =0.0
A976C:  CMP.W           LR, #0
A9770:  IT MI
A9772:  VMOVMI.F32      S28, S16
A9776:  LDR             R6, [SP,#0xA8+var_70]
A9778:  VADD.F32        S26, S19, S26
A977C:  LDR.W           R0, [R10,#0x448]
A9780:  LDR             R5, [SP,#0xA8+var_74]
A9782:  CMP             R0, R5
A9784:  BNE             loc_A97E6
A9786:  LDR.W           R0, [R10,#0x470]
A978A:  MOV.W           R11, #0
A978E:  LDR.W           R8, [R7,#arg_10]
A9792:  CMP             R0, #2
A9794:  BEQ             loc_A97EC
A9796:  CMP             R0, #1
A9798:  BNE.W           loc_A9CC4
A979C:  LDRB.W          R0, [R4,#0xE8]
A97A0:  CMP             R0, #0
A97A2:  BEQ             loc_A9854
A97A4:  VSUB.F32        S0, S17, S22
A97A8:  VCMP.F32        S0, #0.0
A97AC:  VMRS            APSR_nzcv, FPSCR
A97B0:  BLE             loc_A9866
A97B2:  LDR             R0, [SP,#0xA8+var_78]
A97B4:  ADD.W           R0, R4, R0,LSL#2
A97B8:  VLDR            S2, [R0,#0xE0]
A97BC:  VSUB.F32        S2, S2, S26
A97C0:  VDIV.F32        S0, S2, S0
A97C4:  VCMP.F32        S0, S16
A97C8:  VLDR            S2, =0.0
A97CC:  VMRS            APSR_nzcv, FPSCR
A97D0:  VCMP.F32        S0, #0.0
A97D4:  IT GT
A97D6:  VMOVGT.F32      S0, S16
A97DA:  VMRS            APSR_nzcv, FPSCR
A97DE:  IT MI
A97E0:  VMOVMI.F32      S0, S2
A97E4:  B               loc_A986A
A97E6:  MOV.W           R11, #0
A97EA:  B               loc_A9CC4
A97EC:  ADD             R0, SP, #0xA8+var_6C; int
A97EE:  MOVS            R1, #3; int
A97F0:  MOVS            R2, #5; int
A97F2:  MOVS            R3, #0; int
A97F4:  MOV             R4, LR
A97F6:  MOV             R8, R12
A97F8:  STR.W           R11, [SP,#0xA8+var_A8]; float
A97FC:  BL              sub_99284
A9800:  VLDR            S2, [SP,#0xA8+var_68]
A9804:  LDR             R0, [SP,#0xA8+var_78]
A9806:  VNEG.F32        S21, S2
A980A:  VLDR            S0, [SP,#0xA8+var_6C]
A980E:  CMP             R0, #0
A9810:  IT EQ
A9812:  VMOVEQ.F32      S21, S0
A9816:  LDR.W           R0, [R10,#0x53C]
A981A:  CMP             R0, R5
A981C:  ITT EQ
A981E:  LDRBEQ.W        R0, [R10,#0x454]
A9822:  CMPEQ           R0, #0
A9824:  BEQ.W           loc_A99EA
A9828:  LDR             R6, [R7,#arg_0]
A982A:  VCMP.F32        S21, #0.0
A982E:  LDR.W           R9, [R7,#arg_8]
A9832:  VMRS            APSR_nzcv, FPSCR
A9836:  LDR.W           R11, [SP,#0xA8+var_7C]
A983A:  MOV             R12, R8
A983C:  MOV             LR, R4
A983E:  BEQ.W           loc_A9BDC
A9842:  EOR.W           R0, R9, R6
A9846:  EOR.W           R1, R12, LR
A984A:  ORRS            R0, R1
A984C:  BNE             loc_A98EA
A984E:  VLDR            S23, =0.0
A9852:  B               loc_A9AE6
A9854:  MOV             R4, R12
A9856:  MOV             R5, LR
A9858:  BL              sub_8B080
A985C:  MOV             LR, R5
A985E:  MOV             R12, R4
A9860:  MOV.W           R11, #0
A9864:  B               loc_A9CC4
A9866:  VLDR            S0, =0.0
A986A:  LDR             R0, [SP,#0xA8+var_78]
A986C:  VSUB.F32        S21, S16, S0
A9870:  LDR             R6, [R7,#arg_0]
A9872:  LDR.W           R9, [R7,#arg_8]
A9876:  CMP             R0, #0
A9878:  LDR.W           R10, [SP,#0xA8+var_84]
A987C:  LDR.W           R11, [SP,#0xA8+var_7C]
A9880:  IT EQ
A9882:  VMOVEQ.F32      S21, S0
A9886:  CMP.W           R10, #0
A988A:  BEQ.W           loc_A9C14
A988E:  VCMP.F32        S21, S28
A9892:  VMRS            APSR_nzcv, FPSCR
A9896:  BPL.W           loc_A99BC
A989A:  AND.W           R4, R9, R12,ASR#31
A989E:  AND.W           R5, R12, R12,ASR#31
A98A2:  SUBS            R0, R6, R4
A98A4:  MOV             R8, LR
A98A6:  SBC.W           R1, LR, R5
A98AA:  MOV             R9, R12
A98AC:  BLX             sub_108B88
A98B0:  VDIV.F32        S0, S21, S28
A98B4:  VSUB.F32        S0, S16, S0
A98B8:  VMOV            R1, S24; y
A98BC:  VMOV            S21, R0
A98C0:  VMOV            R2, S0
A98C4:  MOV             R0, R2; x
A98C6:  BLX             powf
A98CA:  VMOV            S23, R0
A98CE:  MOV             R1, R5
A98D0:  MOV             R0, R4
A98D2:  MOV             R5, R8
A98D4:  LDR.W           R8, [R7,#arg_10]
A98D8:  BLX             sub_108B88
A98DC:  VMOV            S0, R0
A98E0:  VMLA.F32        S0, S21, S23
A98E4:  VMOV            R0, S0
A98E8:  B               loc_A9C40
A98EA:  MOV             R0, R11
A98EC:  MOV             R10, R6
A98EE:  SUBS.W          R0, R10, R9
A98F2:  MOV             R8, LR
A98F4:  MOV             R2, R12
A98F6:  SBCS.W          R0, R8, R2
A98FA:  LDRD.W          R12, LR, [R11]
A98FE:  MOV.W           R1, #0
A9902:  IT LT
A9904:  MOVLT           R1, #1
A9906:  CMP             R1, #0
A9908:  MOV             R5, R8
A990A:  MOV             R0, R10
A990C:  ITT NE
A990E:  MOVNE           R5, R2
A9910:  MOVNE           R0, R9
A9912:  SUBS.W          R4, R0, R12
A9916:  SBCS.W          R4, R5, LR
A991A:  MOV             R6, R9
A991C:  MOV.W           R4, #0
A9920:  MOV.W           R3, #0
A9924:  IT LT
A9926:  MOVLT           R4, #1
A9928:  CMP             R4, #0
A992A:  IT EQ
A992C:  MOVEQ           R5, LR
A992E:  CMP             R1, #0
A9930:  MOV             R1, R2
A9932:  MOV             R2, R9
A9934:  ITT NE
A9936:  MOVNE           R1, R8
A9938:  MOVNE           R2, R10
A993A:  SUBS.W          R6, R12, R2
A993E:  SBCS.W          R6, LR, R1
A9942:  IT LT
A9944:  MOVLT           R3, #1
A9946:  CMP             R3, #0
A9948:  IT EQ
A994A:  MOVEQ           R1, R5
A994C:  CMP             R4, #0
A994E:  IT EQ
A9950:  MOVEQ           R0, R12
A9952:  CMP             R3, #0
A9954:  IT NE
A9956:  MOVNE           R0, R2
A9958:  LDR             R2, [SP,#0xA8+var_84]
A995A:  CMP             R2, #0
A995C:  BEQ             loc_A9A00
A995E:  MOV             R6, R10
A9960:  MOV             R5, R8
A9962:  CMP.W           R1, #0xFFFFFFFF
A9966:  BLE.W           loc_A9A9C
A996A:  NEGS            R3, R6
A996C:  MOV.W           R2, #0
A9970:  SBCS.W          R3, R2, R5
A9974:  IT LT
A9976:  MOVLT           R2, #1
A9978:  MOV             R3, R2
A997A:  CMP             R2, #0
A997C:  ITT NE
A997E:  MOVNE           R3, R5
A9980:  MOVNE           R2, R6
A9982:  LDR             R5, [R7,#arg_8]
A9984:  SUBS            R0, R0, R2
A9986:  LDR.W           R9, [R7,#arg_C]
A998A:  SBCS            R1, R3
A998C:  SUBS            R2, R5, R2
A998E:  SBC.W           R3, R9, R3
A9992:  BLX             sub_1092F4
A9996:  BLX             sub_108B88
A999A:  VDIV.F32        S0, S16, S24
A999E:  VMOV            R1, S0; y
A99A2:  BLX             powf
A99A6:  VSUB.F32        S0, S16, S28
A99AA:  MOV             R12, R9
A99AC:  VMOV.F32        S23, S28
A99B0:  MOV             R9, R5
A99B2:  VMOV            S2, R0
A99B6:  VMLA.F32        S23, S2, S0
A99BA:  B               loc_A9AE2
A99BC:  VMOV.F32        S0, #-1.0
A99C0:  VLDR            S2, =0.000001
A99C4:  MOV             R10, R12
A99C6:  VADD.F32        S0, S28, S0
A99CA:  VABS.F32        S0, S0
A99CE:  VCMP.F32        S0, S2
A99D2:  VMRS            APSR_nzcv, FPSCR
A99D6:  BLE             loc_A9A30
A99D8:  VSUB.F32        S0, S21, S28
A99DC:  LDR.W           R11, [SP,#0xA8+var_70]
A99E0:  VSUB.F32        S2, S16, S28
A99E4:  VDIV.F32        S21, S0, S2
A99E8:  B               loc_A9A34
A99EA:  BL              sub_8B080
A99EE:  MOV             R12, R8
A99F0:  MOV             LR, R4
A99F2:  B               loc_A9BDC
A99F4:  DCD off_114D5C - 0xA963C
A99F8:  DCFS 0.0
A99FC:  DCFS 0.000001
A9A00:  SUBS.W          R0, R0, R10
A9A04:  SBC.W           R1, R1, R8
A9A08:  BLX             sub_108B48
A9A0C:  MOV             R4, R0
A9A0E:  MOV             R5, R1
A9A10:  LDRD.W          R1, R0, [SP,#0xA8+var_8C]
A9A14:  BLX             sub_108B48
A9A18:  VMOV            D16, R0, R1
A9A1C:  LDRD.W          R9, R12, [R7,#arg_8]
A9A20:  VMOV            D17, R4, R5
A9A24:  MOV             R6, R10
A9A26:  VDIV.F64        D16, D17, D16
A9A2A:  VCVT.F32.F64    S23, D16
A9A2E:  B               loc_A9AE2
A9A30:  LDR.W           R11, [SP,#0xA8+var_70]
A9A34:  LDR             R1, [R7,#arg_0]
A9A36:  MOVS            R4, #0
A9A38:  MOV             R6, LR
A9A3A:  NEGS            R0, R1
A9A3C:  SBCS.W          R0, R4, LR
A9A40:  IT LT
A9A42:  MOVLT           R4, #1
A9A44:  MOV             R5, R4
A9A46:  CMP             R4, #0
A9A48:  ITT NE
A9A4A:  MOVNE           R5, R1
A9A4C:  MOVNE           R4, LR
A9A4E:  MOV             R0, R5
A9A50:  MOV             R1, R4
A9A52:  BLX             sub_108B88
A9A56:  MOV             R9, R0
A9A58:  LDR             R0, [R7,#arg_8]
A9A5A:  SUBS            R0, R0, R5
A9A5C:  MOV             R5, R6
A9A5E:  SBC.W           R1, R10, R4
A9A62:  BLX             sub_108B88
A9A66:  VMOV            R2, S21
A9A6A:  VMOV            R1, S24; y
A9A6E:  VMOV            S21, R0
A9A72:  MOV             R0, R2; x
A9A74:  BLX             powf
A9A78:  VMOV            S0, R0
A9A7C:  VMOV            S2, R9
A9A80:  MOV             R9, R10
A9A82:  VMLA.F32        S2, S21, S0
A9A86:  VMOV            R0, S2
A9A8A:  BLX             sub_108A74
A9A8E:  MOV             R3, R1
A9A90:  MOV             R6, R11
A9A92:  MOV             R2, R0
A9A94:  LDR.W           R11, [SP,#0xA8+var_7C]
A9A98:  LDR             R1, [SP,#0xA8+var_94]
A9A9A:  B               loc_A9CA2
A9A9C:  SUBS            R0, R0, R6
A9A9E:  MOV             R4, R5
A9AA0:  SBCS            R1, R5
A9AA2:  LDRD.W          R5, R9, [R7,#arg_8]
A9AA6:  AND.W           R3, R9, R9,ASR#31
A9AAA:  AND.W           R2, R5, R9,ASR#31
A9AAE:  SUBS            R2, R2, R6
A9AB0:  SBCS            R3, R4
A9AB2:  BLX             sub_1092F4
A9AB6:  BLX             sub_108B88
A9ABA:  VDIV.F32        S0, S16, S24
A9ABE:  VMOV            S2, R0
A9AC2:  VMOV            R1, S0; y
A9AC6:  VSUB.F32        S2, S16, S2
A9ACA:  VMOV            R0, S2; x
A9ACE:  BLX             powf
A9AD2:  VMOV            S0, R0
A9AD6:  MOV             R12, R9
A9AD8:  MOV             R9, R5
A9ADA:  VSUB.F32        S0, S16, S0
A9ADE:  VMUL.F32        S23, S28, S0
A9AE2:  LDR.W           R11, [SP,#0xA8+var_7C]
A9AE6:  LDR             R0, [SP,#0xA8+var_90]
A9AE8:  MOVS            R4, #0
A9AEA:  LDR.W           R8, [SP,#0xA8+var_84]
A9AEE:  CMP             R0, #8
A9AF0:  MOV.W           R0, #0
A9AF4:  BNE             loc_A9B02
A9AF6:  LDR             R0, [R7,#arg_10]
A9AF8:  MOVS            R1, #3
A9AFA:  MOV             R5, R12
A9AFC:  BL              sub_AB7D0
A9B00:  MOV             R12, R5
A9B02:  CMP             R0, #1
A9B04:  IT LT
A9B06:  MOVLT           R4, #1
A9B08:  MVN.W           R0, R8
A9B0C:  TST             R0, R4
A9B0E:  BNE             loc_A9B38
A9B10:  VLDR            S0, =100.0
A9B14:  LDR             R0, [SP,#0xA8+var_98]
A9B16:  VDIV.F32        S0, S21, S0
A9B1A:  LDR.W           LR, [R7,#arg_4]
A9B1E:  LDR             R1, [R0]
A9B20:  VLDR            S2, [R1,#0x334]
A9B24:  VCMP.F32        S2, #0.0
A9B28:  VMRS            APSR_nzcv, FPSCR
A9B2C:  BLE             loc_A9B96
A9B2E:  VMOV.F32        S2, #10.0
A9B32:  VDIV.F32        S0, S0, S2
A9B36:  B               loc_A9B96
A9B38:  LDR             R4, [SP,#0xA8+var_80]
A9B3A:  MOV             R10, R12
A9B3C:  LDR             R5, [SP,#0xA8+var_9C]
A9B3E:  MOV             R0, R4
A9B40:  MOV             R1, R5
A9B42:  BLX             sub_108B88
A9B46:  LDR             R1, [SP,#0xA8+var_98]
A9B48:  ADDS.W          R2, R4, #0x64 ; 'd'
A9B4C:  LDR.W           LR, [R7,#arg_4]
A9B50:  ADC.W           R3, R5, #0
A9B54:  SUBS            R2, #0xC9
A9B56:  LDR             R1, [R1]
A9B58:  SBCS.W          R2, R3, #0
A9B5C:  BCC             loc_A9B6C
A9B5E:  VLDR            S0, [R1,#0x334]
A9B62:  VCMP.F32        S0, #0.0
A9B66:  VMRS            APSR_nzcv, FPSCR
A9B6A:  BLE             loc_A9B8C
A9B6C:  VMOV            S0, R0
A9B70:  VCMP.F32        S21, #0.0
A9B74:  VMOV.F32        S4, S16
A9B78:  VMRS            APSR_nzcv, FPSCR
A9B7C:  VMOV.F32        S2, #-1.0
A9B80:  IT MI
A9B82:  VMOVMI.F32      S4, S2
A9B86:  VDIV.F32        S0, S4, S0
A9B8A:  B               loc_A9B94
A9B8C:  VLDR            S0, =100.0
A9B90:  VDIV.F32        S0, S21, S0
A9B94:  MOV             R12, R10
A9B96:  VMOV.F32        S2, #10.0
A9B9A:  VLDR            S4, [R1,#0x338]
A9B9E:  LDR.W           R8, [R7,#arg_10]
A9BA2:  VCMP.F32        S4, #0.0
A9BA6:  VMRS            APSR_nzcv, FPSCR
A9BAA:  VCMP.F32        S23, S16
A9BAE:  VMUL.F32        S2, S0, S2
A9BB2:  IT GT
A9BB4:  VMOVGT.F32      S0, S2
A9BB8:  VMRS            APSR_nzcv, FPSCR
A9BBC:  ITT GE
A9BBE:  VCMPGE.F32      S0, #0.0
A9BC2:  VMRSGE          APSR_nzcv, FPSCR
A9BC6:  BGT             loc_A9BDC
A9BC8:  VCMP.F32        S23, #0.0
A9BCC:  VMRS            APSR_nzcv, FPSCR
A9BD0:  BHI             loc_A9BE4
A9BD2:  VCMP.F32        S0, #0.0
A9BD6:  VMRS            APSR_nzcv, FPSCR
A9BDA:  BPL             loc_A9BE4
A9BDC:  MOV.W           R11, #0
A9BE0:  LDR             R6, [SP,#0xA8+var_70]
A9BE2:  B               loc_A9CC4
A9BE4:  VADD.F32        S21, S23, S0
A9BE8:  VLDR            S0, =0.0
A9BEC:  VCMP.F32        S21, S16
A9BF0:  VMRS            APSR_nzcv, FPSCR
A9BF4:  VCMP.F32        S21, #0.0
A9BF8:  IT GT
A9BFA:  VMOVGT.F32      S21, S16
A9BFE:  VMRS            APSR_nzcv, FPSCR
A9C02:  IT MI
A9C04:  VMOVMI.F32      S21, S0
A9C08:  LDR.W           R10, [SP,#0xA8+var_84]
A9C0C:  CMP.W           R10, #0
A9C10:  BNE.W           loc_A988E
A9C14:  LDR             R0, [SP,#0xA8+var_90]
A9C16:  MOV             R9, R12
A9C18:  CMP             R0, #8
A9C1A:  BNE             loc_A9C4A
A9C1C:  MOV             R0, R6
A9C1E:  MOV             R1, LR
A9C20:  MOV             R5, LR
A9C22:  BLX             sub_108B88
A9C26:  MOV             R4, R0
A9C28:  LDRD.W          R1, R0, [SP,#0xA8+var_8C]
A9C2C:  BLX             sub_108B88
A9C30:  VMOV            S0, R0
A9C34:  VMOV            S2, R4
A9C38:  VMLA.F32        S2, S0, S21
A9C3C:  VMOV            R0, S2
A9C40:  BLX             sub_108A74
A9C44:  MOV             R2, R0
A9C46:  MOV             R3, R1
A9C48:  B               loc_A9C9E
A9C4A:  LDRD.W          R1, R0, [SP,#0xA8+var_8C]
A9C4E:  MOV             R8, LR
A9C50:  BLX             sub_108B88
A9C54:  VMOV            S0, R0
A9C58:  VMUL.F32        S0, S21, S0
A9C5C:  VMOV            R0, S0
A9C60:  VCVT.F64.F32    D10, S0
A9C64:  BLX             sub_108A74
A9C68:  VMOV.F64        D16, #0.5
A9C6C:  MOV             R4, R0
A9C6E:  MOV             R5, R1
A9C70:  VADD.F64        D16, D10, D16
A9C74:  VMOV            R0, R1, D16
A9C78:  BLX             sub_108A44
A9C7C:  SUBS            R3, R4, R0
A9C7E:  MOV.W           R2, #0
A9C82:  SBCS.W          R3, R5, R1
A9C86:  IT LT
A9C88:  MOVLT           R2, #1
A9C8A:  CMP             R2, #0
A9C8C:  ITT NE
A9C8E:  MOVNE           R5, R1
A9C90:  MOVNE           R4, R0
A9C92:  ADDS            R2, R4, R6
A9C94:  ADC.W           R3, R5, R8
A9C98:  MOV             R5, R8
A9C9A:  LDR.W           R8, [R7,#arg_10]
A9C9E:  LDR             R1, [SP,#0xA8+var_94]
A9CA0:  LDR             R6, [SP,#0xA8+var_70]
A9CA2:  MOV             R0, R8
A9CA4:  BL              sub_AF604
A9CA8:  LDRD.W          R2, R3, [R11]
A9CAC:  MOV             R12, R9
A9CAE:  EORS            R3, R1
A9CB0:  MOV             LR, R5
A9CB2:  EORS            R2, R0
A9CB4:  ORRS            R2, R3
A9CB6:  ITTE NE
A9CB8:  STRDNE.W        R0, R1, [R11]
A9CBC:  MOVNE.W         R11, #1
A9CC0:  MOVEQ.W         R11, #0
A9CC4:  LDR.W           R8, [R7,#arg_1C]
A9CC8:  VCMP.F32        S17, S16
A9CCC:  VMRS            APSR_nzcv, FPSCR
A9CD0:  BPL             loc_A9CE0
A9CD2:  VLDR            D16, [R6]
A9CD6:  VMOV            D17, D16
A9CDA:  VST1.32         {D16-D17}, [R8]
A9CDE:  B               loc_A9EAA
A9CE0:  VMOV.F32        S17, #-2.0
A9CE4:  LDR.W           R9, [R7,#arg_0]
A9CE8:  LDR             R5, [R7,#arg_8]
A9CEA:  EOR.W           R1, R12, LR
A9CEE:  EOR.W           R0, R5, R9
A9CF2:  ORRS            R0, R1
A9CF4:  VADD.F32        S0, S30, S17
A9CF8:  VSUB.F32        S30, S0, S19
A9CFC:  BNE             loc_A9D04
A9CFE:  VLDR            S28, =0.0
A9D02:  B               loc_A9E34
A9D04:  LDR             R0, [SP,#0xA8+var_7C]
A9D06:  MOV             R10, LR
A9D08:  MOV             R2, R12
A9D0A:  MOVS            R1, #0
A9D0C:  LDRD.W          R12, LR, [R0]
A9D10:  SUBS.W          R0, R9, R5
A9D14:  SBCS.W          R0, R10, R2
A9D18:  IT LT
A9D1A:  MOVLT           R1, #1
A9D1C:  CMP             R1, #0
A9D1E:  MOV             R4, R10
A9D20:  MOV             R0, R9
A9D22:  MOV.W           R3, #0
A9D26:  ITT NE
A9D28:  MOVNE           R4, R2
A9D2A:  MOVNE           R0, R5
A9D2C:  SUBS.W          R6, R0, R12
A9D30:  SBCS.W          R6, R4, LR
A9D34:  MOV.W           R6, #0
A9D38:  IT LT
A9D3A:  MOVLT           R6, #1
A9D3C:  CMP             R6, #0
A9D3E:  IT EQ
A9D40:  MOVEQ           R4, LR
A9D42:  CMP             R1, #0
A9D44:  MOV             R1, R2
A9D46:  MOV             R2, R5
A9D48:  ITT NE
A9D4A:  MOVNE           R1, R10
A9D4C:  MOVNE           R2, R9
A9D4E:  SUBS.W          R5, R12, R2
A9D52:  SBCS.W          R5, LR, R1
A9D56:  IT LT
A9D58:  MOVLT           R3, #1
A9D5A:  CMP             R3, #0
A9D5C:  IT EQ
A9D5E:  MOVEQ           R1, R4
A9D60:  CMP             R6, #0
A9D62:  IT EQ
A9D64:  MOVEQ           R0, R12
A9D66:  CMP             R3, #0
A9D68:  IT NE
A9D6A:  MOVNE           R0, R2
A9D6C:  LDR             R2, [SP,#0xA8+var_84]
A9D6E:  CBZ             R2, loc_A9DC0
A9D70:  CMP.W           R1, #0xFFFFFFFF
A9D74:  BLE             loc_A9DEA
A9D76:  RSBS.W          R3, R9, #0
A9D7A:  MOV.W           R2, #0
A9D7E:  SBCS.W          R3, R2, R10
A9D82:  IT LT
A9D84:  MOVLT           R2, #1
A9D86:  CMP             R2, #0
A9D88:  LDR             R3, [R7,#arg_8]
A9D8A:  ITE EQ
A9D8C:  MOVEQ           R10, R2
A9D8E:  MOVNE           R2, R9
A9D90:  SUBS            R0, R0, R2
A9D92:  SBC.W           R1, R1, R10
A9D96:  SUBS            R2, R3, R2
A9D98:  LDR             R3, [R7,#arg_C]
A9D9A:  SBC.W           R3, R3, R10
A9D9E:  BLX             sub_1092F4
A9DA2:  BLX             sub_108B88
A9DA6:  VDIV.F32        S0, S16, S24
A9DAA:  VMOV            R1, S0; y
A9DAE:  BLX             powf
A9DB2:  VSUB.F32        S0, S16, S28
A9DB6:  VMOV            S2, R0
A9DBA:  VMLA.F32        S28, S2, S0
A9DBE:  B               loc_A9E32
A9DC0:  SUBS.W          R0, R0, R9
A9DC4:  SBC.W           R1, R1, R10
A9DC8:  BLX             sub_108B48
A9DCC:  MOV             R4, R0
A9DCE:  MOV             R5, R1
A9DD0:  LDRD.W          R1, R0, [SP,#0xA8+var_8C]
A9DD4:  BLX             sub_108B48
A9DD8:  VMOV            D16, R0, R1
A9DDC:  VMOV            D17, R4, R5
A9DE0:  VDIV.F64        D16, D17, D16
A9DE4:  VCVT.F32.F64    S28, D16
A9DE8:  B               loc_A9E32
A9DEA:  LDRD.W          R2, R3, [R7,#arg_8]
A9DEE:  SUBS.W          R0, R0, R9
A9DF2:  SBC.W           R1, R1, R10
A9DF6:  AND.W           R2, R2, R3,ASR#31
A9DFA:  AND.W           R3, R3, R3,ASR#31
A9DFE:  SUBS.W          R2, R2, R9
A9E02:  SBC.W           R3, R3, R10
A9E06:  BLX             sub_1092F4
A9E0A:  BLX             sub_108B88
A9E0E:  VDIV.F32        S0, S16, S24
A9E12:  VMOV            S2, R0
A9E16:  VMOV            R1, S0; y
A9E1A:  VSUB.F32        S2, S16, S2
A9E1E:  VMOV            R0, S2; x
A9E22:  BLX             powf
A9E26:  VMOV            S0, R0
A9E2A:  VSUB.F32        S0, S16, S0
A9E2E:  VMUL.F32        S28, S28, S0
A9E32:  LDR             R6, [SP,#0xA8+var_70]
A9E34:  VSUB.F32        S4, S30, S26
A9E38:  LDR             R0, [SP,#0xA8+var_78]
A9E3A:  VSUB.F32        S2, S16, S28
A9E3E:  CMP             R0, #0
A9E40:  IT EQ
A9E42:  VMOVEQ.F32      S2, S28
A9E46:  VNEG.F32        S0, S22
A9E4A:  VMLA.F32        S26, S4, S2
A9E4E:  BNE             loc_A9E7E
A9E50:  VMOV.F32        S6, S26
A9E54:  VLDR            S2, [R6,#4]
A9E58:  VLDR            S4, [R6,#0xC]
A9E5C:  VMLA.F32        S26, S0, S18
A9E60:  VADD.F32        S4, S4, S17
A9E64:  VMLA.F32        S6, S22, S18
A9E68:  VSTR            S26, [R8]
A9E6C:  VADD.F32        S2, S2, S25
A9E70:  VSTR            S4, [R8,#0xC]
A9E74:  VSTR            S6, [R8,#8]
A9E78:  VSTR            S2, [R8,#4]
A9E7C:  B               loc_A9EAA
A9E7E:  VMOV.F32        S6, S26
A9E82:  VLDR            S4, [R6,#8]
A9E86:  VLDR            S2, [R6]
A9E8A:  VMLA.F32        S26, S0, S18
A9E8E:  VMLA.F32        S6, S22, S18
A9E92:  VSTR            S26, [R8,#4]
A9E96:  VADD.F32        S4, S4, S17
A9E9A:  VADD.F32        S0, S2, S25
A9E9E:  VSTR            S6, [R8,#0xC]
A9EA2:  VSTR            S4, [R8,#8]
A9EA6:  VSTR            S0, [R8]
A9EAA:  LDR             R0, [SP,#0xA8+var_64]
A9EAC:  LDR             R1, =(__stack_chk_guard_ptr - 0xA9EB2)
A9EAE:  ADD             R1, PC; __stack_chk_guard_ptr
A9EB0:  LDR             R1, [R1]; __stack_chk_guard
A9EB2:  LDR             R1, [R1]
A9EB4:  CMP             R1, R0
A9EB6:  ITTTT EQ
A9EB8:  MOVEQ           R0, R11
A9EBA:  ADDEQ           SP, SP, #0x48 ; 'H'
A9EBC:  VPOPEQ          {D8-D15}
A9EC0:  ADDEQ           SP, SP, #4
A9EC2:  ITT EQ
A9EC4:  POPEQ.W         {R8-R11}
A9EC8:  POPEQ           {R4-R7,PC}
A9ECA:  BLX             __stack_chk_fail
