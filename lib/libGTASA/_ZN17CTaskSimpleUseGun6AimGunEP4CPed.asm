; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun6AimGunEP4CPed
; Address            : 0x4DCF58 - 0x4DD572
; =========================================================

4DCF58:  PUSH            {R4-R7,LR}
4DCF5A:  ADD             R7, SP, #0xC
4DCF5C:  PUSH.W          {R8-R11}
4DCF60:  SUB             SP, SP, #4
4DCF62:  VPUSH           {D8}
4DCF66:  SUB             SP, SP, #0x40; float
4DCF68:  MOV             R5, R0
4DCF6A:  MOV             R4, R1
4DCF6C:  LDRB.W          R0, [R5,#0x3B]
4DCF70:  CBZ             R0, loc_4DCF80
4DCF72:  VMOV.F32        S16, #1.0
4DCF76:  MOV.W           R10, #0
4DCF7A:  STRB.W          R10, [R5,#0x3B]
4DCF7E:  B               loc_4DCF98
4DCF80:  LDR.W           R0, =(ARM_IK_AIM_BLEND_TIME_ptr - 0x4DCF8C)
4DCF84:  LDR.W           R1, =(ARM_IK_AIM_RATE_ptr - 0x4DCF8E)
4DCF88:  ADD             R0, PC; ARM_IK_AIM_BLEND_TIME_ptr
4DCF8A:  ADD             R1, PC; ARM_IK_AIM_RATE_ptr
4DCF8C:  LDR             R0, [R0]; ARM_IK_AIM_BLEND_TIME
4DCF8E:  LDR             R1, [R1]; ARM_IK_AIM_RATE
4DCF90:  LDR.W           R10, [R0]
4DCF94:  VLDR            S16, [R1]
4DCF98:  LDRB.W          R0, [R4,#0x487]
4DCF9C:  MOVW            R11, #:lower16:unk_98967F
4DCFA0:  ADDW            R8, R4, #0x484
4DCFA4:  MOVT            R11, #:upper16:unk_98967F
4DCFA8:  LSLS            R0, R0, #0x1D
4DCFAA:  BMI             loc_4DCFB4
4DCFAC:  LDR             R0, [R5,#0x30]
4DCFAE:  LDRB            R0, [R0,#0x18]
4DCFB0:  LSLS            R0, R0, #0x1E
4DCFB2:  BMI             loc_4DCFCC
4DCFB4:  LDRB.W          R0, [R4,#0x534]
4DCFB8:  ADDW            R6, R4, #0x534
4DCFBC:  LSLS            R0, R0, #0x1B
4DCFBE:  BMI             loc_4DCFC8
4DCFC0:  MOV             R0, R5; this
4DCFC2:  MOV             R1, R4; CPed *
4DCFC4:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
4DCFC8:  MOVS            R0, #0x10
4DCFCA:  B               loc_4DCFD2
4DCFCC:  ADDW            R6, R4, #0x534
4DCFD0:  MOVS            R0, #4
4DCFD2:  LDR             R1, [R6]
4DCFD4:  MOV.W           R9, #0x20000
4DCFD8:  BIC.W           R1, R1, #0x14
4DCFDC:  ORRS            R1, R0
4DCFDE:  STR             R1, [R6]
4DCFE0:  LDR             R3, [R5,#0x1C]
4DCFE2:  CBZ             R3, loc_4DD032
4DCFE4:  LDR             R0, [R3,#0x14]
4DCFE6:  ADD.W           R1, R0, #0x30 ; '0'
4DCFEA:  CMP             R0, #0
4DCFEC:  IT EQ
4DCFEE:  ADDEQ           R1, R3, #4
4DCFF0:  VLDR            D16, [R1]
4DCFF4:  LDR             R0, [R1,#8]
4DCFF6:  STR             R0, [SP,#0x68+var_30]
4DCFF8:  VSTR            D16, [SP,#0x68+var_38]
4DCFFC:  LDRB.W          R0, [R3,#0x3A]
4DD000:  AND.W           R0, R0, #7
4DD004:  CMP             R0, #2
4DD006:  BEQ             loc_4DD060
4DD008:  CMP             R0, #3
4DD00A:  BNE.W           loc_4DD2FE
4DD00E:  LDR.W           R0, [R4,#0x444]
4DD012:  CMP             R0, #0
4DD014:  BEQ.W           loc_4DD2F2
4DD018:  VLDR            D16, [R0,#0x74]
4DD01C:  LDR             R1, [R0,#0x7C]
4DD01E:  STR             R1, [SP,#0x68+var_30]
4DD020:  ADD             R1, SP, #0x68+var_38
4DD022:  VSTR            D16, [SP,#0x68+var_38]
4DD026:  LDR             R2, [R0,#0x70]
4DD028:  MOV             R0, R3; this
4DD02A:  MOVS            R3, #0
4DD02C:  BLX             j__ZN4CPed26GetTransformedBonePositionER5RwV3djb; CPed::GetTransformedBonePosition(RwV3d &,uint,bool)
4DD030:  B               loc_4DD2FE
4DD032:  ADD.W           R6, R4, #0x518
4DD036:  LSLS            R0, R0, #0x1D
4DD038:  BMI             loc_4DD086
4DD03A:  VLDR            S0, [R5,#0x20]
4DD03E:  VCMP.F32        S0, #0.0
4DD042:  VMRS            APSR_nzcv, FPSCR
4DD046:  ITTT NE
4DD048:  VLDRNE          S0, [R5,#0x24]
4DD04C:  VCMPNE.F32      S0, #0.0
4DD050:  VMRSNE          APSR_nzcv, FPSCR
4DD054:  BEQ.W           loc_4DD2D4
4DD058:  LDR             R0, [R5,#0x2C]
4DD05A:  ADD.W           R1, R5, #0x20 ; ' '
4DD05E:  B               loc_4DD32C
4DD060:  LDR.W           R0, =(_ZN8CVehicle23m_pTappedGasTankVehicleE_ptr - 0x4DD068)
4DD064:  ADD             R0, PC; _ZN8CVehicle23m_pTappedGasTankVehicleE_ptr
4DD066:  LDR             R0, [R0]; CVehicle::m_pTappedGasTankVehicle ...
4DD068:  LDR             R0, [R0]; CVehicle::m_pTappedGasTankVehicle
4DD06A:  CMP             R3, R0
4DD06C:  BNE.W           loc_4DD2FE
4DD070:  ADD             R0, SP, #0x68+var_48; this
4DD072:  MOV             R1, R3
4DD074:  BLX             j__ZN8CVehicle18GetGasTankPositionEv; CVehicle::GetGasTankPosition(void)
4DD078:  VLDR            D16, [SP,#0x68+var_48]
4DD07C:  LDR             R0, [SP,#0x68+var_40]
4DD07E:  STR             R0, [SP,#0x68+var_30]
4DD080:  VSTR            D16, [SP,#0x68+var_38]
4DD084:  B               loc_4DD2FE
4DD086:  LDR.W           R0, [R4,#0x444]
4DD08A:  CMP             R0, #0
4DD08C:  BEQ.W           loc_4DD1F8
4DD090:  LDRB.W          R0, [R0,#0x34]
4DD094:  LSLS            R0, R0, #0x1C
4DD096:  BPL.W           loc_4DD1F8
4DD09A:  VLDR            S0, [R5,#0x20]
4DD09E:  VCMP.F32        S0, #0.0
4DD0A2:  VMRS            APSR_nzcv, FPSCR
4DD0A6:  ITTT EQ
4DD0A8:  VLDREQ          S0, [R5,#0x24]
4DD0AC:  VCMPEQ.F32      S0, #0.0
4DD0B0:  VMRSEQ          APSR_nzcv, FPSCR
4DD0B4:  BNE.W           loc_4DD1F8
4DD0B8:  LDR.W           R0, =(TheCamera_ptr - 0x4DD0C0)
4DD0BC:  ADD             R0, PC; TheCamera_ptr
4DD0BE:  LDR             R0, [R0]; TheCamera
4DD0C0:  LDRH.W          R0, [R0,#(word_952126 - 0x951FA8)]
4DD0C4:  CMP             R0, #0x41 ; 'A'
4DD0C6:  IT NE
4DD0C8:  CMPNE           R0, #0x35 ; '5'
4DD0CA:  BNE.W           loc_4DD1F8
4DD0CE:  LDR             R0, [R4,#0x14]
4DD0D0:  ADD.W           R12, SP, #0x68+var_48
4DD0D4:  VLDR            S0, =0.0
4DD0D8:  ADD.W           R1, R0, #0x30 ; '0'
4DD0DC:  CMP             R0, #0
4DD0DE:  IT EQ
4DD0E0:  ADDEQ           R1, R4, #4
4DD0E2:  LDR.W           R0, =(TheCamera_ptr - 0x4DD0F2)
4DD0E6:  VLDR            S2, [R1]
4DD0EA:  VLDR            S4, [R1,#4]
4DD0EE:  ADD             R0, PC; TheCamera_ptr
4DD0F0:  VADD.F32        S2, S2, S0
4DD0F4:  VLDR            S6, [R1,#8]
4DD0F8:  VADD.F32        S0, S4, S0
4DD0FC:  ADD             R1, SP, #0x68+var_38
4DD0FE:  LDR             R0, [R0]; TheCamera
4DD100:  STRD.W          R1, R12, [SP,#0x68+var_64]; int
4DD104:  MOVS            R1, #0x41A00000
4DD10A:  VMOV            R2, S2
4DD10E:  VMOV            R3, S0
4DD112:  VLDR            S0, =0.7
4DD116:  VADD.F32        S0, S6, S0
4DD11A:  VSTR            S0, [SP,#0x68+var_68]
4DD11E:  BLX             j__ZN7CCamera28Find3rdPersonCamTargetVectorEf7CVectorRS0_S1_; CCamera::Find3rdPersonCamTargetVector(float,CVector,CVector&,CVector&)
4DD122:  LDR             R0, [R5,#0x2C]
4DD124:  VLDR            S0, =0.98
4DD128:  VLDR            S2, [R0,#0x18]
4DD12C:  VCMPE.F32       S2, S0
4DD130:  VMRS            APSR_nzcv, FPSCR
4DD134:  BLE             loc_4DD17A
4DD136:  LDR.W           R12, =(g_ikChainMan_ptr - 0x4DD148)
4DD13A:  MOV.W           R1, #0xFFFFFFFF
4DD13E:  MOVS            R3, #0xFA
4DD140:  MOV.W           R0, #0x3E800000
4DD144:  ADD             R12, PC; g_ikChainMan_ptr
4DD146:  MOV.W           R9, #1
4DD14A:  STRD.W          R11, R1, [SP,#0x68+var_68]; int
4DD14E:  ADD             R1, SP, #0x68+var_48
4DD150:  STRD.W          R1, R9, [SP,#0x68+var_60]; int
4DD154:  MOV.W           LR, #0
4DD158:  STRD.W          R0, R3, [SP,#0x68+var_58]; float
4DD15C:  MOVS            R2, #3
4DD15E:  LDR.W           R0, [R12]; g_ikChainMan ; int
4DD162:  ADR.W           R1, aTaskusegun; "TaskUseGun"
4DD166:  STRD.W          R2, LR, [SP,#0x68+var_50]; int
4DD16A:  MOV             R2, R4; CPed *
4DD16C:  MOVS            R3, #0; int
4DD16E:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
4DD172:  STRB.W          R9, [R5,#0x3A]
4DD176:  MOV.W           R9, #0x20000
4DD17A:  LDR.W           R0, =(g_ikChainMan_ptr - 0x4DD18E)
4DD17E:  MOV             R11, #0x42C80000
4DD186:  MOV.W           R1, #0xFFFFFFFF
4DD18A:  ADD             R0, PC; g_ikChainMan_ptr
4DD18C:  MOVS            R2, #0
4DD18E:  STRD.W          R10, R11, [SP,#0x68+var_58]; int
4DD192:  MOV             R3, R4; this
4DD194:  VSTR            S16, [SP,#0x68+var_5C]
4DD198:  STRD.W          R2, R1, [SP,#0x68+var_68]; int
4DD19C:  ADD             R1, SP, #0x68+var_48
4DD19E:  LDR             R0, [R0]; g_ikChainMan ; int
4DD1A0:  MOVS            R2, #0; int
4DD1A2:  STR             R1, [SP,#0x68+var_60]; int
4DD1A4:  ADR.W           R1, aCtasksimpleuse; "CTaskSimpleUseGun"
4DD1A8:  BLX             j__ZN16IKChainManager_c8PointArmEPciP4CPedP7CEntityiP5RwV3dfif; IKChainManager_c::PointArm(char *,int,CPed *,CEntity *,int,RwV3d *,float,int,float)
4DD1AC:  LDR             R0, [R5,#0x30]
4DD1AE:  LDRB            R0, [R0,#0x19]
4DD1B0:  LSLS            R0, R0, #0x1C
4DD1B2:  BPL             loc_4DD1E8
4DD1B4:  LDR.W           R0, [R8,#8]
4DD1B8:  TST.W           R0, R9
4DD1BC:  BNE             loc_4DD1E8
4DD1BE:  LDR.W           R0, =(g_ikChainMan_ptr - 0x4DD1D0)
4DD1C2:  MOV.W           R1, #0xFFFFFFFF
4DD1C6:  MOVS            R2, #0
4DD1C8:  STRD.W          R10, R11, [SP,#0x68+var_58]; int
4DD1CC:  ADD             R0, PC; g_ikChainMan_ptr
4DD1CE:  VSTR            S16, [SP,#0x68+var_5C]
4DD1D2:  STRD.W          R2, R1, [SP,#0x68+var_68]; int
4DD1D6:  ADD             R1, SP, #0x68+var_48
4DD1D8:  LDR             R0, [R0]; g_ikChainMan ; int
4DD1DA:  MOVS            R2, #1; int
4DD1DC:  STR             R1, [SP,#0x68+var_60]; int
4DD1DE:  ADR.W           R1, aCtasksimpleuse; "CTaskSimpleUseGun"
4DD1E2:  MOV             R3, R4; this
4DD1E4:  BLX             j__ZN16IKChainManager_c8PointArmEPciP4CPedP7CEntityiP5RwV3dfif; IKChainManager_c::PointArm(char *,int,CPed *,CEntity *,int,RwV3d *,float,int,float)
4DD1E8:  MOVS            R0, #1
4DD1EA:  ADD             R1, SP, #0x68+var_48; CVector *
4DD1EC:  STRB.W          R0, [R5,#0x39]
4DD1F0:  MOV             R0, R6; this
4DD1F2:  BLX             j__ZN6CPedIK17RotateTorsoForArmERK7CVector; CPedIK::RotateTorsoForArm(CVector const&)
4DD1F6:  B               loc_4DD532
4DD1F8:  LDRB.W          R0, [R5,#0x39]
4DD1FC:  CMP             R0, #0
4DD1FE:  ITT NE
4DD200:  LDRBNE.W        R0, [R5,#0x3A]
4DD204:  CMPNE           R0, #0
4DD206:  BNE.W           loc_4DD532
4DD20A:  VLDR            S0, [R5,#0x20]
4DD20E:  VCMP.F32        S0, #0.0
4DD212:  VMRS            APSR_nzcv, FPSCR
4DD216:  ITTT NE
4DD218:  VLDRNE          S0, [R5,#0x24]
4DD21C:  VCMPNE.F32      S0, #0.0
4DD220:  VMRSNE          APSR_nzcv, FPSCR
4DD224:  BEQ.W           loc_4DD448
4DD228:  LDR             R0, [R5,#0x2C]
4DD22A:  ADD.W           R6, R5, #0x20 ; ' '
4DD22E:  VLDR            S0, =0.98
4DD232:  VLDR            S2, [R0,#0x18]
4DD236:  VCMPE.F32       S2, S0
4DD23A:  VMRS            APSR_nzcv, FPSCR
4DD23E:  BLE             loc_4DD276
4DD240:  LDR.W           R12, =(g_ikChainMan_ptr - 0x4DD252)
4DD244:  MOV.W           R2, #0xFFFFFFFF
4DD248:  MOVS            R1, #1
4DD24A:  STRD.W          R11, R2, [SP,#0x68+var_68]; int
4DD24E:  ADD             R12, PC; g_ikChainMan_ptr
4DD250:  STRD.W          R6, R1, [SP,#0x68+var_60]; int
4DD254:  MOV.W           LR, #0
4DD258:  MOV.W           R9, #3
4DD25C:  MOVS            R3, #0xFA
4DD25E:  MOV.W           R0, #0x3E800000
4DD262:  ADD             R1, SP, #0x68+var_58
4DD264:  MOV             R2, R4; CPed *
4DD266:  STM.W           R1, {R0,R3,R9,LR}
4DD26A:  ADR             R1, aTaskusegun; "TaskUseGun"
4DD26C:  MOVS            R3, #0; int
4DD26E:  LDR.W           R0, [R12]; g_ikChainMan ; int
4DD272:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
4DD276:  LDR             R0, =(g_ikChainMan_ptr - 0x4DD288)
4DD278:  MOV             R9, #0x42C80000
4DD280:  MOV.W           R1, #0xFFFFFFFF
4DD284:  ADD             R0, PC; g_ikChainMan_ptr
4DD286:  MOVS            R2, #0
4DD288:  STRD.W          R10, R9, [SP,#0x68+var_58]; int
4DD28C:  MOV             R3, R4; this
4DD28E:  LDR             R0, [R0]; g_ikChainMan ; int
4DD290:  VSTR            S16, [SP,#0x68+var_5C]
4DD294:  STRD.W          R2, R1, [SP,#0x68+var_68]; int
4DD298:  ADR             R1, aCtasksimpleuse; "CTaskSimpleUseGun"
4DD29A:  MOVS            R2, #0; int
4DD29C:  STR             R6, [SP,#0x68+var_60]; int
4DD29E:  BLX             j__ZN16IKChainManager_c8PointArmEPciP4CPedP7CEntityiP5RwV3dfif; IKChainManager_c::PointArm(char *,int,CPed *,CEntity *,int,RwV3d *,float,int,float)
4DD2A2:  LDR             R0, [R5,#0x30]
4DD2A4:  LDRB            R0, [R0,#0x19]
4DD2A6:  LSLS            R0, R0, #0x1C
4DD2A8:  BPL.W           loc_4DD50E
4DD2AC:  LDR.W           R0, [R8,#8]
4DD2B0:  MOV.W           R1, #0x20000
4DD2B4:  TST             R0, R1
4DD2B6:  BNE.W           loc_4DD50E
4DD2BA:  LDR             R0, =(g_ikChainMan_ptr - 0x4DD2CE)
4DD2BC:  MOV.W           R1, #0xFFFFFFFF
4DD2C0:  MOVS            R2, #0
4DD2C2:  STRD.W          R10, R9, [SP,#0x68+var_58]
4DD2C6:  VSTR            S16, [SP,#0x68+var_5C]
4DD2CA:  ADD             R0, PC; g_ikChainMan_ptr
4DD2CC:  STRD.W          R2, R1, [SP,#0x68+var_68]
4DD2D0:  STR             R6, [SP,#0x68+var_60]
4DD2D2:  B               loc_4DD502
4DD2D4:  MOV             R0, R4; this
4DD2D6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DD2DA:  CMP             R0, #1
4DD2DC:  BNE.W           loc_4DD51A
4DD2E0:  LDR             R3, [R5,#0x2C]
4DD2E2:  LDR.W           R0, [R4,#0x444]
4DD2E6:  LDR.W           R1, [R4,#0x55C]
4DD2EA:  VLDR            S0, [R3,#0x18]
4DD2EE:  LDR             R2, [R0,#0x54]
4DD2F0:  B               loc_4DD526
4DD2F2:  ADD             R1, SP, #0x68+var_38
4DD2F4:  MOV             R0, R3; this
4DD2F6:  MOVS            R2, #3
4DD2F8:  MOVS            R3, #0
4DD2FA:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
4DD2FE:  MOV             R0, R4; this
4DD300:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DD304:  CBNZ            R0, loc_4DD31C
4DD306:  MOVS            R0, #0
4DD308:  MOVS            R1, #0xDC; unsigned __int16
4DD30A:  STRD.W          R0, R0, [SP,#0x68+var_68]; unsigned __int8
4DD30E:  MOVS            R2, #0; unsigned int
4DD310:  STR             R0, [SP,#0x68+var_60]; unsigned __int8
4DD312:  MOV             R0, R4; this
4DD314:  MOV.W           R3, #0x3F800000; float
4DD318:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4DD31C:  LDRB.W          R0, [R4,#0x534]
4DD320:  ADD.W           R6, R4, #0x518
4DD324:  LSLS            R0, R0, #0x1D
4DD326:  BMI             loc_4DD336
4DD328:  LDR             R0, [R5,#0x2C]
4DD32A:  ADD             R1, SP, #0x68+var_38; CVector *
4DD32C:  LDR             R2, [R0,#0x18]; float
4DD32E:  MOV             R0, R6; this
4DD330:  BLX             j__ZN6CPedIK18PointGunAtPositionERK7CVectorf; CPedIK::PointGunAtPosition(CVector const&,float)
4DD334:  B               loc_4DD532
4DD336:  LDRB.W          R0, [R5,#0x39]
4DD33A:  CMP             R0, #0
4DD33C:  ITT NE
4DD33E:  LDRBNE.W        R0, [R5,#0x3A]
4DD342:  CMPNE           R0, #0
4DD344:  BNE             loc_4DD42E
4DD346:  LDR             R0, [R5,#0x1C]
4DD348:  LDRB.W          R0, [R0,#0x3A]
4DD34C:  AND.W           R0, R0, #7
4DD350:  CMP             R0, #3
4DD352:  BNE             loc_4DD36C
4DD354:  MOV             R0, R4; this
4DD356:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DD35A:  CMP             R0, #1
4DD35C:  ITTE EQ
4DD35E:  LDREQ.W         R0, [R4,#0x444]
4DD362:  LDREQ.W         R9, [R0,#0x70]
4DD366:  MOVNE.W         R9, #3
4DD36A:  B               loc_4DD370
4DD36C:  MOV.W           R9, #0xFFFFFFFF
4DD370:  LDRB.W          R0, [R5,#0x3A]
4DD374:  CBNZ            R0, loc_4DD3C2
4DD376:  LDR             R0, [R5,#0x2C]
4DD378:  VLDR            S0, =0.98
4DD37C:  VLDR            S2, [R0,#0x18]
4DD380:  VCMPE.F32       S2, S0
4DD384:  VMRS            APSR_nzcv, FPSCR
4DD388:  BLE             loc_4DD3C2
4DD38A:  MOVS            R1, #0
4DD38C:  MOVS            R0, #1
4DD38E:  LDR             R3, [R5,#0x1C]; int
4DD390:  MOV.W           LR, #3
4DD394:  STRD.W          R11, R9, [SP,#0x68+var_68]; int
4DD398:  MOV.W           R12, #0xFA
4DD39C:  STRD.W          R1, R0, [SP,#0x68+var_60]; int
4DD3A0:  MOV.W           R2, #0x3E800000
4DD3A4:  ADD             R0, SP, #0x68+var_58
4DD3A6:  MOV.W           R11, #1
4DD3AA:  STM.W           R0, {R2,R12,LR}
4DD3AE:  MOV             R2, R4; CPed *
4DD3B0:  LDR             R0, =(g_ikChainMan_ptr - 0x4DD3BA)
4DD3B2:  STR             R1, [SP,#0x68+var_4C]; int
4DD3B4:  ADR             R1, aTaskusegun; "TaskUseGun"
4DD3B6:  ADD             R0, PC; g_ikChainMan_ptr
4DD3B8:  LDR             R0, [R0]; g_ikChainMan ; int
4DD3BA:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
4DD3BE:  STRB.W          R11, [R5,#0x3A]
4DD3C2:  LDRB.W          R0, [R5,#0x39]
4DD3C6:  CBNZ            R0, loc_4DD42E
4DD3C8:  LDR             R0, =(g_ikChainMan_ptr - 0x4DD3D8)
4DD3CA:  MOVW            R11, #0
4DD3CE:  LDR             R1, [R5,#0x1C]
4DD3D0:  MOVT            R11, #0x42C8
4DD3D4:  ADD             R0, PC; g_ikChainMan_ptr
4DD3D6:  STRD.W          R10, R11, [SP,#0x68+var_58]; int
4DD3DA:  VSTR            S16, [SP,#0x68+var_5C]
4DD3DE:  MOVS            R2, #0
4DD3E0:  LDR             R0, [R0]; g_ikChainMan ; int
4DD3E2:  MOV             R3, R4; this
4DD3E4:  STRD.W          R1, R9, [SP,#0x68+var_68]; int
4DD3E8:  ADR             R1, aCtasksimpleuse; "CTaskSimpleUseGun"
4DD3EA:  STR             R2, [SP,#0x68+var_60]; int
4DD3EC:  MOVS            R2, #0; int
4DD3EE:  BLX             j__ZN16IKChainManager_c8PointArmEPciP4CPedP7CEntityiP5RwV3dfif; IKChainManager_c::PointArm(char *,int,CPed *,CEntity *,int,RwV3d *,float,int,float)
4DD3F2:  LDR             R0, [R5,#0x30]
4DD3F4:  LDRB            R0, [R0,#0x19]
4DD3F6:  LSLS            R0, R0, #0x1C
4DD3F8:  BPL             loc_4DD428
4DD3FA:  LDR.W           R0, [R8,#8]
4DD3FE:  MOV.W           R1, #0x20000
4DD402:  TST             R0, R1
4DD404:  BNE             loc_4DD428
4DD406:  LDR             R0, =(g_ikChainMan_ptr - 0x4DD412)
4DD408:  MOVS            R2, #0
4DD40A:  LDR             R1, [R5,#0x1C]
4DD40C:  MOV             R3, R4; this
4DD40E:  ADD             R0, PC; g_ikChainMan_ptr
4DD410:  STRD.W          R10, R11, [SP,#0x68+var_58]; int
4DD414:  VSTR            S16, [SP,#0x68+var_5C]
4DD418:  LDR             R0, [R0]; g_ikChainMan ; int
4DD41A:  STRD.W          R1, R9, [SP,#0x68+var_68]; int
4DD41E:  ADR             R1, aCtasksimpleuse; "CTaskSimpleUseGun"
4DD420:  STR             R2, [SP,#0x68+var_60]; int
4DD422:  MOVS            R2, #1; int
4DD424:  BLX             j__ZN16IKChainManager_c8PointArmEPciP4CPedP7CEntityiP5RwV3dfif; IKChainManager_c::PointArm(char *,int,CPed *,CEntity *,int,RwV3d *,float,int,float)
4DD428:  MOVS            R0, #1
4DD42A:  STRB.W          R0, [R5,#0x39]
4DD42E:  ADD             R1, SP, #0x68+var_38; CVector *
4DD430:  MOV             R0, R6; this
4DD432:  BLX             j__ZN6CPedIK17RotateTorsoForArmERK7CVector; CPedIK::RotateTorsoForArm(CVector const&)
4DD436:  MOV.W           R9, #0x20000
4DD43A:  B               loc_4DD532
4DD43C:  DCFS 0.0
4DD440:  DCFS 0.7
4DD444:  DCFS 0.98
4DD448:  LDR             R0, =(unk_61E5B0 - 0x4DD452)
4DD44A:  VLDR            S0, =0.98
4DD44E:  ADD             R0, PC; unk_61E5B0
4DD450:  VLDR            D16, [R0]
4DD454:  LDR             R0, [R0,#(dword_61E5B8 - 0x61E5B0)]
4DD456:  STR             R0, [SP,#0x68+var_30]
4DD458:  VSTR            D16, [SP,#0x68+var_38]
4DD45C:  LDR             R0, [R5,#0x2C]
4DD45E:  VLDR            S2, [R0,#0x18]
4DD462:  VCMPE.F32       S2, S0
4DD466:  VMRS            APSR_nzcv, FPSCR
4DD46A:  BLE             loc_4DD4AC
4DD46C:  LDRB.W          R0, [R5,#0x3A]
4DD470:  CBNZ            R0, loc_4DD4AC
4DD472:  LDR.W           R12, =(g_ikChainMan_ptr - 0x4DD480)
4DD476:  MOVS            R2, #0x16
4DD478:  MOVS            R6, #1
4DD47A:  ADD             R1, SP, #0x68+var_38
4DD47C:  ADD             R12, PC; g_ikChainMan_ptr
4DD47E:  STRD.W          R11, R2, [SP,#0x68+var_68]; int
4DD482:  STRD.W          R1, R6, [SP,#0x68+var_60]; int
4DD486:  MOV.W           LR, #0
4DD48A:  MOV.W           R9, #3
4DD48E:  MOVS            R3, #0xFA
4DD490:  MOV.W           R0, #0x3E800000
4DD494:  ADD             R1, SP, #0x68+var_58
4DD496:  STM.W           R1, {R0,R3,R9,LR}
4DD49A:  ADR             R1, aTaskusegun; "TaskUseGun"
4DD49C:  MOV             R2, R4; CPed *
4DD49E:  LDR.W           R0, [R12]; g_ikChainMan ; int
4DD4A2:  MOV             R3, R4; int
4DD4A4:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
4DD4A8:  STRB.W          R6, [R5,#0x3A]
4DD4AC:  LDR             R0, =(g_ikChainMan_ptr - 0x4DD4BA)
4DD4AE:  MOVS            R6, #0x42C80000
4DD4B4:  MOVS            R1, #0x16
4DD4B6:  ADD             R0, PC; g_ikChainMan_ptr
4DD4B8:  STRD.W          R10, R6, [SP,#0x68+var_58]; int
4DD4BC:  VSTR            S16, [SP,#0x68+var_5C]
4DD4C0:  MOVS            R2, #0; int
4DD4C2:  LDR             R0, [R0]; g_ikChainMan ; int
4DD4C4:  MOV             R3, R4; this
4DD4C6:  STRD.W          R4, R1, [SP,#0x68+var_68]; int
4DD4CA:  ADR             R1, aCtasksimpleuse; "CTaskSimpleUseGun"
4DD4CC:  ADD.W           R9, SP, #0x68+var_38
4DD4D0:  STR.W           R9, [SP,#0x68+var_60]; int
4DD4D4:  BLX             j__ZN16IKChainManager_c8PointArmEPciP4CPedP7CEntityiP5RwV3dfif; IKChainManager_c::PointArm(char *,int,CPed *,CEntity *,int,RwV3d *,float,int,float)
4DD4D8:  LDR             R0, [R5,#0x30]
4DD4DA:  LDRB            R0, [R0,#0x19]
4DD4DC:  LSLS            R0, R0, #0x1C
4DD4DE:  BPL             loc_4DD50E
4DD4E0:  LDR.W           R0, [R8,#8]
4DD4E4:  MOV.W           R1, #0x20000
4DD4E8:  TST             R0, R1
4DD4EA:  BNE             loc_4DD50E
4DD4EC:  LDR             R0, =(g_ikChainMan_ptr - 0x4DD4F8)
4DD4EE:  MOVS            R1, #0x16
4DD4F0:  STRD.W          R10, R6, [SP,#0x68+var_58]; int
4DD4F4:  ADD             R0, PC; g_ikChainMan_ptr
4DD4F6:  VSTR            S16, [SP,#0x68+var_5C]
4DD4FA:  STRD.W          R4, R1, [SP,#0x68+var_68]; int
4DD4FE:  STR.W           R9, [SP,#0x68+var_60]; int
4DD502:  LDR             R0, [R0]; g_ikChainMan ; int
4DD504:  ADR             R1, aCtasksimpleuse; "CTaskSimpleUseGun"
4DD506:  MOVS            R2, #1; int
4DD508:  MOV             R3, R4; this
4DD50A:  BLX             j__ZN16IKChainManager_c8PointArmEPciP4CPedP7CEntityiP5RwV3dfif; IKChainManager_c::PointArm(char *,int,CPed *,CEntity *,int,RwV3d *,float,int,float)
4DD50E:  MOVS            R0, #1
4DD510:  MOV.W           R9, #0x20000
4DD514:  STRB.W          R0, [R5,#0x39]
4DD518:  B               loc_4DD532
4DD51A:  LDR             R0, [R5,#0x2C]
4DD51C:  MOVS            R2, #0; float
4DD51E:  LDR.W           R1, [R4,#0x744]; float
4DD522:  VLDR            S0, [R0,#0x18]
4DD526:  MOV             R0, R6; this
4DD528:  VSTR            S0, [SP,#0x68+var_68]
4DD52C:  MOVS            R3, #0; bool
4DD52E:  BLX             j__ZN6CPedIK19PointGunInDirectionEffbf; CPedIK::PointGunInDirection(float,float,bool,float)
4DD532:  LDR             R0, [R5,#0x30]
4DD534:  LDRB            R0, [R0,#0x19]
4DD536:  LSLS            R0, R0, #0x1C
4DD538:  BPL             loc_4DD564
4DD53A:  LDR.W           R0, [R8,#8]
4DD53E:  TST.W           R0, R9
4DD542:  BEQ             loc_4DD564
4DD544:  LDR             R0, =(g_ikChainMan_ptr - 0x4DD54E)
4DD546:  MOVS            R1, #1; int
4DD548:  MOV             R2, R4; CPed *
4DD54A:  ADD             R0, PC; g_ikChainMan_ptr
4DD54C:  LDR             R0, [R0]; g_ikChainMan ; this
4DD54E:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
4DD552:  CBZ             R0, loc_4DD564
4DD554:  LDR             R0, =(g_ikChainMan_ptr - 0x4DD560)
4DD556:  MOVS            R1, #1; int
4DD558:  MOV             R2, R4; CPed *
4DD55A:  MOVS            R3, #0xFA; int
4DD55C:  ADD             R0, PC; g_ikChainMan_ptr
4DD55E:  LDR             R0, [R0]; g_ikChainMan ; this
4DD560:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
4DD564:  ADD             SP, SP, #0x40 ; '@'
4DD566:  VPOP            {D8}
4DD56A:  ADD             SP, SP, #4
4DD56C:  POP.W           {R8-R11}
4DD570:  POP             {R4-R7,PC}
