; =========================================================
; Game Engine Function: _ZN16cHandlingDataMgr22ConvertDataToGameUnitsEP13tHandlingData
; Address            : 0x570D58 - 0x570E7E
; =========================================================

570D58:  VLDR            S0, =0.008
570D5C:  VMOV.F32        S4, #1.0
570D60:  VLDR            S2, [R1,#4]
570D64:  LDRB.W          R0, [R1,#0x20]
570D68:  VMUL.F32        S0, S2, S0
570D6C:  VLDR            S8, =2000.0
570D70:  VLDR            S10, [R1,#0xC8]
570D74:  VLDR            S12, =100.0
570D78:  VMUL.F32        S8, S10, S8
570D7C:  VLDR            S6, [R1,#0x7C]
570D80:  VMOV            S10, R0
570D84:  VLDR            S14, =0.0004
570D88:  ADD.W           R0, R1, #0x2C ; ','
570D8C:  VCVT.F32.U32    S10, S10
570D90:  VLDR            S1, [R1,#0x84]
570D94:  VMUL.F32        S0, S0, S12
570D98:  VLDR            S3, [R1,#0x94]
570D9C:  VDIV.F32        S12, S4, S2
570DA0:  VDIV.F32        S8, S8, S2
570DA4:  VDIV.F32        S10, S0, S10
570DA8:  VLDR            S2, =0.0055556
570DAC:  VMUL.F32        S0, S6, S14
570DB0:  VMUL.F32        S6, S3, S14
570DB4:  VMUL.F32        S2, S1, S2
570DB8:  VSTR            S0, [R1,#0x7C]
570DBC:  VSTR            S2, [R1,#0x84]
570DC0:  VCMPE.F32       S2, #0.0
570DC4:  VSTR            S6, [R1,#0x94]
570DC8:  VMOV.F32        S6, S2
570DCC:  VMRS            APSR_nzcv, FPSCR
570DD0:  VSTR            S12, [R1,#8]
570DD4:  VSTR            S8, [R1,#0xC8]
570DD8:  VSTR            S10, [R1,#0x24]
570DDC:  BLE             loc_570E5E
570DDE:  VMOV.F32        S6, #0.5
570DE2:  VLDR            S8, [R1,#0x10]
570DE6:  VCVT.F64.F32    D16, S0
570DEA:  VLDR            S10, =1000.0
570DEE:  VMOV.F32        S1, #-1.0
570DF2:  VMUL.F32        S6, S8, S6
570DF6:  VLDR            D17, =0.166666667
570DFA:  VLDR            S14, =0.01
570DFE:  VMUL.F64        D16, D16, D17
570E02:  VDIV.F32        S10, S6, S10
570E06:  VCVT.F32.F64    S12, D16
570E0A:  VMOV.F32        S6, S2
570E0E:  VLDR            D16, =-0.01
570E12:  VCVT.F64.F32    D17, S6
570E16:  VADD.F64        D17, D17, D16
570E1A:  VCVT.F32.F64    S6, D17
570E1E:  VCMPE.F32       S8, S14
570E22:  VMRS            APSR_nzcv, FPSCR
570E26:  BGE             loc_570E42
570E28:  VMUL.F32        S3, S8, S6
570E2C:  VMUL.F32        S3, S3, S6
570E30:  VADD.F32        S3, S3, S4
570E34:  VDIV.F32        S3, S4, S3
570E38:  VADD.F32        S3, S3, S1
570E3C:  VNMUL.F32       S3, S3, S6
570E40:  B               loc_570E4A
570E42:  VMUL.F32        S3, S6, S6
570E46:  VMUL.F32        S3, S3, S10
570E4A:  VCMPE.F32       S3, S12
570E4E:  VMRS            APSR_nzcv, FPSCR
570E52:  ITT GT
570E54:  VCMPEGT.F32     S6, #0.0
570E58:  VMRSGT          APSR_nzcv, FPSCR
570E5C:  BGT             loc_570E12
570E5E:  LDR             R2, [R1]
570E60:  CMP             R2, #0x26 ; '&'
570E62:  BNE             loc_570E6E
570E64:  VNEG.F32        S4, S2
570E68:  VSTR            S2, [R1,#0x88]
570E6C:  B               loc_570EC0
570E6E:  LDRB.W          R3, [R1,#0xD3]
570E72:  LSLS            R3, R3, #0x1F
570E74:  BNE             loc_570E92
570E76:  VLDR            S2, =1.2
570E7A:  B.W             sub_3F65F0
