; =========================================================
; Game Engine Function: _ZN8CVehicle17UpdateTractorLinkEbb
; Address            : 0x58DACC - 0x58DDBA
; =========================================================

58DACC:  PUSH            {R4-R7,LR}
58DACE:  ADD             R7, SP, #0xC
58DAD0:  PUSH.W          {R8}
58DAD4:  VPUSH           {D8-D15}
58DAD8:  SUB             SP, SP, #0x70
58DADA:  MOV             R4, R0
58DADC:  MOV             R8, R2
58DADE:  LDR.W           R0, [R4,#0x4D4]
58DAE2:  MOV             R6, R1
58DAE4:  CMP             R0, #0
58DAE6:  BEQ.W           loc_58DDAE
58DAEA:  MOVS            R1, #0
58DAEC:  MOVS            R2, #1
58DAEE:  STRD.W          R1, R1, [SP,#0xC0+var_58]
58DAF2:  MOV             R3, R4
58DAF4:  STRD.W          R1, R1, [SP,#0xC0+var_68]
58DAF8:  STRD.W          R1, R1, [SP,#0xC0+var_60]
58DAFC:  LDR             R1, [R0]
58DAFE:  LDR.W           R5, [R1,#0xF0]
58DB02:  ADD             R1, SP, #0xC0+var_68
58DB04:  BLX             R5
58DB06:  CMP             R0, #1
58DB08:  BNE.W           loc_58DDAE
58DB0C:  LDR             R0, [R4]
58DB0E:  ADD             R1, SP, #0xC0+var_5C
58DB10:  LDR.W           R3, [R4,#0x4D4]
58DB14:  MOVS            R2, #1
58DB16:  LDR.W           R5, [R0,#0xF4]
58DB1A:  MOV             R0, R4
58DB1C:  BLX             R5
58DB1E:  CMP             R0, #1
58DB20:  BNE.W           loc_58DDAE
58DB24:  LDRSH.W         R0, [R4,#0x26]
58DB28:  MOVW            R1, #0x213
58DB2C:  VLDR            S22, [SP,#0xC0+var_5C]
58DB30:  CMP             R0, R1
58DB32:  VLDR            S24, [SP,#0xC0+var_58]
58DB36:  VLDR            S28, [SP,#0xC0+var_54]
58DB3A:  VLDR            S26, [SP,#0xC0+var_68]
58DB3E:  VLDR            S30, [SP,#0xC0+var_64]
58DB42:  VLDR            S17, [SP,#0xC0+var_60]
58DB46:  ITT NE
58DB48:  MOVWNE          R1, #0x20D
58DB4C:  CMPNE           R0, R1
58DB4E:  BNE             loc_58DB64
58DB50:  LDR             R0, =(TOWTRUCK_HOIST_DOWN_LIMIT_ptr - 0x58DB5A)
58DB52:  LDRH.W          R1, [R4,#0x880]
58DB56:  ADD             R0, PC; TOWTRUCK_HOIST_DOWN_LIMIT_ptr
58DB58:  LDR             R0, [R0]; TOWTRUCK_HOIST_DOWN_LIMIT
58DB5A:  LDRH            R0, [R0]
58DB5C:  SUBS            R0, #0x64 ; 'd'
58DB5E:  CMP             R0, R1
58DB60:  BLT.W           loc_58DDAE
58DB64:  LDR.W           R1, [R4,#0x4D4]
58DB68:  LDR             R0, [R1,#0x14]
58DB6A:  ADD.W           R2, R0, #0x30 ; '0'
58DB6E:  CMP             R0, #0
58DB70:  IT EQ
58DB72:  ADDEQ           R2, R1, #4
58DB74:  VLDR            S0, [R2]
58DB78:  VSUB.F32        S0, S26, S0
58DB7C:  VSTR            S0, [SP,#0xC0+var_68]
58DB80:  VLDR            S2, [R2,#4]
58DB84:  VSUB.F32        S2, S30, S2
58DB88:  VSTR            S2, [SP,#0xC0+var_64]
58DB8C:  VMOV            R3, S2
58DB90:  VLDR            S4, [R2,#8]
58DB94:  VSUB.F32        S4, S17, S4
58DB98:  VSTR            S4, [SP,#0xC0+var_60]
58DB9C:  LDR             R0, [R4,#0x14]
58DB9E:  ADD.W           R2, R0, #0x30 ; '0'
58DBA2:  CMP             R0, #0
58DBA4:  IT EQ
58DBA6:  ADDEQ           R2, R4, #4
58DBA8:  ADD             R0, SP, #0xC0+var_74
58DBAA:  VLDR            S6, [R2]
58DBAE:  VLDR            S8, [R2,#4]
58DBB2:  VLDR            S10, [R2,#8]
58DBB6:  VMOV            R2, S0
58DBBA:  VSUB.F32        S6, S22, S6
58DBBE:  VSTR            S4, [SP,#0xC0+var_C0]
58DBC2:  VSUB.F32        S0, S28, S10
58DBC6:  VSTR            S6, [SP,#0xC0+var_5C]
58DBCA:  VSUB.F32        S6, S24, S8
58DBCE:  VSTR            S6, [SP,#0xC0+var_58]
58DBD2:  VSTR            S0, [SP,#0xC0+var_54]
58DBD6:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
58DBDA:  LDRD.W          R2, R3, [SP,#0xC0+var_5C]
58DBDE:  MOV             R1, R4
58DBE0:  LDR             R0, [SP,#0xC0+var_54]
58DBE2:  STR             R0, [SP,#0xC0+var_C0]
58DBE4:  ADD             R0, SP, #0xC0+var_80
58DBE6:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
58DBEA:  VLDR            S0, [SP,#0xC0+var_80]
58DBEE:  CMP             R6, #1
58DBF0:  VLDR            S6, [SP,#0xC0+var_74]
58DBF4:  VLDR            S2, [SP,#0xC0+var_7C]
58DBF8:  VLDR            S8, [SP,#0xC0+var_70]
58DBFC:  VSUB.F32        S20, S6, S0
58DC00:  VLDR            S4, [SP,#0xC0+var_78]
58DC04:  VLDR            S10, [SP,#0xC0+var_6C]
58DC08:  VSUB.F32        S18, S8, S2
58DC0C:  VSUB.F32        S16, S10, S4
58DC10:  BNE             loc_58DC18
58DC12:  LDR.W           R0, [R4,#0x4D4]
58DC16:  B               loc_58DC8A
58DC18:  VMOV.F32        S0, #1.0
58DC1C:  LDR.W           R0, [R4,#0x4D4]
58DC20:  CMP.W           R8, #1
58DC24:  BNE             loc_58DC62
58DC26:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58DC34)
58DC28:  VSUB.F32        S2, S17, S28
58DC2C:  VSUB.F32        S4, S30, S24
58DC30:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58DC32:  VSUB.F32        S6, S26, S22
58DC36:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
58DC38:  VLDR            S8, [R1]
58DC3C:  VMAX.F32        D4, D4, D0
58DC40:  VDIV.F32        S0, S0, S8
58DC44:  VLDR            S8, =0.1
58DC48:  VMUL.F32        S2, S2, S8
58DC4C:  VMUL.F32        S4, S4, S8
58DC50:  VMUL.F32        S6, S6, S8
58DC54:  VMUL.F32        S16, S2, S0
58DC58:  VMUL.F32        S18, S4, S0
58DC5C:  VMUL.F32        S20, S6, S0
58DC60:  B               loc_58DC8A
58DC62:  VLDR            S2, [R4,#0x90]
58DC66:  VLDR            S4, [R0,#0x90]
58DC6A:  VADD.F32        S4, S2, S4
58DC6E:  VDIV.F32        S2, S2, S4
58DC72:  VMOV.F32        S4, #0.5
58DC76:  VSUB.F32        S0, S0, S2
58DC7A:  VMUL.F32        S0, S0, S4
58DC7E:  VMUL.F32        S16, S16, S0
58DC82:  VMUL.F32        S18, S18, S0
58DC86:  VMUL.F32        S20, S20, S0
58DC8A:  LDR.W           R1, [R0,#0x5A4]
58DC8E:  CMP             R1, #0xB
58DC90:  BNE             loc_58DCE2
58DC92:  ADD.W           R1, R0, #0xA00
58DC96:  VLDR            S0, =-1000.0
58DC9A:  VLDR            S2, [R1]
58DC9E:  VCMP.F32        S2, S0
58DCA2:  VMRS            APSR_nzcv, FPSCR
58DCA6:  BNE             loc_58DCE2
58DCA8:  LDR             R0, [R0,#0x14]
58DCAA:  VLDR            S0, [R0,#0x20]
58DCAE:  VLDR            S2, [R0,#0x24]
58DCB2:  VMUL.F32        S8, S20, S0
58DCB6:  VLDR            S4, [R0,#0x28]
58DCBA:  VMUL.F32        S6, S18, S2
58DCBE:  VMUL.F32        S10, S16, S4
58DCC2:  VADD.F32        S6, S8, S6
58DCC6:  VADD.F32        S6, S6, S10
58DCCA:  VMUL.F32        S4, S4, S6
58DCCE:  VMUL.F32        S2, S2, S6
58DCD2:  VMUL.F32        S0, S0, S6
58DCD6:  VSUB.F32        S16, S16, S4
58DCDA:  VSUB.F32        S18, S18, S2
58DCDE:  VSUB.F32        S20, S20, S0
58DCE2:  LDR             R1, [R4,#0x14]; CVector *
58DCE4:  ADD.W           R2, R4, #0xA8
58DCE8:  ADD             R0, SP, #0xC0+var_8C; CMatrix *
58DCEA:  BLX.W           j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
58DCEE:  ADD             R5, SP, #0xC0+var_98
58DCF0:  VSTR            S18, [SP,#0xC0+var_94]
58DCF4:  VSTR            S20, [SP,#0xC0+var_98]
58DCF8:  MOV             R0, R5; this
58DCFA:  VSTR            S16, [SP,#0xC0+var_90]
58DCFE:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
58DD02:  VLDR            S0, [SP,#0xC0+var_8C]
58DD06:  ADD             R0, SP, #0xC0+var_A4; CVector *
58DD08:  VLDR            S6, [SP,#0xC0+var_5C]
58DD0C:  ADD             R1, SP, #0xC0+var_B0; CVector *
58DD0E:  VLDR            S2, [SP,#0xC0+var_88]
58DD12:  MOV             R2, R5
58DD14:  VLDR            S8, [SP,#0xC0+var_58]
58DD18:  VSUB.F32        S0, S6, S0
58DD1C:  VLDR            S4, [SP,#0xC0+var_84]
58DD20:  VLDR            S10, [SP,#0xC0+var_54]
58DD24:  VSUB.F32        S2, S8, S2
58DD28:  VLDR            S22, [R4,#0x90]
58DD2C:  VSUB.F32        S4, S10, S4
58DD30:  VSTR            S0, [SP,#0xC0+var_B0]
58DD34:  VSTR            S2, [SP,#0xC0+var_AC]
58DD38:  VSTR            S4, [SP,#0xC0+var_A8]
58DD3C:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
58DD40:  VLDR            S0, [SP,#0xC0+var_A4]
58DD44:  MOV.W           R12, #1
58DD48:  VLDR            S2, [SP,#0xC0+var_A0]
58DD4C:  VMUL.F32        S0, S0, S0
58DD50:  VLDR            S4, [SP,#0xC0+var_9C]
58DD54:  VMUL.F32        S2, S2, S2
58DD58:  VMUL.F32        S4, S4, S4
58DD5C:  VADD.F32        S0, S0, S2
58DD60:  VMOV.F32        S2, #1.0
58DD64:  VADD.F32        S0, S0, S4
58DD68:  VLDR            S4, [R4,#0x94]
58DD6C:  VDIV.F32        S6, S2, S22
58DD70:  LDRD.W          R0, R6, [SP,#0xC0+var_5C]
58DD74:  LDR             R5, [SP,#0xC0+var_54]
58DD76:  STRD.W          R0, R6, [SP,#0xC0+var_C0]
58DD7A:  MOV             R0, R4
58DD7C:  STRD.W          R5, R12, [SP,#0xC0+var_B8]
58DD80:  VDIV.F32        S0, S0, S4
58DD84:  VADD.F32        S0, S6, S0
58DD88:  VDIV.F32        S0, S2, S0
58DD8C:  VMUL.F32        S2, S20, S0
58DD90:  VMUL.F32        S4, S18, S0
58DD94:  VMUL.F32        S0, S16, S0
58DD98:  VMOV            R1, S2
58DD9C:  VMOV            R2, S4
58DDA0:  VMOV            R3, S0
58DDA4:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
58DDA8:  MOVS            R0, #0
58DDAA:  STRB.W          R0, [R4,#0xBC]
58DDAE:  ADD             SP, SP, #0x70 ; 'p'
58DDB0:  VPOP            {D8-D15}
58DDB4:  POP.W           {R8}
58DDB8:  POP             {R4-R7,PC}
