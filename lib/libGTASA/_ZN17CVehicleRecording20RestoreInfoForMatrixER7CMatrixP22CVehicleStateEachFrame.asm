; =========================================================
; Game Engine Function: _ZN17CVehicleRecording20RestoreInfoForMatrixER7CMatrixP22CVehicleStateEachFrame
; Address            : 0x323DB4 - 0x323E60
; =========================================================

323DB4:  PUSH            {R4,R5,R7,LR}
323DB6:  ADD             R7, SP, #8
323DB8:  SUB             SP, SP, #0x10
323DBA:  MOV             R5, R1
323DBC:  MOV             R4, R0
323DBE:  LDRSB.W         R0, [R5,#0xA]
323DC2:  ADD.W           R2, R4, #0x10
323DC6:  VLDR            S2, =127.0
323DCA:  MOV             R1, R4; CVector *
323DCC:  VMOV            S0, R0
323DD0:  VCVT.F32.S32    S0, S0
323DD4:  VDIV.F32        S0, S0, S2
323DD8:  VSTR            S0, [R4]
323DDC:  LDRSB.W         R0, [R5,#0xB]
323DE0:  VMOV            S0, R0
323DE4:  VCVT.F32.S32    S0, S0
323DE8:  VDIV.F32        S0, S0, S2
323DEC:  VSTR            S0, [R4,#4]
323DF0:  LDRSB.W         R0, [R5,#0xC]
323DF4:  VMOV            S0, R0
323DF8:  VCVT.F32.S32    S0, S0
323DFC:  VDIV.F32        S0, S0, S2
323E00:  VSTR            S0, [R4,#8]
323E04:  LDRSB.W         R0, [R5,#0xD]
323E08:  VMOV            S0, R0
323E0C:  VCVT.F32.S32    S0, S0
323E10:  VDIV.F32        S0, S0, S2
323E14:  VSTR            S0, [R4,#0x10]
323E18:  LDRSB.W         R0, [R5,#0xE]
323E1C:  VMOV            S0, R0
323E20:  VCVT.F32.S32    S0, S0
323E24:  VDIV.F32        S0, S0, S2
323E28:  VSTR            S0, [R4,#0x14]
323E2C:  LDRSB.W         R0, [R5,#0xF]
323E30:  VMOV            S0, R0
323E34:  ADD             R0, SP, #0x18+var_14; CVector *
323E36:  VCVT.F32.S32    S0, S0
323E3A:  VDIV.F32        S0, S0, S2
323E3E:  VSTR            S0, [R4,#0x18]
323E42:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
323E46:  ADD             R2, SP, #0x18+var_14
323E48:  ADD.W           R3, R4, #0x20 ; ' '
323E4C:  LDM             R2, {R0-R2}
323E4E:  STM             R3!, {R0-R2}
323E50:  LDR             R0, [R5,#0x14]
323E52:  STR             R0, [R4,#0x30]
323E54:  LDR             R0, [R5,#0x18]
323E56:  STR             R0, [R4,#0x34]
323E58:  LDR             R0, [R5,#0x1C]
323E5A:  STR             R0, [R4,#0x38]
323E5C:  ADD             SP, SP, #0x10
323E5E:  POP             {R4,R5,R7,PC}
