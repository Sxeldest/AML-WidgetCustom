; =========================================================
; Game Engine Function: bs2b_set_level
; Address            : 0x25F830 - 0x25F924
; =========================================================

25F830:  PUSH            {R4,R6,R7,LR}
25F832:  ADD             R7, SP, #8
25F834:  VPUSH           {D8-D11}
25F838:  MOV             R4, R0
25F83A:  LDR             R0, [R4]
25F83C:  CMP             R0, R1
25F83E:  BEQ             loc_25F91E
25F840:  LDR             R0, [R4,#4]
25F842:  MOV             R3, #0x2E631
25F84A:  STR             R1, [R4]
25F84C:  SUB.W           R2, R0, #0x7D0
25F850:  SUBS            R1, #1
25F852:  CMP             R2, R3
25F854:  ITT CS
25F856:  MOVWCS          R0, #0xAC44
25F85A:  STRCS           R0, [R4,#4]
25F85C:  CMP             R1, #5
25F85E:  BCS             loc_25F896
25F860:  LDR             R3, =(unk_60A630 - 0x25F868)
25F862:  LDR             R2, =(unk_60A5D0 - 0x25F876)
25F864:  ADD             R3, PC; unk_60A630
25F866:  LDR.W           R12, =(unk_60A600 - 0x25F878)
25F86A:  LDR.W           LR, =(unk_60A5A0 - 0x25F87A)
25F86E:  ADD.W           R3, R3, R1,LSL#3
25F872:  ADD             R2, PC; unk_60A5D0
25F874:  ADD             R12, PC; unk_60A600
25F876:  ADD             LR, PC; unk_60A5A0
25F878:  ADD.W           R2, R2, R1,LSL#3
25F87C:  VLDR            D16, [R3]
25F880:  ADD.W           R3, R12, R1,LSL#3
25F884:  ADD.W           R1, LR, R1,LSL#3
25F888:  VLDR            D9, [R2]
25F88C:  VLDR            D8, [R3]
25F890:  VLDR            D10, [R1]
25F894:  B               loc_25F8AA
25F896:  MOVS            R1, #6
25F898:  VLDR            D16, =-4398.22972
25F89C:  VLDR            D8, =0.205671765
25F8A0:  VLDR            D9, =0.398107171
25F8A4:  VLDR            D10, =-6126.10567
25F8A8:  STR             R1, [R4]
25F8AA:  VMOV            S0, R0
25F8AE:  VCVT.F64.S32    D11, S0
25F8B2:  VDIV.F64        D16, D16, D11
25F8B6:  VMOV            R0, R1, D16; x
25F8BA:  BLX             exp
25F8BE:  VDIV.F64        D16, D10, D11
25F8C2:  VMOV.F64        D10, #1.0
25F8C6:  VMOV            D17, R0, R1
25F8CA:  VMOV            R0, R1, D16; x
25F8CE:  VSUB.F64        D18, D10, D17
25F8D2:  VMUL.F64        D16, D9, D18
25F8D6:  VSTR            D16, [R4,#8]
25F8DA:  VSTR            D17, [R4,#0x10]
25F8DE:  BLX             exp
25F8E2:  VSUB.F64        D16, D10, D8
25F8E6:  VADD.F64        D16, D9, D16
25F8EA:  VMOV            D17, R0, R1
25F8EE:  EOR.W           R1, R1, #0x80000000
25F8F2:  VCVT.F32.F64    S2, D16
25F8F6:  VSUB.F64        D16, D10, D17
25F8FA:  VMOV.F32        S0, #1.0
25F8FE:  VMUL.F64        D16, D8, D16
25F902:  VDIV.F32        S0, S0, S2
25F906:  VSUB.F64        D16, D10, D16
25F90A:  VMOV            D18, R0, R1
25F90E:  VSTR            S0, [R4,#0x30]
25F912:  VSTR            D16, [R4,#0x18]
25F916:  VSTR            D18, [R4,#0x20]
25F91A:  VSTR            D17, [R4,#0x28]
25F91E:  VPOP            {D8-D11}
25F922:  POP             {R4,R6,R7,PC}
