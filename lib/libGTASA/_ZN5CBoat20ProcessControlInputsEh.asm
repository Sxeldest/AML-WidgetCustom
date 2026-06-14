; =========================================================
; Game Engine Function: _ZN5CBoat20ProcessControlInputsEh
; Address            : 0x56BC48 - 0x56BD9C
; =========================================================

56BC48:  PUSH            {R4,R5,R7,LR}
56BC4A:  ADD             R7, SP, #8
56BC4C:  VPUSH           {D8}
56BC50:  MOV             R5, R1
56BC52:  MOV             R4, R0
56BC54:  CMP             R5, #3
56BC56:  MOV             R0, R5
56BC58:  IT CS
56BC5A:  MOVCS           R0, #3
56BC5C:  STRB.W          R0, [R4,#0x651]
56BC60:  MOV             R0, R5; this
56BC62:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
56BC66:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
56BC6A:  VMOV            S0, R0
56BC6E:  VLDR            S16, =255.0
56BC72:  ADDW            R0, R4, #0x4A4
56BC76:  VLDR            S4, =0.1
56BC7A:  VCVT.F32.S32    S0, S0
56BC7E:  VLDR            S2, [R0]
56BC82:  VDIV.F32        S0, S0, S16
56BC86:  VSUB.F32        S0, S0, S2
56BC8A:  VMUL.F32        S0, S0, S4
56BC8E:  VADD.F32        S0, S2, S0
56BC92:  VMOV.F32        S2, #1.0
56BC96:  VSTR            S0, [R0]
56BC9A:  VCMPE.F32       S0, S2
56BC9E:  VMRS            APSR_nzcv, FPSCR
56BCA2:  ITT GE
56BCA4:  VCMPEGE.F32     S0, #0.0
56BCA8:  VMRSGE          APSR_nzcv, FPSCR
56BCAC:  BLE             loc_56BCC2
56BCAE:  VMOV.F32        S0, S2
56BCB2:  MOV.W           R1, #0x3F800000
56BCB6:  STR             R1, [R0]
56BCB8:  VLDR            S2, =-0.3
56BCBC:  VMUL.F32        S0, S0, S2
56BCC0:  B               loc_56BCFE
56BCC2:  VCMPE.F32       S0, #0.0
56BCC6:  VMRS            APSR_nzcv, FPSCR
56BCCA:  BLE             loc_56BCE0
56BCCC:  VLDR            S2, =0.05
56BCD0:  VSTR            S0, [R0]
56BCD4:  VCMPE.F32       S0, S2
56BCD8:  VMRS            APSR_nzcv, FPSCR
56BCDC:  BGE             loc_56BCB8
56BCDE:  B               loc_56BCE4
56BCE0:  MOVS            R1, #0
56BCE2:  STR             R1, [R0]
56BCE4:  MOVS            R1, #0; int
56BCE6:  STR             R1, [R0]
56BCE8:  MOV             R0, R5; this
56BCEA:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
56BCEE:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
56BCF2:  VMOV            S0, R0
56BCF6:  VCVT.F32.S32    S0, S0
56BCFA:  VDIV.F32        S0, S0, S16
56BCFE:  ADD.W           R0, R4, #0x4A0
56BD02:  VSTR            S0, [R0]
56BD06:  MOV             R0, R5; this
56BD08:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
56BD0C:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
56BD10:  NEGS            R0, R0
56BD12:  VLDR            S2, =0.0078125
56BD16:  ADDW            R5, R4, #0x59C
56BD1A:  VLDR            S4, =0.2
56BD1E:  VMOV            S0, R0
56BD22:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56BD2C)
56BD24:  VCVT.F32.S32    S0, S0
56BD28:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56BD2A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
56BD2C:  VMUL.F32        S0, S0, S2
56BD30:  VLDR            S2, [R5]
56BD34:  VSUB.F32        S0, S0, S2
56BD38:  VMUL.F32        S0, S0, S4
56BD3C:  VLDR            S4, [R0]
56BD40:  MOV             R0, R4; this
56BD42:  VMUL.F32        S0, S4, S0
56BD46:  VADD.F32        S0, S2, S0
56BD4A:  VSTR            S0, [R5]
56BD4E:  BLX             j__ZN8CVehicle17GetNewSteeringAmtEv; CVehicle::GetNewSteeringAmt(void)
56BD52:  VMOV            S2, R0
56BD56:  VLDR            S0, [R5]
56BD5A:  VMOV.F32        S4, #1.0
56BD5E:  LDR.W           R0, [R4,#0x388]
56BD62:  VADD.F32        S0, S2, S0
56BD66:  VMOV.F32        S2, #-1.0
56BD6A:  VMIN.F32        D16, D0, D2
56BD6E:  VMAX.F32        D0, D16, D1
56BD72:  VLDR            S2, =3.1416
56BD76:  VSTR            S0, [R5]
56BD7A:  VLDR            S4, [R0,#0xA0]
56BD7E:  ADD.W           R0, R4, #0x498
56BD82:  VMUL.F32        S2, S4, S2
56BD86:  VLDR            S4, =180.0
56BD8A:  VDIV.F32        S2, S2, S4
56BD8E:  VMUL.F32        S0, S0, S2
56BD92:  VSTR            S0, [R0]
56BD96:  VPOP            {D8}
56BD9A:  POP             {R4,R5,R7,PC}
