; =========================================================
; Game Engine Function: _ZN13FxEmitterBP_c14UpdateParticleEfP14FxEmitterPrt_c
; Address            : 0x366DAC - 0x367076
; =========================================================

366DAC:  PUSH            {R4-R7,LR}
366DAE:  ADD             R7, SP, #0xC
366DB0:  PUSH.W          {R11}
366DB4:  VPUSH           {D8}
366DB8:  SUB             SP, SP, #0x40; float
366DBA:  MOV             R4, R2
366DBC:  VLDR            S2, =1000.0
366DC0:  LDR.W           R12, [R4,#0x28]
366DC4:  LDRH.W          R2, [R12,#0x64]
366DC8:  VMOV            S0, R2
366DCC:  VCVT.F32.U32    S0, S0
366DD0:  VDIV.F32        S0, S0, S2
366DD4:  VMOV            S2, R1
366DD8:  VMUL.F32        S16, S0, S2
366DDC:  VLDR            S2, [R4,#0xC]
366DE0:  VLDR            S0, [R4,#8]
366DE4:  VADD.F32        S2, S2, S16
366DE8:  VCMPE.F32       S2, S0
366DEC:  VSTR            S2, [R4,#0xC]
366DF0:  VMRS            APSR_nzcv, FPSCR
366DF4:  BGE             loc_366EEA
366DF6:  VDIV.F32        S0, S2, S0
366DFA:  ADDS            R0, #0x2C ; ','; int
366DFC:  MOVS            R6, #0
366DFE:  VLDR            S8, [R4,#0x1C]
366E02:  VMOV            R3, S16; int
366E06:  VLDR            S10, [R4,#0x20]
366E0A:  VMOV            R2, S0; int
366E0E:  VLDR            S12, [R4,#0x24]
366E12:  VMUL.F32        S8, S16, S8
366E16:  VMUL.F32        S10, S16, S10
366E1A:  VLDR            S2, [R4,#0x10]
366E1E:  VMUL.F32        S12, S16, S12
366E22:  VLDR            S4, [R4,#0x14]
366E26:  VLDR            S6, [R4,#0x18]
366E2A:  VADD.F32        S2, S2, S8
366E2E:  VADD.F32        S4, S4, S10
366E32:  VADD.F32        S6, S6, S12
366E36:  VSTR            S2, [R4,#0x10]
366E3A:  VSTR            S4, [R4,#0x14]
366E3E:  VSTR            S6, [R4,#0x18]
366E42:  VLDR            D16, [R4,#0x10]
366E46:  LDR             R1, [R4,#0x18]
366E48:  STR             R1, [SP,#0x58+var_40]
366E4A:  VSTR            D16, [SP,#0x58+var_48]
366E4E:  VLDR            D16, [R4,#0x1C]
366E52:  LDR             R1, [R4,#0x24]
366E54:  STR             R1, [SP,#0x58+var_34]
366E56:  VSTR            D16, [SP,#0x58+var_3C]
366E5A:  LDR.W           R5, [R12,#8]
366E5E:  LDR.W           R1, [R12,#0x58]; int
366E62:  VLDR            S0, [R5,#0xC]
366E66:  ADD             R5, SP, #0x58+var_48
366E68:  STRD.W          R6, R5, [SP,#0x58+var_54]; CVector *
366E6C:  VSTR            S0, [SP,#0x58+var_58]
366E70:  BLX             j__ZN15FxInfoManager_c19ProcessMovementInfoEffffhP14MovementInfo_t; FxInfoManager_c::ProcessMovementInfo(float,float,float,float,uchar,MovementInfo_t *)
366E74:  VLDR            D16, [SP,#0x58+var_48]
366E78:  LDR             R0, [SP,#0x58+var_40]
366E7A:  STR             R0, [R4,#0x18]
366E7C:  VSTR            D16, [R4,#0x10]
366E80:  VLDR            D16, [SP,#0x58+var_3C]
366E84:  LDR             R0, [SP,#0x58+var_34]
366E86:  STR             R0, [R4,#0x24]
366E88:  VSTR            D16, [R4,#0x1C]
366E8C:  LDRB.W          R0, [SP,#0x58+var_20]
366E90:  CMP             R0, #0
366E92:  ITT EQ
366E94:  LDRBEQ.W        R0, [SP,#0x58+var_1F]
366E98:  CMPEQ           R0, #0
366E9A:  BEQ             loc_366EEE
366E9C:  ADD.W           R2, R4, #0x10
366EA0:  MOVS            R3, #(stderr+1)
366EA2:  LDM             R2, {R0-R2}; float
366EA4:  STRD.W          R3, R6, [SP,#0x58+var_58]; float *
366EA8:  ADD             R3, SP, #0x58+var_4C; float
366EAA:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
366EAE:  CMP             R0, #1
366EB0:  BNE             loc_366ECE
366EB2:  LDRB.W          R1, [SP,#0x58+var_20]
366EB6:  CBZ             R1, loc_366ECE
366EB8:  VLDR            S0, [SP,#0x58+var_4C]
366EBC:  VLDR            S2, [R4,#0x18]
366EC0:  VCMPE.F32       S2, S0
366EC4:  VMRS            APSR_nzcv, FPSCR
366EC8:  IT LT
366ECA:  VSTRLT          S0, [R4,#0x18]
366ECE:  LDRB.W          R1, [SP,#0x58+var_1F]
366ED2:  CBZ             R1, loc_366EEE
366ED4:  CMP             R0, #1
366ED6:  BNE             loc_366EEA
366ED8:  VLDR            S0, [SP,#0x58+var_4C]
366EDC:  VLDR            S2, [R4,#0x18]
366EE0:  VCMPE.F32       S2, S0
366EE4:  VMRS            APSR_nzcv, FPSCR
366EE8:  BLE             loc_366EEE
366EEA:  MOVS            R0, #1
366EEC:  B               loc_36700C
366EEE:  VLDR            S0, [SP,#0x58+var_30]
366EF2:  VCMPE.F32       S0, #0.0
366EF6:  VMRS            APSR_nzcv, FPSCR
366EFA:  BGT             loc_366F0A
366EFC:  VLDR            S2, [SP,#0x58+var_2C]
366F00:  VCMPE.F32       S2, #0.0
366F04:  VMRS            APSR_nzcv, FPSCR
366F08:  BLE             loc_366FB8
366F0A:  VLDR            S2, [SP,#0x58+var_28]
366F0E:  VCMPE.F32       S2, #0.0
366F12:  VMRS            APSR_nzcv, FPSCR
366F16:  BGT             loc_366F26
366F18:  VLDR            S4, [SP,#0x58+var_24]
366F1C:  VCMPE.F32       S4, #0.0
366F20:  VMRS            APSR_nzcv, FPSCR
366F24:  BLE             loc_366FA8
366F26:  LDRSB.W         R0, [R4,#0x32]
366F2A:  CMP             R0, #0
366F2C:  UXTB            R1, R0
366F2E:  VMOV            S4, R1
366F32:  VCVT.F32.U32    S4, S4
366F36:  BLT             loc_366F6A
366F38:  VLDR            S2, [SP,#0x58+var_2C]
366F3C:  VLDR            S6, =0.0078125
366F40:  VSUB.F32        S2, S2, S0
366F44:  LDRB.W          R0, [R4,#0x31]
366F48:  VMUL.F32        S4, S4, S6
366F4C:  VMUL.F32        S2, S4, S2
366F50:  VADD.F32        S0, S0, S2
366F54:  VMOV            S2, R0
366F58:  VCVT.F32.U32    S2, S2
366F5C:  VMUL.F32        S0, S16, S0
366F60:  VMUL.F32        S0, S0, S2
366F64:  VLDR            S2, =255.0
366F68:  B               loc_366FA2
366F6A:  VLDR            S0, =-128.0
366F6E:  VLDR            S6, =0.0078125
366F72:  VADD.F32        S0, S4, S0
366F76:  VLDR            S4, [SP,#0x58+var_24]
366F7A:  LDRB.W          R0, [R4,#0x31]
366F7E:  VSUB.F32        S4, S4, S2
366F82:  VMUL.F32        S0, S0, S6
366F86:  VMUL.F32        S0, S0, S4
366F8A:  VADD.F32        S0, S2, S0
366F8E:  VMOV            S2, R0
366F92:  VCVT.F32.U32    S2, S2
366F96:  VMUL.F32        S0, S16, S0
366F9A:  VMUL.F32        S0, S0, S2
366F9E:  VLDR            S2, =-255.0
366FA2:  VDIV.F32        S0, S0, S2
366FA6:  B               loc_366FFE
366FA8:  VCMPE.F32       S0, #0.0
366FAC:  VMRS            APSR_nzcv, FPSCR
366FB0:  BLE             loc_366FB8
366FB2:  VLDR            S2, [SP,#0x58+var_2C]
366FB6:  B               loc_366FC6
366FB8:  VLDR            S2, [SP,#0x58+var_2C]
366FBC:  VCMPE.F32       S2, #0.0
366FC0:  VMRS            APSR_nzcv, FPSCR
366FC4:  BLE             loc_367018
366FC6:  LDRB.W          R0, [R4,#0x32]
366FCA:  VSUB.F32        S2, S2, S0
366FCE:  VLDR            S6, =255.0
366FD2:  VMOV            S4, R0
366FD6:  VCVT.F32.U32    S4, S4
366FDA:  LDRB.W          R0, [R4,#0x31]
366FDE:  VDIV.F32        S4, S4, S6
366FE2:  VMUL.F32        S2, S4, S2
366FE6:  VADD.F32        S0, S0, S2
366FEA:  VMOV            S2, R0
366FEE:  VCVT.F32.U32    S2, S2
366FF2:  VMUL.F32        S0, S16, S0
366FF6:  VMUL.F32        S0, S0, S2
366FFA:  VDIV.F32        S0, S0, S6
366FFE:  VLDR            S2, [R4,#0x38]
367002:  VADD.F32        S0, S2, S0
367006:  VSTR            S0, [R4,#0x38]
36700A:  MOVS            R0, #0
36700C:  ADD             SP, SP, #0x40 ; '@'
36700E:  VPOP            {D8}
367012:  POP.W           {R11}
367016:  POP             {R4-R7,PC}
367018:  VLDR            S0, [SP,#0x58+var_28]
36701C:  VLDR            S2, [SP,#0x58+var_24]
367020:  VCMPE.F32       S0, #0.0
367024:  VMRS            APSR_nzcv, FPSCR
367028:  ITT LE
36702A:  VCMPELE.F32     S2, #0.0
36702E:  VMRSLE          APSR_nzcv, FPSCR
367032:  BLE             loc_36700A
367034:  LDRB.W          R0, [R4,#0x32]
367038:  VSUB.F32        S2, S2, S0
36703C:  VLDR            S6, =255.0
367040:  VMOV            S4, R0
367044:  VCVT.F32.U32    S4, S4
367048:  LDRB.W          R0, [R4,#0x31]
36704C:  VDIV.F32        S4, S4, S6
367050:  VMUL.F32        S2, S4, S2
367054:  VADD.F32        S0, S0, S2
367058:  VMOV            S2, R0
36705C:  VCVT.F32.U32    S2, S2
367060:  VMUL.F32        S0, S16, S0
367064:  VMUL.F32        S0, S0, S2
367068:  VLDR            S2, [R4,#0x38]
36706C:  VDIV.F32        S0, S0, S6
367070:  VSUB.F32        S0, S2, S0
367074:  B               loc_367006
