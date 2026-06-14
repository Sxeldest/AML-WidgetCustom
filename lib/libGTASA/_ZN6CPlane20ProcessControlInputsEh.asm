; =========================================================
; Game Engine Function: _ZN6CPlane20ProcessControlInputsEh
; Address            : 0x575E98 - 0x576798
; =========================================================

575E98:  PUSH            {R4-R7,LR}
575E9A:  ADD             R7, SP, #0xC
575E9C:  PUSH.W          {R8,R9,R11}
575EA0:  VPUSH           {D8-D12}
575EA4:  SUB             SP, SP, #0x10
575EA6:  MOV             R4, R0
575EA8:  MOV             R8, R1
575EAA:  LDR             R0, [R4,#0x14]
575EAC:  VLDR            S0, [R4,#0x48]
575EB0:  VLDR            S2, [R4,#0x4C]
575EB4:  VLDR            S6, [R0,#0x10]
575EB8:  VLDR            S8, [R0,#0x14]
575EBC:  VLDR            S10, [R0,#0x18]
575EC0:  MOV             R0, R8; this
575EC2:  VLDR            S4, [R4,#0x50]
575EC6:  VMUL.F32        S18, S2, S8
575ECA:  VMUL.F32        S20, S0, S6
575ECE:  VMUL.F32        S16, S4, S10
575ED2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
575ED6:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
575EDA:  VMOV            S0, R0
575EDE:  MOV             R0, R8; this
575EE0:  VCVT.F32.S32    S22, S0
575EE4:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
575EE8:  VADD.F32        S20, S20, S18
575EEC:  BLX             j__ZN4CPad17GetSteeringUpDownEv; CPad::GetSteeringUpDown(void)
575EF0:  VMOV            S0, R0; this
575EF4:  VLDR            S18, =0.0078125
575EF8:  VCVT.F32.S32    S24, S0
575EFC:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
575F00:  CMP             R0, #2
575F02:  BNE             loc_575FE4
575F04:  MOV             R0, R8; this
575F06:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
575F0A:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x575F12)
575F0E:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
575F10:  LDR             R5, [R0]; CPad::NewMouseControllerState ...
575F12:  MOV             R0, R8; this
575F14:  VLDR            S22, [R5,#0xC]
575F18:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
575F1C:  MOVS            R0, #0x5A ; 'Z'
575F1E:  MOVS            R1, #0
575F20:  VLDR            S24, [R5,#0x10]
575F24:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
575F28:  MOV             R5, R0
575F2A:  MOVS            R0, #0x5B ; '['
575F2C:  MOVS            R1, #0
575F2E:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
575F32:  MOV             R9, R0
575F34:  MOVS            R0, #0x5C ; '\'
575F36:  MOVS            R1, #0
575F38:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
575F3C:  MOV             R6, R0
575F3E:  MOVS            R0, #0x5D ; ']'
575F40:  MOVS            R1, #0
575F42:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
575F46:  LDR.W           R1, =(_ZN14MobileSettings8settingsE_ptr - 0x575F5A)
575F4A:  VMOV.F32        S8, #0.5
575F4E:  VLDR            S4, =100.0
575F52:  VMOV.F32        S10, #-1.0
575F56:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
575F58:  VLDR            S6, =0.12
575F5C:  CMP             R6, #0
575F5E:  LDR             R1, [R1]; MobileSettings::settings ...
575F60:  VMUL.F32        S6, S22, S6
575F64:  ADD.W           R2, R1, #0x408
575F68:  VLDR            S0, [R2]
575F6C:  VCVT.F32.S32    S0, S0
575F70:  VLDR            S2, [R1,#0x3E8]
575F74:  MOVW            R1, #0x201
575F78:  VCVT.F32.S32    S2, S2
575F7C:  VDIV.F32        S0, S0, S4
575F80:  VDIV.F32        S2, S2, S4
575F84:  VMUL.F32        S0, S0, S8
575F88:  VLDR            S4, =0.08
575F8C:  VMUL.F32        S2, S2, S8
575F90:  VMUL.F32        S4, S24, S4
575F94:  IT NE
575F96:  VMOVNE.F32      S4, S10
575F9A:  CMP             R5, #0
575F9C:  IT NE
575F9E:  VMOVNE.F32      S6, S10
575FA2:  VMOV.F32        S10, #1.0
575FA6:  CMP             R0, #0
575FA8:  VADD.F32        S0, S0, S8
575FAC:  VADD.F32        S8, S2, S8
575FB0:  IT NE
575FB2:  VMOVNE.F32      S4, S10
575FB6:  CMP.W           R9, #0
575FBA:  IT NE
575FBC:  VMOVNE.F32      S6, S10
575FC0:  VMOV.F32        S10, #0.75
575FC4:  LDRH            R0, [R4,#0x26]
575FC6:  VMUL.F32        S2, S4, S0
575FCA:  VMUL.F32        S0, S6, S8
575FCE:  CMP             R0, R1
575FD0:  VMUL.F32        S4, S2, S10
575FD4:  VMUL.F32        S6, S0, S10
575FD8:  ITT EQ
575FDA:  VMOVEQ.F32      S0, S6
575FDE:  VMOVEQ.F32      S2, S4
575FE2:  B               loc_575FEC
575FE4:  VMUL.F32        S0, S22, S18
575FE8:  VMUL.F32        S2, S24, S18
575FEC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x576000)
575FF0:  VMOV.F32        S22, #-1.0
575FF4:  VLDR            S24, =0.069
575FF8:  VADD.F32        S16, S20, S16
575FFC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
575FFE:  VMOV.F32        S20, #1.0
576002:  ADDW            R1, R4, #0x9A4; int
576006:  LDR             R5, [R0]; CTimer::ms_fTimeStep ...
576008:  ADD.W           R0, R4, #0x9A0
57600C:  VLDR            S4, [R0]
576010:  VLDR            S6, [R5]
576014:  VMOV.F32        S10, S22
576018:  VSUB.F32        S2, S2, S4
57601C:  VMUL.F32        S6, S6, S24
576020:  VMUL.F32        S2, S2, S6
576024:  VADD.F32        S2, S4, S2
576028:  VMOV.F32        S4, S22
57602C:  VCMPE.F32       S2, S22
576030:  VMRS            APSR_nzcv, FPSCR
576034:  IT GT
576036:  VMOVGT.F32      S4, S2
57603A:  VLDR            S8, [R1]
57603E:  VCMPE.F32       S4, S20
576042:  VMRS            APSR_nzcv, FPSCR
576046:  VCMPE.F32       S2, S22
57604A:  VSUB.F32        S0, S0, S8
57604E:  VMUL.F32        S0, S0, S6
576052:  VADD.F32        S0, S8, S0
576056:  IT GE
576058:  VMOVGE.F32      S10, S20
57605C:  VMRS            APSR_nzcv, FPSCR
576060:  VMOV.F32        S6, S10
576064:  VCMPE.F32       S4, S20
576068:  VMAX.F32        D16, D0, D11
57606C:  VMIN.F32        D2, D16, D10
576070:  IT GT
576072:  VMOVGT.F32      S6, S2
576076:  VMRS            APSR_nzcv, FPSCR
57607A:  IT GE
57607C:  VMOVGE.F32      S6, S10
576080:  VSTR            S0, [R1]
576084:  VSTR            S2, [R0]
576088:  VSTR            S4, [R1]
57608C:  VSTR            S6, [R0]
576090:  MOV             R0, R8; this
576092:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
576096:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
57609A:  VMOV            S0, R0
57609E:  MOVW            R1, #0x21B; int
5760A2:  VCVT.F32.S32    S0, S0
5760A6:  VLDR            S2, [R5]
5760AA:  ADDW            R5, R4, #0x99C
5760AE:  LDRH            R0, [R4,#0x26]
5760B0:  CMP             R0, R1
5760B2:  VMUL.F32        S4, S0, S18
5760B6:  VLDR            S0, [R5]
5760BA:  BNE             loc_57610A
5760BC:  VLDR            S6, =0.02
5760C0:  VSUB.F32        S4, S4, S0
5760C4:  MOV             R0, R8; this
5760C6:  VMUL.F32        S2, S2, S6
5760CA:  VMUL.F32        S2, S4, S2
5760CE:  VADD.F32        S0, S0, S2
5760D2:  VSTR            S0, [R5]
5760D6:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5760DA:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
5760DE:  VMOV            S0, R0
5760E2:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5760F2)
5760E6:  VLDR            S4, =0.2
5760EA:  VCVT.F32.S32    S0, S0
5760EE:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5760F0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5760F2:  VMUL.F32        S2, S0, S18
5760F6:  VLDR            S0, [R5]
5760FA:  VSUB.F32        S2, S2, S0
5760FE:  VMUL.F32        S2, S2, S4
576102:  VLDR            S4, [R0]
576106:  LDRH            R0, [R4,#0x26]
576108:  B               loc_576112
57610A:  VSUB.F32        S4, S4, S0
57610E:  VMUL.F32        S2, S2, S24
576112:  VMUL.F32        S2, S4, S2
576116:  VADD.F32        S0, S2, S0
57611A:  VLDR            S18, =0.1
57611E:  VMOV.F32        S2, S22
576122:  ADD.W           R6, R4, #0x498
576126:  VMOV.F32        S4, S22
57612A:  VCMPE.F32       S0, S22
57612E:  VMRS            APSR_nzcv, FPSCR
576132:  IT GT
576134:  VMOVGT.F32      S2, S0
576138:  VCMPE.F32       S2, S20
57613C:  VMRS            APSR_nzcv, FPSCR
576140:  VCMPE.F32       S0, S22
576144:  IT GE
576146:  VMOVGE.F32      S4, S20
57614A:  VMRS            APSR_nzcv, FPSCR
57614E:  VMOV.F32        S6, S4
576152:  VCMPE.F32       S2, S20
576156:  IT GT
576158:  VMOVGT.F32      S6, S0
57615C:  VMRS            APSR_nzcv, FPSCR
576160:  VLDR            S0, =-3.1416
576164:  IT GE
576166:  VMOVGE.F32      S6, S4
57616A:  VSTR            S6, [R5]
57616E:  LDR.W           R1, [R4,#0x388]
576172:  VLDR            S2, [R1,#0xA0]
576176:  MOVW            R1, #0x21B; int
57617A:  CMP             R0, R1
57617C:  VMUL.F32        S0, S2, S0
576180:  VLDR            S2, =180.0
576184:  VDIV.F32        S0, S0, S2
576188:  VSUB.F32        S2, S20, S16
57618C:  VMUL.F32        S0, S6, S0
576190:  VMAX.F32        D1, D1, D9
576194:  VMUL.F32        S0, S2, S0
576198:  VSTR            S0, [R6]
57619C:  BNE             loc_5761C6
57619E:  MOV             R0, R8; this
5761A0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5761A4:  BLX             j__ZN4CPad12GetHandBrakeEv; CPad::GetHandBrake(void)
5761A8:  CBZ             R0, loc_5761C6
5761AA:  VMOV.F32        S0, #1.5
5761AE:  VLDR            S2, [R6]
5761B2:  VMUL.F32        S2, S2, S0
5761B6:  VSTR            S2, [R6]
5761BA:  VLDR            S2, [R5]
5761BE:  VMUL.F32        S0, S2, S0
5761C2:  VSTR            S0, [R5]
5761C6:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
5761CA:  CMP             R0, #2
5761CC:  BNE             loc_576222
5761CE:  MOVS            R0, #0
5761D0:  ADD             R1, SP, #0x50+var_45+1
5761D2:  STR.W           R0, [R4,#0x9A8]
5761D6:  STR             R0, [SP,#0x50+var_45+1]
5761D8:  MOVS            R0, #8
5761DA:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
5761DE:  ADDW            R5, R4, #0x9A8
5761E2:  CMP             R0, #1
5761E4:  ADD             R1, SP, #0x50+var_45+1
5761E6:  ITT EQ
5761E8:  LDREQ           R0, [SP,#0x50+var_45+1]
5761EA:  STREQ           R0, [R5]
5761EC:  MOVS            R0, #6
5761EE:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
5761F2:  CMP             R0, #1
5761F4:  MOV.W           R0, #8
5761F8:  ITTT EQ
5761FA:  VLDREQ          S0, [SP,#0x50+var_45+1]
5761FE:  VNEGEQ.F32      S0, S0
576202:  VSTREQ          S0, [R5]
576206:  MOVS            R1, #0
576208:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
57620C:  CMP             R0, #1
57620E:  BNE             loc_576252
576210:  MOVS            R0, #6
576212:  MOVS            R1, #0
576214:  MOVS            R6, #0
576216:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
57621A:  CMP             R0, #1
57621C:  IT EQ
57621E:  STREQ           R6, [R5]
576220:  B               loc_576252
576222:  MOV             R0, R8; this
576224:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
576228:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
57622C:  MOV             R5, R0
57622E:  MOV             R0, R8; this
576230:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
576234:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
576238:  SUBS            R0, R5, R0
57623A:  VLDR            S2, =255.0
57623E:  VMOV            S0, R0
576242:  ADDW            R0, R4, #0x9A8
576246:  VCVT.F32.S32    S0, S0
57624A:  VDIV.F32        S0, S0, S2
57624E:  VSTR            S0, [R0]
576252:  MOVS            R3, #0
576254:  ADDS            R5, R4, #4
576256:  STRB.W          R3, [R7,#var_45]
57625A:  LDR             R0, [R4,#0x14]
57625C:  MOV             R2, R5
57625E:  CMP             R0, #0
576260:  IT NE
576262:  ADDNE.W         R2, R0, #0x30 ; '0'
576266:  LDM             R2, {R0-R2}; float
576268:  STR             R3, [SP,#0x50+var_50]; bool *
57626A:  SUB.W           R3, R7, #-var_45; float
57626E:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
576272:  LDR             R1, [R4,#0x14]
576274:  CMP             R1, #0
576276:  IT NE
576278:  ADDNE.W         R5, R1, #0x30 ; '0'
57627C:  LDRB.W          R1, [R7,#var_45]; int
576280:  CMP             R1, #0
576282:  BEQ             loc_5762F8
576284:  VMOV            S0, R0
576288:  VLDR            S2, [R5,#8]
57628C:  VSUB.F32        S0, S2, S0
576290:  VMOV.F32        S2, #30.0
576294:  VCMPE.F32       S0, S2
576298:  VMRS            APSR_nzcv, FPSCR
57629C:  BGT             loc_5762F8
57629E:  MOV             R0, R8; this
5762A0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5762A4:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
5762A8:  CBNZ            R0, loc_5762BC
5762AA:  ADD.W           R0, R4, #0x9E0
5762AE:  VLDR            S0, [R0]
5762B2:  VCMP.F32        S0, S20
5762B6:  VMRS            APSR_nzcv, FPSCR
5762BA:  BEQ             loc_57630A
5762BC:  MOVS            R0, #0x66 ; 'f'
5762BE:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
5762C2:  CMP             R0, #1
5762C4:  BEQ             loc_576310
5762C6:  B               loc_576374
5762C8:  DCFS 0.0078125
5762CC:  DCFS 100.0
5762D0:  DCFS 0.12
5762D4:  DCFS 0.08
5762D8:  DCFS 0.069
5762DC:  DCFS 0.02
5762E0:  DCFS 0.2
5762E4:  DCFS 0.1
5762E8:  DCFS -3.1416
5762EC:  DCFS 180.0
5762F0:  DCFS 255.0
5762F4:  DCFS 1000.0
5762F8:  ADD.W           R0, R4, #0x9E0
5762FC:  VLDR            S0, [R0]
576300:  VCMP.F32        S0, #0.0
576304:  VMRS            APSR_nzcv, FPSCR
576308:  BNE             loc_5762BC
57630A:  MOVS            R0, #0x66 ; 'f'
57630C:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
576310:  ADD.W           R0, R4, #0x7E8
576314:  VLDR            S0, [R0]
576318:  VCMP.F32        S0, S20
57631C:  VMRS            APSR_nzcv, FPSCR
576320:  BNE             loc_576374
576322:  ADDW            R0, R4, #0x7EC
576326:  VLDR            S0, [R0]
57632A:  VCMP.F32        S0, S20
57632E:  VMRS            APSR_nzcv, FPSCR
576332:  BNE             loc_576374
576334:  ADD.W           R0, R4, #0x7F0
576338:  VLDR            S0, [R0]
57633C:  VCMP.F32        S0, S20
576340:  VMRS            APSR_nzcv, FPSCR
576344:  BNE             loc_576374
576346:  ADDW            R0, R4, #0x7F4
57634A:  VLDR            S0, [R0]
57634E:  VCMP.F32        S0, S20
576352:  VMRS            APSR_nzcv, FPSCR
576356:  BNE             loc_576374
576358:  LDR.W           R0, [R4,#0x38C]
57635C:  VLDR            S0, [R0,#0x30]
576360:  VCMPE.F32       S0, S20
576364:  VMRS            APSR_nzcv, FPSCR
576368:  BGE             loc_576374
57636A:  LDRH            R0, [R4,#0x26]
57636C:  CMP.W           R0, #0x1D0
576370:  BNE.W           loc_576732
576374:  ADD.W           R0, R4, #0x9E0
576378:  VLDR            S0, [R0]
57637C:  VCMPE.F32       S0, #0.0
576380:  VMRS            APSR_nzcv, FPSCR
576384:  BGE             loc_5763CE
576386:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x576392)
57638A:  VLDR            S2, =0.02
57638E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
576390:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
576392:  VLDR            S4, [R1]
576396:  VMUL.F32        S2, S4, S2
57639A:  VADD.F32        S0, S0, S2
57639E:  VCMPE.F32       S0, #0.0
5763A2:  VSTR            S0, [R0]
5763A6:  VMRS            APSR_nzcv, FPSCR
5763AA:  BLT             loc_576432
5763AC:  MOVS            R1, #0
5763AE:  VMOV.F32        S0, #0.5
5763B2:  STR             R1, [R0]
5763B4:  LDR.W           R0, [R4,#0x388]
5763B8:  VLDR            S2, [R0,#0x10]
5763BC:  STR.W           R1, [R4,#0x5B9]
5763C0:  VMUL.F32        S0, S2, S0
5763C4:  VLDR            S2, =1000.0
5763C8:  VDIV.F32        S0, S0, S2
5763CC:  B               loc_57642E
5763CE:  BLE             loc_576432
5763D0:  VCMPE.F32       S0, S20
5763D4:  VMRS            APSR_nzcv, FPSCR
5763D8:  BGE             loc_576432
5763DA:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5763E6)
5763DE:  VLDR            S2, =0.02
5763E2:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5763E4:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5763E6:  VLDR            S4, [R1]
5763EA:  VMUL.F32        S2, S4, S2
5763EE:  VADD.F32        S0, S0, S2
5763F2:  VCMPE.F32       S0, S20
5763F6:  VSTR            S0, [R0]
5763FA:  VMRS            APSR_nzcv, FPSCR
5763FE:  BLT             loc_576432
576400:  MOV.W           R1, #0x3F800000
576404:  VMOV.F32        S0, #0.5
576408:  STR             R1, [R0]
57640A:  LDRD.W          R0, R1, [R4,#0x388]
57640E:  VLDR            S2, [R0,#0x10]
576412:  MOV.W           R0, #0x2020202
576416:  VMUL.F32        S0, S2, S0
57641A:  VLDR            S2, =1000.0
57641E:  VDIV.F32        S0, S0, S2
576422:  VLDR            S2, [R1,#0x30]
576426:  STR.W           R0, [R4,#0x5B9]
57642A:  VMUL.F32        S0, S2, S0
57642E:  VSTR            S0, [R4,#0x9C]
576432:  LDRH            R0, [R4,#0x26]; this
576434:  CMP.W           R0, #0x208
576438:  BNE.W           loc_5765F0
57643C:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
576440:  CBZ             R0, loc_57644A
576442:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
576446:  CMP             R0, #1
576448:  BNE             loc_576518
57644A:  VLDR            S0, =0.15
57644E:  VCMPE.F32       S16, S0
576452:  VMRS            APSR_nzcv, FPSCR
576456:  BLE             loc_5764B6
576458:  MOV             R0, R8; this
57645A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
57645E:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
576462:  CBZ             R0, loc_5764B6
576464:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57646C)
576466:  LDR             R1, =(HARRIER_NOZZLE_ROTATERATE_ptr - 0x576472)
576468:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57646A:  LDRH.W          R2, [R4,#0x880]
57646E:  ADD             R1, PC; HARRIER_NOZZLE_ROTATERATE_ptr
576470:  STRH.W          R2, [R4,#0x882]
576474:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
576476:  LDR             R1, [R1]; HARRIER_NOZZLE_ROTATERATE
576478:  VLDR            S0, [R0]
57647C:  NEGS            R0, R2
57647E:  VLDR            S2, [R1]
576482:  VMOV            S4, R0
576486:  LDR             R0, =(_ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr - 0x576498)
576488:  VMUL.F32        S0, S2, S0
57648C:  VLDR            S2, =0.0
576490:  VCVT.F32.S32    S4, S4
576494:  ADD             R0, PC; _ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr
576496:  LDR             R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT ...
576498:  LDRSH.W         R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT
57649C:  VADD.F32        S0, S0, S4
5764A0:  VMAX.F32        D0, D0, D1
5764A4:  VCVT.U32.F32    S0, S0
5764A8:  VMOV            R1, S0
5764AC:  CMP             R1, R0
5764AE:  IT GT
5764B0:  MOVGT           R1, R0; int
5764B2:  STRH.W          R1, [R4,#0x880]
5764B6:  VLDR            S0, =0.88
5764BA:  VCMPE.F32       S16, S0
5764BE:  VMRS            APSR_nzcv, FPSCR
5764C2:  BGE.W           loc_5765D8
5764C6:  MOV             R0, R8; this
5764C8:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5764CC:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
5764D0:  CMP             R0, #0
5764D2:  BEQ.W           loc_5765D8
5764D6:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5764DE)
5764D8:  LDR             R1, =(HARRIER_NOZZLE_ROTATERATE_ptr - 0x5764E4)
5764DA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5764DC:  LDRH.W          R2, [R4,#0x880]
5764E0:  ADD             R1, PC; HARRIER_NOZZLE_ROTATERATE_ptr
5764E2:  STRH.W          R2, [R4,#0x882]
5764E6:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5764E8:  LDR             R1, [R1]; HARRIER_NOZZLE_ROTATERATE
5764EA:  VMOV            S4, R2
5764EE:  VLDR            S0, [R0]
5764F2:  VLDR            S2, [R1]
5764F6:  VCVT.F32.U32    S4, S4
5764FA:  VMUL.F32        S0, S2, S0
5764FE:  VLDR            S2, =0.0
576502:  VADD.F32        S0, S0, S4
576506:  VMAX.F32        D0, D0, D1
57650A:  VCVT.U32.F32    S0, S0
57650E:  VMOV            R0, S0
576512:  STRH.W          R0, [R4,#0x880]
576516:  B               loc_5765D8
576518:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
57651C:  CMP             R0, #2
57651E:  BNE             loc_5765D8
576520:  LDR             R0, =(unk_6B1258 - 0x576528)
576522:  LDR             R1, =(HARRIER_NOZZLE_ROTATERATE_ptr - 0x57652A)
576524:  ADD             R0, PC; unk_6B1258
576526:  ADD             R1, PC; HARRIER_NOZZLE_ROTATERATE_ptr
576528:  VLDR            S0, [R0]
57652C:  LDR             R0, [R1]; HARRIER_NOZZLE_ROTATERATE
57652E:  VCVT.F32.S32    S0, S0
576532:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57653C)
576534:  VLDR            S2, [R0]
576538:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57653A:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
57653C:  LDRH.W          R1, [R4,#0x880]
576540:  VMUL.F32        S0, S2, S0
576544:  VLDR            S2, [R0]
576548:  VMOV            S4, R1
57654C:  LDR             R0, =(_ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr - 0x576556)
57654E:  VCVT.F32.U32    S4, S4
576552:  ADD             R0, PC; _ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr
576554:  LDR             R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT ...
576556:  VMUL.F32        S0, S2, S0
57655A:  VLDR            S2, =0.0
57655E:  LDRSH.W         R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT
576562:  VADD.F32        S0, S0, S4
576566:  VMOV            S4, R0
57656A:  VCVT.F32.S32    S4, S4
57656E:  VCMPE.F32       S0, #0.0
576572:  VMRS            APSR_nzcv, FPSCR
576576:  VMOV.F32        S6, S0
57657A:  IT LT
57657C:  VMOVLT.F32      S6, S2
576580:  VCMPE.F32       S6, S4
576584:  VMRS            APSR_nzcv, FPSCR
576588:  VCMPE.F32       S0, #0.0
57658C:  IT GE
57658E:  VMOVGE.F32      S2, S4
576592:  VMRS            APSR_nzcv, FPSCR
576596:  VCMPE.F32       S6, S4
57659A:  IT LT
57659C:  VMOVLT.F32      S0, S2
5765A0:  VMRS            APSR_nzcv, FPSCR
5765A4:  IT GE
5765A6:  VMOVGE.F32      S0, S2
5765AA:  VCVT.U32.F32    S0, S0
5765AE:  VMOV            R0, S0
5765B2:  STRH.W          R0, [R4,#0x880]
5765B6:  MOVS            R0, #0x57 ; 'W'
5765B8:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
5765BC:  CMP             R0, #1
5765BE:  BNE             loc_5765D8
5765C0:  LDR             R0, =(unk_6B1258 - 0x5765C6)
5765C2:  ADD             R0, PC; unk_6B1258
5765C4:  VLDR            S0, [R0]
5765C8:  VCVT.F32.S32    S0, S0
5765CC:  VNEG.F32        S0, S0
5765D0:  VCVT.S32.F32    S0, S0
5765D4:  VSTR            S0, [R0]
5765D8:  LDR             R0, =(_ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr - 0x5765E2)
5765DA:  LDRH.W          R1, [R4,#0x880]
5765DE:  ADD             R0, PC; _ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr
5765E0:  LDR             R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT ...
5765E2:  LDRSH.W         R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT
5765E6:  CMP             R1, R0
5765E8:  ITT GT
5765EA:  UXTHGT          R0, R0
5765EC:  STRHGT.W        R0, [R4,#0x880]
5765F0:  LDR.W           R0, [R4,#0x42C]
5765F4:  VCMPE.F32       S16, #0.0
5765F8:  MOVS            R1, #0; int
5765FA:  VMRS            APSR_nzcv, FPSCR
5765FE:  STR.W           R1, [R4,#0x4A0]
576602:  BIC.W           R0, R0, #0x20 ; ' '
576606:  STR.W           R0, [R4,#0x42C]
57660A:  BLE             loc_57664A
57660C:  MOV             R0, R8; this
57660E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
576612:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
576616:  CBZ             R0, loc_57664A
576618:  MOV             R0, R8; this
57661A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
57661E:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
576622:  VLDR            S2, =0.35
576626:  VMOV            S0, R0
57662A:  VCMPE.F32       S16, S2
57662E:  VMRS            APSR_nzcv, FPSCR
576632:  VCVT.F32.S32    S0, S0
576636:  ITT GT
576638:  VMOVGT.F32      S2, #0.5
57663C:  VMULGT.F32      S0, S0, S2
576640:  VLDR            S2, =255.0
576644:  VDIV.F32        S0, S0, S2
576648:  B               loc_57669E
57664A:  VLDR            S0, [R4,#0x48]
57664E:  VLDR            S2, [R4,#0x4C]
576652:  VMUL.F32        S0, S0, S0
576656:  VLDR            S4, [R4,#0x50]
57665A:  VMUL.F32        S2, S2, S2
57665E:  VMUL.F32        S4, S4, S4
576662:  VADD.F32        S0, S0, S2
576666:  VADD.F32        S0, S0, S4
57666A:  VSQRT.F32       S0, S0
57666E:  VCMPE.F32       S0, S18
576672:  VMRS            APSR_nzcv, FPSCR
576676:  BGE             loc_57669A
576678:  MOV             R0, R8; this
57667A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
57667E:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
576682:  CMP             R0, #9
576684:  BGT             loc_57669A
576686:  MOV             R0, R8; this
576688:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
57668C:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
576690:  CMP             R0, #0xA
576692:  BGE             loc_57669A
576694:  VMOV.F32        S0, #0.5
576698:  B               loc_57669E
57669A:  VLDR            S0, =0.0
57669E:  ADDW            R5, R4, #0x4A4
5766A2:  MOV             R0, R8; this
5766A4:  VSTR            S0, [R5]
5766A8:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5766AC:  LDRH.W          R0, [R0,#0x110]
5766B0:  CBZ             R0, loc_576726
5766B2:  MOV.W           R2, #0x3F800000
5766B6:  ADDW            R1, R4, #0x42C
5766BA:  STR             R2, [R5]
5766BC:  ADD.W           R0, R4, #0x4A0
5766C0:  LDR             R2, [R1]
5766C2:  ORR.W           R2, R2, #0x20 ; ' '
5766C6:  STR             R2, [R1]
5766C8:  MOVS            R1, #0
5766CA:  STR             R1, [R0]
5766CC:  MOV.W           R0, #0xFFFFFFFF; int
5766D0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5766D4:  BLX             j__ZN10CPlayerPed25KeepAreaAroundPlayerClearEv; CPlayerPed::KeepAreaAroundPlayerClear(void)
5766D8:  VLDR            S0, [R4,#0x48]
5766DC:  VLDR            S4, [R4,#0x4C]
5766E0:  VMUL.F32        S8, S0, S0
5766E4:  VLDR            S2, [R4,#0x50]
5766E8:  VMUL.F32        S6, S4, S4
5766EC:  VMUL.F32        S10, S2, S2
5766F0:  VADD.F32        S6, S8, S6
5766F4:  VLDR            S8, =0.28
5766F8:  VADD.F32        S6, S6, S10
5766FC:  VSQRT.F32       S6, S6
576700:  VCMPE.F32       S6, S8
576704:  VMRS            APSR_nzcv, FPSCR
576708:  BLE             loc_576726
57670A:  VDIV.F32        S6, S8, S6
57670E:  VMUL.F32        S0, S0, S6
576712:  VMUL.F32        S4, S4, S6
576716:  VMUL.F32        S2, S2, S6
57671A:  VSTR            S0, [R4,#0x48]
57671E:  VSTR            S4, [R4,#0x4C]
576722:  VSTR            S2, [R4,#0x50]
576726:  ADD             SP, SP, #0x10
576728:  VPOP            {D8-D12}
57672C:  POP.W           {R8,R9,R11}
576730:  POP             {R4-R7,PC}
576732:  ADD.W           R0, R4, #0x9E0
576736:  VLDR            S0, [R0]
57673A:  VCMP.F32        S0, #0.0
57673E:  VMRS            APSR_nzcv, FPSCR
576742:  BNE             loc_576768
576744:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57674E)
576746:  VLDR            S2, =0.02
57674A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57674C:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
57674E:  VLDR            S4, [R1]
576752:  VMUL.F32        S2, S4, S2
576756:  VADD.F32        S0, S0, S2
57675A:  VSTR            S0, [R0]
57675E:  MOV.W           R0, #0x2020202
576762:  STR.W           R0, [R4,#0x5B9]
576766:  B               loc_576432
576768:  VCMP.F32        S0, S20
57676C:  VMRS            APSR_nzcv, FPSCR
576770:  BNE             loc_57678E
576772:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57677C)
576774:  VLDR            S0, =0.02
576778:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57677A:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
57677C:  VLDR            S2, [R1]
576780:  VMUL.F32        S0, S2, S0
576784:  VADD.F32        S0, S0, S22
576788:  VSTR            S0, [R0]
57678C:  B               loc_576432
57678E:  VNEG.F32        S0, S0
576792:  VSTR            S0, [R0]
576796:  B               loc_576432
