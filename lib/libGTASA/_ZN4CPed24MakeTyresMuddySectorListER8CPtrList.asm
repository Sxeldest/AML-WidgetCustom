; =========================================================
; Game Engine Function: _ZN4CPed24MakeTyresMuddySectorListER8CPtrList
; Address            : 0x55DCD8 - 0x55E220
; =========================================================

55DCD8:  PUSH            {R4-R7,LR}
55DCDA:  ADD             R7, SP, #0xC
55DCDC:  PUSH.W          {R8-R11}
55DCE0:  SUB             SP, SP, #4
55DCE2:  VPUSH           {D8-D15}
55DCE6:  SUB             SP, SP, #0x60
55DCE8:  LDR.W           R11, [R1]
55DCEC:  MOV             R4, R0
55DCEE:  CMP.W           R11, #0
55DCF2:  BEQ.W           loc_55E212
55DCF6:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x55DD0A)
55DCFA:  VMOV.F32        S16, #10.0
55DCFE:  VMOV.F32        S20, #1.0
55DD02:  ADD.W           R8, R4, #4
55DD06:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
55DD08:  VMOV.F32        S24, #2.0
55DD0C:  VLDR            S18, =0.05
55DD10:  ADD.W           R9, SP, #0xC0+var_78
55DD14:  LDR.W           R12, [R0]; CWorld::ms_nCurrentScanCode ...
55DD18:  MOVS            R6, #0
55DD1A:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55DD26)
55DD1E:  VLDR            S22, =0.8
55DD22:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55DD24:  VLDR            S26, =100.0
55DD28:  VLDR            S28, =500.0
55DD2C:  LDR.W           LR, [R0]; CModelInfo::ms_modelInfoPtrs ...
55DD30:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55DD3C)
55DD34:  VLDR            S30, =1000.0
55DD38:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55DD3A:  VLDR            S17, =50.0
55DD3E:  VLDR            S19, =2000.0
55DD42:  LDR.W           R10, [R0]; CModelInfo::ms_modelInfoPtrs ...
55DD46:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55DD4E)
55DD4A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55DD4C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55DD4E:  STR             R0, [SP,#0xC0+var_98]
55DD50:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55DD58)
55DD54:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55DD56:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55DD58:  STR             R0, [SP,#0xC0+var_9C]
55DD5A:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55DD62)
55DD5E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55DD60:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55DD62:  STR             R0, [SP,#0xC0+var_A0]
55DD64:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55DD6C)
55DD68:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55DD6A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55DD6C:  STR             R0, [SP,#0xC0+var_A4]
55DD6E:  MOVS            R0, #0
55DD70:  STR             R0, [SP,#0xC0+var_7C]
55DD72:  MOVS            R0, #0
55DD74:  STR             R0, [SP,#0xC0+var_94]
55DD76:  MOVS            R0, #0
55DD78:  STR             R0, [SP,#0xC0+var_90]
55DD7A:  MOVS            R0, #0
55DD7C:  STR             R0, [SP,#0xC0+var_80]
55DD7E:  MOVS            R0, #0
55DD80:  STR             R0, [SP,#0xC0+var_84]
55DD82:  MOVS            R0, #0
55DD84:  STR             R0, [SP,#0xC0+var_88]
55DD86:  MOVS            R0, #0
55DD88:  STR             R0, [SP,#0xC0+var_8C]
55DD8A:  LDRH.W          R1, [R12]; CWorld::ms_nCurrentScanCode
55DD8E:  LDRD.W          R0, R11, [R11]
55DD92:  LDRH            R2, [R0,#0x30]
55DD94:  CMP             R2, R1
55DD96:  BEQ             loc_55DDE6
55DD98:  LDR             R3, [R0,#0x14]
55DD9A:  STRH            R1, [R0,#0x30]
55DD9C:  LDR             R5, [R4,#0x14]
55DD9E:  ADD.W           R2, R3, #0x30 ; '0'
55DDA2:  CMP             R3, #0
55DDA4:  MOV             R3, R8
55DDA6:  IT EQ
55DDA8:  ADDEQ           R2, R0, #4
55DDAA:  CMP             R5, #0
55DDAC:  VLDR            S0, [R2]
55DDB0:  IT NE
55DDB2:  ADDNE.W         R3, R5, #0x30 ; '0'
55DDB6:  VLDR            S2, [R3]
55DDBA:  VSUB.F32        S0, S2, S0
55DDBE:  VABS.F32        S0, S0
55DDC2:  VCMPE.F32       S0, S16
55DDC6:  VMRS            APSR_nzcv, FPSCR
55DDCA:  BGE             loc_55DDE6
55DDCC:  VLDR            S0, [R2,#4]
55DDD0:  VLDR            S2, [R3,#4]
55DDD4:  VSUB.F32        S0, S2, S0
55DDD8:  VABS.F32        S0, S0
55DDDC:  VCMPE.F32       S0, S16
55DDE0:  VMRS            APSR_nzcv, FPSCR
55DDE4:  BLT             loc_55DDEE
55DDE6:  CMP.W           R11, #0
55DDEA:  BNE             loc_55DD8E
55DDEC:  B               loc_55E212
55DDEE:  LDR.W           R1, [R0,#0x5A0]
55DDF2:  CBZ             R1, loc_55DE36
55DDF4:  CMP             R1, #9
55DDF6:  LDR             R2, [SP,#0xC0+var_7C]
55DDF8:  IT EQ
55DDFA:  MOVEQ           R2, R0
55DDFC:  STR             R2, [SP,#0xC0+var_7C]
55DDFE:  LDR             R2, [SP,#0xC0+var_94]
55DE00:  IT EQ
55DE02:  MOVEQ           R2, R0
55DE04:  STR             R2, [SP,#0xC0+var_94]
55DE06:  LDR             R2, [SP,#0xC0+var_90]
55DE08:  IT EQ
55DE0A:  MOVEQ           R2, R0
55DE0C:  STR             R2, [SP,#0xC0+var_90]
55DE0E:  IT EQ
55DE10:  MOVEQ           R6, #0
55DE12:  LDR             R2, [SP,#0xC0+var_80]
55DE14:  IT EQ
55DE16:  MOVEQ           R2, #0
55DE18:  CMP             R1, #9
55DE1A:  LDR             R1, [SP,#0xC0+var_84]
55DE1C:  STR             R2, [SP,#0xC0+var_80]
55DE1E:  IT EQ
55DE20:  MOVEQ           R1, #0
55DE22:  STR             R1, [SP,#0xC0+var_84]
55DE24:  LDR             R1, [SP,#0xC0+var_88]
55DE26:  IT EQ
55DE28:  MOVEQ           R1, #0
55DE2A:  STR             R1, [SP,#0xC0+var_88]
55DE2C:  LDR             R1, [SP,#0xC0+var_8C]
55DE2E:  IT EQ
55DE30:  MOVEQ           R1, #0
55DE32:  STR             R1, [SP,#0xC0+var_8C]
55DE34:  B               loc_55DE4C
55DE36:  MOVS            R1, #0
55DE38:  MOV             R6, R0
55DE3A:  STRD.W          R1, R0, [SP,#0xC0+var_90]
55DE3E:  MOVS            R1, #0
55DE40:  STRD.W          R0, R0, [SP,#0xC0+var_88]
55DE44:  STR             R1, [SP,#0xC0+var_94]
55DE46:  MOVS            R1, #0
55DE48:  STR             R0, [SP,#0xC0+var_80]
55DE4A:  STR             R1, [SP,#0xC0+var_7C]
55DE4C:  VLDR            S0, [R0,#0x48]
55DE50:  VLDR            S2, [R0,#0x4C]
55DE54:  VMUL.F32        S0, S0, S0
55DE58:  VMUL.F32        S2, S2, S2
55DE5C:  VADD.F32        S0, S0, S2
55DE60:  VCMPE.F32       S0, S18
55DE64:  VMRS            APSR_nzcv, FPSCR
55DE68:  BLE.W           loc_55E04C
55DE6C:  CMP             R6, #0
55DE6E:  BEQ.W           loc_55E056
55DE72:  STR.W           LR, [SP,#0xC0+var_A8]
55DE76:  MOV.W           R9, #0x7E8
55DE7A:  STRD.W          R12, R10, [SP,#0xC0+var_B0]
55DE7E:  MOV.W           R10, #0
55DE82:  ADD.W           R0, R6, #0x13C
55DE86:  STR             R0, [SP,#0xC0+var_B4]
55DE88:  ADD.W           R5, R6, R10
55DE8C:  LDRB.W          R0, [R5,#0x834]
55DE90:  CMP             R0, #0
55DE92:  BNE.W           loc_55E02C
55DE96:  ADD.W           R0, R6, R9
55DE9A:  VLDR            S0, [R0]
55DE9E:  VCMPE.F32       S0, S20
55DEA2:  VMRS            APSR_nzcv, FPSCR
55DEA6:  BGE.W           loc_55E02C
55DEAA:  CMP.W           R10, #3; switch 4 cases
55DEAE:  BHI             def_55DEB0; jumptable 0055DEB0 default case
55DEB0:  TBB.W           [PC,R10]; switch jump
55DEB4:  DCB 2; jump table for switch statement
55DEB5:  DCB 0xF
55DEB6:  DCB 0x1B
55DEB7:  DCB 0x26
55DEB8:  LDR             R0, [SP,#0xC0+var_80]; jumptable 0055DEB0 case 0
55DEBA:  LDR             R1, [SP,#0xC0+var_98]
55DEBC:  LDRSH.W         R0, [R0,#0x26]
55DEC0:  LDR.W           R0, [R1,R0,LSL#2]
55DEC4:  LDR             R0, [R0,#0x2C]
55DEC6:  VLDR            S0, [R0,#0xC]
55DECA:  ADDS            R0, #0xC
55DECC:  VNEG.F32        S0, S0
55DED0:  B               loc_55DF12
55DED2:  LDR             R0, [SP,#0xC0+var_84]; jumptable 0055DEB0 case 1
55DED4:  LDR             R1, [SP,#0xC0+var_9C]
55DED6:  LDRSH.W         R0, [R0,#0x26]
55DEDA:  LDR.W           R0, [R1,R0,LSL#2]
55DEDE:  LDR             R0, [R0,#0x2C]
55DEE0:  VLDR            S0, [R0,#0xC]
55DEE4:  VNEG.F32        S0, S0
55DEE8:  B               loc_55DF12
55DEEA:  LDR             R0, [SP,#0xC0+var_88]; jumptable 0055DEB0 case 2
55DEEC:  LDR             R1, [SP,#0xC0+var_A0]
55DEEE:  LDRSH.W         R0, [R0,#0x26]
55DEF2:  LDR.W           R0, [R1,R0,LSL#2]
55DEF6:  LDR             R0, [R0,#0x2C]
55DEF8:  VLDR            S0, [R0,#0xC]
55DEFC:  ADDS            R0, #0xC
55DEFE:  B               loc_55DF12
55DF00:  LDR             R0, [SP,#0xC0+var_8C]; jumptable 0055DEB0 case 3
55DF02:  LDR             R1, [SP,#0xC0+var_A4]
55DF04:  LDRSH.W         R0, [R0,#0x26]
55DF08:  LDR.W           R0, [R1,R0,LSL#2]
55DF0C:  LDR             R0, [R0,#0x2C]
55DF0E:  VLDR            S0, [R0,#0xC]
55DF12:  LDR             R0, [R0,#4]
55DF14:  STR             R0, [SP,#0xC0+var_68]
55DF16:  MOVS            R0, #0
55DF18:  VSTR            S0, [SP,#0xC0+var_6C]
55DF1C:  STR             R0, [SP,#0xC0+var_64]
55DF1E:  LDR             R1, [R6,#0x14]; jumptable 0055DEB0 default case
55DF20:  ADD             R0, SP, #0xC0+var_78
55DF22:  ADD             R2, SP, #0xC0+var_6C
55DF24:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55DF28:  LDR             R1, [R4,#0x14]
55DF2A:  MOV             R0, R8
55DF2C:  VLDR            S23, [SP,#0xC0+var_70]
55DF30:  CMP             R1, #0
55DF32:  IT NE
55DF34:  ADDNE.W         R0, R1, #0x30 ; '0'; this
55DF38:  VLDR            S0, [R0,#8]
55DF3C:  VSUB.F32        S0, S23, S0
55DF40:  VABS.F32        S0, S0
55DF44:  VCMPE.F32       S0, S24
55DF48:  VMRS            APSR_nzcv, FPSCR
55DF4C:  BGE             loc_55E02C
55DF4E:  VLDR            S25, [SP,#0xC0+var_78]
55DF52:  VLDR            S0, [R0]
55DF56:  VLDR            S27, [SP,#0xC0+var_74]
55DF5A:  VLDR            S2, [R0,#4]
55DF5E:  VSUB.F32        S0, S25, S0
55DF62:  VSUB.F32        S2, S27, S2
55DF66:  VMUL.F32        S0, S0, S0
55DF6A:  VMUL.F32        S2, S2, S2
55DF6E:  VADD.F32        S0, S0, S2
55DF72:  VCMPE.F32       S0, S20
55DF76:  VMRS            APSR_nzcv, FPSCR
55DF7A:  BGE             loc_55E02C
55DF7C:  BLX             j__ZN13CLocalisation5BloodEv; CLocalisation::Blood(void)
55DF80:  CBZ             R0, loc_55DF92
55DF82:  MOVS            R0, #1
55DF84:  MOVS            R1, #0x78 ; 'x'; int
55DF86:  STRB.W          R0, [R5,#0x834]
55DF8A:  MOVS            R2, #0; float
55DF8C:  LDR             R0, [SP,#0xC0+var_B4]; this
55DF8E:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
55DF92:  VLDR            S0, [R6,#0x90]
55DF96:  VCMPE.F32       S0, S28
55DF9A:  VMRS            APSR_nzcv, FPSCR
55DF9E:  BLE             loc_55E02C
55DFA0:  VLDR            S0, [R4,#0x90]
55DFA4:  MOV             R0, R6
55DFA6:  MOVS            R1, #0
55DFA8:  MOVS            R2, #0
55DFAA:  VDIV.F32        S0, S0, S30
55DFAE:  VMIN.F32        D0, D0, D10
55DFB2:  VMUL.F32        S0, S0, S17
55DFB6:  VMOV            R3, S0
55DFBA:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
55DFBE:  VLDR            S0, [R4,#0x94]
55DFC2:  MOVS            R2, #0
55DFC4:  LDR             R0, [R6,#0x14]
55DFC6:  VDIV.F32        S0, S0, S19
55DFCA:  ADD.W           R1, R0, #0x30 ; '0'
55DFCE:  CMP             R0, #0
55DFD0:  IT EQ
55DFD2:  ADDEQ           R1, R6, #4
55DFD4:  MOV             R0, R6
55DFD6:  VMIN.F32        D0, D0, D10
55DFDA:  VLDR            S2, [R1,#4]
55DFDE:  VLDR            S4, [R1,#8]
55DFE2:  VSUB.F32        S2, S27, S2
55DFE6:  VSUB.F32        S4, S23, S4
55DFEA:  VMUL.F32        S0, S0, S17
55DFEE:  VMOV            R3, S0
55DFF2:  VLDR            S0, [R1]
55DFF6:  MOVS            R1, #0
55DFF8:  VSUB.F32        S0, S25, S0
55DFFC:  VSTR            S0, [SP,#0xC0+var_C0]
55E000:  VSTR            S2, [SP,#0xC0+var_BC]
55E004:  VSTR            S4, [SP,#0xC0+var_B8]
55E008:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
55E00C:  MOV.W           R0, #0xFFFFFFFF; int
55E010:  MOVS            R1, #0; bool
55E012:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
55E016:  CMP             R6, R0
55E018:  BNE             loc_55E02C
55E01A:  MOVS            R0, #0; this
55E01C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
55E020:  MOV.W           R1, #0x12C; __int16
55E024:  MOVS            R2, #0x46 ; 'F'; unsigned __int8
55E026:  MOVS            R3, #0; unsigned int
55E028:  BLX             j__ZN4CPad10StartShakeEshj; CPad::StartShake(short,uchar,uint)
55E02C:  ADD.W           R9, R9, #4
55E030:  ADD.W           R10, R10, #1
55E034:  CMP.W           R9, #0x7F8
55E038:  BNE.W           loc_55DE88
55E03C:  LDR.W           R12, [SP,#0xC0+var_B0]
55E040:  ADD.W           R9, SP, #0xC0+var_78
55E044:  LDR.W           LR, [SP,#0xC0+var_A8]
55E048:  LDR.W           R10, [SP,#0xC0+var_AC]
55E04C:  CMP.W           R11, #0
55E050:  BNE.W           loc_55DD8A
55E054:  B               loc_55E212
55E056:  LDR             R0, [SP,#0xC0+var_7C]
55E058:  CMP             R0, #0
55E05A:  BEQ.W           loc_55E204
55E05E:  MOVS            R6, #0
55E060:  MOVW            R5, #0x724
55E064:  MOV             R2, R0
55E066:  STR.W           LR, [SP,#0xC0+var_A8]
55E06A:  STRD.W          R12, R10, [SP,#0xC0+var_B0]
55E06E:  ADD.W           R1, R0, #0x13C
55E072:  STR             R1, [SP,#0xC0+var_B4]
55E074:  ADD.W           R10, R2, R6
55E078:  LDRB.W          R0, [R10,#0x760]
55E07C:  CMP             R0, #0
55E07E:  BNE.W           loc_55E1E6
55E082:  ADDS            R0, R2, R5
55E084:  VLDR            S0, [R0]
55E088:  VCMPE.F32       S0, S20
55E08C:  VMRS            APSR_nzcv, FPSCR
55E090:  BGE.W           loc_55E1E6
55E094:  CMP             R6, #1
55E096:  BEQ             loc_55E0C8
55E098:  CBNZ            R6, loc_55E0E8
55E09A:  LDR             R0, [SP,#0xC0+var_94]
55E09C:  LDR             R1, [SP,#0xC0+var_AC]
55E09E:  LDRSH.W         R0, [R0,#0x26]
55E0A2:  LDR.W           R0, [R1,R0,LSL#2]
55E0A6:  LDR             R0, [R0,#0x2C]
55E0A8:  ADDS            R0, #0xC
55E0AA:  B               loc_55E0D6
55E0AC:  DCFS 0.05
55E0B0:  DCFS 0.8
55E0B4:  DCFS 100.0
55E0B8:  DCFS 500.0
55E0BC:  DCFS 1000.0
55E0C0:  DCFS 50.0
55E0C4:  DCFS 2000.0
55E0C8:  LDR             R0, [SP,#0xC0+var_90]
55E0CA:  LDR             R1, [SP,#0xC0+var_A8]
55E0CC:  LDRSH.W         R0, [R0,#0x26]
55E0D0:  LDR.W           R0, [R1,R0,LSL#2]
55E0D4:  LDR             R0, [R0,#0x2C]
55E0D6:  VLDR            S0, [R0,#4]
55E0DA:  MOVS            R0, #0
55E0DC:  STR             R0, [SP,#0xC0+var_6C]
55E0DE:  VMUL.F32        S0, S0, S22
55E0E2:  STR             R0, [SP,#0xC0+var_64]
55E0E4:  VSTR            S0, [SP,#0xC0+var_68]
55E0E8:  LDR             R1, [R2,#0x14]
55E0EA:  ADD             R2, SP, #0xC0+var_6C
55E0EC:  MOV             R0, R9
55E0EE:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55E0F2:  LDR             R1, [R4,#0x14]
55E0F4:  MOV             R0, R8
55E0F6:  LDR             R2, [SP,#0xC0+var_7C]
55E0F8:  CMP             R1, #0
55E0FA:  VLDR            S23, [SP,#0xC0+var_70]
55E0FE:  IT NE
55E100:  ADDNE.W         R0, R1, #0x30 ; '0'; this
55E104:  VLDR            S0, [R0,#8]
55E108:  VSUB.F32        S0, S23, S0
55E10C:  VABS.F32        S0, S0
55E110:  VCMPE.F32       S0, S24
55E114:  VMRS            APSR_nzcv, FPSCR
55E118:  BGE             loc_55E1E6
55E11A:  VLDR            S25, [SP,#0xC0+var_78]
55E11E:  VLDR            S0, [R0]
55E122:  VLDR            S27, [SP,#0xC0+var_74]
55E126:  VLDR            S2, [R0,#4]
55E12A:  VSUB.F32        S0, S25, S0
55E12E:  VSUB.F32        S2, S27, S2
55E132:  VMUL.F32        S0, S0, S0
55E136:  VMUL.F32        S2, S2, S2
55E13A:  VADD.F32        S0, S0, S2
55E13E:  VCMPE.F32       S0, S20
55E142:  VMRS            APSR_nzcv, FPSCR
55E146:  BGE             loc_55E1E6
55E148:  BLX             j__ZN13CLocalisation5BloodEv; CLocalisation::Blood(void)
55E14C:  CBZ             R0, loc_55E15E
55E14E:  MOVS            R0, #1
55E150:  MOVS            R1, #0x78 ; 'x'; int
55E152:  STRB.W          R0, [R10,#0x760]
55E156:  MOVS            R2, #0; float
55E158:  LDR             R0, [SP,#0xC0+var_B4]; this
55E15A:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
55E15E:  LDR             R2, [SP,#0xC0+var_7C]
55E160:  VLDR            S0, [R2,#0x90]
55E164:  VCMPE.F32       S0, S26
55E168:  VMRS            APSR_nzcv, FPSCR
55E16C:  BLE             loc_55E1E6
55E16E:  MOVW            R10, #0
55E172:  MOV             R0, R2
55E174:  MOVT            R10, #0x4120
55E178:  MOVS            R1, #0
55E17A:  MOVS            R2, #0
55E17C:  MOV             R3, R10
55E17E:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
55E182:  LDR             R0, [SP,#0xC0+var_7C]
55E184:  MOVS            R2, #0
55E186:  MOV             R3, R10
55E188:  LDR             R0, [R0,#0x14]
55E18A:  ADD.W           R1, R0, #0x30 ; '0'
55E18E:  CMP             R0, #0
55E190:  LDR             R0, [SP,#0xC0+var_7C]
55E192:  IT EQ
55E194:  ADDEQ           R1, R0, #4
55E196:  LDR             R0, [SP,#0xC0+var_7C]
55E198:  VLDR            S0, [R1]
55E19C:  VLDR            S2, [R1,#4]
55E1A0:  VLDR            S4, [R1,#8]
55E1A4:  VSUB.F32        S0, S25, S0
55E1A8:  VSUB.F32        S2, S27, S2
55E1AC:  MOVS            R1, #0
55E1AE:  VSUB.F32        S4, S23, S4
55E1B2:  VSTR            S0, [SP,#0xC0+var_C0]
55E1B6:  VSTR            S2, [SP,#0xC0+var_BC]
55E1BA:  VSTR            S4, [SP,#0xC0+var_B8]
55E1BE:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
55E1C2:  MOV.W           R0, #0xFFFFFFFF; int
55E1C6:  MOVS            R1, #0; bool
55E1C8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
55E1CC:  LDR             R2, [SP,#0xC0+var_7C]
55E1CE:  CMP             R2, R0
55E1D0:  BNE             loc_55E1E6
55E1D2:  MOVS            R0, #0; this
55E1D4:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
55E1D8:  MOV.W           R1, #0x12C; __int16
55E1DC:  MOVS            R2, #0x46 ; 'F'; unsigned __int8
55E1DE:  MOVS            R3, #0; unsigned int
55E1E0:  BLX             j__ZN4CPad10StartShakeEshj; CPad::StartShake(short,uchar,uint)
55E1E4:  LDR             R2, [SP,#0xC0+var_7C]
55E1E6:  ADDS            R6, #1
55E1E8:  ADDS            R5, #8
55E1EA:  CMP             R6, #2
55E1EC:  BNE.W           loc_55E074
55E1F0:  LDR.W           LR, [SP,#0xC0+var_A8]
55E1F4:  MOVS            R6, #0
55E1F6:  LDRD.W          R12, R10, [SP,#0xC0+var_B0]
55E1FA:  CMP.W           R11, #0
55E1FE:  BNE.W           loc_55DD8A
55E202:  B               loc_55E212
55E204:  MOVS            R6, #0
55E206:  MOVS            R0, #0
55E208:  STR             R0, [SP,#0xC0+var_7C]
55E20A:  CMP.W           R11, #0
55E20E:  BNE.W           loc_55DD8A
55E212:  ADD             SP, SP, #0x60 ; '`'
55E214:  VPOP            {D8-D15}
55E218:  ADD             SP, SP, #4
55E21A:  POP.W           {R8-R11}
55E21E:  POP             {R4-R7,PC}
