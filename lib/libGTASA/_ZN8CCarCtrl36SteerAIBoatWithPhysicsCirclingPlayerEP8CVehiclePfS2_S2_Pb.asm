; =========================================================
; Game Engine Function: _ZN8CCarCtrl36SteerAIBoatWithPhysicsCirclingPlayerEP8CVehiclePfS2_S2_Pb
; Address            : 0x2F5C84 - 0x2F5E8A
; =========================================================

2F5C84:  PUSH            {R4-R7,LR}
2F5C86:  ADD             R7, SP, #0xC
2F5C88:  PUSH.W          {R8,R9,R11}
2F5C8C:  VPUSH           {D8-D9}
2F5C90:  SUB             SP, SP, #0x18
2F5C92:  MOV             R9, R1
2F5C94:  MOV             R4, R0
2F5C96:  MOV             R0, SP; int
2F5C98:  MOV.W           R1, #0xFFFFFFFF
2F5C9C:  MOV             R8, R3
2F5C9E:  MOV             R6, R2
2F5CA0:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2F5CA4:  LDR             R0, [R4,#0x14]
2F5CA6:  ADDS            R5, R4, #4
2F5CA8:  VLDR            S0, [SP,#0x40+var_40]
2F5CAC:  CMP             R0, #0
2F5CAE:  MOV             R1, R5
2F5CB0:  VLDR            S2, [SP,#0x40+var_3C]
2F5CB4:  IT NE
2F5CB6:  ADDNE.W         R1, R0, #0x30 ; '0'
2F5CBA:  VLDR            S4, [R1]
2F5CBE:  MOVS            R0, #0
2F5CC0:  VLDR            S6, [R1,#4]
2F5CC4:  VSUB.F32        S0, S0, S4
2F5CC8:  VSUB.F32        S2, S2, S6
2F5CCC:  VSTR            S0, [SP,#0x40+var_34]
2F5CD0:  VSTR            S2, [SP,#0x40+var_30]
2F5CD4:  STR             R0, [SP,#0x40+var_2C]
2F5CD6:  ADD             R0, SP, #0x40+var_34; this
2F5CD8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2F5CDC:  VMOV.F32        S2, #26.0
2F5CE0:  LDRH            R0, [R4,#0x24]
2F5CE2:  VMOV.F32        S0, #-12.0
2F5CE6:  MOV.W           R1, #0xFFFFFFFF
2F5CEA:  TST.W           R0, #1
2F5CEE:  MOV             R0, SP; int
2F5CF0:  IT EQ
2F5CF2:  VMOVEQ.F32      S0, S2
2F5CF6:  VLDR            S2, [SP,#0x40+var_34]
2F5CFA:  VLDR            S4, [SP,#0x40+var_30]
2F5CFE:  VLDR            S6, [SP,#0x40+var_2C]
2F5D02:  VNMUL.F32       S2, S2, S0
2F5D06:  VMUL.F32        S4, S0, S4
2F5D0A:  VMUL.F32        S0, S0, S6
2F5D0E:  VSTR            S4, [SP,#0x40+var_34]
2F5D12:  VSTR            S2, [SP,#0x40+var_30]
2F5D16:  VSTR            S0, [SP,#0x40+var_2C]
2F5D1A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2F5D1E:  LDR             R0, [R4,#0x14]
2F5D20:  VLDR            S2, [SP,#0x40+var_34]
2F5D24:  VLDR            S8, [SP,#0x40+var_40]
2F5D28:  VLDR            S4, [R0,#0x10]
2F5D2C:  VLDR            S16, [R0,#0x14]
2F5D30:  VADD.F32        S2, S8, S2
2F5D34:  VMUL.F32        S12, S4, S4
2F5D38:  VLDR            S0, [SP,#0x40+var_30]
2F5D3C:  VMUL.F32        S6, S16, S16
2F5D40:  VLDR            S10, [SP,#0x40+var_3C]
2F5D44:  VADD.F32        S0, S10, S0
2F5D48:  VADD.F32        S6, S12, S6
2F5D4C:  VSQRT.F32       S6, S6
2F5D50:  VCMP.F32        S6, #0.0
2F5D54:  VMRS            APSR_nzcv, FPSCR
2F5D58:  BEQ             loc_2F5D64
2F5D5A:  VDIV.F32        S16, S16, S6
2F5D5E:  VDIV.F32        S18, S4, S6
2F5D62:  B               loc_2F5D68
2F5D64:  VMOV.F32        S18, #1.0
2F5D68:  CMP             R0, #0
2F5D6A:  IT NE
2F5D6C:  ADDNE.W         R5, R0, #0x30 ; '0'
2F5D70:  VLDR            S4, [R5]
2F5D74:  VLDR            S6, [R5,#4]
2F5D78:  VSUB.F32        S2, S2, S4
2F5D7C:  VSUB.F32        S0, S0, S6
2F5D80:  VMOV            R0, S2; this
2F5D84:  VMOV            R1, S0; float
2F5D88:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F5D8C:  VMOV            R2, S18; float
2F5D90:  VMOV            R1, S16; float
2F5D94:  VMOV            S16, R0
2F5D98:  MOV             R0, R2; this
2F5D9A:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F5D9E:  VMOV            S0, R0
2F5DA2:  VLDR            S2, =-3.1416
2F5DA6:  VSUB.F32        S0, S16, S0
2F5DAA:  VCMPE.F32       S0, S2
2F5DAE:  VMRS            APSR_nzcv, FPSCR
2F5DB2:  BGE             loc_2F5DC6
2F5DB4:  VLDR            S4, =6.2832
2F5DB8:  VADD.F32        S0, S0, S4
2F5DBC:  VCMPE.F32       S0, S2
2F5DC0:  VMRS            APSR_nzcv, FPSCR
2F5DC4:  BLT             loc_2F5DB8
2F5DC6:  VLDR            S2, =3.1416
2F5DCA:  VCMPE.F32       S0, S2
2F5DCE:  VMRS            APSR_nzcv, FPSCR
2F5DD2:  BLE             loc_2F5DE6
2F5DD4:  VLDR            S4, =-6.2832
2F5DD8:  VADD.F32        S0, S0, S4
2F5DDC:  VCMPE.F32       S0, S2
2F5DE0:  VMRS            APSR_nzcv, FPSCR
2F5DE4:  BGT             loc_2F5DD8
2F5DE6:  VLDR            S2, [R4,#0x48]
2F5DEA:  VLDR            S4, [R4,#0x4C]
2F5DEE:  VMUL.F32        S2, S2, S2
2F5DF2:  LDRB.W          R1, [R4,#0x3D4]
2F5DF6:  VMUL.F32        S4, S4, S4
2F5DFA:  VLDR            S6, =-60.0
2F5DFE:  LDR             R0, [R7,#arg_0]
2F5E00:  VADD.F32        S2, S2, S4
2F5E04:  VLDR            S4, =0.0
2F5E08:  VADD.F32        S2, S2, S4
2F5E0C:  VMOV            S4, R1
2F5E10:  VCVT.F32.U32    S4, S4
2F5E14:  VSQRT.F32       S2, S2
2F5E18:  VMUL.F32        S2, S2, S6
2F5E1C:  VADD.F32        S2, S4, S2
2F5E20:  VCMPE.F32       S2, #0.0
2F5E24:  VMRS            APSR_nzcv, FPSCR
2F5E28:  BLE             loc_2F5E42
2F5E2A:  VDIV.F32        S2, S2, S4
2F5E2E:  VMOV.F32        S4, #0.25
2F5E32:  VCMPE.F32       S2, S4
2F5E36:  VMRS            APSR_nzcv, FPSCR
2F5E3A:  BLE             loc_2F5E5A
2F5E3C:  VMOV.F32        S2, #1.0
2F5E40:  B               loc_2F5E6E
2F5E42:  VMOV.F32        S4, #-5.0
2F5E46:  VCMPE.F32       S2, S4
2F5E4A:  VMRS            APSR_nzcv, FPSCR
2F5E4E:  ITE LT
2F5E50:  VLDRLT          S2, =-0.2
2F5E54:  VLDRGE          S2, =-0.1
2F5E58:  B               loc_2F5E6E
2F5E5A:  VSUB.F32        S2, S4, S2
2F5E5E:  VMOV.F32        S6, #-4.0
2F5E62:  VMOV.F32        S4, #1.0
2F5E66:  VMUL.F32        S2, S2, S6
2F5E6A:  VADD.F32        S2, S2, S4
2F5E6E:  MOVS            R1, #0
2F5E70:  VSTR            S2, [R6]
2F5E74:  STR.W           R1, [R8]
2F5E78:  VSTR            S0, [R9]
2F5E7C:  STRB            R1, [R0]
2F5E7E:  ADD             SP, SP, #0x18
2F5E80:  VPOP            {D8-D9}
2F5E84:  POP.W           {R8,R9,R11}
2F5E88:  POP             {R4-R7,PC}
