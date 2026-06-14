; =========================================================
; Game Engine Function: _ZN8CVehicle18BladeColSectorListER8CPtrListR9CColModelR7CMatrixsf
; Address            : 0x587E3C - 0x588688
; =========================================================

587E3C:  PUSH            {R4-R7,LR}
587E3E:  ADD             R7, SP, #0xC
587E40:  PUSH.W          {R8-R11}
587E44:  SUB             SP, SP, #4
587E46:  VPUSH           {D8-D15}
587E4A:  SUB             SP, SP, #0x108
587E4C:  STR             R2, [SP,#0x168+var_11C]
587E4E:  MOV             R6, R0
587E50:  LDR             R0, [R7,#arg_0]
587E52:  MOV             R9, R3
587E54:  LDR             R4, [R1]
587E56:  MOVS            R1, #0
587E58:  ADDS            R0, #3
587E5A:  STRD.W          R1, R1, [SP,#0x168+var_70]
587E5E:  CMP             R0, #6; switch 7 cases
587E60:  STR             R1, [SP,#0x168+var_68]
587E62:  BHI             def_587E64; jumptable 00587E64 default case, case 3
587E64:  TBB.W           [PC,R0]; switch jump
587E68:  DCB 4; jump table for switch statement
587E69:  DCB 0x10
587E6A:  DCB 0x1C
587E6B:  DCB 0x51
587E6C:  DCB 0x2E
587E6D:  DCB 0x3A
587E6E:  DCB 0x46
587E6F:  ALIGN 2
587E70:  MOV             R0, #0xBE4CCCCD; jumptable 00587E64 case 0
587E78:  STR             R0, [SP,#0x168+var_68]
587E7A:  VLDR            S0, [R9,#0x20]
587E7E:  VLDR            S2, [R9,#0x24]
587E82:  VLDR            S4, [R9,#0x28]
587E86:  B               loc_587EB6
587E88:  MOV             R0, #0xBE4CCCCD; jumptable 00587E64 case 1
587E90:  STR             R0, [SP,#0x168+var_70+4]
587E92:  VLDR            S0, [R9,#0x10]
587E96:  VLDR            S2, [R9,#0x14]
587E9A:  VLDR            S4, [R9,#0x18]
587E9E:  B               loc_587EB6
587EA0:  MOV             R0, #0xBE4CCCCD; jumptable 00587E64 case 2
587EA8:  STR             R0, [SP,#0x168+var_70]
587EAA:  VLDR            S0, [R9]
587EAE:  VLDR            S2, [R9,#4]
587EB2:  VLDR            S4, [R9,#8]
587EB6:  VNEG.F32        S20, S4
587EBA:  VNEG.F32        S18, S2
587EBE:  VNEG.F32        S16, S0
587EC2:  B               def_587E64; jumptable 00587E64 default case, case 3
587EC4:  MOV             R0, #0x3E4CCCCD; jumptable 00587E64 case 4
587ECC:  STR             R0, [SP,#0x168+var_70]
587ECE:  VLDR            S16, [R9]
587ED2:  VLDR            S18, [R9,#4]
587ED6:  VLDR            S20, [R9,#8]
587EDA:  B               def_587E64; jumptable 00587E64 default case, case 3
587EDC:  MOV             R0, #0x3E4CCCCD; jumptable 00587E64 case 5
587EE4:  STR             R0, [SP,#0x168+var_70+4]
587EE6:  VLDR            S16, [R9,#0x10]
587EEA:  VLDR            S18, [R9,#0x14]
587EEE:  VLDR            S20, [R9,#0x18]
587EF2:  B               def_587E64; jumptable 00587E64 default case, case 3
587EF4:  MOV             R0, #0x3E4CCCCD; jumptable 00587E64 case 6
587EFC:  STR             R0, [SP,#0x168+var_68]
587EFE:  VLDR            S16, [R9,#0x20]
587F02:  VLDR            S18, [R9,#0x24]
587F06:  VLDR            S20, [R9,#0x28]
587F0A:  ADD             R0, SP, #0x168+var_E0; jumptable 00587E64 default case, case 3
587F0C:  ADD             R2, SP, #0x168+var_70
587F0E:  MOV             R1, R9; CVector *
587F10:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
587F14:  LDR             R0, [SP,#0x168+var_D8]
587F16:  ADD             R2, SP, #0x168+var_80
587F18:  STR             R0, [SP,#0x168+var_68]
587F1A:  MOV             R1, R9
587F1C:  VLDR            D16, [SP,#0x168+var_E0]
587F20:  LDR             R0, [SP,#0x168+var_11C]
587F22:  VSTR            D16, [SP,#0x168+var_70]
587F26:  VLDR            D16, [R0,#0x18]
587F2A:  LDR             R0, [R0,#0x20]
587F2C:  STR             R0, [SP,#0x168+var_78]
587F2E:  ADD             R0, SP, #0x168+var_E0
587F30:  VSTR            D16, [SP,#0x168+var_80]
587F34:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
587F38:  VLDR            D16, [SP,#0x168+var_E0]
587F3C:  CMP             R4, #0
587F3E:  LDR             R0, [SP,#0x168+var_D8]
587F40:  STR             R0, [SP,#0x168+var_78]
587F42:  VSTR            D16, [SP,#0x168+var_80]
587F46:  BEQ.W           loc_588678
587F4A:  ADDW            R0, R6, #0x85C
587F4E:  STR             R0, [SP,#0x168+var_118]
587F50:  ADD             R0, SP, #0x168+var_E0
587F52:  VMOV.F32        S24, #1.0
587F56:  ADDS            R0, #0x34 ; '4'
587F58:  STR             R0, [SP,#0x168+var_130]
587F5A:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x587F6E)
587F5E:  VMOV.F32        S26, #-5.0
587F62:  VMOV.F32        S27, #15.0
587F66:  VLDR            S22, [R7,#arg_4]
587F6A:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
587F6C:  VLDR            S28, =0.01
587F70:  VLDR            S30, =0.35
587F74:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
587F76:  STR             R0, [SP,#0x168+var_110]
587F78:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x587F84)
587F7C:  VLDR            S17, =0.6
587F80:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
587F82:  VLDR            S19, =0.3
587F86:  VLDR            S23, =100.0
587F8A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
587F8C:  STR             R0, [SP,#0x168+var_124]
587F8E:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x587F9A)
587F92:  VLDR            S29, =0.15
587F96:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
587F98:  VLDR            S31, =-0.0005
587F9C:  VLDR            S21, =0.075
587FA0:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
587FA2:  STR             R0, [SP,#0x168+var_120]
587FA4:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x587FB0)
587FA8:  VLDR            S25, =3000.0
587FAC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
587FAE:  STR.W           R9, [SP,#0x168+var_128]
587FB2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
587FB4:  STR             R0, [SP,#0x168+var_12C]
587FB6:  LDR.W           R0, =(g_fx_ptr - 0x587FBE)
587FBA:  ADD             R0, PC; g_fx_ptr
587FBC:  LDR             R0, [R0]; g_fx
587FBE:  STR             R0, [SP,#0x168+var_134]
587FC0:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x587FC8)
587FC4:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
587FC6:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
587FC8:  STR             R0, [SP,#0x168+var_104]
587FCA:  LDR.W           R0, =(ROTOR_SEMI_THICKNESS_ptr - 0x587FD2)
587FCE:  ADD             R0, PC; ROTOR_SEMI_THICKNESS_ptr
587FD0:  LDR             R0, [R0]; ROTOR_SEMI_THICKNESS
587FD2:  STR             R0, [SP,#0x168+var_108]
587FD4:  LDR.W           R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x587FDC)
587FD8:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
587FDA:  LDR             R0, [R0]; CWorld::m_aTempColPts ...
587FDC:  STR             R0, [SP,#0x168+var_114]
587FDE:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x587FE6)
587FE2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
587FE4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
587FE6:  STR             R0, [SP,#0x168+var_138]
587FE8:  LDR.W           R0, =(AudioEngine_ptr - 0x587FF0)
587FEC:  ADD             R0, PC; AudioEngine_ptr
587FEE:  LDR             R0, [R0]; AudioEngine
587FF0:  STR             R0, [SP,#0x168+var_140]
587FF2:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x587FFA)
587FF6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
587FF8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
587FFA:  STR             R0, [SP,#0x168+var_13C]
587FFC:  LDR.W           R0, =(TheCamera_ptr - 0x588004)
588000:  ADD             R0, PC; TheCamera_ptr
588002:  LDR             R0, [R0]; TheCamera
588004:  STR             R0, [SP,#0x168+var_144]
588006:  LDR.W           R0, =(AudioEngine_ptr - 0x58800E)
58800A:  ADD             R0, PC; AudioEngine_ptr
58800C:  LDR             R0, [R0]; AudioEngine
58800E:  STR             R0, [SP,#0x168+var_148]
588010:  LDR.W           R0, =(g_fx_ptr - 0x588018)
588014:  ADD             R0, PC; g_fx_ptr
588016:  LDR             R0, [R0]; g_fx
588018:  STR             R0, [SP,#0x168+var_10C]
58801A:  LDRD.W          R8, R4, [R4]
58801E:  CMP             R8, R6
588020:  ITT NE
588022:  LDRBNE.W        R0, [R8,#0x1C]
588026:  MOVSNE.W        R0, R0,LSL#31
58802A:  BEQ             loc_588038
58802C:  LDR             R0, [SP,#0x168+var_110]
58802E:  LDRH.W          R1, [R8,#0x30]
588032:  LDRH            R0, [R0]
588034:  CMP             R1, R0
588036:  BNE             loc_58803E
588038:  CMP             R4, #0
58803A:  BNE             loc_58801A
58803C:  B               loc_588678
58803E:  LDRB.W          R1, [R8,#0x3A]
588042:  STRH.W          R0, [R8,#0x30]
588046:  AND.W           R0, R1, #7
58804A:  CMP             R0, #3
58804C:  BNE             loc_588062
58804E:  LDRSH.W         R0, [R8,#0x26]
588052:  LDR             R2, [SP,#0x168+var_124]
588054:  LDR.W           R1, [R8,#0x18]
588058:  LDR.W           R0, [R2,R0,LSL#2]
58805C:  BLX             j__ZN13CPedModelInfo25AnimatePedColModelSkinnedEP7RpClump; CPedModelInfo::AnimatePedColModelSkinned(RpClump *)
588060:  B               loc_588068
588062:  MOV             R0, R8; this
588064:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
588068:  MOV             R5, R0
58806A:  LDRB.W          R0, [R8,#0x3A]
58806E:  AND.W           R0, R0, #7
588072:  CMP             R0, #4
588074:  BNE             loc_588084
588076:  CMP             R5, #0
588078:  BEQ             loc_588038
58807A:  LDRB.W          R0, [R8,#0x140]
58807E:  CMP             R0, #3
588080:  BNE             loc_588088
588082:  B               loc_588038
588084:  CMP             R5, #0
588086:  BEQ             loc_588038
588088:  LDR.W           R2, [R8,#0x14]
58808C:  CBNZ            R2, loc_5880A4
58808E:  MOV             R0, R8; this
588090:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
588094:  LDR.W           R1, [R8,#0x14]; CMatrix *
588098:  ADD.W           R0, R8, #4; this
58809C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5880A0:  LDR.W           R2, [R8,#0x14]; CMatrix *
5880A4:  LDR             R0, [SP,#0x168+var_120]
5880A6:  MOV             R3, R5; int
5880A8:  STR             R0, [SP,#0x168+var_168]; int
5880AA:  MOVS            R0, #0
5880AC:  STRD.W          R0, R0, [SP,#0x168+var_164]; int
5880B0:  LDR             R1, [SP,#0x168+var_11C]; int
5880B2:  STR             R0, [SP,#0x168+var_15C]; int
5880B4:  MOV             R0, R9; int
5880B6:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
5880BA:  MOV             R10, R0
5880BC:  CMP.W           R10, #0
5880C0:  BLE             loc_588038
5880C2:  LDRB.W          R0, [R8,#0x3A]
5880C6:  AND.W           R0, R0, #7
5880CA:  CMP             R0, #3
5880CC:  BNE             loc_588164
5880CE:  LDR.W           R0, [R8,#0x14]
5880D2:  ADD.W           R9, R8, #4
5880D6:  LDR             R1, [R6,#0x14]
5880D8:  CMP             R0, #0
5880DA:  MOV             R2, R9
5880DC:  IT NE
5880DE:  ADDNE.W         R2, R0, #0x30 ; '0'
5880E2:  ADD.W           R0, R1, #0x30 ; '0'
5880E6:  CMP             R1, #0
5880E8:  VLDR            S0, [R2]
5880EC:  VLDR            S2, [R2,#4]
5880F0:  IT EQ
5880F2:  ADDEQ           R0, R6, #4
5880F4:  VLDR            S4, [R0]
5880F8:  VLDR            S6, [R0,#4]
5880FC:  VSUB.F32        S0, S4, S0
588100:  VSUB.F32        S2, S6, S2
588104:  VMUL.F32        S6, S0, S0
588108:  VMUL.F32        S4, S2, S2
58810C:  VSTR            S2, [SP,#0x168+var_84]
588110:  VSTR            S0, [SP,#0x168+var_88]
588114:  VADD.F32        S4, S6, S4
588118:  VCMPE.F32       S4, #0.0
58811C:  VMRS            APSR_nzcv, FPSCR
588120:  BLE.W           loc_5884BE
588124:  VSQRT.F32       S4, S4
588128:  VDIV.F32        S4, S24, S4
58812C:  VMUL.F32        S2, S2, S4
588130:  VMUL.F32        S0, S0, S4
588134:  VSTR            S2, [SP,#0x168+var_84]
588138:  VSTR            S0, [SP,#0x168+var_88]
58813C:  B               loc_5884C4
58813E:  ALIGN 0x10
588140:  DCFS 0.01
588144:  DCFS 0.35
588148:  DCFS 0.6
58814C:  DCFS 0.3
588150:  DCFS 100.0
588154:  DCFS 0.15
588158:  DCFS -0.0005
58815C:  DCFS 0.075
588160:  DCFS 3000.0
588164:  LDRH.W          R0, [R8,#0x26]
588168:  MOVW            R1, #0x159
58816C:  CMP             R0, R1
58816E:  BEQ.W           loc_588038
588172:  MOVS            R1, #0
588174:  MOV.W           R9, #0
588178:  STR             R1, [SP,#0x168+var_100]
58817A:  LDR.W           R0, [R6,#0xA0]
58817E:  STR             R0, [SP,#0x168+var_14C]
588180:  MOV.W           R0, #0x3F800000
588184:  STR.W           R0, [R6,#0xA0]
588188:  MOVS            R0, #0
58818A:  MOVS            R2, #0x2C ; ','
58818C:  LDR             R3, [SP,#0x168+var_104]
58818E:  MLA.W           R5, R1, R2, R3
588192:  VLDR            S0, [SP,#0x168+var_80]
588196:  VLDR            S2, [SP,#0x168+var_80+4]
58819A:  VLDR            S8, [SP,#0x168+var_78]
58819E:  VLDR            D16, [R5]
5881A2:  LDR             R2, [R5,#8]
5881A4:  VSTR            D16, [SP,#0x168+var_A0]
5881A8:  VLDR            S4, [SP,#0x168+var_A0]
5881AC:  VLDR            S6, [SP,#0x168+var_A0+4]
5881B0:  VSUB.F32        S1, S4, S0
5881B4:  STR             R2, [SP,#0x168+var_98]
5881B6:  VSUB.F32        S14, S6, S2
5881BA:  VLDR            S10, [SP,#0x168+var_98]
5881BE:  LDR             R2, [SP,#0x168+var_108]
5881C0:  VSUB.F32        S3, S10, S8
5881C4:  VMUL.F32        S5, S16, S1
5881C8:  VMUL.F32        S12, S18, S14
5881CC:  VMUL.F32        S7, S20, S3
5881D0:  VADD.F32        S12, S5, S12
5881D4:  VLDR            S5, [R2]
5881D8:  VADD.F32        S12, S12, S7
5881DC:  VADD.F32        S7, S5, S5
5881E0:  VABS.F32        S5, S12
5881E4:  VCMPE.F32       S5, S7
5881E8:  VMRS            APSR_nzcv, FPSCR
5881EC:  BLE             loc_58822A
5881EE:  MOVS            R2, #0x2C ; ','
5881F0:  LDR             R3, [SP,#0x168+var_114]
5881F2:  MLA.W           R1, R1, R2, R3
5881F6:  VLDR            S7, [R1,#0x10]
5881FA:  VLDR            S9, [R1,#0x14]
5881FE:  VMUL.F32        S1, S1, S7
588202:  VLDR            S11, [R1,#0x18]
588206:  VMUL.F32        S14, S14, S9
58820A:  VMUL.F32        S3, S3, S11
58820E:  VADD.F32        S14, S1, S14
588212:  VADD.F32        S14, S14, S3
588216:  VABS.F32        S14, S14
58821A:  VMUL.F32        S14, S14, S19
58821E:  VCMPE.F32       S5, S14
588222:  VMRS            APSR_nzcv, FPSCR
588226:  BGT.W           loc_5883C4
58822A:  VMUL.F32        S14, S18, S12
58822E:  ADD.W           R11, SP, #0x168+var_F0
588232:  VMUL.F32        S1, S20, S12
588236:  ADD             R1, SP, #0x168+var_70; CVector *
588238:  VMUL.F32        S12, S16, S12
58823C:  ADD             R2, SP, #0x168+var_E0
58823E:  MOV             R0, R11; CVector *
588240:  VSUB.F32        S6, S6, S14
588244:  VSUB.F32        S10, S10, S1
588248:  VSUB.F32        S4, S4, S12
58824C:  VSUB.F32        S2, S6, S2
588250:  VSTR            S6, [SP,#0x168+var_A0+4]
588254:  VSUB.F32        S8, S10, S8
588258:  VSTR            S10, [SP,#0x168+var_98]
58825C:  VSUB.F32        S0, S4, S0
588260:  VSTR            S4, [SP,#0x168+var_A0]
588264:  VSTR            S2, [SP,#0x168+var_E0+4]
588268:  VSTR            S8, [SP,#0x168+var_D8]
58826C:  VSTR            S0, [SP,#0x168+var_E0]
588270:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
588274:  VLDR            D16, [SP,#0x168+var_F0]
588278:  LDR             R0, [SP,#0x168+var_E8]
58827A:  STR             R0, [SP,#0x168+var_D8]
58827C:  MOV             R0, R11; this
58827E:  VSTR            D16, [SP,#0x168+var_E0]
588282:  VLDR            S0, [R6,#0x48]
588286:  VLDR            S6, [SP,#0x168+var_E0]
58828A:  VLDR            S2, [R6,#0x4C]
58828E:  VLDR            S8, [SP,#0x168+var_E0+4]
588292:  VADD.F32        S0, S6, S0
588296:  VLDR            S4, [R6,#0x50]
58829A:  VLDR            S10, [SP,#0x168+var_D8]
58829E:  VADD.F32        S2, S8, S2
5882A2:  VADD.F32        S4, S10, S4
5882A6:  VSTR            S0, [SP,#0x168+var_F0]
5882AA:  VSTR            S2, [SP,#0x168+var_F0+4]
5882AE:  VSTR            S4, [SP,#0x168+var_E8]
5882B2:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
5882B6:  VMOV            S0, R0
5882BA:  MOVS            R0, #0x10
5882BC:  STR             R0, [SP,#0x168+var_168]
5882BE:  MOVS            R0, #0
5882C0:  VMUL.F32        S0, S0, S27
5882C4:  STRD.W          R0, R0, [SP,#0x168+var_164]
5882C8:  STR             R0, [SP,#0x168+var_15C]
5882CA:  MOVS            R0, #1
5882CC:  STR             R0, [SP,#0x168+var_158]
5882CE:  MOV             R0, #0x3E4CCCCD
5882D6:  ADD             R1, SP, #0x168+var_A0
5882D8:  STR             R0, [SP,#0x168+var_154]; unsigned __int8
5882DA:  MOV.W           R0, #0x3F800000
5882DE:  STR             R0, [SP,#0x168+var_150]
5882E0:  MOV             R2, R11
5882E2:  LDR             R0, [SP,#0x168+var_10C]
5882E4:  VMOV            R3, S0
5882E8:  BLX             j__ZN4Fx_c9AddSparksER7CVectorS1_fiS0_hff; Fx_c::AddSparks(CVector &,CVector &,float,int,CVector,uchar,float,float)
5882EC:  LDR.W           R0, [R6,#0x5A0]
5882F0:  CMP             R0, #0
5882F2:  BNE             loc_588396
5882F4:  LDR             R0, [SP,#0x168+var_118]
5882F6:  VLDR            S0, [R0,#4]
5882FA:  VCMPE.F32       S0, S29
5882FE:  VMRS            APSR_nzcv, FPSCR
588302:  BLE             loc_588378
588304:  ADD             R3, SP, #0x168+var_100
588306:  MOV             R0, R6
588308:  MOV             R1, R8
58830A:  MOV             R2, R5
58830C:  BLX             j__ZN9CPhysical18ApplySoftCollisionEP7CEntityR9CColPointRf; CPhysical::ApplySoftCollision(CEntity *,CColPoint &,float &)
588310:  VLDR            S0, [R6,#0x94]
588314:  MOV             R0, R6
588316:  VLDR            S2, [SP,#0x168+var_E0]
58831A:  VMUL.F32        S0, S0, S31
58831E:  VLDR            S4, [SP,#0x168+var_E0+4]
588322:  VLDR            S6, [SP,#0x168+var_D8]
588326:  VLDR            S8, [SP,#0x168+var_A0+4]
58832A:  VLDR            S10, [SP,#0x168+var_98]
58832E:  VMUL.F32        S2, S2, S0
588332:  VMUL.F32        S4, S0, S4
588336:  VMUL.F32        S0, S0, S6
58833A:  VLDR            S6, [SP,#0x168+var_A0]
58833E:  VMOV            R1, S2
588342:  VLDR            S2, [SP,#0x168+var_80+4]
588346:  VMOV            R2, S4
58834A:  VLDR            S4, [SP,#0x168+var_78]
58834E:  VMOV            R3, S0
588352:  VLDR            S0, [SP,#0x168+var_80]
588356:  VSUB.F32        S4, S10, S4
58835A:  VSUB.F32        S0, S6, S0
58835E:  VSUB.F32        S2, S8, S2
588362:  VSTR            S0, [SP,#0x168+var_168]
588366:  VSTR            S2, [SP,#0x168+var_164]
58836A:  VSTR            S4, [SP,#0x168+var_160]
58836E:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
588372:  VMOV.F32        S0, S29
588376:  B               loc_588390
588378:  VCMPE.F32       S0, S21
58837C:  VMRS            APSR_nzcv, FPSCR
588380:  BGE             loc_588396
588382:  VCMPE.F32       S0, #0.0
588386:  VMRS            APSR_nzcv, FPSCR
58838A:  BLE             loc_588396
58838C:  VNEG.F32        S0, S0
588390:  LDR             R0, [SP,#0x168+var_118]
588392:  VSTR            S0, [R0,#4]
588396:  VLDR            S0, [R6,#0x90]
58839A:  MOV.W           R0, #0x3F800000
58839E:  VLDR            S2, [SP,#0x168+var_100]
5883A2:  MOV             R2, R8; int
5883A4:  VMUL.F32        S0, S0, S23
5883A8:  STR             R0, [SP,#0x168+var_168]; float
5883AA:  MOV             R0, R6; CEntity **
5883AC:  MOV             R3, R5; int
5883AE:  VDIV.F32        S0, S0, S25
5883B2:  VMAX.F32        D0, D0, D1
5883B6:  VMUL.F32        S0, S0, S22
5883BA:  VMOV            R1, S0; int
5883BE:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
5883C2:  MOVS            R0, #1
5883C4:  ADD.W           R9, R9, #1
5883C8:  SXTH.W          R1, R9
5883CC:  CMP             R10, R1
5883CE:  BGT.W           loc_58818A
5883D2:  LSLS            R0, R0, #0x18
5883D4:  LDR.W           R9, [SP,#0x168+var_128]
5883D8:  ITTT NE
5883DA:  LDRBNE.W        R0, [R8,#0x3A]
5883DE:  ANDNE.W         R0, R0, #7
5883E2:  CMPNE           R0, #3
5883E4:  BEQ.W           loc_58866C
5883E8:  LDR             R0, =(dword_A130DC - 0x5883EE)
5883EA:  ADD             R0, PC; dword_A130DC
5883EC:  LDR             R1, [R0]
5883EE:  LDR             R0, [SP,#0x168+var_138]
5883F0:  LDR             R0, [R0]
5883F2:  CMP             R0, R1
5883F4:  BHI             loc_588400
5883F6:  SUB.W           R1, R1, #0x7D0
5883FA:  CMP             R0, R1
5883FC:  BCS.W           loc_58866C
588400:  LDRB.W          R0, [R6,#0x3A]
588404:  MOVS            R1, #8
588406:  CMP.W           R1, R0,LSR#3
58840A:  BEQ.W           loc_588610
58840E:  ADD.W           R10, SP, #0x168+var_A0
588412:  LSRS            R0, R0, #3
588414:  BNE.W           loc_58863C
588418:  LDR             R5, [SP,#0x168+var_144]
58841A:  MOV             R0, R5; this
58841C:  BLX             j__ZN7CCamera18GetGameCamPositionEv; CCamera::GetGameCamPosition(void)
588420:  VLDR            S0, [R0]
588424:  VLDR            S6, [SP,#0x168+var_A0]
588428:  VLDR            S2, [R0,#4]
58842C:  VLDR            S4, [R0,#8]
588430:  VSUB.F32        S0, S6, S0
588434:  VLDR            S8, [SP,#0x168+var_A0+4]
588438:  MOV             R0, R10; this
58843A:  VLDR            S10, [SP,#0x168+var_98]
58843E:  VSUB.F32        S2, S8, S2
588442:  VSUB.F32        S4, S10, S4
588446:  VSTR            S2, [SP,#0x168+var_A0+4]
58844A:  VSTR            S4, [SP,#0x168+var_98]
58844E:  VSTR            S0, [SP,#0x168+var_A0]
588452:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
588456:  MOV             R0, R5; this
588458:  BLX             j__ZN7CCamera18GetGameCamPositionEv; CCamera::GetGameCamPosition(void)
58845C:  VMOV.F32        S6, #4.0
588460:  VLDR            S0, [SP,#0x168+var_A0]
588464:  VLDR            S2, [SP,#0x168+var_A0+4]
588468:  MOVW            R1, #0x999A
58846C:  VLDR            S4, [SP,#0x168+var_98]
588470:  MOVT            R1, #0x3E19
588474:  VLDR            S8, [R0,#4]
588478:  VLDR            S10, [R0,#8]
58847C:  VMUL.F32        S4, S4, S6
588480:  VMUL.F32        S2, S2, S6
588484:  VMUL.F32        S0, S0, S6
588488:  VLDR            S6, [R0]
58848C:  MOVS            R0, #0x3F ; '?'
58848E:  VADD.F32        S4, S4, S10
588492:  VADD.F32        S2, S2, S8
588496:  VADD.F32        S0, S0, S6
58849A:  VSTR            S4, [SP,#0x168+var_98]
58849E:  VSTR            S0, [SP,#0x168+var_A0]
5884A2:  VSTR            S2, [SP,#0x168+var_A0+4]
5884A6:  STRD.W          R0, R10, [SP,#0x168+var_168]
5884AA:  MOVS            R0, #0
5884AC:  STR             R0, [SP,#0x168+var_160]
5884AE:  STR             R1, [SP,#0x168+var_15C]
5884B0:  MOV.W           R1, #0x3F800000
5884B4:  STRD.W          R1, R0, [SP,#0x168+var_158]
5884B8:  STR             R0, [SP,#0x168+var_150]
5884BA:  LDR             R0, [SP,#0x168+var_148]
5884BC:  B               loc_588632
5884BE:  MOV.W           R0, #0x3F800000
5884C2:  STR             R0, [SP,#0x168+var_88]
5884C4:  ADD             R1, SP, #0x168+var_88
5884C6:  MOV             R0, R8
5884C8:  BLX             j__ZN4CPed17GetLocalDirectionERK9CVector2D; CPed::GetLocalDirection(CVector2D const&)
5884CC:  MOV             R11, R0
5884CE:  LDR.W           R0, [R8,#0x100]
5884D2:  CBNZ            R0, loc_588504
5884D4:  LDR.W           R0, [R8,#0x484]
5884D8:  MOVS            R3, #0x40A00000
5884DE:  BIC.W           R0, R0, #1
5884E2:  STR.W           R0, [R8,#0x484]
5884E6:  VLDR            S0, [SP,#0x168+var_88]
5884EA:  MOV             R0, R8
5884EC:  VLDR            S2, [SP,#0x168+var_84]
5884F0:  VMUL.F32        S0, S0, S26
5884F4:  VMUL.F32        S2, S2, S26
5884F8:  VMOV            R1, S0
5884FC:  VMOV            R2, S2
588500:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
588504:  MOVS            R2, #0
588506:  ADD             R0, SP, #0x168+var_A0
588508:  MOV.W           R10, #3
58850C:  MOVS            R5, #0
58850E:  MOV             R1, R6
588510:  MOVT            R2, #0x447A
588514:  MOVS            R3, #0x32 ; '2'
588516:  STR.W           R10, [SP,#0x168+var_168]
58851A:  STR             R5, [SP,#0x168+var_164]; int
58851C:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
588520:  LDR             R0, [SP,#0x168+var_12C]
588522:  MOV             R1, R6; this
588524:  MOVS            R3, #0x32 ; '2'; int
588526:  LDR             R2, [R0]; int
588528:  UXTB.W          R0, R11
58852C:  STRD.W          R10, R0, [SP,#0x168+var_168]; float
588530:  ADD             R0, SP, #0x168+var_E0; int
588532:  STRD.W          R5, R5, [SP,#0x168+var_160]; int
588536:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
58853A:  MOV             R1, R8; CPed *
58853C:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
588540:  CMP             R0, #1
588542:  BNE             loc_588554
588544:  ADD             R5, SP, #0x168+var_A0
588546:  LDR             R2, [SP,#0x168+var_130]
588548:  MOV             R1, R8; this
58854A:  MOVS            R3, #1
58854C:  MOV             R0, R5; int
58854E:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
588552:  B               loc_58855C
588554:  ADD             R5, SP, #0x168+var_A0
588556:  MOVS            R0, #1
588558:  STRB.W          R0, [SP,#0x168+var_A2]
58855C:  LDR.W           R0, [R8,#0x440]
588560:  ADD             R1, SP, #0x168+var_E0; CEvent *
588562:  MOVS            R2, #0; bool
588564:  ADDS            R0, #0x68 ; 'h'; this
588566:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
58856A:  BLX             j__ZN13CLocalisation5BloodEv; CLocalisation::Blood(void)
58856E:  CMP             R0, #0
588570:  BEQ             loc_5885F8
588572:  VLDR            S0, [SP,#0x168+var_88]
588576:  MOVW            R0, #0xD70A
58857A:  VLDR            S2, [SP,#0x168+var_84]
58857E:  MOVT            R0, #0x3C23
588582:  VMUL.F32        S4, S0, S28
588586:  STR             R0, [SP,#0x168+var_E8]
588588:  VMUL.F32        S6, S2, S28
58858C:  VMUL.F32        S0, S0, S30
588590:  VMUL.F32        S2, S2, S30
588594:  VSTR            S4, [SP,#0x168+var_F0]
588598:  VSTR            S6, [SP,#0x168+var_F0+4]
58859C:  LDR.W           R0, [R8,#0x14]
5885A0:  CMP             R0, #0
5885A2:  IT NE
5885A4:  ADDNE.W         R9, R0, #0x30 ; '0'
5885A8:  VLDR            D16, [R9]
5885AC:  LDR.W           R0, [R9,#8]
5885B0:  VSTR            D16, [SP,#0x168+var_100]
5885B4:  VLDR            S4, [SP,#0x168+var_100]
5885B8:  VLDR            S6, [SP,#0x168+var_100+4]
5885BC:  STR             R0, [SP,#0x168+var_F8]
5885BE:  VADD.F32        S0, S4, S0
5885C2:  VLDR            S8, [SP,#0x168+var_F8]
5885C6:  VADD.F32        S2, S6, S2
5885CA:  MOV             R0, R8; this
5885CC:  VADD.F32        S4, S8, S17
5885D0:  VSTR            S0, [SP,#0x168+var_100]
5885D4:  VSTR            S2, [SP,#0x168+var_100+4]
5885D8:  VSTR            S4, [SP,#0x168+var_F8]
5885DC:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
5885E0:  CMP             R0, #1
5885E2:  BNE             loc_5885F8
5885E4:  LDR             R0, [SP,#0x168+var_134]; this
5885E6:  ADD             R1, SP, #0x168+var_100; CVector *
5885E8:  VLDR            S0, [R8,#0x130]
5885EC:  ADD             R2, SP, #0x168+var_F0; CVector *
5885EE:  MOVS            R3, #0x10; int
5885F0:  VSTR            S0, [SP,#0x168+var_168]
5885F4:  BLX             j__ZN4Fx_c8AddBloodER7CVectorS1_if; Fx_c::AddBlood(CVector &,CVector &,int,float)
5885F8:  ADD             R0, SP, #0x168+var_E0; this
5885FA:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
5885FE:  MOV             R0, R5; this
588600:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
588604:  LDR.W           R9, [SP,#0x168+var_128]
588608:  CMP             R4, #0
58860A:  BNE.W           loc_58801A
58860E:  B               loc_588678
588610:  MOVS            R0, #0x3F ; '?'
588612:  MOVW            R1, #0x999A
588616:  STR             R0, [SP,#0x168+var_168]; unsigned __int8
588618:  ADD             R0, SP, #0x168+var_A0
58861A:  STR             R0, [SP,#0x168+var_164]; CVector *
58861C:  MOVS            R0, #0
58861E:  MOVT            R1, #0x3E19
588622:  STR             R0, [SP,#0x168+var_160]; CVector *
588624:  STR             R1, [SP,#0x168+var_15C]; float
588626:  MOV.W           R1, #0x3F800000
58862A:  STRD.W          R1, R0, [SP,#0x168+var_158]; float
58862E:  STR             R0, [SP,#0x168+var_150]; unsigned __int8
588630:  LDR             R0, [SP,#0x168+var_140]; this
588632:  MOV             R1, R6; CEntity *
588634:  MOV             R2, R8; CEntity *
588636:  MOVS            R3, #0x40 ; '@'; unsigned __int8
588638:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
58863C:  LDR             R0, [SP,#0x168+var_13C]
58863E:  LDR             R5, [R0]
588640:  BLX             rand
588644:  UXTH            R0, R0
588646:  VLDR            S2, =0.000015259
58864A:  VMOV            S0, R0
58864E:  LDR             R1, =(dword_A130DC - 0x588658)
588650:  VCVT.F32.S32    S0, S0
588654:  ADD             R1, PC; dword_A130DC
588656:  VMUL.F32        S0, S0, S2
58865A:  VMUL.F32        S0, S0, S23
58865E:  VCVT.S32.F32    S0, S0
588662:  VMOV            R0, S0
588666:  ADD             R0, R5
588668:  ADDS            R0, #0x96
58866A:  STR             R0, [R1]
58866C:  LDR             R0, [SP,#0x168+var_14C]
58866E:  STR.W           R0, [R6,#0xA0]
588672:  CMP             R4, #0
588674:  BNE.W           loc_58801A
588678:  MOVS            R0, #0
58867A:  ADD             SP, SP, #0x108
58867C:  VPOP            {D8-D15}
588680:  ADD             SP, SP, #4
588682:  POP.W           {R8-R11}
588686:  POP             {R4-R7,PC}
