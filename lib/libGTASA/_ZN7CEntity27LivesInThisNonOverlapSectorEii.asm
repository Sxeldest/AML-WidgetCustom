; =========================================================
; Game Engine Function: _ZN7CEntity27LivesInThisNonOverlapSectorEii
; Address            : 0x3EDF0C - 0x3EDFA8
; =========================================================

3EDF0C:  PUSH            {R4-R7,LR}
3EDF0E:  ADD             R7, SP, #0xC
3EDF10:  PUSH.W          {R11}
3EDF14:  VPUSH           {D8-D12}
3EDF18:  SUB             SP, SP, #0x10
3EDF1A:  MOV             R4, R1
3EDF1C:  MOV             R1, R0
3EDF1E:  LDR             R0, [R1]
3EDF20:  MOV             R5, R2
3EDF22:  LDR             R2, [R0,#0x28]
3EDF24:  MOV             R0, SP
3EDF26:  BLX             R2
3EDF28:  VLDR            S0, [SP,#0x48+var_48]
3EDF2C:  VMOV.F32        S20, #0.5
3EDF30:  VLDR            S2, [SP,#0x48+var_40]
3EDF34:  VLDR            S22, =50.0
3EDF38:  VADD.F32        S0, S0, S2
3EDF3C:  VLDR            S24, =60.0
3EDF40:  VLDR            S16, [SP,#0x48+var_44]
3EDF44:  VLDR            S18, [SP,#0x48+var_3C]
3EDF48:  VMUL.F32        S0, S0, S20
3EDF4C:  VDIV.F32        S0, S0, S22
3EDF50:  VADD.F32        S0, S0, S24
3EDF54:  VMOV            R0, S0; x
3EDF58:  BLX             floorf
3EDF5C:  VADD.F32        S0, S18, S16
3EDF60:  MOV             R6, R0
3EDF62:  VMUL.F32        S0, S0, S20
3EDF66:  VDIV.F32        S0, S0, S22
3EDF6A:  VADD.F32        S0, S0, S24
3EDF6E:  VMOV            R0, S0; x
3EDF72:  BLX             floorf
3EDF76:  VMOV            S0, R0
3EDF7A:  VMOV            S2, R6
3EDF7E:  VCVT.S32.F32    S0, S0
3EDF82:  VCVT.S32.F32    S2, S2
3EDF86:  VMOV            R0, S0
3EDF8A:  VMOV            R1, S2
3EDF8E:  EORS            R0, R5
3EDF90:  EORS            R1, R4
3EDF92:  ORRS            R0, R1
3EDF94:  MOV.W           R0, #0
3EDF98:  IT EQ
3EDF9A:  MOVEQ           R0, #1
3EDF9C:  ADD             SP, SP, #0x10
3EDF9E:  VPOP            {D8-D12}
3EDFA2:  POP.W           {R11}
3EDFA6:  POP             {R4-R7,PC}
