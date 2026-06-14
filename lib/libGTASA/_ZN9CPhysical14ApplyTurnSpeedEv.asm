; =========================================================
; Game Engine Function: _ZN9CPhysical14ApplyTurnSpeedEv
; Address            : 0x3FD884 - 0x3FDA40
; =========================================================

3FD884:  PUSH            {R4,R5,R7,LR}
3FD886:  ADD             R7, SP, #8
3FD888:  SUB             SP, SP, #0x40
3FD88A:  MOV             R4, R0
3FD88C:  LDRB.W          R0, [R4,#0x45]
3FD890:  LSLS            R0, R0, #0x1A
3FD892:  BMI.W           loc_3FD9B4
3FD896:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FD8A2)
3FD898:  ADD             R5, SP, #0x48+var_14
3FD89A:  VLDR            S0, [R4,#0x54]
3FD89E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FD8A0:  VLDR            S2, [R4,#0x58]
3FD8A4:  VLDR            S4, [R4,#0x5C]
3FD8A8:  MOV             R1, R5; CVector *
3FD8AA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3FD8AC:  VLDR            S6, [R0]
3FD8B0:  ADD             R0, SP, #0x48+var_20; CVector *
3FD8B2:  VMUL.F32        S0, S6, S0
3FD8B6:  VMUL.F32        S2, S6, S2
3FD8BA:  VMUL.F32        S4, S6, S4
3FD8BE:  VSTR            S0, [SP,#0x48+var_14]
3FD8C2:  VSTR            S2, [SP,#0x48+var_10]
3FD8C6:  VSTR            S4, [SP,#0x48+var_C]
3FD8CA:  LDR             R2, [R4,#0x14]
3FD8CC:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3FD8D0:  LDR             R0, [R4,#0x14]
3FD8D2:  MOV             R1, R5; CVector *
3FD8D4:  VLDR            S0, [SP,#0x48+var_20]
3FD8D8:  VLDR            S2, [R0]
3FD8DC:  VADD.F32        S0, S0, S2
3FD8E0:  VSTR            S0, [R0]
3FD8E4:  LDR             R0, [R4,#0x14]
3FD8E6:  VLDR            S0, [SP,#0x48+var_20+4]
3FD8EA:  VLDR            S2, [R0,#4]
3FD8EE:  VADD.F32        S0, S0, S2
3FD8F2:  VSTR            S0, [R0,#4]
3FD8F6:  LDR             R0, [R4,#0x14]
3FD8F8:  VLDR            S0, [SP,#0x48+var_18]
3FD8FC:  VLDR            S2, [R0,#8]
3FD900:  VADD.F32        S0, S0, S2
3FD904:  VSTR            S0, [R0,#8]
3FD908:  LDR             R0, [R4,#0x14]
3FD90A:  ADD.W           R2, R0, #0x10
3FD90E:  ADD             R0, SP, #0x48+var_30; CVector *
3FD910:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3FD914:  VLDR            D16, [SP,#0x48+var_30]
3FD918:  MOV             R1, R5; CVector *
3FD91A:  LDR             R0, [SP,#0x48+var_28]
3FD91C:  STR             R0, [SP,#0x48+var_18]
3FD91E:  VSTR            D16, [SP,#0x48+var_20]
3FD922:  LDR             R0, [R4,#0x14]
3FD924:  VLDR            S0, [SP,#0x48+var_20]
3FD928:  VLDR            S2, [R0,#0x10]
3FD92C:  VADD.F32        S0, S0, S2
3FD930:  VSTR            S0, [R0,#0x10]
3FD934:  LDR             R0, [R4,#0x14]
3FD936:  VLDR            S0, [SP,#0x48+var_20+4]
3FD93A:  VLDR            S2, [R0,#0x14]
3FD93E:  VADD.F32        S0, S0, S2
3FD942:  VSTR            S0, [R0,#0x14]
3FD946:  LDR             R0, [R4,#0x14]
3FD948:  VLDR            S0, [SP,#0x48+var_18]
3FD94C:  VLDR            S2, [R0,#0x18]
3FD950:  VADD.F32        S0, S0, S2
3FD954:  VSTR            S0, [R0,#0x18]
3FD958:  LDR             R0, [R4,#0x14]
3FD95A:  ADD.W           R2, R0, #0x20 ; ' '
3FD95E:  ADD             R0, SP, #0x48+var_30; CVector *
3FD960:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3FD964:  VLDR            D16, [SP,#0x48+var_30]
3FD968:  LDR             R0, [SP,#0x48+var_28]
3FD96A:  STR             R0, [SP,#0x48+var_18]
3FD96C:  VSTR            D16, [SP,#0x48+var_20]
3FD970:  LDR             R0, [R4,#0x14]
3FD972:  VLDR            S0, [SP,#0x48+var_20]
3FD976:  VLDR            S2, [R0,#0x20]
3FD97A:  VADD.F32        S0, S0, S2
3FD97E:  VSTR            S0, [R0,#0x20]
3FD982:  LDR             R0, [R4,#0x14]
3FD984:  VLDR            S0, [SP,#0x48+var_20+4]
3FD988:  VLDR            S2, [R0,#0x24]
3FD98C:  VADD.F32        S0, S0, S2
3FD990:  VSTR            S0, [R0,#0x24]
3FD994:  LDR             R0, [R4,#0x14]
3FD996:  VLDR            S0, [SP,#0x48+var_18]
3FD99A:  VLDR            S2, [R0,#0x28]
3FD99E:  VADD.F32        S0, S0, S2
3FD9A2:  VSTR            S0, [R0,#0x28]
3FD9A6:  LDRB.W          R0, [R4,#0x44]
3FD9AA:  TST.W           R0, #0x60
3FD9AE:  BEQ             loc_3FD9C0
3FD9B0:  ADD             SP, SP, #0x40 ; '@'
3FD9B2:  POP             {R4,R5,R7,PC}
3FD9B4:  MOVS            R0, #0
3FD9B6:  STRD.W          R0, R0, [R4,#0x54]
3FD9BA:  STR             R0, [R4,#0x5C]
3FD9BC:  ADD             SP, SP, #0x40 ; '@'
3FD9BE:  POP             {R4,R5,R7,PC}
3FD9C0:  VLDR            S0, [R4,#0xA8]
3FD9C4:  ADD             R5, SP, #0x48+var_3C
3FD9C6:  VLDR            S2, [R4,#0xAC]
3FD9CA:  MOV             R2, SP
3FD9CC:  VLDR            S4, [R4,#0xB0]
3FD9D0:  VNEG.F32        S0, S0
3FD9D4:  VNEG.F32        S2, S2
3FD9D8:  LDR             R1, [R4,#0x14]; CVector *
3FD9DA:  VNEG.F32        S4, S4
3FD9DE:  MOV             R0, R5; CMatrix *
3FD9E0:  VSTR            S2, [SP,#0x48+var_44]
3FD9E4:  VSTR            S0, [SP,#0x48+var_48]
3FD9E8:  VSTR            S4, [SP,#0x48+var_40]
3FD9EC:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
3FD9F0:  ADD             R0, SP, #0x48+var_30; CVector *
3FD9F2:  ADD             R1, SP, #0x48+var_14; CVector *
3FD9F4:  MOV             R2, R5
3FD9F6:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3FD9FA:  VLDR            D16, [SP,#0x48+var_30]
3FD9FE:  LDR             R0, [SP,#0x48+var_28]
3FDA00:  STR             R0, [SP,#0x48+var_18]
3FDA02:  VSTR            D16, [SP,#0x48+var_20]
3FDA06:  LDR             R0, [R4,#0x14]
3FDA08:  VLDR            S0, [SP,#0x48+var_20]
3FDA0C:  VLDR            S2, [R0,#0x30]
3FDA10:  VADD.F32        S0, S0, S2
3FDA14:  VSTR            S0, [R0,#0x30]
3FDA18:  LDR             R0, [R4,#0x14]
3FDA1A:  VLDR            S0, [SP,#0x48+var_20+4]
3FDA1E:  VLDR            S2, [R0,#0x34]
3FDA22:  VADD.F32        S0, S0, S2
3FDA26:  VSTR            S0, [R0,#0x34]
3FDA2A:  LDR             R0, [R4,#0x14]
3FDA2C:  VLDR            S0, [SP,#0x48+var_18]
3FDA30:  VLDR            S2, [R0,#0x38]
3FDA34:  VADD.F32        S0, S0, S2
3FDA38:  VSTR            S0, [R0,#0x38]
3FDA3C:  ADD             SP, SP, #0x40 ; '@'
3FDA3E:  POP             {R4,R5,R7,PC}
