; =========================================================
; Game Engine Function: _ZN23CTaskSimplePlayerOnFoot20PlayerControlFighterEP10CPlayerPed
; Address            : 0x538EF0 - 0x539452
; =========================================================

538EF0:  PUSH            {R4-R7,LR}
538EF2:  ADD             R7, SP, #0xC
538EF4:  PUSH.W          {R8-R11}
538EF8:  SUB             SP, SP, #4
538EFA:  VPUSH           {D8-D14}
538EFE:  SUB             SP, SP, #8; float
538F00:  MOV             R6, R1
538F02:  MOV             R8, R0
538F04:  LDR.W           R0, [R6,#0x440]; this
538F08:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
538F0C:  MOV             R9, R0
538F0E:  CMP.W           R9, #0
538F12:  BEQ.W           loc_5393E0
538F16:  LDRSB.W         R0, [R6,#0x71C]
538F1A:  MOVS            R1, #1
538F1C:  RSB.W           R0, R0, R0,LSL#3
538F20:  ADD.W           R0, R6, R0,LSL#2
538F24:  LDR.W           R0, [R0,#0x5A4]
538F28:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
538F2C:  LDR.W           R11, [R0]
538F30:  MOV             R0, R6; this
538F32:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
538F36:  MOV             R10, R0
538F38:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
538F3C:  VMOV            S0, R0
538F40:  MOV             R0, R10; this
538F42:  VCVT.F32.S32    S18, S0
538F46:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
538F4A:  VMOV            S0, R0
538F4E:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x538F60)
538F52:  MOV             R0, R6; this
538F54:  VLDR            S22, =0.07
538F58:  VCVT.F32.S32    S20, S0
538F5C:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
538F5E:  VLDR            S0, =0.0078125
538F62:  LDR             R1, [R1]; CPlayerPed *
538F64:  VMUL.F32        S26, S18, S0
538F68:  VLDR            S24, [R1]
538F6C:  VMUL.F32        S16, S20, S0
538F70:  BLX             j__ZN10CGameLogic26IsPlayerUse2PlayerControlsEP10CPlayerPed; CGameLogic::IsPlayerUse2PlayerControls(CPlayerPed *)
538F74:  CMP             R0, #1
538F76:  BNE             loc_539046
538F78:  VMUL.F32        S0, S16, S16
538F7C:  VMUL.F32        S2, S26, S26
538F80:  VADD.F32        S0, S2, S0
538F84:  VSQRT.F32       S28, S0
538F88:  VCMPE.F32       S28, #0.0
538F8C:  VMRS            APSR_nzcv, FPSCR
538F90:  BLE.W           loc_539122
538F94:  VMOV            R0, S26
538F98:  MOVS            R1, #0; float
538F9A:  VMOV            R3, S16; float
538F9E:  EOR.W           R2, R0, #0x80000000; float
538FA2:  MOVS            R0, #0; this
538FA4:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
538FA8:  LDR.W           R1, =(TheCamera_ptr - 0x538FB4)
538FAC:  VMOV            S0, R0
538FB0:  ADD             R1, PC; TheCamera_ptr
538FB2:  LDR             R1, [R1]; TheCamera ; float
538FB4:  VLDR            S2, [R1,#0x14C]
538FB8:  VSUB.F32        S0, S0, S2
538FBC:  VMOV            R0, S0; this
538FC0:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
538FC4:  MOV             R4, R0
538FC6:  BLX             sinf
538FCA:  MOV             R5, R0
538FCC:  MOV             R0, R4; x
538FCE:  BLX             cosf
538FD2:  EOR.W           R5, R5, #0x80000000
538FD6:  MOV             R4, R0
538FD8:  MOVS            R0, #0
538FDA:  MOV             R2, R4
538FDC:  STR             R0, [SP,#0x60+var_60]; float
538FDE:  MOV             R0, R6
538FE0:  MOV             R1, R5
538FE2:  MOVS            R3, #0
538FE4:  BLX             j__ZN10CGameLogic34IsPlayerAllowedToGoInThisDirectionEP10CPlayerPed7CVectorf; CGameLogic::IsPlayerAllowedToGoInThisDirection(CPlayerPed *,CVector,float)
538FE8:  CMP             R0, #1
538FEA:  BNE.W           loc_53911A
538FEE:  LDR             R0, [R6,#0x14]
538FF0:  VMOV            S0, R4
538FF4:  VMOV            S2, R5
538FF8:  VLDR            S4, [R0,#0x10]
538FFC:  VLDR            S6, [R0,#0x14]
539000:  VLDR            S10, [R0]
539004:  VMUL.F32        S4, S4, S2
539008:  VLDR            S12, [R0,#4]
53900C:  VMUL.F32        S6, S0, S6
539010:  VMUL.F32        S2, S10, S2
539014:  VLDR            S8, [R0,#0x18]
539018:  VMUL.F32        S0, S0, S12
53901C:  VLDR            S10, =0.0
539020:  VLDR            S14, [R0,#8]
539024:  VMUL.F32        S8, S8, S10
539028:  VADD.F32        S4, S4, S6
53902C:  VMUL.F32        S6, S14, S10
539030:  VADD.F32        S0, S2, S0
539034:  VADD.F32        S2, S4, S8
539038:  VADD.F32        S0, S0, S6
53903C:  VNMUL.F32       S16, S28, S2
539040:  VMUL.F32        S26, S28, S0
539044:  B               loc_539122
539046:  LDR.W           R0, [R6,#0x720]; this
53904A:  CMP             R0, #0
53904C:  BEQ             loc_539104
53904E:  VMUL.F32        S0, S16, S16
539052:  VMUL.F32        S2, S26, S26
539056:  VADD.F32        S0, S2, S0
53905A:  VSQRT.F32       S28, S0
53905E:  VCMPE.F32       S28, #0.0
539062:  VMRS            APSR_nzcv, FPSCR
539066:  BLE             loc_539122
539068:  VMOV            R0, S26
53906C:  MOVS            R1, #0; float
53906E:  VMOV            R3, S16; float
539072:  EOR.W           R2, R0, #0x80000000; float
539076:  MOVS            R0, #0; this
539078:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
53907C:  LDR.W           R1, =(TheCamera_ptr - 0x539088)
539080:  VMOV            S0, R0
539084:  ADD             R1, PC; TheCamera_ptr
539086:  LDR             R1, [R1]; TheCamera ; float
539088:  VLDR            S2, [R1,#0x14C]
53908C:  VSUB.F32        S0, S0, S2
539090:  VMOV            R0, S0; this
539094:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
539098:  MOV             R4, R0
53909A:  BLX             sinf
53909E:  VMOV            S16, R0
5390A2:  MOV             R0, R4; x
5390A4:  BLX             cosf
5390A8:  LDR             R1, [R6,#0x14]
5390AA:  VMOV            S12, R0
5390AE:  VLDR            S0, [R1]
5390B2:  VLDR            S2, [R1,#4]
5390B6:  VMUL.F32        S0, S0, S16
5390BA:  VLDR            S6, [R1,#0x10]
5390BE:  VMUL.F32        S2, S12, S2
5390C2:  VLDR            S8, [R1,#0x14]
5390C6:  VMUL.F32        S6, S6, S16
5390CA:  VLDR            S4, [R1,#8]
5390CE:  VMUL.F32        S8, S12, S8
5390D2:  VLDR            S12, =0.0
5390D6:  VLDR            S10, [R1,#0x18]
5390DA:  VMUL.F32        S4, S4, S12
5390DE:  VMUL.F32        S10, S10, S12
5390E2:  VSUB.F32        S0, S2, S0
5390E6:  VSUB.F32        S6, S8, S6
5390EA:  VADD.F32        S0, S0, S4
5390EE:  VMOV.F32        S4, #1.0
5390F2:  VADD.F32        S2, S6, S10
5390F6:  VMIN.F32        D2, D14, D2
5390FA:  VNMUL.F32       S16, S4, S2
5390FE:  VMUL.F32        S26, S4, S0
539102:  B               loc_539122
539104:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
539108:  CMP             R0, #2
53910A:  BNE             loc_539122
53910C:  MOV             R0, R10; this
53910E:  MOVS            R1, #0; bool
539110:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
539114:  CMP             R0, #1
539116:  BEQ             loc_53904E
539118:  B               loc_539122
53911A:  VLDR            S26, =0.0
53911E:  VMOV.F32        S16, S26
539122:  VMUL.F32        S22, S24, S22
539126:  LDR.W           R0, [R6,#0x720]; this
53912A:  CMP             R0, #0
53912C:  BEQ             loc_539210
53912E:  LDR.W           R0, [R6,#0x444]
539132:  ADDW            R4, R6, #0x444
539136:  VLDR            S0, [R0,#0x10]
53913A:  VSUB.F32        S2, S16, S0
53913E:  VABS.F32        S4, S2
539142:  VCMPE.F32       S4, S22
539146:  VMOV.F32        S4, S16
53914A:  VMRS            APSR_nzcv, FPSCR
53914E:  BLE             loc_539166
539150:  VCMPE.F32       S2, #0.0
539154:  VMRS            APSR_nzcv, FPSCR
539158:  VNEG.F32        S4, S22
53915C:  IT GT
53915E:  VMOVGT.F32      S4, S22
539162:  VADD.F32        S4, S0, S4
539166:  VSTR            S4, [R0,#0x10]
53916A:  LDR             R0, [R4]
53916C:  VLDR            S0, [R0,#0xC]
539170:  VSUB.F32        S2, S26, S0
539174:  VABS.F32        S4, S2
539178:  VCMPE.F32       S4, S22
53917C:  VMRS            APSR_nzcv, FPSCR
539180:  BLE             loc_539198
539182:  VCMPE.F32       S2, #0.0
539186:  VMRS            APSR_nzcv, FPSCR
53918A:  VNEG.F32        S4, S22
53918E:  IT GT
539190:  VMOVGT.F32      S4, S22
539194:  VADD.F32        S26, S0, S4
539198:  VSTR            S26, [R0,#0xC]
53919C:  LDR.W           R0, [R6,#0x720]
5391A0:  CMP             R0, #0
5391A2:  BEQ             loc_53926C
5391A4:  LDR             R1, [R6,#0x14]
5391A6:  VMOV.F32        S4, #16.0
5391AA:  LDR             R2, [R0,#0x14]
5391AC:  ADD.W           R3, R1, #0x30 ; '0'
5391B0:  CMP             R1, #0
5391B2:  IT EQ
5391B4:  ADDEQ           R3, R6, #4
5391B6:  ADD.W           R1, R2, #0x30 ; '0'
5391BA:  CMP             R2, #0
5391BC:  VLDR            S0, [R3]
5391C0:  IT EQ
5391C2:  ADDEQ           R1, R0, #4
5391C4:  VLDR            D16, [R3,#4]
5391C8:  VLDR            S2, [R1]
5391CC:  VLDR            D17, [R1,#4]
5391D0:  VSUB.F32        S0, S2, S0
5391D4:  VSUB.F32        D16, D17, D16
5391D8:  VMUL.F32        D1, D16, D16
5391DC:  VMUL.F32        S0, S0, S0
5391E0:  VADD.F32        S0, S0, S2
5391E4:  VADD.F32        S0, S0, S3
5391E8:  VCMPE.F32       S0, S4
5391EC:  VMRS            APSR_nzcv, FPSCR
5391F0:  BLE             loc_5391FA
5391F2:  LDRSB.W         R0, [R9,#0x27]
5391F6:  CMP             R0, #0xB
5391F8:  BLT             loc_539280
5391FA:  MOV             R0, R10; this
5391FC:  MOVS            R1, #0; int
5391FE:  BLX             j__ZN4CPad9GetSprintEi; CPad::GetSprint(int)
539202:  CMP.W           R11, #0
539206:  BNE             loc_539280
539208:  CMP             R0, #1
53920A:  BNE.W           loc_5393F2
53920E:  B               loc_539280
539210:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
539214:  CMP             R0, #2
539216:  BNE             loc_539226
539218:  MOV             R0, R10; this
53921A:  MOVS            R1, #0; bool
53921C:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
539220:  CMP             R0, #1
539222:  BEQ.W           loc_53912E
539226:  VMOV            R0, S18
53922A:  MOVS            R1, #0; float
53922C:  VMOV            R3, S20; float
539230:  MOVS            R4, #0
539232:  EOR.W           R2, R0, #0x80000000; float
539236:  MOVS            R0, #0; this
539238:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
53923C:  VMUL.F32        S0, S16, S16
539240:  VMUL.F32        S2, S26, S26
539244:  VADD.F32        S0, S2, S0
539248:  VMOV.F32        S2, #1.0
53924C:  VSQRT.F32       S0, S0
539250:  VMIN.F32        D9, D0, D1
539254:  VCMP.F32        S18, #0.0
539258:  VMRS            APSR_nzcv, FPSCR
53925C:  BNE             loc_5392B0
53925E:  LDR.W           R0, [R6,#0x444]
539262:  STR             R4, [R0,#0xC]
539264:  LDR.W           R0, [R6,#0x444]
539268:  STR             R4, [R0,#0x10]
53926A:  B               loc_539318
53926C:  MOV             R0, R10; this
53926E:  MOVS            R1, #0; int
539270:  BLX             j__ZN4CPad9GetSprintEi; CPad::GetSprint(int)
539274:  CMP.W           R11, #0
539278:  IT EQ
53927A:  CMPEQ           R0, #0
53927C:  BEQ.W           loc_5393F2
539280:  MOV             R0, R10; this
539282:  MOVS            R1, #0; int
539284:  BLX             j__ZN4CPad9GetSprintEi; CPad::GetSprint(int)
539288:  CBZ             R0, loc_53928E
53928A:  MOVS            R4, #0x11
53928C:  B               loc_5393D6
53928E:  VMOV.F32        S0, #-0.5
539292:  VCMPE.F32       S16, S0
539296:  VMRS            APSR_nzcv, FPSCR
53929A:  BGE.W           loc_5393CC
53929E:  MOVS            R4, #0x10
5392A0:  B               loc_5393D6
5392A2:  ALIGN 4
5392A4:  DCFS 0.07
5392A8:  DCFS 0.0078125
5392AC:  DCFS 0.0
5392B0:  VCMPE.F32       S16, #0.0
5392B4:  VMRS            APSR_nzcv, FPSCR
5392B8:  BGT             loc_539318
5392BA:  VNEG.F32        S2, S18
5392BE:  VMOV            S0, R0
5392C2:  LDR.W           R0, [R6,#0x444]
5392C6:  VLDR            S4, [R0,#0x10]
5392CA:  VSUB.F32        S6, S2, S4
5392CE:  VABS.F32        S8, S6
5392D2:  VCMPE.F32       S8, S22
5392D6:  VMRS            APSR_nzcv, FPSCR
5392DA:  BLE             loc_5392F2
5392DC:  VCMPE.F32       S6, #0.0
5392E0:  VMRS            APSR_nzcv, FPSCR
5392E4:  VNEG.F32        S2, S22
5392E8:  IT GT
5392EA:  VMOVGT.F32      S2, S22
5392EE:  VADD.F32        S2, S4, S2
5392F2:  LDR             R1, =(TheCamera_ptr - 0x5392FE)
5392F4:  MOVS            R2, #0
5392F6:  VSTR            S2, [R0,#0x10]
5392FA:  ADD             R1, PC; TheCamera_ptr
5392FC:  LDR.W           R0, [R6,#0x444]
539300:  LDR             R1, [R1]; TheCamera ; float
539302:  STR             R2, [R0,#0xC]
539304:  VLDR            S2, [R1,#0x14C]
539308:  VSUB.F32        S0, S0, S2
53930C:  VMOV            R0, S0; this
539310:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
539314:  STR.W           R0, [R6,#0x560]
539318:  VCMPE.F32       S16, #0.0
53931C:  VMRS            APSR_nzcv, FPSCR
539320:  BGT             loc_53935A
539322:  LDR.W           R0, [R6,#0x720]
539326:  CBNZ            R0, loc_53935A
539328:  LDRSB.W         R0, [R9,#0x27]
53932C:  CMP             R0, #0xA
53932E:  BGT             loc_53935A
539330:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53933A)
539332:  VLDR            S0, =50.0
539336:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
539338:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53933A:  VLDR            S2, [R0]
53933E:  LDR.W           R0, [R8,#0x28]
539342:  VDIV.F32        S0, S2, S0
539346:  VLDR            S2, =1000.0
53934A:  VMUL.F32        S0, S0, S2
53934E:  VCVT.U32.F32    S0, S0
539352:  VMOV            R1, S0
539356:  ADD             R0, R1
539358:  B               loc_53935C
53935A:  MOVS            R0, #0
53935C:  STR.W           R0, [R8,#0x28]
539360:  MOV             R0, R10; this
539362:  MOVS            R1, #0; int
539364:  BLX             j__ZN4CPad9GetSprintEi; CPad::GetSprint(int)
539368:  CBNZ            R0, loc_53938E
53936A:  MOV             R0, R10; this
53936C:  BLX             j__ZN4CPad7GetDuckEv; CPad::GetDuck(void)
539370:  VCMPE.F32       S16, #0.0
539374:  VMRS            APSR_nzcv, FPSCR
539378:  BGT             loc_53938E
53937A:  CMP.W           R11, #0
53937E:  IT EQ
539380:  CMPEQ           R0, #0
539382:  BNE             loc_53938E
539384:  LDR.W           R0, [R8,#0x28]
539388:  LSRS            R0, R0, #4
53938A:  CMP             R0, #0x7C ; '|'
53938C:  BLS             loc_5393EE
53938E:  MOV             R0, R10; this
539390:  MOVS            R1, #0; int
539392:  BLX             j__ZN4CPad9GetSprintEi; CPad::GetSprint(int)
539396:  VMOV.F32        S0, #0.5
53939A:  MOV             R0, R6; this
53939C:  MOVS            R4, #0xF
53939E:  VCMPE.F32       S18, S0
5393A2:  VMRS            APSR_nzcv, FPSCR
5393A6:  IT GT
5393A8:  MOVGT           R4, #0x10
5393AA:  BLX             j__ZN15CTaskSimpleDuck10CanPedDuckEP4CPed; CTaskSimpleDuck::CanPedDuck(CPed *)
5393AE:  CMP             R0, #1
5393B0:  BNE             loc_5393D6
5393B2:  MOV             R0, R10; this
5393B4:  MOV             R1, R6; CPed *
5393B6:  BLX             j__ZN4CPad12DuckJustDownEP4CPed; CPad::DuckJustDown(CPed *)
5393BA:  CMP             R0, #1
5393BC:  BNE             loc_5393D6
5393BE:  LDR.W           R0, [R6,#0x440]; this
5393C2:  MOVS            R1, #0; unsigned __int16
5393C4:  BLX             j__ZN16CPedIntelligence20SetTaskDuckSecondaryEt; CPedIntelligence::SetTaskDuckSecondary(ushort)
5393C8:  MOVS            R4, #0x12
5393CA:  B               loc_5393D6
5393CC:  MOV             R0, R10; this
5393CE:  BLX             j__ZN4CPad8GetBlockEv; CPad::GetBlock(void)
5393D2:  CBNZ            R0, loc_5393F2
5393D4:  MOVS            R4, #0xF
5393D6:  MOV             R0, R9; this
5393D8:  MOVS            R1, #0; CEntity *
5393DA:  MOV             R2, R4; signed __int8
5393DC:  BLX             j__ZN16CTaskSimpleFight12ControlFightEP7CEntitya; CTaskSimpleFight::ControlFight(CEntity *,signed char)
5393E0:  ADD             SP, SP, #8
5393E2:  VPOP            {D8-D14}
5393E6:  ADD             SP, SP, #4
5393E8:  POP.W           {R8-R11}
5393EC:  POP             {R4-R7,PC}
5393EE:  ADDW            R4, R6, #0x444
5393F2:  LDR             R0, [R4]
5393F4:  VLDR            S2, [R0,#0x10]
5393F8:  VCMP.F32        S2, #0.0
5393FC:  VMRS            APSR_nzcv, FPSCR
539400:  BEQ             loc_53942E
539402:  VLDR            S0, [R0,#0xC]
539406:  VABS.F32        S4, S2
53940A:  VABS.F32        S6, S0
53940E:  VCMPE.F32       S4, S6
539412:  VMRS            APSR_nzcv, FPSCR
539416:  BLE             loc_539432
539418:  VCMPE.F32       S2, #0.0
53941C:  MOV             R0, R9
53941E:  VMRS            APSR_nzcv, FPSCR
539422:  MOV.W           R1, #0
539426:  ITE GE
539428:  MOVGE           R2, #5
53942A:  MOVLT           R2, #3
53942C:  B               loc_5393DC
53942E:  VLDR            S0, [R0,#0xC]
539432:  VCMP.F32        S0, #0.0
539436:  VMRS            APSR_nzcv, FPSCR
53943A:  BEQ             loc_5393E0
53943C:  VCMPE.F32       S0, #0.0
539440:  MOV             R0, R9
539442:  MOVS            R1, #0
539444:  VMRS            APSR_nzcv, FPSCR
539448:  BLE             loc_53944E
53944A:  MOVS            R2, #6
53944C:  B               loc_5393DC
53944E:  MOVS            R2, #4
539450:  B               loc_5393DC
