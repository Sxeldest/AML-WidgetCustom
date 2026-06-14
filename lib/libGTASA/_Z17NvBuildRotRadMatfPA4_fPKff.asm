; =========================================================
; Game Engine Function: _Z17NvBuildRotRadMatfPA4_fPKff
; Address            : 0x2788A4 - 0x2789E8
; =========================================================

2788A4:  PUSH            {R4,R5,R7,LR}
2788A6:  ADD             R7, SP, #8
2788A8:  VPUSH           {D8-D12}
2788AC:  VLDR            S20, [R1]
2788B0:  VMOV.F32        S16, #1.0
2788B4:  VLDR            S22, [R1,#4]
2788B8:  MOV             R4, R0
2788BA:  VMUL.F32        S2, S20, S20
2788BE:  VLDR            S18, [R1,#8]
2788C2:  VMUL.F32        S0, S22, S22
2788C6:  VMUL.F32        S4, S18, S18
2788CA:  VADD.F32        S0, S2, S0
2788CE:  VADD.F32        S0, S0, S4
2788D2:  VSQRT.F32       S24, S0
2788D6:  VLDR            S0, =1.1921e-7
2788DA:  VCMPE.F32       S24, S0
2788DE:  VMRS            APSR_nzcv, FPSCR
2788E2:  BLE             loc_27891A
2788E4:  VMOV.F32        S0, #0.5
2788E8:  VMOV            S2, R2
2788EC:  VMUL.F32        S0, S2, S0
2788F0:  VMOV            R5, S0
2788F4:  MOV             R0, R5; x
2788F6:  BLX             sinf
2788FA:  VMOV            S0, R0
2788FE:  MOV             R0, R5; x
278900:  VDIV.F32        S0, S0, S24
278904:  VMUL.F32        S18, S18, S0
278908:  VMUL.F32        S22, S22, S0
27890C:  VMUL.F32        S20, S20, S0
278910:  BLX             cosf
278914:  VMOV            S0, R0
278918:  B               loc_27892A
27891A:  VLDR            S18, =0.0
27891E:  VMOV.F32        S0, S16
278922:  VMOV.F32        S22, S18
278926:  VMOV.F32        S20, S18
27892A:  VMUL.F32        S10, S22, S22
27892E:  MOVS            R0, #0
278930:  VMUL.F32        S12, S18, S18
278934:  STR             R0, [R4,#0xC]
278936:  VMUL.F32        S14, S20, S20
27893A:  STR             R0, [R4,#0x1C]
27893C:  VMUL.F32        S2, S0, S22
278940:  ADD.W           R0, R4, #0x2C ; ','
278944:  VMUL.F32        S4, S18, S20
278948:  VMUL.F32        S6, S0, S18
27894C:  VMUL.F32        S8, S22, S20
278950:  VMUL.F32        S0, S0, S20
278954:  VADD.F32        S9, S12, S10
278958:  VADD.F32        S12, S12, S14
27895C:  VADD.F32        S10, S10, S14
278960:  VMUL.F32        S1, S18, S22
278964:  VMOV.F32        S7, #-2.0
278968:  VSUB.F32        S5, S8, S6
27896C:  VADD.F32        S6, S6, S8
278970:  VSUB.F32        S3, S4, S2
278974:  VADD.F32        S2, S2, S4
278978:  VADD.F32        S12, S12, S12
27897C:  VADD.F32        S8, S1, S0
278980:  VSUB.F32        S0, S1, S0
278984:  VMUL.F32        S1, S9, S7
278988:  VADD.F32        S10, S10, S10
27898C:  VADD.F32        S4, S3, S3
278990:  VADD.F32        S14, S5, S5
278994:  VADD.F32        S6, S6, S6
278998:  VADD.F32        S8, S8, S8
27899C:  VADD.F32        S2, S2, S2
2789A0:  VADD.F32        S0, S0, S0
2789A4:  VADD.F32        S1, S1, S16
2789A8:  VSUB.F32        S12, S16, S12
2789AC:  VSUB.F32        S10, S16, S10
2789B0:  VMOV.I32        Q8, #0
2789B4:  VST1.32         {D16-D17}, [R0]
2789B8:  MOV.W           R0, #0x3F800000
2789BC:  STR             R0, [R4,#0x3C]
2789BE:  VSTR            S1, [R4]
2789C2:  VSTR            S6, [R4,#4]
2789C6:  VSTR            S4, [R4,#8]
2789CA:  VSTR            S14, [R4,#0x10]
2789CE:  VSTR            S12, [R4,#0x14]
2789D2:  VSTR            S8, [R4,#0x18]
2789D6:  VSTR            S2, [R4,#0x20]
2789DA:  VSTR            S0, [R4,#0x24]
2789DE:  VSTR            S10, [R4,#0x28]
2789E2:  VPOP            {D8-D12}
2789E6:  POP             {R4,R5,R7,PC}
