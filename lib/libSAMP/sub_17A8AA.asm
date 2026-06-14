; =========================================================
; Game Engine Function: sub_17A8AA
; Address            : 0x17A8AA - 0x17A9AE
; =========================================================

17A8AA:  VCMP.F32        S1, S3
17A8AE:  VMRS            APSR_nzcv, FPSCR
17A8B2:  BNE             loc_17A8B6
17A8B4:  BX              LR
17A8B6:  VLDR            S4, [R2,#0x18]
17A8BA:  VCMP.F32        S4, S1
17A8BE:  VMRS            APSR_nzcv, FPSCR
17A8C2:  BMI             locret_17A8B4
17A8C4:  VLDR            S6, [R2,#0x14]
17A8C8:  VCMP.F32        S6, S3
17A8CC:  VMRS            APSR_nzcv, FPSCR
17A8D0:  IT GT
17A8D2:  BXGT            LR
17A8D4:  VCMP.F32        S6, S1
17A8D8:  VMRS            APSR_nzcv, FPSCR
17A8DC:  BLE             loc_17A8F8
17A8DE:  VSUB.F32        S8, S6, S1
17A8E2:  VSUB.F32        S10, S2, S0
17A8E6:  VSUB.F32        S12, S3, S1
17A8EA:  VMUL.F32        S8, S10, S8
17A8EE:  VDIV.F32        S8, S8, S12
17A8F2:  VADD.F32        S0, S8, S0
17A8F6:  B               loc_17A8FC
17A8F8:  VMOV.F32        S6, S1
17A8FC:  VCMP.F32        S4, S3
17A900:  VMRS            APSR_nzcv, FPSCR
17A904:  BPL             loc_17A920
17A906:  VSUB.F32        S8, S2, S0
17A90A:  VSUB.F32        S10, S4, S3
17A90E:  VSUB.F32        S12, S3, S6
17A912:  VMUL.F32        S8, S10, S8
17A916:  VDIV.F32        S8, S8, S12
17A91A:  VADD.F32        S2, S8, S2
17A91E:  B               loc_17A924
17A920:  VMOV.F32        S4, S3
17A924:  VMOV            S8, R1
17A928:  VCVT.F32.S32    S8, S8
17A92C:  VCMP.F32        S0, S8
17A930:  VMRS            APSR_nzcv, FPSCR
17A934:  ITT LS
17A936:  VCMPLS.F32      S2, S8
17A93A:  VMRSLS          APSR_nzcv, FPSCR
17A93E:  BLS             loc_17A994
17A940:  ADDS            R3, R1, #1
17A942:  VMOV            S10, R3
17A946:  VCVT.F32.S32    S10, S10
17A94A:  VCMP.F32        S0, S10
17A94E:  VMRS            APSR_nzcv, FPSCR
17A952:  ITT GE
17A954:  VCMPGE.F32      S2, S10
17A958:  VMRSGE          APSR_nzcv, FPSCR
17A95C:  BGE             locret_17A8B4
17A95E:  VSUB.F32        S2, S2, S8
17A962:  ADD.W           R0, R0, R1,LSL#2
17A966:  VSUB.F32        S0, S0, S8
17A96A:  VLDR            S8, [R2,#0x10]
17A96E:  VSUB.F32        S4, S4, S6
17A972:  VMOV.F32        S6, #-0.5
17A976:  VADD.F32        S0, S0, S2
17A97A:  VMOV.F32        S2, #1.0
17A97E:  VMUL.F32        S4, S4, S8
17A982:  VMLA.F32        S2, S0, S6
17A986:  VLDR            S0, [R0]
17A98A:  VMLA.F32        S0, S4, S2
17A98E:  VSTR            S0, [R0]
17A992:  BX              LR
17A994:  VSUB.F32        S0, S4, S6
17A998:  ADD.W           R0, R0, R1,LSL#2
17A99C:  VLDR            S2, [R2,#0x10]
17A9A0:  VLDR            S4, [R0]
17A9A4:  VMLA.F32        S4, S2, S0
17A9A8:  VSTR            S4, [R0]
17A9AC:  BX              LR
