; =========================================================
; Game Engine Function: _Z40ClosestSquaredDistanceBetweenFiniteLinesP7CVectorS0_S0_S0_f
; Address            : 0x2E0938 - 0x2E0B38
; =========================================================

2E0938:  PUSH            {R7,LR}
2E093A:  MOV             R7, SP
2E093C:  VPUSH           {D8-D11}
2E0940:  VLDR            S12, [R1]
2E0944:  VLDR            S14, [R1,#4]
2E0948:  VLDR            S2, [R2,#4]
2E094C:  VLDR            S0, [R2]
2E0950:  VSUB.F32        S4, S2, S14
2E0954:  VLDR            S1, [R1,#8]
2E0958:  VSUB.F32        S2, S0, S12
2E095C:  VLDR            S6, [R2,#8]
2E0960:  VLDR            S10, [R3,#4]
2E0964:  VSUB.F32        S0, S6, S1
2E0968:  VLDR            S6, [R3]
2E096C:  VLDR            S8, [R3,#8]
2E0970:  VLDR            S15, [R0,#4]
2E0974:  VLDR            S16, [R0,#8]
2E0978:  VMUL.F32        S3, S4, S4
2E097C:  VMUL.F32        S5, S2, S2
2E0980:  VMUL.F32        S7, S4, S10
2E0984:  VMUL.F32        S9, S2, S6
2E0988:  VMUL.F32        S11, S0, S0
2E098C:  VMUL.F32        S13, S0, S8
2E0990:  VSUB.F32        S14, S15, S14
2E0994:  VSUB.F32        S1, S16, S1
2E0998:  VADD.F32        S3, S5, S3
2E099C:  VLDR            S5, [R0]
2E09A0:  VADD.F32        S7, S9, S7
2E09A4:  VSUB.F32        S12, S5, S12
2E09A8:  VMUL.F32        S5, S4, S14
2E09AC:  VMUL.F32        S20, S0, S1
2E09B0:  VADD.F32        S3, S3, S11
2E09B4:  VMUL.F32        S11, S14, S10
2E09B8:  VADD.F32        S15, S7, S13
2E09BC:  VLDR            S7, [R7,#8]
2E09C0:  VMUL.F32        S13, S12, S6
2E09C4:  VMUL.F32        S9, S2, S12
2E09C8:  VMUL.F32        S22, S1, S8
2E09CC:  VMUL.F32        S16, S3, S7
2E09D0:  VMUL.F32        S18, S15, S15
2E09D4:  VADD.F32        S13, S13, S11
2E09D8:  VADD.F32        S5, S9, S5
2E09DC:  VSUB.F32        S11, S16, S18
2E09E0:  VADD.F32        S16, S13, S22
2E09E4:  VLDR            S13, =0.0
2E09E8:  VADD.F32        S9, S5, S20
2E09EC:  VLDR            S5, =0.00001
2E09F0:  VCMPE.F32       S11, S5
2E09F4:  VMRS            APSR_nzcv, FPSCR
2E09F8:  BGE             loc_2E0A00
2E09FA:  VMOV.F32        S11, #1.0
2E09FE:  B               loc_2E0A3E
2E0A00:  VMUL.F32        S18, S3, S16
2E0A04:  VMUL.F32        S20, S9, S15
2E0A08:  VSUB.F32        S18, S20, S18
2E0A0C:  VCMPE.F32       S18, #0.0
2E0A10:  VMRS            APSR_nzcv, FPSCR
2E0A14:  BLT             loc_2E0A3E
2E0A16:  VCMPE.F32       S18, S11
2E0A1A:  VMRS            APSR_nzcv, FPSCR
2E0A1E:  BLE             loc_2E0A2A
2E0A20:  VADD.F32        S9, S9, S15
2E0A24:  VMOV.F32        S13, S11
2E0A28:  B               loc_2E0A3E
2E0A2A:  VMUL.F32        S3, S15, S16
2E0A2E:  VMUL.F32        S9, S9, S7
2E0A32:  VMOV.F32        S13, S18
2E0A36:  VSUB.F32        S9, S9, S3
2E0A3A:  VMOV.F32        S3, S11
2E0A3E:  VCMPE.F32       S9, #0.0
2E0A42:  VMRS            APSR_nzcv, FPSCR
2E0A46:  BGE             loc_2E0A64
2E0A48:  VLDR            S13, =-0.0
2E0A4C:  VLDR            S9, =0.0
2E0A50:  VCMPE.F32       S16, S13
2E0A54:  VMRS            APSR_nzcv, FPSCR
2E0A58:  BLE             loc_2E0A86
2E0A5A:  VMOV.F32        S7, S11
2E0A5E:  VMOV.F32        S13, S9
2E0A62:  B               loc_2E0ABA
2E0A64:  VCMPE.F32       S9, S3
2E0A68:  VMRS            APSR_nzcv, FPSCR
2E0A6C:  BLE             loc_2E0A9E
2E0A6E:  VSUB.F32        S13, S15, S16
2E0A72:  VCMPE.F32       S13, #0.0
2E0A76:  VMRS            APSR_nzcv, FPSCR
2E0A7A:  BGE             loc_2E0AA4
2E0A7C:  VLDR            S13, =0.0
2E0A80:  VMOV.F32        S7, S11
2E0A84:  B               loc_2E0AB6
2E0A86:  VNEG.F32        S13, S16
2E0A8A:  VCMPE.F32       S13, S7
2E0A8E:  VMRS            APSR_nzcv, FPSCR
2E0A92:  ITT GT
2E0A94:  VMOVGT.F32      S13, S11
2E0A98:  VMOVGT.F32      S7, S11
2E0A9C:  B               loc_2E0ABA
2E0A9E:  VMOV.F32        S7, S11
2E0AA2:  B               loc_2E0ABA
2E0AA4:  VCMPE.F32       S13, S7
2E0AA8:  VMRS            APSR_nzcv, FPSCR
2E0AAC:  ITT GT
2E0AAE:  VMOVGT.F32      S13, S11
2E0AB2:  VMOVGT.F32      S7, S11
2E0AB6:  VMOV.F32        S9, S3
2E0ABA:  VABS.F32        S11, S13
2E0ABE:  VDIV.F32        S3, S9, S3
2E0AC2:  VCMPE.F32       S11, S5
2E0AC6:  VMRS            APSR_nzcv, FPSCR
2E0ACA:  VABS.F32        S9, S9
2E0ACE:  VDIV.F32        S7, S13, S7
2E0AD2:  VLDR            S13, =0.0
2E0AD6:  VCMPE.F32       S9, S5
2E0ADA:  IT LT
2E0ADC:  VMOVLT.F32      S7, S13
2E0AE0:  VMRS            APSR_nzcv, FPSCR
2E0AE4:  VMUL.F32        S10, S10, S7
2E0AE8:  VMUL.F32        S6, S6, S7
2E0AEC:  VMUL.F32        S8, S8, S7
2E0AF0:  VADD.F32        S10, S14, S10
2E0AF4:  VADD.F32        S6, S12, S6
2E0AF8:  VADD.F32        S8, S1, S8
2E0AFC:  IT LT
2E0AFE:  VMOVLT.F32      S3, S13
2E0B02:  VMUL.F32        S4, S4, S3
2E0B06:  VMUL.F32        S2, S2, S3
2E0B0A:  VMUL.F32        S0, S0, S3
2E0B0E:  VSUB.F32        S4, S10, S4
2E0B12:  VSUB.F32        S2, S6, S2
2E0B16:  VSUB.F32        S0, S8, S0
2E0B1A:  VMUL.F32        S4, S4, S4
2E0B1E:  VMUL.F32        S2, S2, S2
2E0B22:  VMUL.F32        S0, S0, S0
2E0B26:  VADD.F32        S2, S2, S4
2E0B2A:  VADD.F32        S0, S0, S2
2E0B2E:  VMOV            R0, S0
2E0B32:  VPOP            {D8-D11}
2E0B36:  POP             {R7,PC}
