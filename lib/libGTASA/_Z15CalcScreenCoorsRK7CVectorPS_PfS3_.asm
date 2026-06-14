; =========================================================
; Game Engine Function: _Z15CalcScreenCoorsRK7CVectorPS_PfS3_
; Address            : 0x5ADEA0 - 0x5ADF7A
; =========================================================

5ADEA0:  PUSH            {R4-R7,LR}
5ADEA2:  ADD             R7, SP, #0xC
5ADEA4:  PUSH.W          {R11}
5ADEA8:  SUB             SP, SP, #0x10
5ADEAA:  MOV             R5, R2
5ADEAC:  MOV             R2, R0
5ADEAE:  LDR             R0, =(TheCamera_ptr - 0x5ADEB8)
5ADEB0:  MOV             R6, R1
5ADEB2:  MOV             R4, R3
5ADEB4:  ADD             R0, PC; TheCamera_ptr
5ADEB6:  LDR             R0, [R0]; TheCamera
5ADEB8:  ADDW            R1, R0, #0x98C
5ADEBC:  MOV             R0, SP
5ADEBE:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5ADEC2:  VMOV.F32        S0, #1.0
5ADEC6:  VLDR            D16, [SP,#0x20+var_20]
5ADECA:  LDR             R0, [SP,#0x20+var_18]
5ADECC:  STR             R0, [R6,#8]
5ADECE:  VSTR            D16, [R6]
5ADED2:  VLDR            S2, [R6,#8]
5ADED6:  VCMPE.F32       S2, S0
5ADEDA:  VMRS            APSR_nzcv, FPSCR
5ADEDE:  BLE             loc_5ADF70
5ADEE0:  VDIV.F32        S0, S0, S2
5ADEE4:  LDR             R0, =(RsGlobal_ptr - 0x5ADEEA)
5ADEE6:  ADD             R0, PC; RsGlobal_ptr
5ADEE8:  LDR             R0, [R0]; RsGlobal
5ADEEA:  VLDR            S2, [R0,#4]
5ADEEE:  VCVT.F32.S32    S2, S2
5ADEF2:  VLDR            S4, [R6]
5ADEF6:  VLDR            S6, [R6,#4]
5ADEFA:  VMUL.F32        S2, S0, S2
5ADEFE:  VMUL.F32        S2, S4, S2
5ADF02:  VSTR            S2, [R6]
5ADF06:  VLDR            S2, [R0,#8]
5ADF0A:  VCVT.F32.S32    S2, S2
5ADF0E:  VMUL.F32        S2, S0, S2
5ADF12:  VMUL.F32        S2, S6, S2
5ADF16:  VSTR            S2, [R6,#4]
5ADF1A:  VLDR            S2, [R0,#4]
5ADF1E:  VCVT.F32.S32    S2, S2
5ADF22:  VMUL.F32        S2, S0, S2
5ADF26:  VSTR            S2, [R5]
5ADF2A:  VLDR            S2, [R0,#8]
5ADF2E:  LDR             R0, =(_ZN5CDraw7ms_fFOVE_ptr - 0x5ADF38)
5ADF30:  VCVT.F32.S32    S2, S2
5ADF34:  ADD             R0, PC; _ZN5CDraw7ms_fFOVE_ptr
5ADF36:  LDR             R0, [R0]; CDraw::ms_fFOV ...
5ADF38:  VMUL.F32        S0, S0, S2
5ADF3C:  VLDR            S2, =70.0
5ADF40:  VSTR            S0, [R4]
5ADF44:  VLDR            S0, [R0]
5ADF48:  VLDR            S4, [R5]
5ADF4C:  VDIV.F32        S0, S2, S0
5ADF50:  VMUL.F32        S0, S4, S0
5ADF54:  VSTR            S0, [R5]
5ADF58:  VLDR            S0, [R0]
5ADF5C:  MOVS            R0, #1
5ADF5E:  VDIV.F32        S0, S2, S0
5ADF62:  VLDR            S2, [R4]
5ADF66:  VMUL.F32        S0, S2, S0
5ADF6A:  VSTR            S0, [R4]
5ADF6E:  B               loc_5ADF72
5ADF70:  MOVS            R0, #0
5ADF72:  ADD             SP, SP, #0x10
5ADF74:  POP.W           {R11}
5ADF78:  POP             {R4-R7,PC}
