; =========================================================
; Game Engine Function: _ZN9CPhysical14ApplyCollisionEPS_R9CColPointRfS3_
; Address            : 0x401E30 - 0x4039C0
; =========================================================

401E30:  PUSH            {R4-R7,LR}
401E32:  ADD             R7, SP, #0xC
401E34:  PUSH.W          {R8-R11}
401E38:  SUB             SP, SP, #4
401E3A:  VPUSH           {D8-D15}
401E3E:  SUB             SP, SP, #0x80; unsigned __int8
401E40:  MOV             R9, R1
401E42:  MOV             R10, R0
401E44:  LDR.W           R0, [R9,#0x44]
401E48:  MOV             R8, R3
401E4A:  LDR.W           R1, [R10,#0x44]
401E4E:  MOV             R11, R2
401E50:  TST.W           R0, #0x10
401E54:  BEQ             loc_401E7A
401E56:  ANDS.W          R2, R1, #0x20 ; ' '
401E5A:  BNE             loc_401E7A
401E5C:  VMOV.F32        S16, #10.0
401E60:  LDRB.W          R2, [R9,#0x3A]
401E64:  MOVS            R5, #0
401E66:  AND.W           R2, R2, #7
401E6A:  CMP             R2, #3
401E6C:  BNE             loc_401E8E
401E6E:  LDR.W           R2, [R9,#0x56C]
401E72:  CMP             R2, R10
401E74:  IT EQ
401E76:  MOVEQ           R5, #1
401E78:  B               loc_401E8E
401E7A:  VMOV.F32        S0, #1.0
401E7E:  LSLS            R2, R1, #0x1F
401E80:  VMOV.F32        S16, #2.0
401E84:  MOV.W           R5, #0
401E88:  IT EQ
401E8A:  VMOVEQ.F32      S16, S0
401E8E:  LDRB.W          R2, [R10,#0x3A]
401E92:  LSLS            R1, R1, #0x1B
401E94:  AND.W           R2, R2, #7
401E98:  BMI             loc_401EB6
401E9A:  CMP             R2, #2
401E9C:  BNE             loc_401F1A
401E9E:  LDR.W           R1, [R10,#0x4D4]
401EA2:  CBZ             R1, loc_401F1A
401EA4:  VLDR            S0, [R10,#0x90]
401EA8:  VLDR            S2, [R1,#0x90]
401EAC:  VADD.F32        S2, S2, S0
401EB0:  VDIV.F32        S18, S2, S0
401EB4:  B               loc_401F2A
401EB6:  CMP             R2, #3
401EB8:  BNE             loc_401EE4
401EBA:  MOV             R0, R10; this
401EBC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
401EC0:  CMP             R0, #1
401EC2:  BNE             loc_401EE4
401EC4:  LDRB.W          R0, [R9,#0x3A]
401EC8:  AND.W           R1, R0, #7
401ECC:  CMP             R1, #2
401ECE:  BNE             loc_401EE4
401ED0:  AND.W           R0, R0, #0xF0
401ED4:  CMP             R0, #0x20 ; ' '
401ED6:  BEQ.W           loc_40355E
401EDA:  LDRB.W          R0, [R10,#0x1D]
401EDE:  LSLS            R0, R0, #0x1B
401EE0:  BMI.W           loc_40355E
401EE4:  VMOV.F32        S0, #10.0
401EE8:  LDRB.W          R0, [R9,#0x44]
401EEC:  VMOV.F32        S18, #1.0
401EF0:  LSLS            R0, R0, #0x1A
401EF2:  IT PL
401EF4:  VMOVPL.F32      S18, S0
401EF8:  LDRB.W          R0, [R10,#0x3A]
401EFC:  MOVS            R4, #0
401EFE:  AND.W           R0, R0, #7
401F02:  CMP             R0, #3
401F04:  BNE             loc_401F2C
401F06:  VMOV.F32        S0, #10.0
401F0A:  LDR.W           R0, [R10,#0x56C]
401F0E:  CMP             R0, R9
401F10:  ITT EQ
401F12:  VMOVEQ.F32      S18, S0
401F16:  MOVEQ           R4, #1
401F18:  B               loc_401F2C
401F1A:  VMOV.F32        S0, #1.0
401F1E:  LSLS            R0, R0, #0x1F
401F20:  VMOV.F32        S18, #2.0
401F24:  IT EQ
401F26:  VMOVEQ.F32      S18, S0
401F2A:  MOVS            R4, #0
401F2C:  LDR.W           R0, [R9,#0x44]
401F30:  AND.W           R1, R0, #0xC
401F34:  CMP             R1, #4
401F36:  BEQ             loc_401F48
401F38:  LSLS            R0, R0, #0x19
401F3A:  MOV.W           R0, #0
401F3E:  STR             R0, [SP,#0xE0+var_AC]
401F40:  BMI             loc_401F4E
401F42:  LDR.W           R0, [R9,#0x100]
401F46:  CBZ             R0, loc_401F4E
401F48:  MOVS            R4, #0
401F4A:  MOVS            R0, #1
401F4C:  STR             R0, [SP,#0xE0+var_AC]
401F4E:  LDR.W           R1, [R10,#0x14]; CVector *
401F52:  ADD.W           R2, R10, #0xA8
401F56:  ADD             R0, SP, #0xE0+var_84; CMatrix *
401F58:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
401F5C:  LDR.W           R1, [R9,#0x14]; CVector *
401F60:  ADD.W           R2, R9, #0xA8
401F64:  ADD             R0, SP, #0xE0+var_90; CMatrix *
401F66:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
401F6A:  LDRB.W          R0, [R10,#0x44]
401F6E:  LSLS            R0, R0, #0x19
401F70:  ITTT MI
401F72:  MOVMI           R0, #0
401F74:  STRDMI.W        R0, R0, [SP,#0xE0+var_84]
401F78:  STRMI           R0, [SP,#0xE0+var_7C]
401F7A:  LDRB.W          R0, [R9,#0x44]
401F7E:  LSLS            R0, R0, #0x19
401F80:  ITTT MI
401F82:  MOVMI           R0, #0
401F84:  STRDMI.W        R0, R0, [SP,#0xE0+var_90]
401F88:  STRMI           R0, [SP,#0xE0+var_88]
401F8A:  LDRB.W          R0, [R9,#0x3A]
401F8E:  LDRB.W          R2, [R10,#0x3A]
401F92:  AND.W           R1, R0, #7
401F96:  AND.W           R0, R2, #7
401F9A:  CMP             R0, #2
401F9C:  IT EQ
401F9E:  CMPEQ           R1, #4
401FA0:  BNE             loc_401FAA
401FA2:  LDRB.W          R2, [R9,#0x145]
401FA6:  LSLS            R2, R2, #0x1F
401FA8:  BNE             loc_401FBA
401FAA:  CMP             R1, #2
401FAC:  IT EQ
401FAE:  CMPEQ           R0, #4
401FB0:  BNE             loc_401FC0
401FB2:  LDRB.W          R0, [R10,#0x145]
401FB6:  LSLS            R0, R0, #0x1F
401FB8:  BEQ             loc_401FC0
401FBA:  MOVS            R0, #0
401FBC:  STR.W           R0, [R11,#0x18]
401FC0:  MOV             R6, R9
401FC2:  MOVS            R1, #0
401FC4:  LDR.W           R0, [R6,#0x1C]!
401FC8:  LDR             R3, [R7,#arg_0]
401FCA:  TST.W           R0, #0x40004
401FCE:  IT EQ
401FD0:  MOVEQ           R1, #1
401FD2:  LDR             R0, [SP,#0xE0+var_AC]
401FD4:  ORRS            R0, R1
401FD6:  BEQ.W           loc_4020DE
401FDA:  STR             R6, [SP,#0xE0+var_B0]
401FDC:  LDR.W           R0, [R9,#0x44]
401FE0:  LDR.W           R1, [R10,#0x44]
401FE4:  AND.W           R6, R0, #0x10
401FE8:  TST.W           R1, #0x10
401FEC:  BNE.W           loc_4023A0
401FF0:  STR.W           R8, [SP,#0xE0+var_B4]
401FF4:  CMP             R6, #0
401FF6:  LDR.W           R0, [R10,#0x14]
401FFA:  VLDR            S0, [R11]
401FFE:  VLDR            S4, [R11,#4]
402002:  VLDR            S6, [R0,#0x30]
402006:  VLDR            S8, [R0,#0x34]
40200A:  VLDR            S2, [R11,#8]
40200E:  VSUB.F32        S6, S0, S6
402012:  VLDR            S10, [R0,#0x38]
402016:  VSUB.F32        S8, S4, S8
40201A:  VSUB.F32        S10, S2, S10
40201E:  VMOV            R2, S6
402022:  VMOV            R3, S8
402026:  VSTR            S8, [SP,#0xE0+var_68]
40202A:  VSTR            S6, [SP,#0xE0+var_6C]
40202E:  VMOV            R0, S10
402032:  VSTR            S10, [SP,#0xE0+var_64]
402036:  BNE.W           loc_40262C
40203A:  STR.W           R11, [SP,#0xE0+var_AC]
40203E:  LDR.W           R1, [R9,#0x14]
402042:  VLDR            S6, [R1,#0x30]
402046:  VLDR            S8, [R1,#0x34]
40204A:  VLDR            S10, [R1,#0x38]
40204E:  VSUB.F32        S0, S0, S6
402052:  VSUB.F32        S4, S4, S8
402056:  STR             R0, [SP,#0xE0+var_E0]
402058:  VSUB.F32        S2, S2, S10
40205C:  ADD             R0, SP, #0xE0+var_9C
40205E:  MOV             R1, R10
402060:  VSTR            S4, [SP,#0xE0+var_74]
402064:  VSTR            S0, [SP,#0xE0+var_78]
402068:  VSTR            S2, [SP,#0xE0+var_70]
40206C:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
402070:  LDRD.W          R11, R5, [SP,#0xE0+var_9C]
402074:  LDRB.W          R0, [R10,#0x47]
402078:  LDR             R4, [SP,#0xE0+var_94]
40207A:  LSLS            R0, R0, #0x1D
40207C:  BPL.W           loc_4027DC
402080:  LDRB.W          R0, [R10,#0x3A]
402084:  AND.W           R0, R0, #7
402088:  CMP             R0, #2
40208A:  BNE.W           loc_4027DC
40208E:  LDR             R0, [SP,#0xE0+var_AC]
402090:  LDRB.W          R0, [R0,#0x20]
402094:  CMP             R0, #0x41 ; 'A'
402096:  BNE.W           loc_4027DC
40209A:  LDR.W           R0, [R10]
40209E:  ADD             R2, SP, #0xE0+var_6C
4020A0:  MOV             R1, R10
4020A2:  LDR.W           R3, [R0,#0xC8]
4020A6:  ADD             R0, SP, #0xE0+var_9C
4020A8:  BLX             R3
4020AA:  VMOV            S2, R4
4020AE:  VLDR            S8, [SP,#0xE0+var_94]
4020B2:  VLDR            S4, [SP,#0xE0+var_9C]
4020B6:  VMOV            S10, R11
4020BA:  VADD.F32        S2, S8, S2
4020BE:  VLDR            S6, [SP,#0xE0+var_98]
4020C2:  VMOV            S0, R5
4020C6:  VADD.F32        S4, S4, S10
4020CA:  VADD.F32        S0, S6, S0
4020CE:  VMOV            R4, S2
4020D2:  VMOV            R11, S4
4020D6:  VMOV            R0, S0
4020DA:  STR             R0, [SP,#0xE0+var_B8]
4020DC:  B               loc_4027DE
4020DE:  STRD.W          R5, R4, [SP,#0xE0+var_BC]
4020E2:  LDRB.W          R0, [R10,#0x44]
4020E6:  LSLS            R0, R0, #0x1B
4020E8:  BMI.W           loc_40252C
4020EC:  STRD.W          R8, R6, [SP,#0xE0+var_B4]
4020F0:  MOV             R1, R10
4020F2:  LDR.W           R0, [R10,#0x14]
4020F6:  VLDR            S0, [R11]
4020FA:  VLDR            S2, [R11,#4]
4020FE:  VLDR            S6, [R0,#0x30]
402102:  VLDR            S8, [R0,#0x34]
402106:  VSUB.F32        S0, S0, S6
40210A:  VLDR            S10, [R0,#0x38]
40210E:  VSUB.F32        S2, S2, S8
402112:  VLDR            S4, [R11,#8]
402116:  ADD             R0, SP, #0xE0+var_78
402118:  VSUB.F32        S4, S4, S10
40211C:  VMOV            R2, S0
402120:  VMOV            R3, S2
402124:  VSTR            S2, [SP,#0xE0+var_68]
402128:  VSTR            S0, [SP,#0xE0+var_6C]
40212C:  VSTR            S4, [SP,#0xE0+var_64]
402130:  VSTR            S4, [SP,#0xE0+var_E0]
402134:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
402138:  LDRD.W          R6, R4, [SP,#0xE0+var_78]
40213C:  LDRB.W          R0, [R10,#0x47]
402140:  LDR             R5, [SP,#0xE0+var_70]
402142:  LSLS            R0, R0, #0x1D
402144:  BPL             loc_40219A
402146:  LDRB.W          R0, [R10,#0x3A]
40214A:  AND.W           R0, R0, #7
40214E:  CMP             R0, #2
402150:  ITT EQ
402152:  LDRBEQ.W        R0, [R11,#0x20]
402156:  CMPEQ           R0, #0x41 ; 'A'
402158:  BNE             loc_40219A
40215A:  LDR.W           R0, [R10]
40215E:  ADD             R2, SP, #0xE0+var_6C
402160:  MOV             R1, R10
402162:  LDR.W           R3, [R0,#0xC8]
402166:  ADD             R0, SP, #0xE0+var_78
402168:  BLX             R3
40216A:  VMOV            S0, R4
40216E:  VLDR            S6, [SP,#0xE0+var_74]
402172:  VMOV            S2, R5
402176:  VLDR            S8, [SP,#0xE0+var_70]
40217A:  VLDR            S4, [SP,#0xE0+var_78]
40217E:  VMOV            S10, R6
402182:  VADD.F32        S2, S8, S2
402186:  VADD.F32        S0, S6, S0
40218A:  VADD.F32        S4, S4, S10
40218E:  VMOV            R5, S2
402192:  VMOV            R4, S0
402196:  VMOV            R6, S4
40219A:  VMOV            S8, R6
40219E:  VLDR            S0, [R11,#0x10]
4021A2:  VLDR            S2, [R11,#0x14]
4021A6:  VMOV            S6, R4
4021AA:  VMUL.F32        S0, S0, S8
4021AE:  VLDR            S4, [R11,#0x18]
4021B2:  VMUL.F32        S2, S2, S6
4021B6:  LDR.W           R8, [SP,#0xE0+var_B4]
4021BA:  VMOV            S6, R5
4021BE:  LDR             R5, [R7,#arg_0]
4021C0:  LDR             R6, [SP,#0xE0+var_B0]
4021C2:  VMUL.F32        S4, S4, S6
4021C6:  MOV             R3, R5
4021C8:  VADD.F32        S0, S0, S2
4021CC:  VADD.F32        S22, S0, S4
4021D0:  VCMPE.F32       S22, #0.0
4021D4:  VMRS            APSR_nzcv, FPSCR
4021D8:  BGE.W           loc_403448
4021DC:  LDRB.W          R0, [R9,#0x3A]
4021E0:  AND.W           R0, R0, #7
4021E4:  CMP             R0, #4
4021E6:  BNE.W           loc_4033BE
4021EA:  VLDR            S0, [SP,#0xE0+var_84]
4021EE:  ADD.W           R4, R11, #0x10
4021F2:  VLDR            S6, [SP,#0xE0+var_6C]
4021F6:  ADD             R0, SP, #0xE0+var_78; CVector *
4021F8:  VLDR            S2, [SP,#0xE0+var_80]
4021FC:  ADD             R1, SP, #0xE0+var_9C; CVector *
4021FE:  VLDR            S8, [SP,#0xE0+var_68]
402202:  VSUB.F32        S0, S6, S0
402206:  VLDR            S4, [SP,#0xE0+var_7C]
40220A:  MOV             R2, R4
40220C:  VLDR            S10, [SP,#0xE0+var_64]
402210:  VSUB.F32        S2, S8, S2
402214:  VLDR            S20, [R10,#0x90]
402218:  MOV             R5, R3
40221A:  VSUB.F32        S4, S10, S4
40221E:  VSTR            S0, [SP,#0xE0+var_9C]
402222:  VSTR            S2, [SP,#0xE0+var_98]
402226:  VSTR            S4, [SP,#0xE0+var_94]
40222A:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
40222E:  VLDR            S0, [SP,#0xE0+var_78]
402232:  VLDR            S2, [SP,#0xE0+var_74]
402236:  VMUL.F32        S0, S0, S0
40223A:  VLDR            S4, [SP,#0xE0+var_70]
40223E:  VMUL.F32        S2, S2, S2
402242:  LDRB.W          R0, [R10,#0x1D]
402246:  VMUL.F32        S4, S4, S4
40224A:  LSLS            R0, R0, #0x1B
40224C:  MOV             R0, R5
40224E:  VADD.F32        S2, S0, S2
402252:  VMOV.F32        S0, #1.0
402256:  VADD.F32        S2, S2, S4
40225A:  VLDR            S4, [R10,#0x94]
40225E:  VDIV.F32        S6, S0, S20
402262:  VDIV.F32        S2, S2, S4
402266:  VADD.F32        S2, S6, S2
40226A:  VDIV.F32        S20, S0, S2
40226E:  ITTTT PL
402270:  VMOVPL.F32      S2, #1.0
402274:  VLDRPL          S4, [R10,#0xA0]
402278:  VADDPL.F32      S2, S4, S2
40227C:  VMULPL.F32      S22, S22, S2
402280:  VNMUL.F32       S2, S20, S22
402284:  VSTR            S2, [R8]
402288:  VSTR            S2, [R0]
40228C:  LDRB.W          R0, [R10,#0x3A]
402290:  AND.W           R0, R0, #7
402294:  CMP             R0, #2
402296:  BNE             loc_4022AC
402298:  VMOV.F32        S2, #3.0
40229C:  LDR.W           R0, [R10,#0x5A4]
4022A0:  VMOV.F32        S0, #1.0
4022A4:  CMP             R0, #9
4022A6:  IT EQ
4022A8:  VMOVEQ.F32      S0, S2
4022AC:  LDRB.W          R0, [R9,#0x148]
4022B0:  CMP             R0, #0
4022B2:  BEQ.W           loc_4034B2
4022B6:  VLDR            S2, [R8]
4022BA:  VMOV.F32        S4, #20.0
4022BE:  VMUL.F32        S0, S0, S2
4022C2:  VCMPE.F32       S0, S4
4022C6:  VMRS            APSR_nzcv, FPSCR
4022CA:  BLE.W           loc_4034B2
4022CE:  VMOV            R1, S0
4022D2:  MOVS            R0, #0x37 ; '7'
4022D4:  STRD.W          R10, R0, [SP,#0xE0+var_E0]
4022D8:  MOV             R0, R9
4022DA:  MOV             R2, R11
4022DC:  MOV             R3, R4
4022DE:  BLX             j__ZN7CObject12ObjectDamageEfP7CVectorS1_P7CEntity11eWeaponType; CObject::ObjectDamage(float,CVector *,CVector *,CEntity *,eWeaponType)
4022E2:  LDRB            R0, [R6]
4022E4:  LSLS            R0, R0, #0x1F
4022E6:  BNE.W           loc_4034B2
4022EA:  LDRB.W          R0, [R10,#0x44]
4022EE:  LSLS            R0, R0, #0x1D
4022F0:  BMI             loc_402356
4022F2:  LDR.W           R0, [R9,#0x164]
4022F6:  VMOV.F32        S2, #1.0
4022FA:  VLDR            S4, [R11,#0x14]
4022FE:  MOV.W           R12, #1
402302:  VLDR            S8, [R8]
402306:  VLDR            S0, [R0,#0x18]
40230A:  VLDR            S6, [R11,#0x18]
40230E:  VMUL.F32        S4, S8, S4
402312:  VADD.F32        S0, S0, S0
402316:  VMUL.F32        S6, S8, S6
40231A:  VDIV.F32        S0, S2, S0
40231E:  VLDR            S2, [R11,#0x10]
402322:  VMUL.F32        S4, S4, S0
402326:  LDRD.W          R0, R6, [SP,#0xE0+var_6C]
40232A:  VMUL.F32        S2, S8, S2
40232E:  LDR             R5, [SP,#0xE0+var_64]
402330:  STRD.W          R0, R6, [SP,#0xE0+var_E0]
402334:  MOV             R0, R10
402336:  STRD.W          R5, R12, [SP,#0xE0+var_D8]
40233A:  LDR.W           R8, [SP,#0xE0+var_B4]
40233E:  VMOV            R2, S4
402342:  VMUL.F32        S2, S2, S0
402346:  VMUL.F32        S0, S6, S0
40234A:  VMOV            R1, S2
40234E:  VMOV            R3, S0
402352:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
402356:  VLDR            S0, [R8]
40235A:  MOVS            R6, #0
40235C:  LDR.W           R1, [R9,#0x164]
402360:  VDIV.F32        S0, S0, S20
402364:  LDR.W           R0, =(AudioEngine_ptr - 0x402370)
402368:  LDRB.W          R3, [R11,#0x20]; unsigned __int8
40236C:  ADD             R0, PC; AudioEngine_ptr
40236E:  LDRB.W          R2, [R11,#0x23]
402372:  LDR             R0, [R0]; AudioEngine ; this
402374:  VADD.F32        S0, S0, S0
402378:  VLDR            S2, [R1,#0x18]
40237C:  MOV.W           R1, #0x3F800000
402380:  STRD.W          R1, R6, [SP,#0xE0+var_D0]; float
402384:  MOV             R1, R10; CEntity *
402386:  STR             R6, [SP,#0xE0+var_C8]; unsigned __int8
402388:  STRD.W          R2, R11, [SP,#0xE0+var_E0]; unsigned __int8
40238C:  MOV             R2, R9; CEntity *
40238E:  STR             R4, [SP,#0xE0+var_D8]; CVector *
402390:  VMUL.F32        S0, S0, S2
402394:  VSTR            S0, [SP,#0xE0+var_D4]
402398:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
40239C:  B.W             loc_403850
4023A0:  CMP             R6, #0
4023A2:  BNE.W           loc_402774
4023A6:  STRD.W          R4, R8, [SP,#0xE0+var_B8]
4023AA:  MOV             R1, R9
4023AC:  LDR.W           R0, [R9,#0x14]
4023B0:  MOV             R4, R11
4023B2:  VLDR            S0, [R11]
4023B6:  VLDR            S2, [R11,#4]
4023BA:  VLDR            S6, [R0,#0x30]
4023BE:  VLDR            S8, [R0,#0x34]
4023C2:  VSUB.F32        S0, S0, S6
4023C6:  VLDR            S10, [R0,#0x38]
4023CA:  VSUB.F32        S2, S2, S8
4023CE:  VLDR            S4, [R11,#8]
4023D2:  ADD             R0, SP, #0xE0+var_9C
4023D4:  VSUB.F32        S4, S4, S10
4023D8:  VMOV            R2, S0
4023DC:  VMOV            R3, S2
4023E0:  VSTR            S2, [SP,#0xE0+var_74]
4023E4:  VSTR            S0, [SP,#0xE0+var_78]
4023E8:  VSTR            S4, [SP,#0xE0+var_70]
4023EC:  VSTR            S4, [SP,#0xE0+var_E0]
4023F0:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
4023F4:  LDRD.W          R11, R8, [SP,#0xE0+var_9C]
4023F8:  LDR.W           R0, [R9,#0x44]
4023FC:  LDR             R6, [SP,#0xE0+var_94]
4023FE:  TST.W           R0, #0x4000000
402402:  BEQ             loc_40245C
402404:  LDRB.W          R1, [R9,#0x3A]
402408:  AND.W           R1, R1, #7
40240C:  CMP             R1, #2
40240E:  ITT EQ
402410:  LDRBEQ.W        R1, [R4,#0x23]
402414:  CMPEQ           R1, #0x41 ; 'A'
402416:  BNE             loc_40245C
402418:  LDR.W           R0, [R9]
40241C:  ADD             R2, SP, #0xE0+var_78
40241E:  MOV             R1, R9
402420:  LDR.W           R3, [R0,#0xC8]
402424:  ADD             R0, SP, #0xE0+var_9C
402426:  BLX             R3
402428:  VMOV            S0, R8
40242C:  VLDR            S6, [SP,#0xE0+var_98]
402430:  VMOV            S2, R6
402434:  VLDR            S8, [SP,#0xE0+var_94]
402438:  VLDR            S4, [SP,#0xE0+var_9C]
40243C:  VMOV            S10, R11
402440:  VADD.F32        S2, S8, S2
402444:  LDR.W           R0, [R9,#0x44]
402448:  VADD.F32        S0, S6, S0
40244C:  VADD.F32        S4, S4, S10
402450:  VMOV            R6, S2
402454:  VMOV            R8, S0
402458:  VMOV            R11, S4
40245C:  VLDR            S0, [R4,#0x10]
402460:  VMOV            S8, R11
402464:  VLDR            S2, [R4,#0x14]
402468:  VMOV            S6, R8
40246C:  VLDR            S10, [R10,#0x48]
402470:  VMUL.F32        S8, S0, S8
402474:  VLDR            S12, [R10,#0x4C]
402478:  VMUL.F32        S6, S2, S6
40247C:  VMUL.F32        S0, S10, S0
402480:  VLDR            S4, [R4,#0x18]
402484:  VMUL.F32        S2, S12, S2
402488:  VLDR            S14, [R10,#0x50]
40248C:  VMOV            S10, R6
402490:  MOV             R5, R4
402492:  VMUL.F32        S28, S14, S4
402496:  VLDR            S20, [R10,#0x90]
40249A:  VMUL.F32        S24, S4, S10
40249E:  ADD.W           R11, R5, #0x10
4024A2:  LSLS            R0, R0, #0x1A
4024A4:  VADD.F32        S26, S8, S6
4024A8:  VADD.F32        S30, S0, S2
4024AC:  BMI.W           loc_40292C
4024B0:  VLDR            S0, [SP,#0xE0+var_90]
4024B4:  ADD             R0, SP, #0xE0+var_9C; CVector *
4024B6:  VLDR            S6, [SP,#0xE0+var_78]
4024BA:  ADD             R1, SP, #0xE0+var_A8; CVector *
4024BC:  VLDR            S2, [SP,#0xE0+var_8C]
4024C0:  MOV             R2, R11
4024C2:  VLDR            S8, [SP,#0xE0+var_74]
4024C6:  VSUB.F32        S0, S6, S0
4024CA:  VLDR            S4, [SP,#0xE0+var_88]
4024CE:  VLDR            S10, [SP,#0xE0+var_70]
4024D2:  VSUB.F32        S2, S8, S2
4024D6:  VLDR            S22, [R9,#0x90]
4024DA:  VSUB.F32        S4, S10, S4
4024DE:  VSTR            S0, [SP,#0xE0+var_A8]
4024E2:  VSTR            S2, [SP,#0xE0+var_A4]
4024E6:  VSTR            S4, [SP,#0xE0+var_A0]
4024EA:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
4024EE:  VLDR            S0, [SP,#0xE0+var_9C]
4024F2:  VMUL.F32        S6, S18, S22
4024F6:  VLDR            S2, [SP,#0xE0+var_98]
4024FA:  VMUL.F32        S0, S0, S0
4024FE:  VLDR            S4, [SP,#0xE0+var_94]
402502:  VMUL.F32        S2, S2, S2
402506:  VLDR            S8, [R9,#0x94]
40250A:  VMUL.F32        S4, S4, S4
40250E:  VMUL.F32        S8, S18, S8
402512:  VADD.F32        S0, S0, S2
402516:  VMOV.F32        S2, #1.0
40251A:  VADD.F32        S0, S0, S4
40251E:  VDIV.F32        S2, S2, S6
402522:  VDIV.F32        S0, S0, S8
402526:  VADD.F32        S6, S2, S0
40252A:  B               loc_402992
40252C:  VLDR            S0, [R11,#0x10]
402530:  VLDR            S6, [R10,#0x48]
402534:  VLDR            S2, [R11,#0x14]
402538:  VLDR            S8, [R10,#0x4C]
40253C:  VMUL.F32        S0, S6, S0
402540:  VLDR            S4, [R11,#0x18]
402544:  VMUL.F32        S2, S8, S2
402548:  VLDR            S10, [R10,#0x50]
40254C:  VMUL.F32        S4, S10, S4
402550:  VADD.F32        S0, S0, S2
402554:  VADD.F32        S0, S0, S4
402558:  VCMPE.F32       S0, #0.0
40255C:  VMRS            APSR_nzcv, FPSCR
402560:  BGE.W           loc_403448
402564:  LDRB.W          R0, [R9,#0x3A]
402568:  AND.W           R0, R0, #7
40256C:  CMP             R0, #4
40256E:  BNE.W           loc_40342E
402572:  VLDR            S2, [R10,#0x90]
402576:  VNMUL.F32       S0, S0, S2
40257A:  VSTR            S0, [R8]
40257E:  VSTR            S0, [R3]
402582:  LDRB.W          R0, [R9,#0x44]
402586:  LSLS            R0, R0, #0x1D
402588:  BMI.W           loc_4035C8
40258C:  LDR.W           R0, [R9,#0x164]
402590:  VLDR            S2, =9999.0
402594:  VLDR            S0, [R0,#0x14]
402598:  VCMPE.F32       S0, S2
40259C:  VMRS            APSR_nzcv, FPSCR
4025A0:  BGE.W           loc_4035C8
4025A4:  VLDR            S2, [R8]
4025A8:  VCMPE.F32       S2, S0
4025AC:  VMRS            APSR_nzcv, FPSCR
4025B0:  BLE.W           loc_4035C8
4025B4:  LDRB.W          R0, [R9,#0x3A]
4025B8:  AND.W           R0, R0, #7
4025BC:  CMP             R0, #4
4025BE:  BNE.W           loc_4035EC
4025C2:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4025D0)
4025C6:  MOV             R4, R3
4025C8:  LDRSH.W         R1, [R9,#0x26]
4025CC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4025CE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4025D0:  LDR.W           R0, [R0,R1,LSL#2]
4025D4:  LDR             R1, [R0]
4025D6:  LDR             R1, [R1,#8]
4025D8:  BLX             R1
4025DA:  MOV             R3, R4
4025DC:  CMP             R0, #0
4025DE:  BEQ.W           loc_4035EC
4025E2:  LDRH            R0, [R0,#0x28]
4025E4:  AND.W           R0, R0, #0x7000
4025E8:  ORR.W           R0, R0, #0x800
4025EC:  CMP.W           R0, #0x2800
4025F0:  BNE.W           loc_4035EC
4025F4:  LDRD.W          R12, R3, [R10,#0x48]
4025F8:  MOV             R1, R6
4025FA:  LDR.W           R0, [R10,#0x50]
4025FE:  LDRD.W          R6, R5, [R11]
402602:  LDR.W           R2, [R8]
402606:  LDR.W           LR, [R11,#8]
40260A:  STRD.W          R0, R6, [SP,#0xE0+var_E0]
40260E:  MOVS            R0, #0
402610:  STR             R5, [SP,#0xE0+var_D8]
402612:  MOV             R6, R1
402614:  STR.W           LR, [SP,#0xE0+var_D4]
402618:  MOV             R1, R2
40261A:  STR             R0, [SP,#0xE0+var_D0]
40261C:  MOV             R0, R9
40261E:  MOV             R2, R12
402620:  LDR             R5, [R7,#arg_0]
402622:  BLX             j__ZN6CGlass25WindowRespondsToCollisionEP7CEntityf7CVectorS2_b; CGlass::WindowRespondsToCollision(CEntity *,float,CVector,CVector,bool)
402626:  MOV             R3, R5
402628:  B.W             loc_403448
40262C:  STR             R0, [SP,#0xE0+var_E0]
40262E:  ADD             R0, SP, #0xE0+var_78
402630:  MOV             R1, R10
402632:  STR             R5, [SP,#0xE0+var_BC]
402634:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
402638:  ADD.W           R8, SP, #0xE0+var_78
40263C:  LDM.W           R8, {R4,R6,R8}
402640:  LDR.W           R0, [R10,#0x44]
402644:  TST.W           R0, #0x4000000
402648:  BEQ             loc_4026A2
40264A:  LDRB.W          R1, [R10,#0x3A]
40264E:  AND.W           R1, R1, #7
402652:  CMP             R1, #2
402654:  ITT EQ
402656:  LDRBEQ.W        R1, [R11,#0x20]
40265A:  CMPEQ           R1, #0x41 ; 'A'
40265C:  BNE             loc_4026A2
40265E:  LDR.W           R0, [R10]
402662:  ADD             R2, SP, #0xE0+var_6C
402664:  MOV             R1, R10
402666:  LDR.W           R3, [R0,#0xC8]
40266A:  ADD             R0, SP, #0xE0+var_78
40266C:  BLX             R3
40266E:  VMOV            S0, R6
402672:  VLDR            S6, [SP,#0xE0+var_74]
402676:  VMOV            S2, R8
40267A:  VLDR            S8, [SP,#0xE0+var_70]
40267E:  VLDR            S4, [SP,#0xE0+var_78]
402682:  VMOV            S10, R4
402686:  VADD.F32        S2, S8, S2
40268A:  LDR.W           R0, [R10,#0x44]
40268E:  VADD.F32        S0, S6, S0
402692:  VADD.F32        S4, S4, S10
402696:  VMOV            R8, S2
40269A:  VMOV            R6, S0
40269E:  VMOV            R4, S4
4026A2:  VLDR            S0, [R9,#0x48]
4026A6:  VMOV            S12, R6
4026AA:  VLDR            S6, [R11,#0x10]
4026AE:  VMOV            S14, R4
4026B2:  VLDR            S2, [R9,#0x4C]
4026B6:  LSLS            R0, R0, #0x1A
4026B8:  VLDR            S8, [R11,#0x14]
4026BC:  VMUL.F32        S0, S6, S0
4026C0:  VMUL.F32        S6, S6, S14
4026C4:  VLDR            S4, [R9,#0x50]
4026C8:  VMUL.F32        S2, S8, S2
4026CC:  VLDR            S10, [R11,#0x18]
4026D0:  VMUL.F32        S8, S8, S12
4026D4:  VMOV            S12, R8
4026D8:  ADD.W           R8, R11, #0x10
4026DC:  VMUL.F32        S4, S10, S4
4026E0:  VADD.F32        S0, S0, S2
4026E4:  VMUL.F32        S2, S10, S12
4026E8:  VADD.F32        S6, S6, S8
4026EC:  VADD.F32        S28, S0, S4
4026F0:  VADD.F32        S24, S6, S2
4026F4:  BMI.W           loc_402BC6
4026F8:  VLDR            S0, [SP,#0xE0+var_84]
4026FC:  ADD             R0, SP, #0xE0+var_78; CVector *
4026FE:  VLDR            S6, [SP,#0xE0+var_6C]
402702:  ADD             R1, SP, #0xE0+var_9C; CVector *
402704:  VLDR            S2, [SP,#0xE0+var_80]
402708:  MOV             R2, R8
40270A:  VLDR            S8, [SP,#0xE0+var_68]
40270E:  VSUB.F32        S0, S6, S0
402712:  VLDR            S4, [SP,#0xE0+var_7C]
402716:  VLDR            S10, [SP,#0xE0+var_64]
40271A:  VSUB.F32        S2, S8, S2
40271E:  VLDR            S20, [R10,#0x90]
402722:  VSUB.F32        S4, S10, S4
402726:  VSTR            S0, [SP,#0xE0+var_9C]
40272A:  VSTR            S2, [SP,#0xE0+var_98]
40272E:  VSTR            S4, [SP,#0xE0+var_94]
402732:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
402736:  VLDR            S0, [SP,#0xE0+var_78]
40273A:  VMUL.F32        S6, S16, S20
40273E:  VLDR            S2, [SP,#0xE0+var_74]
402742:  VMUL.F32        S0, S0, S0
402746:  VLDR            S4, [SP,#0xE0+var_70]
40274A:  VMUL.F32        S2, S2, S2
40274E:  VLDR            S8, [R10,#0x94]
402752:  VMUL.F32        S4, S4, S4
402756:  VMUL.F32        S8, S16, S8
40275A:  VADD.F32        S0, S0, S2
40275E:  VMOV.F32        S2, #1.0
402762:  VADD.F32        S0, S0, S4
402766:  VDIV.F32        S2, S2, S6
40276A:  VDIV.F32        S0, S0, S8
40276E:  VADD.F32        S0, S2, S0
402772:  B               loc_402C2C
402774:  VLDR            S2, [R9,#0x48]
402778:  MOVW            R2, #0x2004
40277C:  VLDR            S8, [R11,#0x10]
402780:  TST             R1, R2
402782:  VLDR            S4, [R9,#0x4C]
402786:  VLDR            S10, [R11,#0x14]
40278A:  VMUL.F32        S2, S8, S2
40278E:  VLDR            S14, [R10,#0x48]
402792:  VLDR            S1, [R10,#0x4C]
402796:  VMUL.F32        S4, S10, S4
40279A:  VMUL.F32        S8, S14, S8
40279E:  VLDR            S6, [R9,#0x50]
4027A2:  VMUL.F32        S10, S1, S10
4027A6:  VLDR            S12, [R11,#0x18]
4027AA:  VLDR            S3, [R10,#0x50]
4027AE:  VMUL.F32        S6, S12, S6
4027B2:  VLDR            S16, [R9,#0x90]
4027B6:  VLDR            S0, [R10,#0x90]
4027BA:  VADD.F32        S2, S2, S4
4027BE:  VMUL.F32        S4, S3, S12
4027C2:  VADD.F32        S8, S8, S10
4027C6:  VADD.F32        S18, S2, S6
4027CA:  VADD.F32        S2, S8, S4
4027CE:  BEQ.W           loc_4034A4
4027D2:  MOVS            R6, #1
4027D4:  VMOV            D10, D1
4027D8:  B.W             loc_40362C
4027DC:  STR             R5, [SP,#0xE0+var_B8]
4027DE:  LDRD.W          R2, R3, [SP,#0xE0+var_78]
4027E2:  MOV             R1, R9
4027E4:  LDR             R0, [SP,#0xE0+var_70]
4027E6:  STR             R0, [SP,#0xE0+var_E0]
4027E8:  ADD             R0, SP, #0xE0+var_9C
4027EA:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
4027EE:  LDRD.W          R5, R8, [SP,#0xE0+var_9C]
4027F2:  LDRB.W          R0, [R9,#0x47]
4027F6:  LDR             R6, [SP,#0xE0+var_94]
4027F8:  LSLS            R0, R0, #0x1D
4027FA:  BPL             loc_402852
4027FC:  LDRB.W          R0, [R9,#0x3A]
402800:  AND.W           R0, R0, #7
402804:  CMP             R0, #2
402806:  BNE             loc_402852
402808:  LDR             R0, [SP,#0xE0+var_AC]
40280A:  LDRB.W          R0, [R0,#0x23]
40280E:  CMP             R0, #0x41 ; 'A'
402810:  BNE             loc_402852
402812:  LDR.W           R0, [R9]
402816:  ADD             R2, SP, #0xE0+var_78
402818:  MOV             R1, R9
40281A:  LDR.W           R3, [R0,#0xC8]
40281E:  ADD             R0, SP, #0xE0+var_9C
402820:  BLX             R3
402822:  VMOV            S0, R8
402826:  VLDR            S6, [SP,#0xE0+var_98]
40282A:  VMOV            S2, R6
40282E:  VLDR            S8, [SP,#0xE0+var_94]
402832:  VLDR            S4, [SP,#0xE0+var_9C]
402836:  VMOV            S10, R5
40283A:  VADD.F32        S2, S8, S2
40283E:  VADD.F32        S0, S6, S0
402842:  VADD.F32        S4, S4, S10
402846:  VMOV            R6, S2
40284A:  VMOV            R8, S0
40284E:  VMOV            R5, S4
402852:  LDR             R1, [SP,#0xE0+var_AC]
402854:  VMOV            S2, R5
402858:  LDR             R0, [SP,#0xE0+var_B8]
40285A:  VMOV            S10, R8
40285E:  VMOV            S12, R11
402862:  VLDR            S4, [R1,#0x10]
402866:  VMOV            S0, R0
40286A:  VLDR            S6, [R1,#0x14]
40286E:  VMUL.F32        S2, S4, S2
402872:  VLDR            S8, [R1,#0x18]
402876:  VMUL.F32        S10, S6, S10
40287A:  LDRB.W          R0, [R10,#0x44]
40287E:  VMUL.F32        S0, S6, S0
402882:  VMUL.F32        S4, S4, S12
402886:  VMOV            S6, R6
40288A:  ADD.W           R6, R1, #0x10
40288E:  VMOV            S12, R4
402892:  LSLS            R0, R0, #0x1A
402894:  VMUL.F32        S20, S8, S6
402898:  VMUL.F32        S26, S8, S12
40289C:  VADD.F32        S22, S2, S10
4028A0:  VADD.F32        S28, S4, S0
4028A4:  BMI.W           loc_402E88
4028A8:  VLDR            S0, [SP,#0xE0+var_84]
4028AC:  ADD             R0, SP, #0xE0+var_9C; CVector *
4028AE:  VLDR            S6, [SP,#0xE0+var_6C]
4028B2:  ADD             R1, SP, #0xE0+var_A8; CVector *
4028B4:  VLDR            S2, [SP,#0xE0+var_80]
4028B8:  MOV             R2, R6
4028BA:  VLDR            S8, [SP,#0xE0+var_68]
4028BE:  VSUB.F32        S0, S6, S0
4028C2:  VLDR            S4, [SP,#0xE0+var_7C]
4028C6:  VLDR            S10, [SP,#0xE0+var_64]
4028CA:  VSUB.F32        S2, S8, S2
4028CE:  VLDR            S24, [R10,#0x90]
4028D2:  VSUB.F32        S4, S10, S4
4028D6:  VSTR            S0, [SP,#0xE0+var_A8]
4028DA:  VSTR            S2, [SP,#0xE0+var_A4]
4028DE:  VSTR            S4, [SP,#0xE0+var_A0]
4028E2:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
4028E6:  VLDR            S0, [SP,#0xE0+var_9C]
4028EA:  VMUL.F32        S6, S16, S24
4028EE:  VLDR            S2, [SP,#0xE0+var_98]
4028F2:  VMUL.F32        S0, S0, S0
4028F6:  VLDR            S4, [SP,#0xE0+var_94]
4028FA:  VMUL.F32        S2, S2, S2
4028FE:  VLDR            S8, [R10,#0x94]
402902:  VMUL.F32        S4, S4, S4
402906:  VMUL.F32        S8, S16, S8
40290A:  VADD.F32        S0, S0, S2
40290E:  VMOV.F32        S2, #1.0
402912:  VADD.F32        S0, S0, S4
402916:  VDIV.F32        S2, S2, S6
40291A:  VDIV.F32        S0, S0, S8
40291E:  VADD.F32        S0, S2, S0
402922:  B               loc_402EEE
402924:  DCFS 9999.0
402928:  DCFS 0.0
40292C:  VLDR            S0, [SP,#0xE0+var_90]
402930:  ADD             R0, SP, #0xE0+var_9C; CVector *
402932:  VLDR            S6, [SP,#0xE0+var_78]
402936:  ADD             R1, SP, #0xE0+var_A8; CVector *
402938:  VLDR            S2, [SP,#0xE0+var_8C]
40293C:  MOV             R2, R11
40293E:  VLDR            S8, [SP,#0xE0+var_74]
402942:  VSUB.F32        S0, S6, S0
402946:  VLDR            S4, [SP,#0xE0+var_88]
40294A:  VLDR            S10, [SP,#0xE0+var_70]
40294E:  VSUB.F32        S2, S8, S2
402952:  VSUB.F32        S4, S10, S4
402956:  VSTR            S0, [SP,#0xE0+var_A8]
40295A:  VSTR            S2, [SP,#0xE0+var_A4]
40295E:  VSTR            S4, [SP,#0xE0+var_A0]
402962:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
402966:  VLDR            S0, [SP,#0xE0+var_9C]
40296A:  VLDR            S2, [SP,#0xE0+var_98]
40296E:  VMUL.F32        S0, S0, S0
402972:  VLDR            S4, [SP,#0xE0+var_94]
402976:  VMUL.F32        S2, S2, S2
40297A:  VMUL.F32        S4, S4, S4
40297E:  VADD.F32        S0, S0, S2
402982:  VLDR            S2, [R9,#0x94]
402986:  VMUL.F32        S2, S18, S2
40298A:  VADD.F32        S0, S0, S4
40298E:  VDIV.F32        S6, S0, S2
402992:  VMOV.F32        S0, #1.0
402996:  LDR             R1, [SP,#0xE0+var_B0]
402998:  VMUL.F32        S22, S16, S20
40299C:  LDRD.W          R2, R8, [SP,#0xE0+var_B8]
4029A0:  VADD.F32        S2, S26, S24
4029A4:  LDR             R0, [SP,#0xE0+var_AC]
4029A6:  VADD.F32        S4, S30, S28
4029AA:  CMP             R0, #0
4029AC:  VDIV.F32        S20, S0, S6
4029B0:  VMOV.F32        S6, S2
4029B4:  BNE             loc_4029CA
4029B6:  VMUL.F32        S6, S2, S20
4029BA:  VMUL.F32        S8, S22, S4
4029BE:  VADD.F32        S10, S22, S20
4029C2:  VADD.F32        S6, S8, S6
4029C6:  VDIV.F32        S6, S6, S10
4029CA:  VSUB.F32        S8, S4, S6
4029CE:  VCMPE.F32       S8, #0.0
4029D2:  VMRS            APSR_nzcv, FPSCR
4029D6:  BGE.W           loc_40384E
4029DA:  VLDR            S10, [R9,#0xA0]
4029DE:  VMOV.F32        S14, #0.5
4029E2:  VLDR            S12, [R10,#0xA0]
4029E6:  LDRB.W          R0, [R10,#0x1D]
4029EA:  VADD.F32        S10, S12, S10
4029EE:  LSLS            R0, R0, #0x1B
4029F0:  VMUL.F32        S10, S10, S14
4029F4:  VMUL.F32        S8, S8, S10
4029F8:  VSUB.F32        S8, S6, S8
4029FC:  IT MI
4029FE:  VMOVMI.F32      S8, S6
402A02:  LDRB            R0, [R1,#1]
402A04:  VSUB.F32        S4, S8, S4
402A08:  LSLS            R0, R0, #0x1B
402A0A:  ITTT PL
402A0C:  VSUBPL.F32      S12, S2, S6
402A10:  VMULPL.F32      S10, S12, S10
402A14:  VSUBPL.F32      S6, S6, S10
402A18:  LDR             R0, [R7,#arg_0]
402A1A:  VSUB.F32        S2, S6, S2
402A1E:  VMUL.F32        S4, S22, S4
402A22:  VNMUL.F32       S6, S20, S2
402A26:  VSTR            S4, [R8]
402A2A:  VSTR            S6, [R0]
402A2E:  LDR.W           R0, [R10,#0x44]
402A32:  VLDR            S4, [R5,#0x10]
402A36:  VLDR            S6, [R5,#0x14]
402A3A:  TST.W           R0, #0x64
402A3E:  VLDR            S8, [R5,#0x18]
402A42:  BNE             loc_402AB8
402A44:  VLDR            S10, [R8]
402A48:  CMP             R2, #0
402A4A:  VLDR            S7, [R10,#0x90]
402A4E:  VDIV.F32        S10, S10, S16
402A52:  VDIV.F32        S0, S0, S7
402A56:  VMUL.F32        S14, S10, S6
402A5A:  VLDR            S16, =0.0
402A5E:  VMUL.F32        S12, S10, S8
402A62:  VLDR            S1, [R10,#0x48]
402A66:  VMUL.F32        S10, S4, S10
402A6A:  VLDR            S3, [R10,#0x4C]
402A6E:  VLDR            S5, [R10,#0x50]
402A72:  VADD.F32        S7, S14, S14
402A76:  VMAX.F32        D6, D6, D8
402A7A:  VADD.F32        S9, S10, S10
402A7E:  IT NE
402A80:  VMOVNE.F32      S10, S9
402A84:  CMP             R2, #0
402A86:  IT NE
402A88:  VMOVNE.F32      S14, S7
402A8C:  LSLS            R0, R0, #0x18
402A8E:  IT PL
402A90:  VMOVPL.F32      S16, S12
402A94:  VMUL.F32        S10, S10, S0
402A98:  VMUL.F32        S12, S14, S0
402A9C:  VMUL.F32        S0, S16, S0
402AA0:  VADD.F32        S10, S1, S10
402AA4:  VADD.F32        S12, S12, S3
402AA8:  VADD.F32        S0, S0, S5
402AAC:  VSTR            S10, [R10,#0x48]
402AB0:  VSTR            S12, [R10,#0x4C]
402AB4:  VSTR            S0, [R10,#0x50]
402AB8:  LDRB.W          R0, [R9,#0x44]
402ABC:  AND.W           R0, R0, #4
402AC0:  ORR.W           R0, R2, R0,LSR#2
402AC4:  CMP             R0, #0
402AC6:  BNE             loc_402B72
402AC8:  VMUL.F32        S0, S20, S2
402ACC:  STR.W           R11, [SP,#0xE0+var_AC]
402AD0:  MOV             R6, R1
402AD2:  LDRB            R0, [R6]
402AD4:  LSLS            R0, R0, #0x1A
402AD6:  VDIV.F32        S0, S0, S18
402ADA:  VMUL.F32        S2, S8, S0
402ADE:  VMUL.F32        S6, S6, S0
402AE2:  VMUL.F32        S0, S4, S0
402AE6:  VMOV            R11, S2
402AEA:  VMOV            R2, S6
402AEE:  VMOV            R1, S0
402AF2:  BPL             loc_402B5A
402AF4:  VLDR            S0, [R9,#0x58]
402AF8:  ADD.W           R4, R9, #0x48 ; 'H'
402AFC:  VLDR            S2, [R9,#0x5C]
402B00:  MOV             R0, R9; this
402B02:  VLD1.32         {D16-D17}, [R4]
402B06:  VNEG.F32        S0, S0
402B0A:  VNEG.F32        S2, S2
402B0E:  MOV             R8, R2
402B10:  VNEG.F32        Q8, Q8
402B14:  VST1.32         {D16-D17}, [R4]
402B18:  VSTR            S0, [R9,#0x58]
402B1C:  VSTR            S2, [R9,#0x5C]
402B20:  STR             R1, [SP,#0xE0+var_B8]
402B22:  BLX             j__ZN9CPhysical10ApplySpeedEv; CPhysical::ApplySpeed(void)
402B26:  VLDR            S0, [R9,#0x58]
402B2A:  MOV             R2, R8
402B2C:  VLDR            S2, [R9,#0x5C]
402B30:  VLD1.32         {D16-D17}, [R4]
402B34:  VNEG.F32        S0, S0
402B38:  VNEG.F32        Q8, Q8
402B3C:  LDR             R1, [SP,#0xE0+var_B8]
402B3E:  VNEG.F32        S2, S2
402B42:  VST1.32         {D16-D17}, [R4]
402B46:  LDR.W           R8, [SP,#0xE0+var_B4]
402B4A:  VSTR            S0, [R9,#0x58]
402B4E:  VSTR            S2, [R9,#0x5C]
402B52:  LDR             R0, [R6]
402B54:  BIC.W           R0, R0, #0x20 ; ' '
402B58:  STR             R0, [R6]
402B5A:  ADD             R6, SP, #0xE0+var_78
402B5C:  MOV.W           R12, #1
402B60:  MOV             R3, R11
402B62:  LDM             R6, {R0,R4,R6}
402B64:  STMEA.W         SP, {R0,R4,R6,R12}
402B68:  MOV             R0, R9
402B6A:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
402B6E:  LDR.W           R11, [SP,#0xE0+var_AC]
402B72:  VLDR            S0, [R8]
402B76:  MOVS            R4, #0
402B78:  LDR.W           R1, =(AudioEngine_ptr - 0x402B8C)
402B7C:  MOV.W           R8, #0x3F800000
402B80:  VDIV.F32        S0, S0, S22
402B84:  LDRB.W          R3, [R5,#0x20]; unsigned __int8
402B88:  ADD             R1, PC; AudioEngine_ptr
402B8A:  LDRB.W          R0, [R5,#0x23]
402B8E:  STRD.W          R8, R4, [SP,#0xE0+var_D0]; float
402B92:  MOV             R2, R9; CEntity *
402B94:  LDR             R6, [R1]; AudioEngine
402B96:  MOV             R1, R10; CEntity *
402B98:  STR             R4, [SP,#0xE0+var_C8]; unsigned __int8
402B9A:  STMEA.W         SP, {R0,R5,R11}
402B9E:  MOV             R0, R6; this
402BA0:  VSTR            S0, [SP,#0xE0+var_D4]
402BA4:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
402BA8:  LDR             R0, [R7,#arg_0]
402BAA:  LDRB.W          R3, [R5,#0x23]
402BAE:  VLDR            S0, [R0]
402BB2:  LDRB.W          R0, [R5,#0x20]
402BB6:  STRD.W          R8, R4, [SP,#0xE0+var_D0]
402BBA:  VDIV.F32        S0, S0, S20
402BBE:  STR             R4, [SP,#0xE0+var_C8]
402BC0:  STRD.W          R0, R5, [SP,#0xE0+var_E0]
402BC4:  B               loc_4033A8
402BC6:  VLDR            S0, [SP,#0xE0+var_84]
402BCA:  ADD             R0, SP, #0xE0+var_78; CVector *
402BCC:  VLDR            S6, [SP,#0xE0+var_6C]
402BD0:  ADD             R1, SP, #0xE0+var_9C; CVector *
402BD2:  VLDR            S2, [SP,#0xE0+var_80]
402BD6:  MOV             R2, R8
402BD8:  VLDR            S8, [SP,#0xE0+var_68]
402BDC:  VSUB.F32        S0, S6, S0
402BE0:  VLDR            S4, [SP,#0xE0+var_7C]
402BE4:  VLDR            S10, [SP,#0xE0+var_64]
402BE8:  VSUB.F32        S2, S8, S2
402BEC:  VSUB.F32        S4, S10, S4
402BF0:  VSTR            S0, [SP,#0xE0+var_9C]
402BF4:  VSTR            S2, [SP,#0xE0+var_98]
402BF8:  VSTR            S4, [SP,#0xE0+var_94]
402BFC:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
402C00:  VLDR            S0, [SP,#0xE0+var_78]
402C04:  VLDR            S2, [SP,#0xE0+var_74]
402C08:  VMUL.F32        S0, S0, S0
402C0C:  VLDR            S4, [SP,#0xE0+var_70]
402C10:  VMUL.F32        S2, S2, S2
402C14:  VMUL.F32        S4, S4, S4
402C18:  VADD.F32        S0, S0, S2
402C1C:  VLDR            S2, [R10,#0x94]
402C20:  VMUL.F32        S2, S16, S2
402C24:  VADD.F32        S0, S0, S4
402C28:  VDIV.F32        S0, S0, S2
402C2C:  VMOV.F32        S26, #1.0
402C30:  LDRD.W          R4, R6, [SP,#0xE0+var_B4]
402C34:  LDR             R1, [R7,#arg_0]
402C36:  VDIV.F32        S22, S26, S0
402C3A:  VLDR            S0, [R9,#0x90]
402C3E:  VMUL.F32        S2, S24, S22
402C42:  VMUL.F32        S20, S18, S0
402C46:  VMUL.F32        S0, S28, S20
402C4A:  VADD.F32        S4, S22, S20
402C4E:  VADD.F32        S0, S2, S0
402C52:  VDIV.F32        S0, S0, S4
402C56:  VSUB.F32        S2, S24, S0
402C5A:  VCMPE.F32       S2, #0.0
402C5E:  VMRS            APSR_nzcv, FPSCR
402C62:  BGE.W           loc_40384E
402C66:  VLDR            S4, [R9,#0xA0]
402C6A:  VMOV.F32        S30, #0.5
402C6E:  VLDR            S6, [R10,#0xA0]
402C72:  LDRB.W          R0, [R10,#0x1D]
402C76:  VADD.F32        S4, S6, S4
402C7A:  LSLS            R0, R0, #0x1B
402C7C:  VMUL.F32        S4, S4, S30
402C80:  VMUL.F32        S2, S2, S4
402C84:  VSUB.F32        S2, S0, S2
402C88:  IT MI
402C8A:  VMOVMI.F32      S2, S0
402C8E:  LDRB            R0, [R6,#1]
402C90:  VSUB.F32        S2, S2, S24
402C94:  LSLS            R0, R0, #0x1B
402C96:  ITTT PL
402C98:  VSUBPL.F32      S6, S28, S0
402C9C:  VMULPL.F32      S4, S6, S4
402CA0:  VSUBPL.F32      S0, S0, S4
402CA4:  VSUB.F32        S28, S0, S28
402CA8:  VMUL.F32        S0, S22, S2
402CAC:  VNMUL.F32       S2, S20, S28
402CB0:  VSTR            S0, [R4]
402CB4:  VSTR            S2, [R1]
402CB8:  LDRB.W          R0, [R10,#0x44]
402CBC:  LDR             R1, [SP,#0xE0+var_BC]
402CBE:  AND.W           R0, R0, #4
402CC2:  VLDR            S17, [R11,#0x10]
402CC6:  VLDR            S19, [R11,#0x14]
402CCA:  ORR.W           R0, R1, R0,LSR#2
402CCE:  VLDR            S21, [R11,#0x18]
402CD2:  CMP             R0, #0
402CD4:  BNE             loc_402D1C
402CD6:  VLDR            S0, [R4]
402CDA:  MOV.W           R12, #1
402CDE:  LDRD.W          R0, R6, [SP,#0xE0+var_6C]
402CE2:  VDIV.F32        S0, S0, S16
402CE6:  LDR             R5, [SP,#0xE0+var_64]
402CE8:  STRD.W          R0, R6, [SP,#0xE0+var_E0]
402CEC:  MOV             R0, R10
402CEE:  LDR             R6, [SP,#0xE0+var_B0]
402CF0:  STRD.W          R5, R12, [SP,#0xE0+var_D8]
402CF4:  VMUL.F32        S2, S0, S21
402CF8:  VMUL.F32        S4, S17, S0
402CFC:  VMUL.F32        S0, S0, S19
402D00:  VCMPE.F32       S2, #0.0
402D04:  VMRS            APSR_nzcv, FPSCR
402D08:  VMOV            R1, S4
402D0C:  VMOV            R2, S0
402D10:  VMOV            R3, S2
402D14:  IT LT
402D16:  MOVLT           R3, #0
402D18:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
402D1C:  LDR.W           R0, [R9,#0x44]
402D20:  TST.W           R0, #4
402D24:  BNE.W           loc_402E2C
402D28:  VMUL.F32        S0, S20, S28
402D2C:  VDIV.F32        S0, S0, S18
402D30:  VMUL.F32        S28, S0, S21
402D34:  VMUL.F32        S16, S0, S19
402D38:  VMUL.F32        S18, S0, S17
402D3C:  VCMPE.F32       S28, #0.0
402D40:  VMRS            APSR_nzcv, FPSCR
402D44:  BGE             loc_402D68
402D46:  VABS.F32        S0, S24
402D4A:  VLDR            D16, =0.01
402D4E:  VLDR            S28, =0.0
402D52:  VCVT.F64.F32    D17, S0
402D56:  VCMPE.F64       D17, D16
402D5A:  VMRS            APSR_nzcv, FPSCR
402D5E:  ITT LT
402D60:  VMULLT.F32      S16, S16, S30
402D64:  VMULLT.F32      S18, S18, S30
402D68:  VADD.F32        S0, S18, S18
402D6C:  LDR             R1, [SP,#0xE0+var_BC]
402D6E:  VADD.F32        S2, S16, S16
402D72:  CMP             R1, #0
402D74:  ITT NE
402D76:  VMOVNE.F32      S16, S2
402D7A:  VMOVNE.F32      S18, S0
402D7E:  LDRB            R1, [R6]
402D80:  LSLS            R1, R1, #0x1A
402D82:  BPL             loc_402DE2
402D84:  ADD.W           R5, R9, #0x48 ; 'H'
402D88:  MOV             R0, R9; this
402D8A:  VLD1.32         {D16-D17}, [R5]
402D8E:  VNEG.F32        Q8, Q8
402D92:  VST1.32         {D16-D17}, [R5]
402D96:  VLDR            S0, [R9,#0x58]
402D9A:  VLDR            S2, [R9,#0x5C]
402D9E:  VNEG.F32        S0, S0
402DA2:  VNEG.F32        S2, S2
402DA6:  VSTR            S0, [R9,#0x58]
402DAA:  VSTR            S2, [R9,#0x5C]
402DAE:  BLX             j__ZN9CPhysical10ApplySpeedEv; CPhysical::ApplySpeed(void)
402DB2:  VLD1.32         {D16-D17}, [R5]
402DB6:  VNEG.F32        Q8, Q8
402DBA:  VST1.32         {D16-D17}, [R5]
402DBE:  VLDR            S0, [R9,#0x58]
402DC2:  VLDR            S2, [R9,#0x5C]
402DC6:  VNEG.F32        S0, S0
402DCA:  VNEG.F32        S2, S2
402DCE:  VSTR            S0, [R9,#0x58]
402DD2:  VSTR            S2, [R9,#0x5C]
402DD6:  LDR             R0, [R6]
402DD8:  BIC.W           R0, R0, #0x20 ; ' '
402DDC:  STR             R0, [R6]
402DDE:  LDR.W           R0, [R9,#0x44]
402DE2:  TST.W           R0, #0x60
402DE6:  BNE             loc_402E2C
402DE8:  VLDR            S6, [R9,#0x90]
402DEC:  LSLS            R0, R0, #0x18
402DEE:  VLDR            S8, =0.0
402DF2:  VDIV.F32        S6, S26, S6
402DF6:  VLDR            S0, [R9,#0x48]
402DFA:  VMUL.F32        S10, S18, S6
402DFE:  VLDR            S2, [R9,#0x4C]
402E02:  VMUL.F32        S12, S16, S6
402E06:  VLDR            S4, [R9,#0x50]
402E0A:  IT PL
402E0C:  VMOVPL.F32      S8, S28
402E10:  VMUL.F32        S6, S8, S6
402E14:  VADD.F32        S0, S0, S10
402E18:  VADD.F32        S2, S12, S2
402E1C:  VADD.F32        S4, S6, S4
402E20:  VSTR            S0, [R9,#0x48]
402E24:  VSTR            S2, [R9,#0x4C]
402E28:  VSTR            S4, [R9,#0x50]
402E2C:  VLDR            S0, [R4]
402E30:  MOVS            R5, #0
402E32:  LDR.W           R1, =(AudioEngine_ptr - 0x402E46)
402E36:  MOV.W           R4, #0x3F800000
402E3A:  VDIV.F32        S0, S0, S22
402E3E:  LDRB.W          R3, [R11,#0x20]; unsigned __int8
402E42:  ADD             R1, PC; AudioEngine_ptr
402E44:  LDRB.W          R0, [R11,#0x23]
402E48:  STRD.W          R4, R5, [SP,#0xE0+var_D0]; float
402E4C:  MOV             R2, R9; CEntity *
402E4E:  LDR             R6, [R1]; AudioEngine
402E50:  MOV             R1, R10; CEntity *
402E52:  STR             R5, [SP,#0xE0+var_C8]; unsigned __int8
402E54:  STRD.W          R0, R11, [SP,#0xE0+var_E0]; unsigned __int8
402E58:  MOV             R0, R6; this
402E5A:  STR.W           R8, [SP,#0xE0+var_D8]; CVector *
402E5E:  VSTR            S0, [SP,#0xE0+var_D4]
402E62:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
402E66:  LDR             R0, [R7,#arg_0]
402E68:  LDRB.W          R3, [R11,#0x23]
402E6C:  VLDR            S0, [R0]
402E70:  LDRB.W          R0, [R11,#0x20]
402E74:  STRD.W          R4, R5, [SP,#0xE0+var_D0]
402E78:  VDIV.F32        S0, S0, S20
402E7C:  STR             R5, [SP,#0xE0+var_C8]
402E7E:  STRD.W          R0, R11, [SP,#0xE0+var_E0]
402E82:  STR.W           R8, [SP,#0xE0+var_D8]
402E86:  B               loc_4033AC
402E88:  VLDR            S0, [SP,#0xE0+var_84]
402E8C:  ADD             R0, SP, #0xE0+var_9C; CVector *
402E8E:  VLDR            S6, [SP,#0xE0+var_6C]
402E92:  ADD             R1, SP, #0xE0+var_A8; CVector *
402E94:  VLDR            S2, [SP,#0xE0+var_80]
402E98:  MOV             R2, R6
402E9A:  VLDR            S8, [SP,#0xE0+var_68]
402E9E:  VSUB.F32        S0, S6, S0
402EA2:  VLDR            S4, [SP,#0xE0+var_7C]
402EA6:  VLDR            S10, [SP,#0xE0+var_64]
402EAA:  VSUB.F32        S2, S8, S2
402EAE:  VSUB.F32        S4, S10, S4
402EB2:  VSTR            S0, [SP,#0xE0+var_A8]
402EB6:  VSTR            S2, [SP,#0xE0+var_A4]
402EBA:  VSTR            S4, [SP,#0xE0+var_A0]
402EBE:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
402EC2:  VLDR            S0, [SP,#0xE0+var_9C]
402EC6:  VLDR            S2, [SP,#0xE0+var_98]
402ECA:  VMUL.F32        S0, S0, S0
402ECE:  VLDR            S4, [SP,#0xE0+var_94]
402ED2:  VMUL.F32        S2, S2, S2
402ED6:  VMUL.F32        S4, S4, S4
402EDA:  VADD.F32        S0, S0, S2
402EDE:  VLDR            S2, [R10,#0x94]
402EE2:  VMUL.F32        S2, S16, S2
402EE6:  VADD.F32        S0, S0, S4
402EEA:  VDIV.F32        S0, S0, S2
402EEE:  VADD.F32        S24, S22, S20
402EF2:  LDRB.W          R0, [R9,#0x44]
402EF6:  VMOV.F32        S22, #1.0
402EFA:  LDR.W           R11, [SP,#0xE0+var_B4]
402EFE:  VADD.F32        S26, S28, S26
402F02:  LDR             R5, [R7,#arg_0]
402F04:  LDR             R4, [SP,#0xE0+var_B0]
402F06:  LSLS            R0, R0, #0x1A
402F08:  VDIV.F32        S20, S22, S0
402F0C:  BMI             loc_402FB0
402F0E:  VLDR            S0, [SP,#0xE0+var_90]
402F12:  ADD             R0, SP, #0xE0+var_9C; CVector *
402F14:  VLDR            S6, [SP,#0xE0+var_78]
402F18:  ADD             R1, SP, #0xE0+var_A8; CVector *
402F1A:  VLDR            S2, [SP,#0xE0+var_8C]
402F1E:  MOV             R2, R6
402F20:  VLDR            S8, [SP,#0xE0+var_74]
402F24:  VSUB.F32        S0, S6, S0
402F28:  VLDR            S4, [SP,#0xE0+var_88]
402F2C:  VLDR            S10, [SP,#0xE0+var_70]
402F30:  VSUB.F32        S2, S8, S2
402F34:  VLDR            S28, [R9,#0x90]
402F38:  VSUB.F32        S4, S10, S4
402F3C:  VSTR            S0, [SP,#0xE0+var_A8]
402F40:  VSTR            S2, [SP,#0xE0+var_A4]
402F44:  VSTR            S4, [SP,#0xE0+var_A0]
402F48:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
402F4C:  VLDR            S0, [SP,#0xE0+var_9C]
402F50:  VLDR            S2, [SP,#0xE0+var_98]
402F54:  VMUL.F32        S0, S0, S0
402F58:  VLDR            S4, [SP,#0xE0+var_94]
402F5C:  VMUL.F32        S2, S2, S2
402F60:  VLDR            S6, [R9,#0x94]
402F64:  VMUL.F32        S4, S4, S4
402F68:  VMUL.F32        S6, S18, S6
402F6C:  VADD.F32        S0, S0, S2
402F70:  VMUL.F32        S2, S18, S28
402F74:  VADD.F32        S0, S0, S4
402F78:  VDIV.F32        S2, S22, S2
402F7C:  VDIV.F32        S0, S0, S6
402F80:  VADD.F32        S0, S2, S0
402F84:  B               loc_403016
402F86:  ALIGN 4
402F88:  DCD AudioEngine_ptr - 0x402370
402F8C:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4025D0
402F90:  DCFD 0.01
402F98:  DCFS 0.0
402F9C:  DCFS 0.3
402FA0:  DCFS 0.7
402FA4:  DCFS 0.8
402FA8:  DCFS -0.3
402FAC:  DCFS -0.7
402FB0:  VLDR            S0, [SP,#0xE0+var_90]
402FB4:  ADD             R0, SP, #0xE0+var_9C; CVector *
402FB6:  VLDR            S6, [SP,#0xE0+var_78]
402FBA:  ADD             R1, SP, #0xE0+var_A8; CVector *
402FBC:  VLDR            S2, [SP,#0xE0+var_8C]
402FC0:  MOV             R2, R6
402FC2:  VLDR            S8, [SP,#0xE0+var_74]
402FC6:  VSUB.F32        S0, S6, S0
402FCA:  VLDR            S4, [SP,#0xE0+var_88]
402FCE:  VLDR            S10, [SP,#0xE0+var_70]
402FD2:  VSUB.F32        S2, S8, S2
402FD6:  VSUB.F32        S4, S10, S4
402FDA:  VSTR            S0, [SP,#0xE0+var_A8]
402FDE:  VSTR            S2, [SP,#0xE0+var_A4]
402FE2:  VSTR            S4, [SP,#0xE0+var_A0]
402FE6:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
402FEA:  VLDR            S0, [SP,#0xE0+var_9C]
402FEE:  VLDR            S2, [SP,#0xE0+var_98]
402FF2:  VMUL.F32        S0, S0, S0
402FF6:  VLDR            S4, [SP,#0xE0+var_94]
402FFA:  VMUL.F32        S2, S2, S2
402FFE:  VMUL.F32        S4, S4, S4
403002:  VADD.F32        S0, S0, S2
403006:  VLDR            S2, [R9,#0x94]
40300A:  VMUL.F32        S2, S18, S2
40300E:  VADD.F32        S0, S0, S4
403012:  VDIV.F32        S0, S0, S2
403016:  VDIV.F32        S22, S22, S0
40301A:  VMUL.F32        S0, S26, S20
40301E:  VMUL.F32        S2, S24, S22
403022:  VADD.F32        S4, S20, S22
403026:  VADD.F32        S0, S0, S2
40302A:  VDIV.F32        S0, S0, S4
40302E:  VSUB.F32        S2, S26, S0
403032:  VCMPE.F32       S2, #0.0
403036:  VMRS            APSR_nzcv, FPSCR
40303A:  BGE.W           loc_40384E
40303E:  VLDR            S4, [R9,#0xA0]
403042:  VMOV.F32        S8, #0.5
403046:  VLDR            S6, [R10,#0xA0]
40304A:  LDRB.W          R0, [R10,#0x1D]
40304E:  VADD.F32        S4, S6, S4
403052:  LSLS            R0, R0, #0x1B
403054:  VMUL.F32        S4, S4, S8
403058:  VMUL.F32        S2, S2, S4
40305C:  VSUB.F32        S2, S0, S2
403060:  IT MI
403062:  VMOVMI.F32      S2, S0
403066:  LDRB            R0, [R4,#1]
403068:  STR             R6, [SP,#0xE0+var_B8]
40306A:  VSUB.F32        S2, S2, S26
40306E:  LSLS            R0, R0, #0x1B
403070:  ITTT PL
403072:  VSUBPL.F32      S6, S24, S0
403076:  VMULPL.F32      S4, S6, S4
40307A:  VSUBPL.F32      S0, S0, S4
40307E:  VSUB.F32        S0, S0, S24
403082:  VMUL.F32        S2, S20, S2
403086:  VNMUL.F32       S4, S22, S0
40308A:  VSTR            S2, [R11]
40308E:  VMUL.F32        S0, S22, S0
403092:  VSTR            S4, [R5]
403096:  VLDR            S2, [R11]
40309A:  LDR             R0, [SP,#0xE0+var_AC]
40309C:  VDIV.F32        S24, S0, S18
4030A0:  VDIV.F32        S4, S2, S16
4030A4:  VLDR            S0, [R0,#0x18]
4030A8:  VLDR            S30, [R0,#0x10]
4030AC:  VMUL.F32        S2, S4, S0
4030B0:  VLDR            S26, [R0,#0x14]
4030B4:  VMUL.F32        S28, S24, S0
4030B8:  LDRB.W          R0, [R10,#0x3A]
4030BC:  VMUL.F32        S18, S4, S26
4030C0:  VMUL.F32        S16, S30, S4
4030C4:  AND.W           R1, R0, #7
4030C8:  CMP             R1, #2
4030CA:  VMOV            R8, S2
4030CE:  BNE             loc_40316E
4030D0:  ADD.W           R1, R10, #0x1C
4030D4:  LDRB            R1, [R1,#1]
4030D6:  LSLS            R1, R1, #0x1B
4030D8:  ITT PL
4030DA:  LDRBPL.W        R1, [R10,#0x44]
4030DE:  MOVSPL.W        R1, R1,LSL#29
4030E2:  BMI             loc_40316E
4030E4:  VLDR            S4, =0.3
4030E8:  VMUL.F32        S2, S2, S4
4030EC:  VLDR            S4, =0.7
4030F0:  VCMPE.F32       S0, S4
4030F4:  VMRS            APSR_nzcv, FPSCR
4030F8:  IT LT
4030FA:  VMOVLT          R8, S2
4030FE:  CMP             R0, #7
403100:  BHI             loc_40312A
403102:  VLDR            S0, [SP,#0xE0+var_6C]
403106:  VLDR            S6, =0.8
40310A:  VLDR            S2, [SP,#0xE0+var_68]
40310E:  VLDR            S4, [SP,#0xE0+var_64]
403112:  VMUL.F32        S0, S0, S6
403116:  VMUL.F32        S2, S2, S6
40311A:  VMUL.F32        S4, S4, S6
40311E:  VSTR            S0, [SP,#0xE0+var_6C]
403122:  VSTR            S2, [SP,#0xE0+var_68]
403126:  VSTR            S4, [SP,#0xE0+var_64]
40312A:  LDR.W           R0, =(_ZN6CWorld22bNoMoreCollisionTorqueE_ptr - 0x403132)
40312E:  ADD             R0, PC; _ZN6CWorld22bNoMoreCollisionTorqueE_ptr
403130:  LDR             R0, [R0]; CWorld::bNoMoreCollisionTorque ...
403132:  LDRB            R0, [R0]; CWorld::bNoMoreCollisionTorque
403134:  CBZ             R0, loc_40316E
403136:  VLDR            S0, =-0.3
40313A:  VMOV            S2, R8
40313E:  ADD.W           R12, SP, #0xE0+var_6C
403142:  VMUL.F32        S4, S16, S0
403146:  VMUL.F32        S6, S18, S0
40314A:  LDM.W           R12, {R0,R5,R12}
40314E:  VMUL.F32        S0, S2, S0
403152:  STRD.W          R0, R5, [SP,#0xE0+var_E0]
403156:  MOV             R0, R10
403158:  LDR             R4, [SP,#0xE0+var_B0]
40315A:  STR.W           R12, [SP,#0xE0+var_D8]
40315E:  VMOV            R1, S4
403162:  VMOV            R2, S6
403166:  VMOV            R3, S0
40316A:  BLX             j__ZN9CPhysical18ApplyFrictionForceE7CVectorS0_; CPhysical::ApplyFrictionForce(CVector,CVector)
40316E:  VMOV            R5, S28
403172:  LDRB.W          R0, [R9,#0x3A]
403176:  VMUL.F32        S26, S24, S26
40317A:  VMUL.F32        S24, S24, S30
40317E:  AND.W           R1, R0, #7
403182:  CMP             R1, #2
403184:  BNE             loc_403228
403186:  LDRB            R1, [R4,#1]
403188:  LSLS            R1, R1, #0x1B
40318A:  ITT PL
40318C:  LDRBPL.W        R1, [R9,#0x44]
403190:  MOVSPL.W        R1, R1,LSL#29
403194:  BMI             loc_403228
403196:  LDR             R1, [SP,#0xE0+var_AC]
403198:  VLDR            S2, =-0.7
40319C:  VLDR            S0, =0.3
4031A0:  VLDR            S4, [R1,#0x18]
4031A4:  VMUL.F32        S0, S28, S0
4031A8:  VCMPE.F32       S4, S2
4031AC:  VMRS            APSR_nzcv, FPSCR
4031B0:  IT GT
4031B2:  VMOVGT          R5, S0
4031B6:  CMP             R0, #7
4031B8:  BHI             loc_4031E2
4031BA:  VLDR            S0, [SP,#0xE0+var_78]
4031BE:  VLDR            S6, =0.8
4031C2:  VLDR            S2, [SP,#0xE0+var_74]
4031C6:  VLDR            S4, [SP,#0xE0+var_70]
4031CA:  VMUL.F32        S0, S0, S6
4031CE:  VMUL.F32        S2, S2, S6
4031D2:  VMUL.F32        S4, S4, S6
4031D6:  VSTR            S0, [SP,#0xE0+var_78]
4031DA:  VSTR            S2, [SP,#0xE0+var_74]
4031DE:  VSTR            S4, [SP,#0xE0+var_70]
4031E2:  LDR.W           R0, =(_ZN6CWorld22bNoMoreCollisionTorqueE_ptr - 0x4031EA)
4031E6:  ADD             R0, PC; _ZN6CWorld22bNoMoreCollisionTorqueE_ptr
4031E8:  LDR             R0, [R0]; CWorld::bNoMoreCollisionTorque ...
4031EA:  LDRB            R0, [R0]; CWorld::bNoMoreCollisionTorque
4031EC:  CBZ             R0, loc_403228
4031EE:  VLDR            S0, =-0.3
4031F2:  VMOV            S2, R5
4031F6:  LDR             R0, [SP,#0xE0+var_78]
4031F8:  MOV             R6, R5
4031FA:  VMUL.F32        S4, S24, S0
4031FE:  LDRD.W          R5, R12, [SP,#0xE0+var_74]
403202:  VMUL.F32        S6, S26, S0
403206:  VMUL.F32        S0, S2, S0
40320A:  STRD.W          R0, R5, [SP,#0xE0+var_E0]
40320E:  MOV             R0, R9
403210:  MOV             R5, R6
403212:  LDR             R4, [SP,#0xE0+var_B0]
403214:  STR.W           R12, [SP,#0xE0+var_D8]
403218:  VMOV            R1, S4
40321C:  VMOV            R2, S6
403220:  VMOV            R3, S0
403224:  BLX             j__ZN9CPhysical18ApplyFrictionForceE7CVectorS0_; CPhysical::ApplyFrictionForce(CVector,CVector)
403228:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x403230)
40322C:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
40322E:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
403230:  LDRB.W          R0, [R0,#(byte_796832 - 0x7967F4)]
403234:  CBZ             R0, loc_403292
403236:  MOV.W           R0, #0xFFFFFFFF; int
40323A:  MOVS            R1, #0; bool
40323C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
403240:  CMP             R0, R10
403242:  BNE             loc_403264
403244:  LDRB.W          R0, [R9,#0x3A]
403248:  AND.W           R0, R0, #7
40324C:  CMP             R0, #2
40324E:  BNE             loc_403264
403250:  LDRB.W          R0, [R9,#0x4A8]
403254:  CMP             R0, #2
403256:  ITTT NE
403258:  LDRNE.W         R0, [R9,#0x44]
40325C:  BICNE.W         R0, R0, #2
403260:  STRNE.W         R0, [R9,#0x44]
403264:  MOV.W           R0, #0xFFFFFFFF; int
403268:  MOVS            R1, #0; bool
40326A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
40326E:  CMP             R0, R9
403270:  BNE             loc_403292
403272:  LDRB.W          R0, [R10,#0x3A]
403276:  AND.W           R0, R0, #7
40327A:  CMP             R0, #2
40327C:  BNE             loc_403292
40327E:  LDRB.W          R0, [R10,#0x4A8]
403282:  CMP             R0, #2
403284:  ITTT NE
403286:  LDRNE.W         R0, [R10,#0x44]
40328A:  BICNE.W         R0, R0, #2
40328E:  STRNE.W         R0, [R10,#0x44]
403292:  LDRB.W          R0, [R10,#0x44]
403296:  LSLS            R0, R0, #0x1D
403298:  BMI             loc_4032BE
40329A:  VMOV            R2, S18
40329E:  LDRD.W          R0, R3, [SP,#0xE0+var_6C]
4032A2:  VMOV            R1, S16
4032A6:  MOV             R4, R5
4032A8:  LDR             R5, [SP,#0xE0+var_64]
4032AA:  MOVS            R6, #1
4032AC:  STMEA.W         SP, {R0,R3,R5}
4032B0:  MOV             R0, R10
4032B2:  MOV             R3, R8
4032B4:  MOV             R5, R4
4032B6:  STR             R6, [SP,#0xE0+var_D4]; float
4032B8:  LDR             R4, [SP,#0xE0+var_B0]
4032BA:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
4032BE:  LDRB.W          R0, [R9,#0x44]
4032C2:  LSLS            R0, R0, #0x1D
4032C4:  BMI             loc_40334C
4032C6:  VMOV            R8, S26
4032CA:  LDRB            R0, [R4]
4032CC:  VMOV            R6, S24
4032D0:  LSLS            R0, R0, #0x1A
4032D2:  BPL             loc_403336
4032D4:  VLDR            S0, [R9,#0x58]
4032D8:  MOV             R11, R5
4032DA:  VLDR            S2, [R9,#0x5C]
4032DE:  ADD.W           R5, R9, #0x48 ; 'H'
4032E2:  VLD1.32         {D16-D17}, [R5]
4032E6:  VNEG.F32        S0, S0
4032EA:  VNEG.F32        S2, S2
4032EE:  MOV             R0, R9; this
4032F0:  VNEG.F32        Q8, Q8
4032F4:  VST1.32         {D16-D17}, [R5]
4032F8:  VSTR            S0, [R9,#0x58]
4032FC:  VSTR            S2, [R9,#0x5C]
403300:  BLX             j__ZN9CPhysical10ApplySpeedEv; CPhysical::ApplySpeed(void)
403304:  VLDR            S0, [R9,#0x58]
403308:  VLDR            S2, [R9,#0x5C]
40330C:  VLD1.32         {D16-D17}, [R5]
403310:  VNEG.F32        S0, S0
403314:  VNEG.F32        Q8, Q8
403318:  VNEG.F32        S2, S2
40331C:  VST1.32         {D16-D17}, [R5]
403320:  MOV             R5, R11
403322:  LDR.W           R11, [SP,#0xE0+var_B4]
403326:  VSTR            S0, [R9,#0x58]
40332A:  VSTR            S2, [R9,#0x5C]
40332E:  LDR             R0, [R4]
403330:  BIC.W           R0, R0, #0x20 ; ' '
403334:  STR             R0, [R4]
403336:  ADD             R2, SP, #0xE0+var_78
403338:  MOVS            R3, #1
40333A:  LDM             R2, {R0-R2}
40333C:  STMEA.W         SP, {R0-R3}
403340:  MOV             R0, R9
403342:  MOV             R1, R6
403344:  MOV             R2, R8
403346:  MOV             R3, R5
403348:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
40334C:  VLDR            S0, [R11]
403350:  MOVS            R5, #0
403352:  LDR.W           R1, =(AudioEngine_ptr - 0x403364)
403356:  MOV.W           R8, #0x3F800000
40335A:  VDIV.F32        S0, S0, S20
40335E:  LDR             R4, [SP,#0xE0+var_AC]
403360:  ADD             R1, PC; AudioEngine_ptr
403362:  MOV             R2, R9; CEntity *
403364:  LDR             R6, [R1]; AudioEngine
403366:  MOV             R1, R10; CEntity *
403368:  LDRB.W          R3, [R4,#0x20]; unsigned __int8
40336C:  LDRB.W          R0, [R4,#0x23]
403370:  STRD.W          R8, R5, [SP,#0xE0+var_D0]; float
403374:  STR             R5, [SP,#0xE0+var_C8]; unsigned __int8
403376:  STRD.W          R0, R4, [SP,#0xE0+var_E0]; unsigned __int8
40337A:  MOV             R0, R6; this
40337C:  LDR.W           R11, [SP,#0xE0+var_B8]
403380:  STR.W           R11, [SP,#0xE0+var_D8]; CVector *
403384:  VSTR            S0, [SP,#0xE0+var_D4]
403388:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
40338C:  LDR             R0, [R7,#arg_0]
40338E:  LDRB.W          R3, [R4,#0x23]; unsigned __int8
403392:  VLDR            S0, [R0]
403396:  LDRB.W          R0, [R4,#0x20]
40339A:  VDIV.F32        S0, S0, S22
40339E:  STRD.W          R8, R5, [SP,#0xE0+var_D0]; float
4033A2:  STR             R5, [SP,#0xE0+var_C8]; unsigned __int8
4033A4:  STRD.W          R0, R4, [SP,#0xE0+var_E0]; unsigned __int8
4033A8:  STR.W           R11, [SP,#0xE0+var_D8]; CVector *
4033AC:  MOV             R0, R6; this
4033AE:  VSTR            S0, [SP,#0xE0+var_D4]
4033B2:  MOV             R1, R9; CEntity *
4033B4:  MOV             R2, R10; CEntity *
4033B6:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
4033BA:  MOVS            R6, #1
4033BC:  B               loc_403850
4033BE:  LDRB.W          R0, [R9,#0x44]
4033C2:  LSLS            R0, R0, #0x1D
4033C4:  BMI.W           loc_4035C8
4033C8:  LDR.W           R0, [R9]
4033CC:  MOVS            R1, #0
4033CE:  MOV             R4, R3
4033D0:  LDR             R2, [R0,#0x14]
4033D2:  MOV             R0, R9
4033D4:  BLX             R2
4033D6:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4033E2)
4033DA:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x4033E4)
4033DE:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4033E0:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4033E2:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4033E4:  LDR             R0, [R0]; CWorld::PlayerInFocus
4033E6:  MOV.W           R2, #0x194
4033EA:  LDR             R1, [R1]; CWorld::Players ...
4033EC:  SMLABB.W        R0, R0, R2, R1
4033F0:  LDR.W           R1, [R0,#0x140]
4033F4:  ADDS            R1, #2
4033F6:  STR.W           R1, [R0,#0x140]
4033FA:  BLX             rand
4033FE:  MOV             R1, #0x88888889
403406:  SMMLA.W         R1, R1, R0, R0
40340A:  ASRS            R2, R1, #4; float
40340C:  ADD.W           R1, R2, R1,LSR#31
403410:  RSB.W           R1, R1, R1,LSL#4
403414:  SUB.W           R0, R0, R1,LSL#1
403418:  ADDS            R0, #0x1E
40341A:  VMOV            S0, R0
40341E:  MOVS            R0, #(off_7C+1); this
403420:  VCVT.F32.S32    S0, S0
403424:  VMOV            R1, S0; unsigned __int16
403428:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
40342C:  B               loc_403446
40342E:  LDRB.W          R0, [R9,#0x44]
403432:  LSLS            R0, R0, #0x1D
403434:  BMI.W           loc_4035C8
403438:  LDR.W           R0, [R9]
40343C:  MOVS            R1, #0
40343E:  MOV             R4, R3
403440:  LDR             R2, [R0,#0x14]
403442:  MOV             R0, R9
403444:  BLX             R2
403446:  MOV             R3, R4
403448:  LDR             R0, [R6]
40344A:  TST.W           R0, #0x40004
40344E:  BNE.W           loc_40384E
403452:  LDRB.W          R1, [R9,#0x44]
403456:  LDRD.W          R5, R4, [SP,#0xE0+var_BC]
40345A:  LSLS            R1, R1, #0x1D
40345C:  BMI.W           loc_401FDA
403460:  LDR.W           R1, [R9,#0xB8]; unsigned int
403464:  CMP             R1, #0
403466:  IT EQ
403468:  ANDSEQ.W        R0, R0, #0x40000
40346C:  BNE.W           loc_401FDA
403470:  MOVS            R0, #(byte_9+3); this
403472:  BLX             j__ZN18CPtrNodeDoubleLinknwEj; CPtrNodeDoubleLink::operator new(uint)
403476:  LDR.W           R1, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x403484)
40347A:  MOVS            R2, #0
40347C:  STR.W           R9, [R0]
403480:  ADD             R1, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
403482:  STR.W           R0, [R9,#0xB8]
403486:  STR             R2, [R0,#8]
403488:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs ...
40348A:  LDR             R3, [R7,#arg_0]
40348C:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs
40348E:  STR             R1, [R0,#4]
403490:  CMP             R1, #0
403492:  IT NE
403494:  STRNE           R0, [R1,#8]
403496:  LDR.W           R1, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x40349E)
40349A:  ADD             R1, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
40349C:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs ...
40349E:  STR             R0, [R1]; CWorld::ms_listMovingEntityPtrs
4034A0:  B.W             loc_401FDA
4034A4:  TST             R0, R2
4034A6:  BEQ.W           loc_4035D8
4034AA:  MOVS            R6, #0
4034AC:  VMOV            D10, D9
4034B0:  B               loc_40362C
4034B2:  LDRB.W          R0, [R9,#0x44]
4034B6:  LSLS            R0, R0, #0x1D
4034B8:  BMI             loc_40358A
4034BA:  LDR.W           R0, [R9,#0x164]
4034BE:  VLDR            S2, =9999.0
4034C2:  VLDR            S0, [R0,#0x14]
4034C6:  VCMPE.F32       S0, S2
4034CA:  VMRS            APSR_nzcv, FPSCR
4034CE:  BGE             loc_40358A
4034D0:  VLDR            S2, [R8]
4034D4:  VCMPE.F32       S2, S0
4034D8:  VMRS            APSR_nzcv, FPSCR
4034DC:  BGT             loc_4034EE
4034DE:  ADD.W           R0, R10, #0x1C
4034E2:  MOVW            R1, #0x1010
4034E6:  LDR             R0, [R0]
4034E8:  MVNS            R0, R0
4034EA:  TST             R0, R1
4034EC:  BNE             loc_40358A
4034EE:  LDRB.W          R0, [R9,#0x3A]
4034F2:  AND.W           R0, R0, #7
4034F6:  CMP             R0, #4
4034F8:  BNE.W           loc_403870
4034FC:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x403508)
403500:  LDRSH.W         R1, [R9,#0x26]
403504:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
403506:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
403508:  LDR.W           R0, [R0,R1,LSL#2]
40350C:  LDR             R1, [R0]
40350E:  LDR             R1, [R1,#8]
403510:  BLX             R1
403512:  CMP             R0, #0
403514:  BEQ.W           loc_403870
403518:  LDRH            R0, [R0,#0x28]
40351A:  AND.W           R0, R0, #0x7000
40351E:  ORR.W           R0, R0, #0x800
403522:  CMP.W           R0, #0x2800
403526:  BNE.W           loc_403870
40352A:  LDRD.W          R2, R3, [R10,#0x48]
40352E:  MOV.W           R12, #0
403532:  LDR.W           R0, [R10,#0x50]
403536:  LDRD.W          R6, R5, [R11]
40353A:  LDR             R1, [SP,#0xE0+var_B4]
40353C:  LDR.W           R4, [R11,#8]
403540:  LDR             R1, [R1]
403542:  STRD.W          R0, R6, [SP,#0xE0+var_E0]
403546:  MOV             R0, R9
403548:  STR             R5, [SP,#0xE0+var_D8]
40354A:  STR             R4, [SP,#0xE0+var_D4]
40354C:  LDR             R6, [SP,#0xE0+var_B0]
40354E:  LDR             R5, [R7,#arg_0]
403550:  LDR.W           R8, [SP,#0xE0+var_B4]
403554:  STR.W           R12, [SP,#0xE0+var_D0]
403558:  BLX             j__ZN6CGlass25WindowRespondsToCollisionEP7CEntityf7CVectorS2_b; CGlass::WindowRespondsToCollision(CEntity *,float,CVector,CVector,bool)
40355C:  B               loc_40387C
40355E:  VLDR            S0, =-2000.0
403562:  VLDR            S2, [R9,#0x90]
403566:  VLDR            S4, =0.0
40356A:  VADD.F32        S0, S2, S0
40356E:  VLDR            S2, =0.0002
403572:  VMAX.F32        D0, D0, D2
403576:  VMOV.F32        S4, #1.0
40357A:  VMUL.F32        S0, S0, S2
40357E:  VADD.F32        S0, S0, S4
403582:  VDIV.F32        S18, S4, S0
403586:  B.W             loc_401EF8
40358A:  LDRB.W          R0, [R9,#0x3A]
40358E:  AND.W           R0, R0, #7
403592:  CMP             R0, #4
403594:  BNE             loc_4035C8
403596:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4035A2)
40359A:  LDRSH.W         R1, [R9,#0x26]
40359E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4035A0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4035A2:  LDR.W           R0, [R0,R1,LSL#2]
4035A6:  LDR             R1, [R0]
4035A8:  LDR             R1, [R1,#8]
4035AA:  BLX             R1
4035AC:  CBZ             R0, loc_4035C8
4035AE:  LDRH            R0, [R0,#0x28]
4035B0:  AND.W           R0, R0, #0x7000
4035B4:  ORR.W           R0, R0, #0x800
4035B8:  CMP.W           R0, #0x2800
4035BC:  BNE             loc_4035C8
4035BE:  LDR.W           R1, [R8]; CEntity *
4035C2:  MOV             R0, R9; this
4035C4:  BLX             j__ZN6CGlass29WindowRespondsToSoftCollisionEP7CEntityf; CGlass::WindowRespondsToSoftCollision(CEntity *,float)
4035C8:  MOV             R0, R10
4035CA:  MOV             R1, R9
4035CC:  MOV             R2, R11
4035CE:  MOV             R3, R8
4035D0:  BLX             j__ZN9CPhysical14ApplyCollisionEP7CEntityR9CColPointRf; CPhysical::ApplyCollision(CEntity *,CColPoint &,float &)
4035D4:  MOV             R6, R0
4035D6:  B               loc_403850
4035D8:  LDRB.W          R0, [R10,#0x48F]
4035DC:  LSLS            R0, R0, #0x18
4035DE:  BMI             loc_40360E
4035E0:  VLDR            S4, =0.0
4035E4:  MOVS            R6, #0
4035E6:  VMIN.F32        D10, D9, D2
4035EA:  B               loc_40362C
4035EC:  LDRB.W          R0, [R9,#0x44]
4035F0:  LSLS            R0, R0, #0x1D
4035F2:  BMI.W           loc_403448
4035F6:  LDR.W           R0, [R9]
4035FA:  MOVS            R1, #0
4035FC:  MOV             R4, R3
4035FE:  LDR             R2, [R0,#0x14]
403600:  MOV             R0, R9
403602:  BLX             R2
403604:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40360C)
403606:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x40360E)
403608:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
40360A:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40360C:  B               loc_4033E2
40360E:  VMOV.F32        S4, #4.0
403612:  MOVS            R6, #1
403614:  VMUL.F32        S6, S16, S18
403618:  VMUL.F32        S4, S0, S4
40361C:  VMUL.F32        S8, S2, S4
403620:  VADD.F32        S4, S4, S16
403624:  VADD.F32        S6, S8, S6
403628:  VDIV.F32        S20, S6, S4
40362C:  VSUB.F32        S4, S2, S20
403630:  VCMPE.F32       S4, #0.0
403634:  VMRS            APSR_nzcv, FPSCR
403638:  BGE.W           loc_40384E
40363C:  VLDR            S6, [R9,#0xA0]
403640:  VMOV.F32        S10, #0.5
403644:  VLDR            S8, [R10,#0xA0]
403648:  ADD.W           R4, R11, #0x10
40364C:  LDR.W           R0, [R10,#0x1C]
403650:  MOVW            R1, #0x2004
403654:  VADD.F32        S6, S8, S6
403658:  TST.W           R0, #0x1000
40365C:  VMUL.F32        S22, S6, S10
403660:  VMUL.F32        S4, S4, S22
403664:  VSUB.F32        S4, S20, S4
403668:  IT NE
40366A:  VMOVNE.F32      S4, S20
40366E:  VSUB.F32        S2, S4, S2
403672:  VMUL.F32        S2, S0, S2
403676:  VSTR            S2, [R8]
40367A:  LDR.W           R0, [R10,#0x44]
40367E:  TST             R0, R1
403680:  BNE             loc_40371E
403682:  TST.W           R0, #0x60
403686:  BNE             loc_4036EC
403688:  VLDR            S6, [R11,#0x14]
40368C:  LSLS            R0, R0, #0x18
40368E:  VLDR            S8, [R11,#0x18]
403692:  VLDR            S4, [R11,#0x10]
403696:  VMUL.F32        S6, S6, S2
40369A:  VMUL.F32        S8, S8, S2
40369E:  VLDR            S1, [R10,#0x90]
4036A2:  VMUL.F32        S2, S4, S2
4036A6:  VLDR            S10, [R10,#0x48]
4036AA:  VMOV.F32        S4, #1.0
4036AE:  VLDR            S12, [R10,#0x4C]
4036B2:  VLDR            S14, [R10,#0x50]
4036B6:  VDIV.F32        S4, S4, S1
4036BA:  VLDR            S1, =0.0
4036BE:  VMUL.F32        S2, S2, S4
4036C2:  IT PL
4036C4:  VMOVPL.F32      S1, S8
4036C8:  VMUL.F32        S6, S6, S4
4036CC:  VMUL.F32        S4, S1, S4
4036D0:  VADD.F32        S2, S10, S2
4036D4:  VADD.F32        S6, S6, S12
4036D8:  VADD.F32        S4, S4, S14
4036DC:  VSTR            S2, [R10,#0x48]
4036E0:  VSTR            S6, [R10,#0x4C]
4036E4:  VSTR            S4, [R10,#0x50]
4036E8:  VLDR            S2, [R8]
4036EC:  VDIV.F32        S0, S2, S0
4036F0:  LDR             R0, =(AudioEngine_ptr - 0x4036FC)
4036F2:  LDRB.W          R3, [R11,#0x20]; unsigned __int8
4036F6:  MOVS            R2, #0
4036F8:  ADD             R0, PC; AudioEngine_ptr
4036FA:  LDRB.W          R1, [R11,#0x23]
4036FE:  MOV.W           R5, #0x3F800000
403702:  LDR             R0, [R0]; AudioEngine ; this
403704:  STRD.W          R5, R2, [SP,#0xE0+var_D0]; float
403708:  STR             R2, [SP,#0xE0+var_C8]; unsigned __int8
40370A:  MOV             R2, R9; CEntity *
40370C:  STRD.W          R1, R11, [SP,#0xE0+var_E0]; unsigned __int8
403710:  MOV             R1, R10; CEntity *
403712:  STR             R4, [SP,#0xE0+var_D8]; CVector *
403714:  VSTR            S0, [SP,#0xE0+var_D4]
403718:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
40371C:  LDR             R3, [R7,#arg_0]
40371E:  CMP             R6, #1
403720:  BNE.W           loc_4033BA
403724:  LDR             R6, [SP,#0xE0+var_B0]
403726:  MOVW            R1, #0x2004
40372A:  LDRB            R0, [R6,#1]
40372C:  LSLS            R0, R0, #0x1B
40372E:  ITTT PL
403730:  VSUBPL.F32      S0, S18, S20
403734:  VMULPL.F32      S0, S0, S22
403738:  VSUBPL.F32      S20, S20, S0
40373C:  VSUB.F32        S18, S20, S18
403740:  VNMUL.F32       S0, S16, S18
403744:  VSTR            S0, [R3]
403748:  LDR.W           R0, [R9,#0x44]
40374C:  TST             R0, R1
40374E:  BNE.W           loc_4033BA
403752:  LDRB            R1, [R6]
403754:  VLDR            S20, [R11,#0x10]
403758:  VLDR            S22, [R11,#0x14]
40375C:  VLDR            S24, [R11,#0x18]
403760:  LSLS            R1, R1, #0x1A
403762:  BPL             loc_4037C6
403764:  ADD.W           R5, R9, #0x48 ; 'H'
403768:  MOV             R0, R9; this
40376A:  VLD1.32         {D16-D17}, [R5]
40376E:  MOV             R8, R3
403770:  VNEG.F32        Q8, Q8
403774:  VST1.32         {D16-D17}, [R5]
403778:  VLDR            S0, [R9,#0x58]
40377C:  VLDR            S2, [R9,#0x5C]
403780:  VNEG.F32        S0, S0
403784:  VNEG.F32        S2, S2
403788:  VSTR            S0, [R9,#0x58]
40378C:  VSTR            S2, [R9,#0x5C]
403790:  BLX             j__ZN9CPhysical10ApplySpeedEv; CPhysical::ApplySpeed(void)
403794:  VLD1.32         {D16-D17}, [R5]
403798:  MOV             R3, R8
40379A:  VNEG.F32        Q8, Q8
40379E:  VST1.32         {D16-D17}, [R5]
4037A2:  VLDR            S0, [R9,#0x58]
4037A6:  VLDR            S2, [R9,#0x5C]
4037AA:  VNEG.F32        S0, S0
4037AE:  VNEG.F32        S2, S2
4037B2:  VSTR            S0, [R9,#0x58]
4037B6:  VSTR            S2, [R9,#0x5C]
4037BA:  LDR             R0, [R6]
4037BC:  BIC.W           R0, R0, #0x20 ; ' '
4037C0:  STR             R0, [R6]
4037C2:  LDR.W           R0, [R9,#0x44]
4037C6:  TST.W           R0, #0x60
4037CA:  BNE             loc_403824
4037CC:  VMOV.F32        S6, #1.0
4037D0:  VLDR            S14, [R9,#0x90]
4037D4:  VMUL.F32        S0, S16, S18
4037D8:  LSLS            R0, R0, #0x18
4037DA:  VLDR            S8, [R9,#0x48]
4037DE:  VLDR            S10, [R9,#0x4C]
4037E2:  VLDR            S12, [R9,#0x50]
4037E6:  VDIV.F32        S6, S6, S14
4037EA:  VMUL.F32        S2, S0, S24
4037EE:  VLDR            S14, =0.0
4037F2:  VMUL.F32        S4, S0, S22
4037F6:  VMUL.F32        S0, S20, S0
4037FA:  IT PL
4037FC:  VMOVPL.F32      S14, S2
403800:  VMUL.F32        S2, S4, S6
403804:  VMUL.F32        S0, S0, S6
403808:  VMUL.F32        S4, S14, S6
40380C:  VADD.F32        S2, S2, S10
403810:  VADD.F32        S0, S8, S0
403814:  VADD.F32        S4, S4, S12
403818:  VSTR            S0, [R9,#0x48]
40381C:  VSTR            S2, [R9,#0x4C]
403820:  VSTR            S4, [R9,#0x50]
403824:  VLDR            S0, [R3]
403828:  MOVS            R2, #0
40382A:  LDR             R0, =(AudioEngine_ptr - 0x40383C)
40382C:  MOV.W           R6, #0x3F800000
403830:  VDIV.F32        S0, S0, S16
403834:  LDRB.W          R1, [R11,#0x20]
403838:  ADD             R0, PC; AudioEngine_ptr
40383A:  LDRB.W          R3, [R11,#0x23]
40383E:  STRD.W          R6, R2, [SP,#0xE0+var_D0]
403842:  STR             R2, [SP,#0xE0+var_C8]
403844:  STRD.W          R1, R11, [SP,#0xE0+var_E0]
403848:  STR             R4, [SP,#0xE0+var_D8]
40384A:  LDR             R0, [R0]; AudioEngine
40384C:  B               loc_4033AE
40384E:  MOVS            R6, #0
403850:  MOV             R0, R6
403852:  ADD             SP, SP, #0x80
403854:  VPOP            {D8-D15}
403858:  ADD             SP, SP, #4
40385A:  POP.W           {R8-R11}
40385E:  POP             {R4-R7,PC}
403860:  DCFS 9999.0
403864:  DCFS -2000.0
403868:  DCFS 0.0
40386C:  DCFS 0.0002
403870:  LDR.W           R0, [R9]
403874:  MOVS            R1, #0
403876:  LDR             R2, [R0,#0x14]
403878:  MOV             R0, R9
40387A:  BLX             R2
40387C:  LDR             R0, =(MI_FIRE_HYDRANT_ptr - 0x403882)
40387E:  ADD             R0, PC; MI_FIRE_HYDRANT_ptr
403880:  LDR             R1, [R0]; MI_FIRE_HYDRANT
403882:  LDRSH.W         R0, [R9,#0x26]
403886:  LDRH            R1, [R1]
403888:  CMP             R0, R1
40388A:  BNE             loc_4038B0
40388C:  LDRB.W          R1, [R9,#0x144]
403890:  LSLS            R1, R1, #0x19
403892:  BMI             loc_4038B0
403894:  LDR             R0, =(g_fx_ptr - 0x40389E)
403896:  LDR.W           R2, [R9,#0x14]
40389A:  ADD             R0, PC; g_fx_ptr
40389C:  ADD.W           R1, R2, #0x30 ; '0'
4038A0:  CMP             R2, #0
4038A2:  LDR             R0, [R0]; g_fx ; this
4038A4:  IT EQ
4038A6:  ADDEQ.W         R1, R9, #4; CVector *
4038AA:  BLX             j__ZN4Fx_c19TriggerWaterHydrantER7CVector; Fx_c::TriggerWaterHydrant(CVector &)
4038AE:  B               loc_403910
4038B0:  LDR             R1, =(MI_PARKINGMETER_ptr - 0x4038B6)
4038B2:  ADD             R1, PC; MI_PARKINGMETER_ptr
4038B4:  LDR             R1, [R1]; MI_PARKINGMETER
4038B6:  LDRH            R1, [R1]
4038B8:  CMP             R0, R1
4038BA:  BEQ             loc_4038C8
4038BC:  LDR             R1, =(MI_PARKINGMETER2_ptr - 0x4038C2)
4038BE:  ADD             R1, PC; MI_PARKINGMETER2_ptr
4038C0:  LDR             R1, [R1]; MI_PARKINGMETER2
4038C2:  LDRH            R1, [R1]
4038C4:  CMP             R0, R1
4038C6:  BNE             loc_403920
4038C8:  LDRB.W          R0, [R9,#0x144]
4038CC:  LSLS            R0, R0, #0x19
4038CE:  BMI             loc_403920
4038D0:  LDR.W           R0, [R9,#0x14]
4038D4:  ADD.W           R1, R0, #0x30 ; '0'
4038D8:  CMP             R0, #0
4038DA:  IT EQ
4038DC:  ADDEQ.W         R1, R9, #4
4038E0:  LDRD.W          R4, R0, [R1]
4038E4:  STR             R0, [SP,#0xE0+var_C0]
4038E6:  LDR             R6, [R1,#8]
4038E8:  BLX             rand
4038EC:  MOV             R1, #0x51EB851F
4038F4:  SMMUL.W         R1, R0, R1
4038F8:  ASRS            R2, R1, #5
4038FA:  ADD.W           R1, R2, R1,LSR#31
4038FE:  MOVS            R2, #0x64 ; 'd'
403900:  MLS.W           R3, R1, R2, R0
403904:  LDR             R1, [SP,#0xE0+var_C0]
403906:  MOV             R2, R6
403908:  MOV             R0, R4
40390A:  LDR             R6, [SP,#0xE0+var_B0]
40390C:  BLX             j__ZN8CPickups15CreateSomeMoneyE7CVectori; CPickups::CreateSomeMoney(CVector,int)
403910:  LDR.W           R0, [R9,#0x144]
403914:  MOV             R3, R5
403916:  ORR.W           R0, R0, #0x40 ; '@'
40391A:  STR.W           R0, [R9,#0x144]
40391E:  B               loc_403944
403920:  LDRB.W          R0, [R9,#0x3A]
403924:  MOV             R3, R5
403926:  AND.W           R0, R0, #7
40392A:  CMP             R0, #4
40392C:  BNE             loc_403944
40392E:  LDR.W           R0, [R9,#0x164]
403932:  LDRB            R0, [R0,#0x1F]
403934:  CMP             R0, #0
403936:  ITTT EQ
403938:  LDREQ.W         R0, [R9,#0x144]
40393C:  ORREQ.W         R0, R0, #0x40 ; '@'
403940:  STREQ.W         R0, [R9,#0x144]
403944:  LDRB.W          R0, [R10,#0x44]
403948:  LSLS            R0, R0, #0x1D
40394A:  BMI.W           loc_403448
40394E:  LDR.W           R0, [R9,#0x164]
403952:  VLDR            S0, =200.0
403956:  VLDR            S2, [R0,#0x14]
40395A:  VCMPE.F32       S2, S0
40395E:  VMRS            APSR_nzcv, FPSCR
403962:  BLE.W           loc_403448
403966:  VLDR            S0, =0.2
40396A:  MOVS            R4, #1
40396C:  VLDR            S2, [R11,#0x10]
403970:  VLDR            S4, [R11,#0x14]
403974:  VLDR            S6, [R11,#0x18]
403978:  VMUL.F32        S2, S2, S0
40397C:  VMUL.F32        S4, S4, S0
403980:  VMUL.F32        S0, S6, S0
403984:  VLDR            S6, [R8]
403988:  LDRD.W          R0, R6, [SP,#0xE0+var_6C]
40398C:  LDR             R5, [SP,#0xE0+var_64]
40398E:  STRD.W          R0, R6, [SP,#0xE0+var_E0]
403992:  MOV             R0, R10
403994:  STR             R5, [SP,#0xE0+var_D8]
403996:  VMUL.F32        S2, S2, S6
40399A:  LDR             R6, [SP,#0xE0+var_B0]
40399C:  VMUL.F32        S4, S4, S6
4039A0:  LDR             R5, [R7,#arg_0]
4039A2:  VMUL.F32        S0, S0, S6
4039A6:  STR             R4, [SP,#0xE0+var_D4]
4039A8:  LDR.W           R8, [SP,#0xE0+var_B4]
4039AC:  VMOV            R1, S2
4039B0:  VMOV            R2, S4
4039B4:  VMOV            R3, S0
4039B8:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
4039BC:  MOV             R3, R5
4039BE:  B               loc_403448
