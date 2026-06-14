; =========================================================
; Game Engine Function: _ZN5CHeli20ProcessControlInputsEh
; Address            : 0x571EE0 - 0x572304
; =========================================================

571EE0:  PUSH            {R4-R7,LR}
571EE2:  ADD             R7, SP, #0xC
571EE4:  PUSH.W          {R8,R9,R11}
571EE8:  VPUSH           {D8-D10}
571EEC:  SUB             SP, SP, #0x30
571EEE:  MOV             R4, R0
571EF0:  MOV             R0, R1; this
571EF2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
571EF6:  MOV             R9, R0
571EF8:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
571EFC:  CMP             R0, #2
571EFE:  BNE             loc_571F52
571F00:  MOVS            R0, #0
571F02:  MOVS            R1, #0
571F04:  STR.W           R0, [R4,#0x9AC]
571F08:  MOVS            R0, #0x56 ; 'V'
571F0A:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
571F0E:  ADDW            R5, R4, #0x9AC
571F12:  CMP             R0, #1
571F14:  MOV.W           R1, #0
571F18:  ITT EQ
571F1A:  MOVEQ.W         R0, #0x3F800000
571F1E:  STREQ           R0, [R5]
571F20:  MOVS            R0, #0x57 ; 'W'
571F22:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
571F26:  CMP             R0, #1
571F28:  MOV.W           R1, #0
571F2C:  ITTT EQ
571F2E:  MOVEQ           R0, #0
571F30:  MOVTEQ          R0, #0xBF80
571F34:  STREQ           R0, [R5]
571F36:  MOVS            R0, #0x56 ; 'V'
571F38:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
571F3C:  CMP             R0, #1
571F3E:  BNE             loc_571F7A
571F40:  MOVS            R0, #0x57 ; 'W'
571F42:  MOVS            R1, #0
571F44:  MOVS            R6, #0
571F46:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
571F4A:  CMP             R0, #1
571F4C:  IT EQ
571F4E:  STREQ           R6, [R5]
571F50:  B               loc_571F7A
571F52:  MOV             R0, R9; this
571F54:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
571F58:  MOV             R6, R0
571F5A:  MOV             R0, R9; this
571F5C:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
571F60:  SUBS            R0, R6, R0
571F62:  VLDR            S2, =255.0
571F66:  VMOV            S0, R0
571F6A:  ADDW            R0, R4, #0x9AC
571F6E:  VCVT.F32.S32    S0, S0
571F72:  VDIV.F32        S0, S0, S2
571F76:  VSTR            S0, [R0]
571F7A:  MOV             R0, R9; this
571F7C:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
571F80:  NEGS            R0, R0
571F82:  VLDR            S16, =0.0078125
571F86:  ADDW            R8, R4, #0x9A8
571F8A:  VMOV            S0, R0
571F8E:  MOV             R0, R9; this
571F90:  VCVT.F32.S32    S0, S0
571F94:  VMUL.F32        S0, S0, S16
571F98:  VSTR            S0, [R8]
571F9C:  BLX             j__ZN4CPad17GetSteeringUpDownEv; CPad::GetSteeringUpDown(void)
571FA0:  VMOV            S0, R0; this
571FA4:  ADDW            R5, R4, #0x9A4
571FA8:  VCVT.F32.S32    S0, S0
571FAC:  VMUL.F32        S0, S0, S16
571FB0:  VSTR            S0, [R5]
571FB4:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
571FB8:  CMP             R0, #2
571FBA:  BNE             loc_572028
571FBC:  MOVS            R0, #0
571FBE:  ADD             R1, SP, #0x60+var_40
571FC0:  STR             R0, [SP,#0x60+var_40]
571FC2:  MOVS            R0, #8
571FC4:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
571FC8:  CMP             R0, #1
571FCA:  ADD             R1, SP, #0x60+var_40
571FCC:  ITT EQ
571FCE:  LDREQ           R0, [SP,#0x60+var_40]
571FD0:  STREQ           R0, [R5]
571FD2:  MOVS            R0, #6
571FD4:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
571FD8:  CMP             R0, #1
571FDA:  MOV.W           R0, #8
571FDE:  ITTT EQ
571FE0:  VLDREQ          S0, [SP,#0x60+var_40]
571FE4:  VNEGEQ.F32      S0, S0
571FE8:  VSTREQ          S0, [R5]
571FEC:  MOVS            R1, #0
571FEE:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
571FF2:  CMP             R0, #1
571FF4:  BNE             loc_572006
571FF6:  MOVS            R0, #6
571FF8:  MOVS            R1, #0
571FFA:  MOVS            R6, #0
571FFC:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
572000:  CMP             R0, #1
572002:  IT EQ
572004:  STREQ           R6, [R5]
572006:  MOVS            R0, #0x18
572008:  MOV             R1, R8
57200A:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
57200E:  VLDR            S0, [R5]
572012:  VNEG.F32        S0, S0
572016:  VSTR            S0, [R5]
57201A:  VLDR            S2, [R8]
57201E:  VNEG.F32        S2, S2
572022:  VSTR            S2, [R8]
572026:  B               loc_572030
572028:  VLDR            S2, [R8]
57202C:  VLDR            S0, [R5]
572030:  VMOV.F32        S16, #1.0
572034:  VMOV.F32        S18, #-1.0
572038:  VMIN.F32        D16, D0, D8
57203C:  VMIN.F32        D17, D1, D8
572040:  VMAX.F32        D0, D16, D9
572044:  VMAX.F32        D1, D17, D9
572048:  VSTR            S0, [R5]
57204C:  VSTR            S2, [R8]
572050:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
572054:  CMP             R0, #2
572056:  BNE             loc_5720BC
572058:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x572060)
57205A:  MOVS            R1, #0
57205C:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
57205E:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
572060:  VLDR            S20, [R0,#0xC]
572064:  MOVS            R0, #0x5A ; 'Z'
572066:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
57206A:  MOV             R6, R0
57206C:  MOVS            R0, #0x5B ; '['
57206E:  MOVS            R1, #0
572070:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
572074:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x572084)
572076:  VMOV.F32        S4, #0.5
57207A:  VLDR            S2, =100.0
57207E:  CMP             R6, #0
572080:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
572082:  LDR             R1, [R1]; MobileSettings::settings ...
572084:  VLDR            S0, [R1,#0x3E8]
572088:  VCVT.F32.S32    S0, S0
57208C:  VDIV.F32        S0, S0, S2
572090:  VMUL.F32        S0, S0, S4
572094:  VLDR            S2, =0.15
572098:  VMUL.F32        S2, S20, S2
57209C:  IT NE
57209E:  VMOVNE.F32      S2, S18
5720A2:  CMP             R0, #0
5720A4:  IT NE
5720A6:  VMOVNE.F32      S2, S16
5720AA:  ADD.W           R0, R4, #0x9A0
5720AE:  VADD.F32        S0, S0, S4
5720B2:  VMUL.F32        S0, S2, S0
5720B6:  VSTR            S0, [R0]
5720BA:  B               loc_572100
5720BC:  MOVS            R0, #0
5720BE:  ADD.W           R6, R4, #0x9A0
5720C2:  STR.W           R0, [R4,#0x9A0]
5720C6:  MOV             R0, R9; this
5720C8:  BLX             j__ZN4CPad13GetTurretLeftEv; CPad::GetTurretLeft(void)
5720CC:  CMP             R0, #1
5720CE:  BNE             loc_5720DE
5720D0:  MOV             R0, R9; this
5720D2:  BLX             j__ZN4CPad14GetTurretRightEv; CPad::GetTurretRight(void)
5720D6:  CMP             R0, #1
5720D8:  BNE             loc_5720DE
5720DA:  MOVS            R0, #0
5720DC:  B               loc_5720FE
5720DE:  MOV             R0, R9; this
5720E0:  BLX             j__ZN4CPad13GetTurretLeftEv; CPad::GetTurretLeft(void)
5720E4:  CMP             R0, #1
5720E6:  BNE             loc_5720F0
5720E8:  MOVS            R0, #0xBF800000
5720EE:  B               loc_5720FE
5720F0:  MOV             R0, R9; this
5720F2:  BLX             j__ZN4CPad14GetTurretRightEv; CPad::GetTurretRight(void)
5720F6:  CMP             R0, #1
5720F8:  BNE             loc_572100
5720FA:  MOV.W           R0, #0x3F800000
5720FE:  STR             R0, [R6]
572100:  MOV             R0, R9; this
572102:  MOVS            R1, #1; bool
572104:  BLX             j__ZN4CPad7GetHornEb; CPad::GetHorn(bool)
572108:  CMP             R0, #1
57210A:  BNE.W           loc_572244
57210E:  LDR             R2, [R4,#0x14]
572110:  VLDR            S0, [R2,#0x28]
572114:  VCMPE.F32       S0, #0.0
572118:  VMRS            APSR_nzcv, FPSCR
57211C:  BLE.W           loc_572244
572120:  MOVS            R0, #0
572122:  ADD             R6, SP, #0x60+var_40
572124:  STR.W           R0, [R4,#0x9A0]
572128:  ADD             R1, SP, #0x60+var_50; CVector *
57212A:  STRD.W          R0, R0, [SP,#0x60+var_50]
57212E:  MOV.W           R0, #0x3F800000
572132:  STR             R0, [SP,#0x60+var_48]
572134:  MOV             R0, R6; CVector *
572136:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
57213A:  MOV             R0, R6; this
57213C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
572140:  VLDR            S0, [R4,#0x48]
572144:  VMOV.F32        S18, #2.0
572148:  VLDR            S6, [SP,#0x60+var_40]
57214C:  VMOV.F32        S16, #-2.0
572150:  VLDR            S2, [R4,#0x4C]
572154:  VLDR            S8, [SP,#0x60+var_40+4]
572158:  VMUL.F32        S0, S0, S6
57215C:  VLDR            S4, [R4,#0x50]
572160:  VMUL.F32        S2, S2, S8
572164:  VLDR            S10, [SP,#0x60+var_38]
572168:  LDR.W           R0, [R4,#0x38C]
57216C:  VMUL.F32        S4, S4, S10
572170:  VADD.F32        S0, S0, S2
572174:  VLDR            S2, [R0,#0x24]
572178:  VADD.F32        S0, S0, S4
57217C:  VMUL.F32        S0, S0, S2
572180:  VCMPE.F32       S0, S18
572184:  VMRS            APSR_nzcv, FPSCR
572188:  BGT             loc_57219C
57218A:  VMOV.F32        S2, #-2.0
57218E:  VCMPE.F32       S0, S2
572192:  VMOV.F32        S2, S16
572196:  VMRS            APSR_nzcv, FPSCR
57219A:  BLT             loc_5721AE
57219C:  VCMPE.F32       S0, S18
5721A0:  VMRS            APSR_nzcv, FPSCR
5721A4:  VMOV.F32        S2, S18
5721A8:  IT LE
5721AA:  VMOVLE.F32      S2, S0
5721AE:  VSTR            S2, [R5]
5721B2:  MOVS            R1, #0
5721B4:  LDR             R0, [R4,#0x14]
5721B6:  ADD             R2, SP, #0x60+var_5C
5721B8:  STRD.W          R1, R1, [SP,#0x60+var_5C]
5721BC:  MOV.W           R1, #0x3F800000
5721C0:  STR             R1, [SP,#0x60+var_54]
5721C2:  ADD.W           R1, R0, #0x10; CVector *
5721C6:  ADD             R0, SP, #0x60+var_50; CVector *
5721C8:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5721CC:  LDR             R0, [SP,#0x60+var_48]
5721CE:  STR             R0, [SP,#0x60+var_38]
5721D0:  ADD             R0, SP, #0x60+var_40; this
5721D2:  VLDR            D16, [SP,#0x60+var_50]
5721D6:  VSTR            D16, [SP,#0x60+var_40]
5721DA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5721DE:  VLDR            S0, [R4,#0x48]
5721E2:  VLDR            S6, [SP,#0x60+var_40]
5721E6:  VLDR            S2, [R4,#0x4C]
5721EA:  VLDR            S8, [SP,#0x60+var_40+4]
5721EE:  VMUL.F32        S0, S0, S6
5721F2:  VLDR            S4, [R4,#0x50]
5721F6:  VMUL.F32        S2, S2, S8
5721FA:  VLDR            S10, [SP,#0x60+var_38]
5721FE:  LDR.W           R0, [R4,#0x38C]
572202:  VMUL.F32        S4, S4, S10
572206:  VADD.F32        S0, S0, S2
57220A:  VLDR            S2, [R0,#0x1C]
57220E:  VADD.F32        S0, S0, S4
572212:  VMUL.F32        S0, S0, S2
572216:  VCMPE.F32       S0, S18
57221A:  VMRS            APSR_nzcv, FPSCR
57221E:  ITTT LE
572220:  VMOVLE.F32      S2, #-2.0
572224:  VCMPELE.F32     S0, S2
572228:  VMRSLE          APSR_nzcv, FPSCR
57222C:  BLT             loc_572240
57222E:  VMOV.F32        S16, #2.0
572232:  VCMPE.F32       S0, S16
572236:  VMRS            APSR_nzcv, FPSCR
57223A:  IT LE
57223C:  VMOVLE.F32      S16, S0
572240:  VSTR            S16, [R8]
572244:  LDR.W           R1, [R4,#0x42C]
572248:  MOVS            R2, #0
57224A:  MOV.W           R0, #0x3F800000
57224E:  STR.W           R2, [R4,#0x498]
572252:  STR.W           R2, [R4,#0x4A0]
572256:  STR.W           R0, [R4,#0x4A4]
57225A:  BIC.W           R0, R1, #0x20 ; ' '
57225E:  STR.W           R0, [R4,#0x42C]
572262:  LDRH.W          R0, [R9,#0x110]
572266:  CBZ             R0, loc_5722C2
572268:  MOV.W           R0, #0xFFFFFFFF; int
57226C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
572270:  BLX             j__ZN10CPlayerPed25KeepAreaAroundPlayerClearEv; CPlayerPed::KeepAreaAroundPlayerClear(void)
572274:  VLDR            S0, [R4,#0x48]
572278:  VLDR            S4, [R4,#0x4C]
57227C:  VMUL.F32        S8, S0, S0
572280:  VLDR            S2, [R4,#0x50]
572284:  VMUL.F32        S6, S4, S4
572288:  VMUL.F32        S10, S2, S2
57228C:  VADD.F32        S6, S8, S6
572290:  VLDR            S8, =0.28
572294:  VADD.F32        S6, S6, S10
572298:  VSQRT.F32       S6, S6
57229C:  VCMPE.F32       S6, S8
5722A0:  VMRS            APSR_nzcv, FPSCR
5722A4:  BLE             loc_5722C2
5722A6:  VDIV.F32        S6, S8, S6
5722AA:  VMUL.F32        S0, S0, S6
5722AE:  VMUL.F32        S4, S4, S6
5722B2:  VMUL.F32        S2, S2, S6
5722B6:  VSTR            S0, [R4,#0x48]
5722BA:  VSTR            S4, [R4,#0x4C]
5722BE:  VSTR            S2, [R4,#0x50]
5722C2:  ADDW            R0, R4, #0x4CC
5722C6:  VLDR            S0, =250.0
5722CA:  VLDR            S2, [R0]
5722CE:  VCMPE.F32       S2, S0
5722D2:  VMRS            APSR_nzcv, FPSCR
5722D6:  BGE             loc_5722F8
5722D8:  VMOV.F32        S0, #0.5
5722DC:  ADD.W           R0, R4, #0x9A0
5722E0:  MOVW            R1, #0xCCCD
5722E4:  VLDR            S2, [R0]
5722E8:  MOVT            R1, #0xBDCC
5722EC:  STR.W           R1, [R4,#0x9AC]
5722F0:  VADD.F32        S0, S2, S0
5722F4:  VSTR            S0, [R0]
5722F8:  ADD             SP, SP, #0x30 ; '0'
5722FA:  VPOP            {D8-D10}
5722FE:  POP.W           {R8,R9,R11}
572302:  POP             {R4-R7,PC}
