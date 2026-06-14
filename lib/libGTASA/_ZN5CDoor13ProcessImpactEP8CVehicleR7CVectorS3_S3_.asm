; =========================================================
; Game Engine Function: _ZN5CDoor13ProcessImpactEP8CVehicleR7CVectorS3_S3_
; Address            : 0x56F078 - 0x56F222
; =========================================================

56F078:  PUSH            {R4-R7,LR}
56F07A:  ADD             R7, SP, #0xC
56F07C:  PUSH.W          {R8,R9,R11}
56F080:  VPUSH           {D8}
56F084:  SUB             SP, SP, #0x80
56F086:  LDR             R6, [R7,#arg_0]
56F088:  MOV             R9, R3
56F08A:  MOV             R4, R2
56F08C:  MOV             R8, R0
56F08E:  LDRD.W          R2, R3, [R6]
56F092:  MOV             R5, R1
56F094:  LDR             R0, [R6,#8]
56F096:  STR             R0, [SP,#0xA0+var_A0]
56F098:  ADD             R0, SP, #0xA0+var_2C
56F09A:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
56F09E:  ADD             R0, SP, #0xA0+var_80; CVector *
56F0A0:  MOV             R1, R9; CVector *
56F0A2:  MOV             R2, R6
56F0A4:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
56F0A8:  VLDR            S0, [R4]
56F0AC:  ADD             R0, SP, #0xA0+var_80; this
56F0AE:  VLDR            S6, [SP,#0xA0+var_80]
56F0B2:  VLDR            S2, [R4,#4]
56F0B6:  VLDR            S8, [SP,#0xA0+var_7C]
56F0BA:  VADD.F32        S0, S6, S0
56F0BE:  VLDR            S4, [R4,#8]
56F0C2:  VLDR            S10, [SP,#0xA0+var_78]
56F0C6:  VADD.F32        S2, S8, S2
56F0CA:  VLDR            S6, [SP,#0xA0+var_2C]
56F0CE:  VADD.F32        S4, S10, S4
56F0D2:  VLDR            S8, [SP,#0xA0+var_28]
56F0D6:  VLDR            S10, [SP,#0xA0+var_24]
56F0DA:  VSUB.F32        S0, S6, S0
56F0DE:  VSUB.F32        S2, S8, S2
56F0E2:  VSUB.F32        S4, S10, S4
56F0E6:  VSTR            S0, [SP,#0xA0+var_38]
56F0EA:  VSTR            S2, [SP,#0xA0+var_34]
56F0EE:  VSTR            S4, [SP,#0xA0+var_30]
56F0F2:  LDR             R1, [R5,#0x14]; CMatrix *
56F0F4:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
56F0F8:  LDRH.W          R0, [R8,#8]
56F0FC:  AND.W           R0, R0, #0xF
56F100:  CMP             R0, #5; switch 6 cases
56F102:  BHI             def_56F104; jumptable 0056F104 default case
56F104:  TBB.W           [PC,R0]; switch jump
56F108:  DCB 3; jump table for switch statement
56F109:  DCB 8
56F10A:  DCB 0xD
56F10B:  DCB 0x15
56F10C:  DCB 0x1D
56F10D:  DCB 0x25
56F10E:  LDR             R0, [R5,#0x14]; jumptable 0056F104 case 0
56F110:  VLDR            D16, [R0]
56F114:  LDR             R0, [R0,#8]
56F116:  B               loc_56F12A
56F118:  LDR             R0, [R5,#0x14]; jumptable 0056F104 case 1
56F11A:  VLDR            D16, [R0,#0x10]
56F11E:  LDR             R0, [R0,#0x18]
56F120:  B               loc_56F12A
56F122:  LDR             R0, [R5,#0x14]; jumptable 0056F104 case 2
56F124:  VLDR            D16, [R0,#0x20]
56F128:  LDR             R0, [R0,#0x28]
56F12A:  STR             R0, [SP,#0xA0+var_88]
56F12C:  VSTR            D16, [SP,#0xA0+var_90]
56F130:  B               def_56F104; jumptable 0056F104 default case
56F132:  LDR             R0, [R5,#0x14]; jumptable 0056F104 case 3
56F134:  VLDR            S0, [R0]
56F138:  VLDR            S2, [R0,#4]
56F13C:  VLDR            S4, [R0,#8]
56F140:  B               loc_56F160
56F142:  LDR             R0, [R5,#0x14]; jumptable 0056F104 case 4
56F144:  VLDR            S0, [R0,#0x10]
56F148:  VLDR            S2, [R0,#0x14]
56F14C:  VLDR            S4, [R0,#0x18]
56F150:  B               loc_56F160
56F152:  LDR             R0, [R5,#0x14]; jumptable 0056F104 case 5
56F154:  VLDR            S0, [R0,#0x20]
56F158:  VLDR            S2, [R0,#0x24]
56F15C:  VLDR            S4, [R0,#0x28]
56F160:  VNEG.F32        S2, S2
56F164:  VNEG.F32        S0, S0
56F168:  VNEG.F32        S4, S4
56F16C:  VSTR            S2, [SP,#0xA0+var_90+4]
56F170:  VSTR            S0, [SP,#0xA0+var_90]
56F174:  VSTR            S4, [SP,#0xA0+var_88]
56F178:  LDRB.W          R0, [R8,#0xA]; jumptable 0056F104 default case
56F17C:  CBZ             R0, loc_56F192
56F17E:  CMP             R0, #2
56F180:  BNE             loc_56F1A0
56F182:  ADD             R0, SP, #0xA0+var_9C; CVector *
56F184:  ADD             R1, SP, #0xA0+var_38; CVector *
56F186:  ADD             R2, SP, #0xA0+var_90
56F188:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
56F18C:  VLDR            S16, [SP,#0xA0+var_94]
56F190:  B               loc_56F1A0
56F192:  ADD             R0, SP, #0xA0+var_9C; CVector *
56F194:  ADD             R1, SP, #0xA0+var_38; CVector *
56F196:  ADD             R2, SP, #0xA0+var_90
56F198:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
56F19C:  VLDR            S16, [SP,#0xA0+var_9C]
56F1A0:  BLX             rand
56F1A4:  VMOV            S0, R0
56F1A8:  VLDR            S2, =4.6566e-10
56F1AC:  VMOV.F32        S4, #0.75
56F1B0:  VCVT.F32.S32    S0, S0
56F1B4:  VMUL.F32        S0, S0, S2
56F1B8:  VLDR            S2, =0.1
56F1BC:  VMUL.F32        S0, S0, S4
56F1C0:  VADD.F32        S0, S0, S4
56F1C4:  VLDR            S4, [R8,#4]
56F1C8:  VMUL.F32        S2, S0, S2
56F1CC:  VLDR            S0, [R8]
56F1D0:  VCMPE.F32       S0, S4
56F1D4:  VMRS            APSR_nzcv, FPSCR
56F1D8:  ITT GE
56F1DA:  VCMPEGE.F32     S16, S2
56F1DE:  VMRSGE          APSR_nzcv, FPSCR
56F1E2:  BLE             loc_56F1E8
56F1E4:  MOVS            R4, #1
56F1E6:  B               loc_56F20E
56F1E8:  VCMPE.F32       S0, S4
56F1EC:  MOVS            R1, #0
56F1EE:  VMRS            APSR_nzcv, FPSCR
56F1F2:  VNEG.F32        S2, S2
56F1F6:  MOV.W           R0, #0
56F1FA:  VCMPE.F32       S16, S2
56F1FE:  IT LT
56F200:  MOVLT           R1, #1
56F202:  VMRS            APSR_nzcv, FPSCR
56F206:  IT LT
56F208:  MOVLT           R0, #1
56F20A:  AND.W           R4, R0, R1
56F20E:  ADD             R0, SP, #0xA0+var_80; this
56F210:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
56F214:  MOV             R0, R4
56F216:  ADD             SP, SP, #0x80
56F218:  VPOP            {D8}
56F21C:  POP.W           {R8,R9,R11}
56F220:  POP             {R4-R7,PC}
