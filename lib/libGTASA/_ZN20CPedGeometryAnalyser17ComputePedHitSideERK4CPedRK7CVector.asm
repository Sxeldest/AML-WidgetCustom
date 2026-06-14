; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser17ComputePedHitSideERK4CPedRK7CVector
; Address            : 0x4ADEA8 - 0x4ADFAE
; =========================================================

4ADEA8:  PUSH            {R4,R6,R7,LR}
4ADEAA:  ADD             R7, SP, #8
4ADEAC:  VPUSH           {D8-D9}
4ADEB0:  SUB             SP, SP, #0x10
4ADEB2:  VLDR            S0, [R1]
4ADEB6:  MOV             R4, R0
4ADEB8:  VLDR            S2, [R1,#4]
4ADEBC:  ADD             R0, SP, #0x28+var_24; this
4ADEBE:  VNEG.F32        S0, S0
4ADEC2:  VLDR            S4, [R1,#8]
4ADEC6:  VSTR            S0, [SP,#0x28+var_24]
4ADECA:  VNEG.F32        S0, S2
4ADECE:  VSTR            S0, [SP,#0x28+var_20]
4ADED2:  VNEG.F32        S0, S4
4ADED6:  VSTR            S0, [SP,#0x28+var_1C]
4ADEDA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4ADEDE:  LDR             R0, [R4,#0x14]
4ADEE0:  CBZ             R0, loc_4ADEFC
4ADEE2:  VLDR            S6, [R0]
4ADEE6:  VLDR            S16, [R0,#4]
4ADEEA:  VLDR            S4, [R0,#8]
4ADEEE:  VLDR            S18, [R0,#0x10]
4ADEF2:  VLDR            S2, [R0,#0x14]
4ADEF6:  VLDR            S0, [R0,#0x18]
4ADEFA:  B               loc_4ADF22
4ADEFC:  LDR             R4, [R4,#0x10]
4ADEFE:  MOV             R0, R4; x
4ADF00:  BLX             sinf
4ADF04:  VMOV            S16, R0
4ADF08:  MOV             R0, R4; x
4ADF0A:  VNEG.F32        S18, S16
4ADF0E:  BLX             cosf
4ADF12:  VLDR            S0, =0.0
4ADF16:  VMOV            S2, R0
4ADF1A:  VMOV.F32        S4, S0
4ADF1E:  VMOV.F32        S6, S2
4ADF22:  VLDR            S10, [SP,#0x28+var_20]
4ADF26:  MOVS            R0, #0
4ADF28:  VLDR            S8, [SP,#0x28+var_24]
4ADF2C:  VMUL.F32        S1, S10, S2
4ADF30:  VLDR            S12, [SP,#0x28+var_1C]
4ADF34:  VMUL.F32        S6, S6, S8
4ADF38:  VMUL.F32        S8, S8, S18
4ADF3C:  VNMUL.F32       S14, S16, S10
4ADF40:  VNMUL.F32       S2, S10, S2
4ADF44:  VMUL.F32        S4, S4, S12
4ADF48:  VMUL.F32        S0, S12, S0
4ADF4C:  VMUL.F32        S10, S16, S10
4ADF50:  VADD.F32        S12, S8, S1
4ADF54:  VSUB.F32        S14, S14, S6
4ADF58:  VSUB.F32        S2, S2, S8
4ADF5C:  VADD.F32        S6, S6, S10
4ADF60:  VMOV.F32        S10, #-1.0
4ADF64:  VADD.F32        S12, S12, S0
4ADF68:  VSUB.F32        S8, S14, S4
4ADF6C:  VSUB.F32        S0, S2, S0
4ADF70:  VADD.F32        S2, S6, S4
4ADF74:  VMAX.F32        D5, D6, D5
4ADF78:  VCMPE.F32       S8, S10
4ADF7C:  VMRS            APSR_nzcv, FPSCR
4ADF80:  IT LT
4ADF82:  VMOVLT.F32      S8, S10
4ADF86:  IT GE
4ADF88:  MOVGE           R0, #1
4ADF8A:  VCMPE.F32       S0, S8
4ADF8E:  VMRS            APSR_nzcv, FPSCR
4ADF92:  VMAX.F32        D2, D0, D4
4ADF96:  VCMPE.F32       S2, S4
4ADF9A:  IT GE
4ADF9C:  MOVGE           R0, #2
4ADF9E:  VMRS            APSR_nzcv, FPSCR
4ADFA2:  IT GE
4ADFA4:  MOVGE           R0, #3
4ADFA6:  ADD             SP, SP, #0x10
4ADFA8:  VPOP            {D8-D9}
4ADFAC:  POP             {R4,R6,R7,PC}
