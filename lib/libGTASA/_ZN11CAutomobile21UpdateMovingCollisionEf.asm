; =========================================================
; Game Engine Function: _ZN11CAutomobile21UpdateMovingCollisionEf
; Address            : 0x54FC6C - 0x550450
; =========================================================

54FC6C:  PUSH            {R4-R7,LR}
54FC6E:  ADD             R7, SP, #0xC
54FC70:  PUSH.W          {R8-R11}
54FC74:  SUB             SP, SP, #4
54FC76:  VPUSH           {D8-D14}
54FC7A:  SUB             SP, SP, #0x70
54FC7C:  MOV             R4, R0
54FC7E:  LDRSH.W         R0, [R4,#0x26]
54FC82:  CMP.W           R0, #0x20C
54FC86:  BGE             loc_54FC9E
54FC88:  CMP.W           R0, #0x196
54FC8C:  ITT NE
54FC8E:  MOVWNE          R2, #0x1BB
54FC92:  CMPNE           R0, R2
54FC94:  BEQ             loc_54FCAE
54FC96:  CMP.W           R0, #0x1E6
54FC9A:  BEQ             loc_54FCAE
54FC9C:  B               loc_54FCB6
54FC9E:  IT NE
54FCA0:  CMPNE.W         R0, #0x250
54FCA4:  BEQ             loc_54FCAE
54FCA6:  MOVW            R2, #0x212
54FCAA:  CMP             R0, R2
54FCAC:  BNE             loc_54FCB6
54FCAE:  LDRH.W          R2, [R4,#0x880]
54FCB2:  STRH.W          R2, [R4,#0x882]
54FCB6:  VMOV            S16, R1
54FCBA:  LDRB.W          R1, [R4,#0x3A]
54FCBE:  CMP             R1, #8
54FCC0:  BCS             loc_54FCF6
54FCC2:  LDR.W           R0, [R4,#0x464]; this
54FCC6:  CMP             R0, #0
54FCC8:  BEQ.W           loc_54FF94
54FCCC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
54FCD0:  MOVS            R5, #0
54FCD2:  CMP             R0, #1
54FCD4:  BNE.W           loc_54FF96
54FCD8:  LDR.W           R0, =(_ZN10CGameLogic9GameStateE_ptr - 0x54FCE0)
54FCDC:  ADD             R0, PC; _ZN10CGameLogic9GameStateE_ptr
54FCDE:  LDR             R0, [R0]; CGameLogic::GameState ...
54FCE0:  LDRB            R0, [R0]; CGameLogic::GameState
54FCE2:  CMP             R0, #0
54FCE4:  BNE.W           loc_54FF96
54FCE8:  LDR.W           R0, [R4,#0x464]; this
54FCEC:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
54FCF0:  LDRH            R1, [R4,#0x26]
54FCF2:  MOV             R5, R0
54FCF4:  B               loc_54FD4E
54FCF6:  VCMPE.F32       S16, #0.0
54FCFA:  MOVS            R5, #0
54FCFC:  VMRS            APSR_nzcv, FPSCR
54FD00:  BLT.W           loc_54FF96
54FD04:  LDRB.W          R1, [R4,#0x4A8]
54FD08:  CMP             R1, #2
54FD0A:  BNE.W           loc_54FF96
54FD0E:  UXTH            R1, R0
54FD10:  MOVS            R5, #0
54FD12:  CMP.W           R0, #0x20C
54FD16:  BLT             loc_54FD38
54FD18:  SUB.W           R2, R0, #0x20C
54FD1C:  CMP             R2, #0x14
54FD1E:  BHI             loc_54FD30
54FD20:  MOVS            R3, #1
54FD22:  LSL.W           R2, R3, R2
54FD26:  MOVS            R3, #0x100041
54FD2C:  TST             R2, R3
54FD2E:  BNE             loc_54FD4E
54FD30:  CMP.W           R0, #0x250
54FD34:  BEQ             loc_54FD4E
54FD36:  B               loc_54FF96
54FD38:  CMP.W           R0, #0x196
54FD3C:  ITT NE
54FD3E:  MOVWNE          R2, #0x1BB
54FD42:  CMPNE           R0, R2
54FD44:  BEQ             loc_54FD4E
54FD46:  CMP.W           R0, #0x1E6
54FD4A:  BNE.W           loc_54FF96
54FD4E:  CMP.W           R1, #0x220
54FD52:  ITT NE
54FD54:  SXTHNE          R0, R1
54FD56:  CMPNE.W         R0, #0x20C
54FD5A:  BNE             loc_54FE04
54FD5C:  VCMPE.F32       S16, #0.0
54FD60:  LDRH.W          R0, [R4,#0x880]
54FD64:  VMRS            APSR_nzcv, FPSCR
54FD68:  STRH.W          R0, [R4,#0x882]
54FD6C:  BGE.W           loc_54FE72
54FD70:  MOVS            R0, #0
54FD72:  CMP             R5, #0
54FD74:  BEQ.W           loc_54FF94
54FD78:  MOVW            R3, #0x4000
54FD7C:  STR             R0, [SP,#0xC8+var_C8]; CHID *
54FD7E:  MOVT            R3, #0x451C; float
54FD82:  MOV             R0, R5; this
54FD84:  MOVS            R1, #0; bool
54FD86:  MOVS            R2, #0; CAutomobile *
54FD88:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
54FD8C:  CMN.W           R0, #0xB
54FD90:  BGT             loc_54FE90
54FD92:  LDR.W           R0, =(DEFAULT_COLLISION_EXTENDLIMIT_ptr - 0x54FDA6)
54FD96:  MOVW            R3, #0x4000
54FD9A:  LDRH.W          R8, [R4,#0x880]
54FD9E:  MOVT            R3, #0x451C; float
54FDA2:  ADD             R0, PC; DEFAULT_COLLISION_EXTENDLIMIT_ptr
54FDA4:  MOVS            R1, #0; bool
54FDA6:  MOVS            R2, #0; CAutomobile *
54FDA8:  LDR             R0, [R0]; DEFAULT_COLLISION_EXTENDLIMIT
54FDAA:  LDRSH.W         R6, [R0]
54FDAE:  MOVS            R0, #0
54FDB0:  STR             R0, [SP,#0xC8+var_C8]; CHID *
54FDB2:  MOV             R0, R5; this
54FDB4:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
54FDB8:  LSLS            R0, R0, #1
54FDBA:  VMOV.F32        S0, #10.0
54FDBE:  VMOV            S2, R0
54FDC2:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x54FDCE)
54FDC6:  VCVT.F32.S32    S2, S2
54FDCA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
54FDCC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
54FDCE:  VMUL.F32        S0, S2, S0
54FDD2:  VLDR            S2, [R0]
54FDD6:  VMUL.F32        S0, S2, S0
54FDDA:  VLDR            S2, =0.0078125
54FDDE:  VMUL.F32        S0, S0, S2
54FDE2:  VMOV            S2, R6
54FDE6:  VCVT.S32.F32    S0, S0
54FDEA:  VCVT.F32.S32    S2, S2
54FDEE:  VMOV            R0, S0
54FDF2:  SUB.W           R0, R8, R0
54FDF6:  VMOV            S0, R0
54FDFA:  VCVT.F32.S32    S0, S0
54FDFE:  VMIN.F32        D0, D1, D0
54FE02:  B               loc_54FEF2
54FE04:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x54FE0C)
54FE08:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
54FE0A:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
54FE0C:  LDR.W           R0, [R1,R0,LSL#2]
54FE10:  LDR             R6, [R0,#0x2C]
54FE12:  MOV             R0, R4; this
54FE14:  LDR.W           R11, [R6,#0x2C]
54FE18:  BLX             j__ZN8CVehicle18GetSpecialColModelEv; CVehicle::GetSpecialColModel(void)
54FE1C:  CMP             R0, #1
54FE1E:  BNE.W           loc_54FF94
54FE22:  LDR.W           R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x54FE32)
54FE26:  CMP             R5, #0
54FE28:  STR             R6, [SP,#0xC8+var_BC]
54FE2A:  LDRSB.W         R1, [R4,#0x48F]
54FE2E:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
54FE30:  LDR             R0, [R0]; CVehicle::m_aSpecialColModel ...
54FE32:  ADD.W           R1, R1, R1,LSL#1
54FE36:  STR             R1, [SP,#0xC8+var_C0]
54FE38:  ADD.W           R0, R0, R1,LSL#4
54FE3C:  LDR.W           R10, [R0,#0x2C]
54FE40:  BEQ             loc_54FF02
54FE42:  LDR.W           R0, =(DEFAULT_COLLISION_EXTENDLIMIT_ptr - 0x54FE4E)
54FE46:  MOVS            R1, #1; bool
54FE48:  MOV             R2, R4; CAutomobile *
54FE4A:  ADD             R0, PC; DEFAULT_COLLISION_EXTENDLIMIT_ptr
54FE4C:  LDR             R0, [R0]; DEFAULT_COLLISION_EXTENDLIMIT
54FE4E:  LDRSH.W         R0, [R0]
54FE52:  VMOV            S0, R0
54FE56:  MOVS            R0, #0
54FE58:  VCVT.F32.S32    S0, S0
54FE5C:  STR             R0, [SP,#0xC8+var_C8]; CHID *
54FE5E:  MOV             R0, R5; this
54FE60:  VMOV            R3, S0; float
54FE64:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
54FE68:  VMOV            S0, R0
54FE6C:  VCVT.F32.S32    S0, S0
54FE70:  B               loc_54FF06
54FE72:  LDR.W           R0, =(DEFAULT_COLLISION_EXTENDLIMIT_ptr - 0x54FE7A)
54FE76:  ADD             R0, PC; DEFAULT_COLLISION_EXTENDLIMIT_ptr
54FE78:  LDR             R0, [R0]; DEFAULT_COLLISION_EXTENDLIMIT
54FE7A:  LDRSH.W         R0, [R0]
54FE7E:  VMOV            S0, R0
54FE82:  VCVT.F32.S32    S0, S0
54FE86:  VMUL.F32        S0, S0, S16
54FE8A:  VCVT.U32.F32    S0, S0
54FE8E:  B               loc_54FEF6
54FE90:  LDRH.W          R6, [R4,#0x880]
54FE94:  MOVS            R0, #0
54FE96:  CMP             R6, #0
54FE98:  BEQ             loc_54FF94
54FE9A:  MOVW            R3, #0x4000
54FE9E:  STR             R0, [SP,#0xC8+var_C8]; CHID *
54FEA0:  MOVT            R3, #0x451C; float
54FEA4:  MOV             R0, R5; this
54FEA6:  MOVS            R1, #0; bool
54FEA8:  MOVS            R2, #0; CAutomobile *
54FEAA:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
54FEAE:  ADDS            R0, #0x64 ; 'd'
54FEB0:  VMOV.F32        S0, #10.0
54FEB4:  VMOV            S2, R0
54FEB8:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x54FEC4)
54FEBC:  VCVT.F32.S32    S2, S2
54FEC0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
54FEC2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
54FEC4:  VMUL.F32        S0, S2, S0
54FEC8:  VLDR            S2, [R0]
54FECC:  VMUL.F32        S0, S2, S0
54FED0:  VLDR            S2, =0.0078125
54FED4:  VMUL.F32        S0, S0, S2
54FED8:  VLDR            S2, =0.0
54FEDC:  VCVT.S32.F32    S0, S0
54FEE0:  VMOV            R0, S0
54FEE4:  SUBS            R0, R6, R0
54FEE6:  VMOV            S0, R0
54FEEA:  VCVT.F32.S32    S0, S0
54FEEE:  VMAX.F32        D0, D0, D1
54FEF2:  VCVT.U32.F32    S0, S0
54FEF6:  VMOV            R0, S0
54FEFA:  MOVS            R5, #0
54FEFC:  STRH.W          R0, [R4,#0x880]
54FF00:  B               loc_54FF96
54FF02:  VLDR            S0, =0.0
54FF06:  VCMPE.F32       S16, #0.0
54FF0A:  VMRS            APSR_nzcv, FPSCR
54FF0E:  BGE             loc_54FFA6
54FF10:  LDRH.W          R0, [R4,#0x880]
54FF14:  CMP             R5, #0
54FF16:  STRH.W          R0, [R4,#0x882]
54FF1A:  BEQ             loc_54FF94
54FF1C:  VABS.F32        S4, S0
54FF20:  MOVS            R5, #0
54FF22:  VMOV.F32        S2, #10.0
54FF26:  VCMPE.F32       S4, S2
54FF2A:  VMRS            APSR_nzcv, FPSCR
54FF2E:  BLE             loc_54FF96
54FF30:  VCMPE.F32       S0, #0.0
54FF34:  MOVW            R3, #0x212
54FF38:  VMRS            APSR_nzcv, FPSCR
54FF3C:  VMOV.F32        S4, #20.0
54FF40:  ADD.W           R2, R4, #0x880
54FF44:  IT GT
54FF46:  VMOVGT.F32      S4, S2
54FF4A:  LDRH            R1, [R4,#0x26]
54FF4C:  CMP             R1, R3
54FF4E:  LDR.W           R3, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x54FF5C)
54FF52:  IT EQ
54FF54:  VMOVEQ.F32      S2, S4
54FF58:  ADD             R3, PC; _ZN6CTimer12ms_fTimeStepE_ptr
54FF5A:  VMUL.F32        S0, S0, S2
54FF5E:  LDR             R3, [R3]; CTimer::ms_fTimeStep ...
54FF60:  VLDR            S2, [R3]
54FF64:  LDR.W           R3, =(DEFAULT_COLLISION_EXTENDLIMIT_ptr - 0x54FF74)
54FF68:  VMUL.F32        S0, S2, S0
54FF6C:  VLDR            S2, =0.0078125
54FF70:  ADD             R3, PC; DEFAULT_COLLISION_EXTENDLIMIT_ptr
54FF72:  LDR             R3, [R3]; DEFAULT_COLLISION_EXTENDLIMIT
54FF74:  VMUL.F32        S0, S0, S2
54FF78:  VCVT.S32.F32    S0, S0
54FF7C:  LDRSH.W         R3, [R3]
54FF80:  VMOV            R6, S0
54FF84:  ADD             R0, R6
54FF86:  CMP             R0, #0
54FF88:  IT LE
54FF8A:  MOVLE           R0, #0
54FF8C:  CMP             R0, R3
54FF8E:  IT GE
54FF90:  MOVGE           R0, R3
54FF92:  B               loc_54FFD4
54FF94:  MOVS            R5, #0
54FF96:  MOV             R0, R5
54FF98:  ADD             SP, SP, #0x70 ; 'p'
54FF9A:  VPOP            {D8-D14}
54FF9E:  ADD             SP, SP, #4
54FFA0:  POP.W           {R8-R11}
54FFA4:  POP             {R4-R7,PC}
54FFA6:  LDR.W           R0, =(DEFAULT_COLLISION_EXTENDLIMIT_ptr - 0x54FFB6)
54FFAA:  ADD.W           R2, R4, #0x880
54FFAE:  LDRH.W          R1, [R4,#0x880]
54FFB2:  ADD             R0, PC; DEFAULT_COLLISION_EXTENDLIMIT_ptr
54FFB4:  STRH.W          R1, [R4,#0x882]
54FFB8:  LDR             R0, [R0]; DEFAULT_COLLISION_EXTENDLIMIT
54FFBA:  LDRSH.W         R0, [R0]
54FFBE:  VMOV            S0, R0
54FFC2:  VCVT.F32.S32    S0, S0
54FFC6:  VMUL.F32        S0, S0, S16
54FFCA:  VCVT.U32.F32    S0, S0
54FFCE:  LDRH            R1, [R4,#0x26]
54FFD0:  VMOV            R0, S0
54FFD4:  STRH            R0, [R2]
54FFD6:  MOVS            R2, #0
54FFD8:  CMP.W           R1, #0x1E6
54FFDC:  STRD.W          R2, R2, [SP,#0xC8+var_60]
54FFE0:  BLT             loc_55000A
54FFE2:  CMP.W           R1, #0x250
54FFE6:  BEQ             loc_550042
54FFE8:  MOVW            R2, #0x212
54FFEC:  CMP             R1, R2
54FFEE:  BEQ             loc_550074
54FFF0:  CMP.W           R1, #0x1E6
54FFF4:  BNE.W           loc_550100
54FFF8:  LDR.W           R1, [R4,#0x6AC]
54FFFC:  CMP             R1, #0
54FFFE:  BEQ.W           loc_550100
550002:  UXTH            R0, R0
550004:  VLDR            S2, =0.0002
550008:  B               loc_550026
55000A:  CMP.W           R1, #0x196
55000E:  BEQ             loc_5500AA
550010:  MOVW            R2, #0x1BB
550014:  CMP             R1, R2
550016:  BNE             loc_550100
550018:  LDR.W           R1, [R4,#0x6AC]
55001C:  CMP             R1, #0
55001E:  BEQ             loc_550100
550020:  UXTH            R0, R0
550022:  VLDR            S2, =-0.0001
550026:  VMOV            S0, R0
55002A:  VCVT.F32.U32    S0, S0
55002E:  VMUL.F32        S0, S0, S2
550032:  ADD             R0, SP, #0xC8+var_A0; this
550034:  VMOV            R1, S0; x
550038:  BLX             j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
55003C:  LDR.W           R0, [R4,#0x6AC]
550040:  B               loc_5500DE
550042:  LDR.W           R1, [R4,#0x6BC]
550046:  CMP             R1, #0
550048:  BEQ             loc_550100
55004A:  UXTH            R0, R0
55004C:  LDR.W           R1, =(_ZN6CPlane21ANDROM_COL_ANGLE_MULTE_ptr - 0x550058)
550050:  VMOV            S0, R0
550054:  ADD             R1, PC; _ZN6CPlane21ANDROM_COL_ANGLE_MULTE_ptr
550056:  VCVT.F32.U32    S0, S0
55005A:  LDR             R0, [R1]; CPlane::ANDROM_COL_ANGLE_MULT ...
55005C:  VLDR            S2, [R0]
550060:  ADD             R0, SP, #0xC8+var_A0; this
550062:  VMUL.F32        S0, S2, S0
550066:  VMOV            R1, S0; x
55006A:  BLX             j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
55006E:  LDR.W           R0, [R4,#0x6BC]
550072:  B               loc_5500DE
550074:  LDR.W           R1, [R4,#0x6AC]
550078:  CMP             R1, #0
55007A:  BEQ             loc_550100
55007C:  UXTH            R0, R0
55007E:  VLDR            S2, =0.0006
550082:  VMOV            S0, R0
550086:  ADD             R0, SP, #0xC8+var_A0; this
550088:  MOVS            R1, #0; float
55008A:  MOVS            R2, #0; float
55008C:  VCVT.F32.U32    S0, S0
550090:  VMUL.F32        S0, S0, S2
550094:  VMOV            R3, S0; float
550098:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
55009C:  VLDR            S16, =0.0
5500A0:  VMOV.F32        S18, S16
5500A4:  VMOV.F32        S20, S16
5500A8:  B               loc_550100
5500AA:  LDR.W           R1, [R4,#0x5A4]
5500AE:  CMP             R1, #1
5500B0:  BNE             loc_550100
5500B2:  LDR.W           R1, [R4,#0x6B4]
5500B6:  CBZ             R1, loc_550100
5500B8:  UXTH            R0, R0
5500BA:  LDR             R1, =(_ZN13CMonsterTruck20DUMPER_COL_ANGLEMULTE_ptr - 0x5500C4)
5500BC:  VMOV            S0, R0
5500C0:  ADD             R1, PC; _ZN13CMonsterTruck20DUMPER_COL_ANGLEMULTE_ptr
5500C2:  VCVT.F32.U32    S0, S0
5500C6:  LDR             R0, [R1]; CMonsterTruck::DUMPER_COL_ANGLEMULT ...
5500C8:  VLDR            S2, [R0]
5500CC:  ADD             R0, SP, #0xC8+var_A0; this
5500CE:  VMUL.F32        S0, S2, S0
5500D2:  VMOV            R1, S0; x
5500D6:  BLX             j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
5500DA:  LDR.W           R0, [R4,#0x6B4]
5500DE:  VLDR            S16, [R0,#0x40]
5500E2:  VLDR            S18, [R0,#0x44]
5500E6:  VLDR            S20, [R0,#0x48]
5500EA:  B               loc_550100
5500EC:  DCFS 0.0078125
5500F0:  DCFS 0.0
5500F4:  DCFS 0.0002
5500F8:  DCFS -0.0001
5500FC:  DCFS 0.0006
550100:  LDRSH.W         R1, [R10,#4]
550104:  CMP             R1, #1
550106:  BLT.W           loc_550300
55010A:  VLDR            S22, =-1000.0
55010E:  ADD             R6, SP, #0xC8+var_AC
550110:  VLDR            S24, =1000.0
550114:  ADD             R5, SP, #0xC8+var_A0
550116:  ADD             R4, SP, #0xC8+var_B8
550118:  MOV.W           R9, #0
55011C:  MOV.W           R8, #0
550120:  LDR.W           R0, [R10,#0x18]
550124:  ADD             R0, R9
550126:  LDRB            R0, [R0,#0xC]
550128:  CMP             R0, #0x41 ; 'A'
55012A:  BNE.W           loc_5502EA
55012E:  LDRD.W          R0, R1, [R11,#0x14]
550132:  MOV             R2, R4
550134:  LDR.W           R1, [R1,R9]
550138:  ADD.W           R1, R1, R1,LSL#1
55013C:  ADD.W           R0, R0, R1,LSL#2
550140:  MOV             R1, R5
550142:  VLDR            S0, [R0]
550146:  VLDR            S2, [R0,#4]
55014A:  VLDR            S4, [R0,#8]
55014E:  VSUB.F32        S0, S0, S16
550152:  VSUB.F32        S2, S2, S18
550156:  MOV             R0, R6
550158:  VSUB.F32        S4, S4, S20
55015C:  VSTR            S2, [SP,#0xC8+var_B4]
550160:  VSTR            S0, [SP,#0xC8+var_B8]
550164:  VSTR            S4, [SP,#0xC8+var_B0]
550168:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55016C:  VLDR            S4, [SP,#0xC8+var_A4]
550170:  VLDR            S0, [SP,#0xC8+var_AC]
550174:  VLDR            S2, [SP,#0xC8+var_A8]
550178:  VADD.F32        S26, S20, S4
55017C:  LDRD.W          R0, R1, [R10,#0x14]
550180:  VADD.F32        S0, S16, S0
550184:  LDR.W           R1, [R1,R9]
550188:  VADD.F32        S2, S18, S2
55018C:  ADD.W           R1, R1, R1,LSL#1
550190:  ADD.W           R0, R0, R1,LSL#2
550194:  VCMPE.F32       S26, S22
550198:  VMRS            APSR_nzcv, FPSCR
55019C:  VSTR            S0, [R0]
5501A0:  VSTR            S2, [R0,#4]
5501A4:  VSTR            S26, [R0,#8]
5501A8:  BLE             loc_5501B4
5501AA:  VMOV.F32        S22, S26
5501AE:  VMOV.F32        S26, S24
5501B2:  B               loc_5501C2
5501B4:  VCMPE.F32       S26, S24
5501B8:  VMRS            APSR_nzcv, FPSCR
5501BC:  IT GE
5501BE:  VMOVGE.F32      S26, S24
5501C2:  LDRD.W          R0, R1, [R11,#0x14]
5501C6:  MOV             R2, R4
5501C8:  ADD             R1, R9
5501CA:  LDR             R1, [R1,#4]
5501CC:  ADD.W           R1, R1, R1,LSL#1
5501D0:  ADD.W           R0, R0, R1,LSL#2
5501D4:  MOV             R1, R5
5501D6:  VLDR            S0, [R0]
5501DA:  VLDR            S2, [R0,#4]
5501DE:  VLDR            S4, [R0,#8]
5501E2:  VSUB.F32        S0, S0, S16
5501E6:  VSUB.F32        S2, S2, S18
5501EA:  MOV             R0, R6
5501EC:  VSUB.F32        S4, S4, S20
5501F0:  VSTR            S2, [SP,#0xC8+var_B4]
5501F4:  VSTR            S0, [SP,#0xC8+var_B8]
5501F8:  VSTR            S4, [SP,#0xC8+var_B0]
5501FC:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
550200:  VLDR            S4, [SP,#0xC8+var_A4]
550204:  VLDR            S0, [SP,#0xC8+var_AC]
550208:  VLDR            S2, [SP,#0xC8+var_A8]
55020C:  VADD.F32        S28, S20, S4
550210:  LDRD.W          R0, R1, [R10,#0x14]
550214:  VADD.F32        S0, S16, S0
550218:  ADD             R1, R9
55021A:  VADD.F32        S2, S18, S2
55021E:  LDR             R1, [R1,#4]
550220:  ADD.W           R1, R1, R1,LSL#1
550224:  VCMPE.F32       S28, S22
550228:  VMRS            APSR_nzcv, FPSCR
55022C:  ADD.W           R0, R0, R1,LSL#2
550230:  VSTR            S0, [R0]
550234:  VSTR            S2, [R0,#4]
550238:  VSTR            S28, [R0,#8]
55023C:  BLE             loc_550248
55023E:  VMOV.F32        S22, S28
550242:  VMOV.F32        S28, S26
550246:  B               loc_550256
550248:  VCMPE.F32       S28, S26
55024C:  VMRS            APSR_nzcv, FPSCR
550250:  IT GE
550252:  VMOVGE.F32      S28, S26
550256:  LDRD.W          R0, R1, [R11,#0x14]
55025A:  MOV             R2, R4
55025C:  ADD             R1, R9
55025E:  LDR             R1, [R1,#8]
550260:  ADD.W           R1, R1, R1,LSL#1
550264:  ADD.W           R0, R0, R1,LSL#2
550268:  MOV             R1, R5
55026A:  VLDR            S0, [R0]
55026E:  VLDR            S2, [R0,#4]
550272:  VLDR            S4, [R0,#8]
550276:  VSUB.F32        S0, S0, S16
55027A:  VSUB.F32        S2, S2, S18
55027E:  MOV             R0, R6
550280:  VSUB.F32        S4, S4, S20
550284:  VSTR            S2, [SP,#0xC8+var_B4]
550288:  VSTR            S0, [SP,#0xC8+var_B8]
55028C:  VSTR            S4, [SP,#0xC8+var_B0]
550290:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
550294:  VLDR            S4, [SP,#0xC8+var_A4]
550298:  VLDR            S0, [SP,#0xC8+var_AC]
55029C:  VLDR            S2, [SP,#0xC8+var_A8]
5502A0:  VADD.F32        S24, S20, S4
5502A4:  LDRD.W          R0, R1, [R10,#0x14]
5502A8:  VADD.F32        S0, S16, S0
5502AC:  ADD             R1, R9
5502AE:  VADD.F32        S2, S18, S2
5502B2:  LDR             R1, [R1,#8]
5502B4:  ADD.W           R1, R1, R1,LSL#1
5502B8:  VCMPE.F32       S24, S22
5502BC:  VMRS            APSR_nzcv, FPSCR
5502C0:  ADD.W           R0, R0, R1,LSL#2
5502C4:  VSTR            S0, [R0]
5502C8:  VSTR            S2, [R0,#4]
5502CC:  VSTR            S24, [R0,#8]
5502D0:  BLE             loc_5502DC
5502D2:  VMOV.F32        S22, S24
5502D6:  VMOV.F32        S24, S28
5502DA:  B               loc_5502EA
5502DC:  VCMPE.F32       S24, S28
5502E0:  VMRS            APSR_nzcv, FPSCR
5502E4:  IT GE
5502E6:  VMOVGE.F32      S24, S28
5502EA:  LDRSH.W         R0, [R10,#4]
5502EE:  ADD.W           R8, R8, #1
5502F2:  ADD.W           R9, R9, #0x10
5502F6:  CMP             R8, R0
5502F8:  BLT.W           loc_550120
5502FC:  UXTH            R1, R0
5502FE:  B               loc_550308
550300:  VLDR            S24, =1000.0
550304:  VLDR            S22, =-1000.0
550308:  LDR.W           R0, [R10,#0x1C]
55030C:  CBZ             R0, loc_550348
55030E:  SXTH            R1, R1
550310:  CMP             R1, #1
550312:  BLT             loc_550348
550314:  LDRD.W          R1, R2, [R10,#0x14]
550318:  BLX             j__ZN17CColTrianglePlane3SetEPK7CVectorR12CColTriangle; CColTrianglePlane::Set(CVector const*,CColTriangle &)
55031C:  LDRSH.W         R0, [R10,#4]
550320:  CMP             R0, #2
550322:  BLT             loc_550348
550324:  MOVS            R4, #1
550326:  MOVS            R5, #0x10
550328:  MOVS            R6, #0x14
55032A:  LDRD.W          R1, R2, [R10,#0x14]
55032E:  LDR.W           R0, [R10,#0x1C]
550332:  ADD             R2, R5
550334:  ADD             R0, R6
550336:  BLX             j__ZN17CColTrianglePlane3SetEPK7CVectorR12CColTriangle; CColTrianglePlane::Set(CVector const*,CColTriangle &)
55033A:  LDRSH.W         R0, [R10,#4]
55033E:  ADDS            R4, #1
550340:  ADDS            R6, #0x14
550342:  ADDS            R5, #0x10
550344:  CMP             R4, R0
550346:  BLT             loc_55032A
550348:  LDRSH.W         R0, [R10]
55034C:  CMP             R0, #1
55034E:  BLT             loc_550408
550350:  LDR.W           R0, [R10,#8]
550354:  ADD             R6, SP, #0xC8+var_AC
550356:  ADD.W           R8, SP, #0xC8+var_A0
55035A:  ADD.W           R9, SP, #0xC8+var_B8
55035E:  MOVS            R5, #0
550360:  MOVS            R4, #8
550362:  ADDS            R1, R0, R4
550364:  LDRB            R1, [R1,#8]
550366:  CMP             R1, #0x41 ; 'A'
550368:  BNE             loc_5503FC
55036A:  LDR.W           R0, [R11,#8]
55036E:  MOV             R1, R8
550370:  MOV             R2, R9
550372:  ADD             R0, R4
550374:  VLDR            S0, [R0,#-8]
550378:  VLDR            S2, [R0,#-4]
55037C:  VLDR            S4, [R0]
550380:  VSUB.F32        S0, S0, S16
550384:  VSUB.F32        S2, S2, S18
550388:  MOV             R0, R6
55038A:  VSUB.F32        S4, S4, S20
55038E:  VSTR            S2, [SP,#0xC8+var_B4]
550392:  VSTR            S0, [SP,#0xC8+var_B8]
550396:  VSTR            S4, [SP,#0xC8+var_B0]
55039A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55039E:  VLDR            S0, [SP,#0xC8+var_AC]
5503A2:  VLDR            S2, [SP,#0xC8+var_A8]
5503A6:  VLDR            S4, [SP,#0xC8+var_A4]
5503AA:  VADD.F32        S0, S16, S0
5503AE:  VADD.F32        S2, S18, S2
5503B2:  LDR.W           R0, [R10,#8]
5503B6:  VADD.F32        S4, S20, S4
5503BA:  ADD             R0, R4
5503BC:  VSTR            S0, [R0,#-8]
5503C0:  VSTR            S2, [R0,#-4]
5503C4:  VSTR            S4, [R0]
5503C8:  LDR.W           R0, [R10,#8]
5503CC:  ADDS            R1, R0, R4
5503CE:  VLDR            S0, [R1]
5503D2:  VLDR            S2, [R1,#4]
5503D6:  VADD.F32        S4, S0, S2
5503DA:  VCMPE.F32       S4, S22
5503DE:  VMRS            APSR_nzcv, FPSCR
5503E2:  BLE             loc_5503EA
5503E4:  VMOV.F32        S22, S4
5503E8:  B               loc_5503FC
5503EA:  VSUB.F32        S0, S0, S2
5503EE:  VCMPE.F32       S0, S24
5503F2:  VMRS            APSR_nzcv, FPSCR
5503F6:  IT LT
5503F8:  VMOVLT.F32      S24, S0
5503FC:  LDRSH.W         R1, [R10]
550400:  ADDS            R5, #1
550402:  ADDS            R4, #0x14
550404:  CMP             R5, R1
550406:  BLT             loc_550362
550408:  LDR             R1, [SP,#0xC8+var_BC]
55040A:  VLDR            S0, [R1,#0x14]
55040E:  VCMPE.F32       S22, S0
550412:  VMRS            APSR_nzcv, FPSCR
550416:  BLE             loc_550428
550418:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x550420)
55041A:  LDR             R2, [SP,#0xC8+var_C0]
55041C:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
55041E:  LDR             R0, [R0]; CVehicle::m_aSpecialColModel ...
550420:  ADD.W           R0, R0, R2,LSL#4
550424:  VSTR            S22, [R0,#0x14]
550428:  VLDR            S0, [R1,#8]
55042C:  VCMPE.F32       S24, S0
550430:  VMRS            APSR_nzcv, FPSCR
550434:  BGE             loc_550446
550436:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x55043E)
550438:  LDR             R1, [SP,#0xC8+var_C0]
55043A:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
55043C:  LDR             R0, [R0]; CVehicle::m_aSpecialColModel ...
55043E:  ADD.W           R0, R0, R1,LSL#4
550442:  VSTR            S24, [R0,#8]
550446:  ADD             R0, SP, #0xC8+var_A0; this
550448:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
55044C:  MOVS            R5, #1
55044E:  B               loc_54FF96
