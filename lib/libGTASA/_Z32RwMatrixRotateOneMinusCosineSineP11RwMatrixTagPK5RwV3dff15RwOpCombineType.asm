; =========================================================
; Game Engine Function: _Z32RwMatrixRotateOneMinusCosineSineP11RwMatrixTagPK5RwV3dff15RwOpCombineType
; Address            : 0x1E37C4 - 0x1E3960
; =========================================================

1E37C4:  PUSH            {R4-R7,LR}
1E37C6:  ADD             R7, SP, #0xC
1E37C8:  PUSH.W          {R11}
1E37CC:  SUB             SP, SP, #0x80
1E37CE:  VLDR            S0, [R1]
1E37D2:  VMOV.F32        S6, #1.0
1E37D6:  VLDR            S2, [R1,#4]
1E37DA:  VMOV            S12, R3
1E37DE:  VLDR            S4, [R1,#8]
1E37E2:  VMUL.F32        S8, S0, S0
1E37E6:  VMUL.F32        S10, S0, S2
1E37EA:  MOV             R4, R0
1E37EC:  VMUL.F32        S14, S0, S4
1E37F0:  LDR             R0, [R7,#arg_0]
1E37F2:  VMUL.F32        S3, S2, S4
1E37F6:  MOVS            R1, #0
1E37F8:  VMUL.F32        S5, S2, S2
1E37FC:  CMP             R0, #2
1E37FE:  VMUL.F32        S7, S4, S4
1E3802:  VMOV            S1, R2
1E3806:  VSUB.F32        S8, S6, S8
1E380A:  VMUL.F32        S4, S4, S12
1E380E:  VMUL.F32        S10, S10, S1
1E3812:  VMUL.F32        S2, S2, S12
1E3816:  VMUL.F32        S14, S14, S1
1E381A:  VMUL.F32        S0, S0, S12
1E381E:  VMUL.F32        S12, S3, S1
1E3822:  VSUB.F32        S3, S6, S5
1E3826:  VSUB.F32        S5, S6, S7
1E382A:  VMUL.F32        S8, S8, S1
1E382E:  VADD.F32        S7, S10, S4
1E3832:  VSUB.F32        S9, S14, S2
1E3836:  VSUB.F32        S4, S10, S4
1E383A:  VADD.F32        S10, S0, S12
1E383E:  VSUB.F32        S0, S12, S0
1E3842:  VMUL.F32        S3, S3, S1
1E3846:  VMUL.F32        S12, S5, S1
1E384A:  VADD.F32        S2, S2, S14
1E384E:  VSTR            S7, [SP,#0x90+var_4C]
1E3852:  VSUB.F32        S8, S6, S8
1E3856:  VSTR            S9, [SP,#0x90+var_48]
1E385A:  VSTR            S4, [SP,#0x90+var_40]
1E385E:  VSTR            S10, [SP,#0x90+var_38]
1E3862:  VSTR            S0, [SP,#0x90+var_2C]
1E3866:  VSUB.F32        S4, S6, S3
1E386A:  VSUB.F32        S6, S6, S12
1E386E:  VSTR            S2, [SP,#0x90+var_30]
1E3872:  STRD.W          R1, R1, [SP,#0x90+var_20]
1E3876:  VSTR            S8, [SP,#0x90+var_50]
1E387A:  STR             R1, [SP,#0x90+var_18]
1E387C:  MOV.W           R1, #3
1E3880:  VSTR            S4, [SP,#0x90+var_3C]
1E3884:  VSTR            S6, [SP,#0x90+var_28]
1E3888:  STR             R1, [SP,#0x90+var_44]
1E388A:  BEQ             loc_1E38CA
1E388C:  CMP             R0, #1
1E388E:  BEQ             loc_1E38E4
1E3890:  CMP             R0, #0
1E3892:  BNE             loc_1E393C
1E3894:  ADD             R0, SP, #0x90+var_50
1E3896:  ADD.W           R2, R0, #0x20 ; ' '
1E389A:  MOV             R1, R0
1E389C:  ADDS            R0, #0x30 ; '0'
1E389E:  VLD1.64         {D22-D23}, [R0]
1E38A2:  ADD.W           R0, R4, #0x30 ; '0'
1E38A6:  VLD1.32         {D16-D17}, [R1]!
1E38AA:  VLD1.64         {D18-D19}, [R2]
1E38AE:  VLD1.64         {D20-D21}, [R1]
1E38B2:  VST1.32         {D22-D23}, [R0]
1E38B6:  ADD.W           R0, R4, #0x20 ; ' '
1E38BA:  VST1.32         {D18-D19}, [R0]
1E38BE:  MOV             R0, R4
1E38C0:  VST1.32         {D16-D17}, [R0]!
1E38C4:  VST1.32         {D20-D21}, [R0]
1E38C8:  B               loc_1E3956
1E38CA:  LDR             R0, =(RwEngineInstance_ptr - 0x1E38D6)
1E38CC:  MOV             R5, SP
1E38CE:  LDR             R1, =(dword_6BD044 - 0x1E38DA)
1E38D0:  ADD             R2, SP, #0x90+var_50
1E38D2:  ADD             R0, PC; RwEngineInstance_ptr
1E38D4:  LDR             R6, [R4,#0xC]
1E38D6:  ADD             R1, PC; dword_6BD044
1E38D8:  LDR             R0, [R0]; RwEngineInstance
1E38DA:  LDR             R1, [R1]
1E38DC:  LDR             R0, [R0]
1E38DE:  ADD             R0, R1
1E38E0:  MOV             R1, R4
1E38E2:  B               loc_1E38FC
1E38E4:  LDR             R0, =(RwEngineInstance_ptr - 0x1E38F0)
1E38E6:  MOV             R5, SP
1E38E8:  LDR             R1, =(dword_6BD044 - 0x1E38F4)
1E38EA:  MOV             R2, R4
1E38EC:  ADD             R0, PC; RwEngineInstance_ptr
1E38EE:  LDR             R6, [R4,#0xC]
1E38F0:  ADD             R1, PC; dword_6BD044
1E38F2:  LDR             R0, [R0]; RwEngineInstance
1E38F4:  LDR             R1, [R1]
1E38F6:  LDR             R0, [R0]
1E38F8:  ADD             R0, R1
1E38FA:  ADD             R1, SP, #0x90+var_50
1E38FC:  LDR             R3, [R0,#8]
1E38FE:  MOV             R0, R5
1E3900:  BLX             R3
1E3902:  ADD.W           R0, R5, #0x30 ; '0'
1E3906:  VLD1.64         {D16-D17}, [R0]
1E390A:  ADD.W           R0, R5, #0x20 ; ' '
1E390E:  VLD1.64         {D18-D19}, [R0]
1E3912:  AND.W           R0, R6, #3
1E3916:  STR             R0, [SP,#0x90+var_84]
1E3918:  ADD.W           R0, R4, #0x30 ; '0'
1E391C:  VLD1.32         {D20-D21}, [R5]!
1E3920:  VST1.32         {D16-D17}, [R0]
1E3924:  ADD.W           R0, R4, #0x20 ; ' '
1E3928:  VLD1.64         {D16-D17}, [R5]
1E392C:  VST1.32         {D18-D19}, [R0]
1E3930:  MOV             R0, R4
1E3932:  VST1.32         {D20-D21}, [R0]!
1E3936:  VST1.32         {D16-D17}, [R0]
1E393A:  B               loc_1E3956
1E393C:  LDR             R1, =(aInvalidCombina_0 - 0x1E394A); "Invalid combination type"
1E393E:  MOVS            R0, #3
1E3940:  MOVS            R4, #0
1E3942:  MOVT            R0, #0x8000; int
1E3946:  ADD             R1, PC; "Invalid combination type"
1E3948:  STR             R4, [SP,#0x90+var_90]
1E394A:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E394E:  STR             R0, [SP,#0x90+var_8C]
1E3950:  MOV             R0, SP
1E3952:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E3956:  MOV             R0, R4
1E3958:  ADD             SP, SP, #0x80
1E395A:  POP.W           {R11}
1E395E:  POP             {R4-R7,PC}
