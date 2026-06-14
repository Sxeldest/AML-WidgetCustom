; =========================================================
; Game Engine Function: CalcHrtfDelta
; Address            : 0x1D6CE0 - 0x1D6E04
; =========================================================

1D6CE0:  PUSH            {R4,R5,R11,LR}
1D6CE4:  ADD             R11, SP, #8
1D6CE8:  VPUSH           {D8-D10}
1D6CEC:  VLDR            S18, =0.0001
1D6CF0:  VMOV            S0, R0
1D6CF4:  VMOV            S20, R1
1D6CF8:  MOV             R4, R3
1D6CFC:  VCMPE.F32       S0, S18
1D6D00:  MOV             R5, R2
1D6D04:  VMRS            APSR_nzcv, FPSCR
1D6D08:  VMOV.F32        S2, S18
1D6D0C:  VCMPE.F32       S20, S18
1D6D10:  VMOVGT.F32      S2, S0
1D6D14:  VMRS            APSR_nzcv, FPSCR
1D6D18:  VMOV.F32        S0, S18
1D6D1C:  VMOVGT.F32      S0, S20
1D6D20:  VDIV.F32        S0, S0, S2
1D6D24:  VMOV            R0, S0; x
1D6D28:  BL              log10f
1D6D2C:  VCMPE.F32       S20, S18
1D6D30:  VMOV.F32        S0, #-0.25
1D6D34:  VMRS            APSR_nzcv, FPSCR
1D6D38:  VMOV            S2, R0
1D6D3C:  VMUL.F32        S0, S2, S0
1D6D40:  VABS.F32        S16, S0
1D6D44:  VLDR            S0, =0.0
1D6D48:  VCMPELE.F32     S16, S18
1D6D4C:  VMRSLE          APSR_nzcv, FPSCR
1D6D50:  BLE             loc_1D6DD8
1D6D54:  VLDR            S2, [R5]
1D6D58:  VLDR            S4, [R4]
1D6D5C:  VSUB.F32        S6, S4, S2
1D6D60:  VCMP.F32        S6, #0.0
1D6D64:  VMRS            APSR_nzcv, FPSCR
1D6D68:  BEQ             loc_1D6D78
1D6D6C:  VLDR            S6, [R4,#4]
1D6D70:  VLDR            S8, [R5,#4]
1D6D74:  B               loc_1D6DA8
1D6D78:  VLDR            S8, [R5,#4]
1D6D7C:  VLDR            S6, [R4,#4]
1D6D80:  VSUB.F32        S10, S6, S8
1D6D84:  VCMP.F32        S10, #0.0
1D6D88:  VMRS            APSR_nzcv, FPSCR
1D6D8C:  BNE             loc_1D6DA8
1D6D90:  VLDR            S10, [R5,#8]
1D6D94:  VLDR            S12, [R4,#8]
1D6D98:  VSUB.F32        S10, S12, S10
1D6D9C:  VCMP.F32        S10, #0.0
1D6DA0:  VMRS            APSR_nzcv, FPSCR
1D6DA4:  BEQ             loc_1D6DD8
1D6DA8:  VMUL.F32        S0, S4, S2
1D6DAC:  VLDR            S4, [R5,#8]
1D6DB0:  VMUL.F32        S2, S6, S8
1D6DB4:  VLDR            S6, [R4,#8]
1D6DB8:  VMUL.F32        S4, S6, S4
1D6DBC:  VADD.F32        S0, S2, S0
1D6DC0:  VADD.F32        S0, S0, S4
1D6DC4:  VMOV            R0, S0; x
1D6DC8:  BL              acosf
1D6DCC:  VLDR            S0, =0.63662
1D6DD0:  VMOV            S2, R0
1D6DD4:  VMUL.F32        S0, S2, S0
1D6DD8:  VADD.F32        S2, S16, S16
1D6DDC:  VMOV.F32        S4, #1.0
1D6DE0:  VCMPE.F32       S2, S0
1D6DE4:  VMRS            APSR_nzcv, FPSCR
1D6DE8:  VMOVGT.F32      S0, S2
1D6DEC:  VCMPE.F32       S0, S4
1D6DF0:  VMRS            APSR_nzcv, FPSCR
1D6DF4:  VMOVLT.F32      S4, S0
1D6DF8:  VMOV            R0, S4
1D6DFC:  VPOP            {D8-D10}
1D6E00:  POP             {R4,R5,R11,PC}
