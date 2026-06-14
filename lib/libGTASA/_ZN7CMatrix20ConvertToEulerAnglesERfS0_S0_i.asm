; =========================================================
; Game Engine Function: _ZN7CMatrix20ConvertToEulerAnglesERfS0_S0_i
; Address            : 0x44E65C - 0x44E866
; =========================================================

44E65C:  PUSH            {R4-R7,LR}
44E65E:  ADD             R7, SP, #0xC
44E660:  PUSH.W          {R8-R11}
44E664:  SUB             SP, SP, #4
44E666:  VPUSH           {D8-D10}
44E66A:  SUB             SP, SP, #0x30
44E66C:  STMEA.W         SP, {R1-R3}
44E670:  LDM.W           R0, {R1-R3}
44E674:  LDR             R5, [R7,#arg_0]
44E676:  STRD.W          R1, R2, [SP,#0x68+var_5C]
44E67A:  STR             R3, [SP,#0x68+var_54]
44E67C:  TST.W           R5, #2
44E680:  LDR             R1, =(unk_618FBA - 0x44E68A)
44E682:  LDR             R2, [R0,#0x10]
44E684:  STR             R2, [SP,#0x68+var_50]
44E686:  ADD             R1, PC; unk_618FBA
44E688:  LDR             R2, [R0,#0x14]
44E68A:  UBFX.W          R6, R5, #3, #2
44E68E:  STR             R2, [SP,#0x68+var_4C]
44E690:  LDRB            R4, [R1,R6]
44E692:  LDR             R1, [R0,#0x18]
44E694:  LDR             R3, =(unk_618FBF - 0x44E6A4)
44E696:  STR             R1, [SP,#0x68+var_48]
44E698:  UBFX.W          R10, R5, #2, #1
44E69C:  EOR.W           R1, R10, #1
44E6A0:  ADD             R3, PC; unk_618FBF
44E6A2:  ADD             R1, R4
44E6A4:  LDRD.W          R2, R6, [R0,#0x20]
44E6A8:  LDR             R0, [R0,#0x28]
44E6AA:  LDRB.W          R11, [R3,R1]
44E6AE:  ADD.W           R1, R10, R4
44E6B2:  STR             R2, [SP,#0x68+var_44]
44E6B4:  LDRB.W          R8, [R3,R1]
44E6B8:  STRD.W          R6, R0, [SP,#0x68+var_40]
44E6BC:  BNE             loc_44E738
44E6BE:  ADD.W           R0, R8, R8,LSL#1
44E6C2:  ADD.W           R9, SP, #0x68+var_5C
44E6C6:  ADD.W           R2, R4, R4,LSL#1
44E6CA:  ADD.W           R0, R9, R0,LSL#2
44E6CE:  ADD.W           R1, R0, R4,LSL#2
44E6D2:  ADD.W           R2, R9, R2,LSL#2
44E6D6:  VLDR            S16, [R1]
44E6DA:  ADD.W           R1, R2, R4,LSL#2
44E6DE:  VLDR            S18, [R1]
44E6E2:  VMUL.F32        S0, S16, S16
44E6E6:  VMUL.F32        S2, S18, S18
44E6EA:  VADD.F32        S0, S2, S0
44E6EE:  VSQRT.F32       S20, S0
44E6F2:  VLDR            S0, =0.0000019073
44E6F6:  VCMPE.F32       S20, S0
44E6FA:  VMRS            APSR_nzcv, FPSCR
44E6FE:  BLE             loc_44E7BA
44E700:  ADD.W           R0, R11, R11,LSL#1
44E704:  ADD.W           R6, R9, R0,LSL#2
44E708:  LDR.W           R1, [R6,R11,LSL#2]; x
44E70C:  LDR.W           R0, [R6,R8,LSL#2]; y
44E710:  BLX             atan2f
44E714:  VMOV            R1, S20; x
44E718:  LDR             R5, [SP,#0x68+var_68]
44E71A:  STR             R0, [R5]
44E71C:  LDR.W           R0, [R6,R4,LSL#2]
44E720:  EOR.W           R0, R0, #0x80000000; y
44E724:  BLX             atan2f
44E728:  VMOV            R2, S16
44E72C:  LDR             R6, [SP,#0x68+var_64]
44E72E:  VMOV            R1, S18
44E732:  STR             R0, [R6]
44E734:  MOV             R0, R2
44E736:  B               loc_44E7B0
44E738:  ADD.W           R0, R4, R4,LSL#1
44E73C:  ADD             R1, SP, #0x68+var_5C
44E73E:  ADD.W           R9, R1, R0,LSL#2
44E742:  ADD.W           R0, R9, R11,LSL#2
44E746:  VLDR            S0, [R0]
44E74A:  ADD.W           R0, R9, R8,LSL#2
44E74E:  VLDR            S2, [R0]
44E752:  VMUL.F32        S4, S0, S0
44E756:  VMUL.F32        S6, S2, S2
44E75A:  VADD.F32        S4, S6, S4
44E75E:  VSQRT.F32       S16, S4
44E762:  VLDR            S4, =0.0000019073
44E766:  VCMPE.F32       S16, S4
44E76A:  VMRS            APSR_nzcv, FPSCR
44E76E:  BLE             loc_44E7E4
44E770:  VMOV            R0, S2; y
44E774:  VMOV            R1, S0; x
44E778:  BLX             atan2f
44E77C:  VMOV            R2, S16
44E780:  LDR             R5, [SP,#0x68+var_68]
44E782:  STR             R0, [R5]
44E784:  LDR.W           R1, [R9,R4,LSL#2]; x
44E788:  MOV             R0, R2; y
44E78A:  BLX             atan2f
44E78E:  LDR             R6, [SP,#0x68+var_64]
44E790:  ADD             R3, SP, #0x68+var_5C
44E792:  ADD.W           R1, R8, R8,LSL#1
44E796:  STR             R0, [R6]
44E798:  ADD.W           R0, R11, R11,LSL#1
44E79C:  ADD.W           R0, R3, R0,LSL#2
44E7A0:  LDR.W           R2, [R0,R4,LSL#2]
44E7A4:  ADD.W           R0, R3, R1,LSL#2
44E7A8:  LDR.W           R0, [R0,R4,LSL#2]; y
44E7AC:  EOR.W           R1, R2, #0x80000000; x
44E7B0:  BLX             atan2f
44E7B4:  VMOV            S0, R0
44E7B8:  B               loc_44E816
44E7BA:  LDR.W           R2, [R0,R11,LSL#2]
44E7BE:  LDR.W           R1, [R0,R8,LSL#2]; x
44E7C2:  EOR.W           R0, R2, #0x80000000; y
44E7C6:  BLX             atan2f
44E7CA:  VMOV            R1, S20
44E7CE:  LDR             R5, [SP,#0x68+var_68]
44E7D0:  STR             R0, [R5]
44E7D2:  ADD.W           R0, R11, R11,LSL#1
44E7D6:  ADD.W           R0, R9, R0,LSL#2
44E7DA:  LDR.W           R0, [R0,R4,LSL#2]
44E7DE:  EOR.W           R0, R0, #0x80000000
44E7E2:  B               loc_44E80A
44E7E4:  ADD.W           R0, R8, R8,LSL#1
44E7E8:  ADD.W           R0, R1, R0,LSL#2
44E7EC:  LDR.W           R2, [R0,R11,LSL#2]
44E7F0:  LDR.W           R1, [R0,R8,LSL#2]; x
44E7F4:  EOR.W           R0, R2, #0x80000000; y
44E7F8:  BLX             atan2f
44E7FC:  VMOV            R2, S16
44E800:  LDR             R5, [SP,#0x68+var_68]
44E802:  STR             R0, [R5]
44E804:  LDR.W           R1, [R9,R4,LSL#2]; x
44E808:  MOV             R0, R2; y
44E80A:  BLX             atan2f
44E80E:  LDR             R6, [SP,#0x68+var_64]
44E810:  VLDR            S0, =0.0
44E814:  STR             R0, [R6]
44E816:  LDR             R0, [R7,#arg_0]
44E818:  CMP.W           R10, #0
44E81C:  LDR             R1, [SP,#0x68+var_60]
44E81E:  AND.W           R0, R0, #1
44E822:  VSTR            S0, [R1]
44E826:  BEQ             loc_44E84C
44E828:  VLDR            S0, [R5]
44E82C:  VNEG.F32        S0, S0
44E830:  VSTR            S0, [R5]
44E834:  VLDR            S0, [R6]
44E838:  VNEG.F32        S0, S0
44E83C:  VSTR            S0, [R6]
44E840:  VLDR            S0, [R1]
44E844:  VNEG.F32        S0, S0
44E848:  VSTR            S0, [R1]
44E84C:  CMP             R0, #0
44E84E:  ITTT NE
44E850:  LDRNE           R0, [R5]
44E852:  VSTRNE          S0, [R5]
44E856:  STRNE           R0, [R1]
44E858:  ADD             SP, SP, #0x30 ; '0'
44E85A:  VPOP            {D8-D10}
44E85E:  ADD             SP, SP, #4
44E860:  POP.W           {R8-R11}
44E864:  POP             {R4-R7,PC}
