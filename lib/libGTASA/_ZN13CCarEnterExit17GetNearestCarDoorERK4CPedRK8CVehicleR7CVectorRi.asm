; =========================================================
; Game Engine Function: _ZN13CCarEnterExit17GetNearestCarDoorERK4CPedRK8CVehicleR7CVectorRi
; Address            : 0x50800C - 0x50840E
; =========================================================

50800C:  PUSH            {R4-R7,LR}
50800E:  ADD             R7, SP, #0xC
508010:  PUSH.W          {R8-R11}
508014:  SUB             SP, SP, #4
508016:  VPUSH           {D8-D11}
50801A:  SUB             SP, SP, #0x30
50801C:  MOV             R10, R0
50801E:  ADD             R0, SP, #0x70+var_50; this
508020:  MOV             R6, R1
508022:  MOV             R8, R2
508024:  MOVS            R2, #0xA; int
508026:  MOV             R9, R3
508028:  LDR.W           R4, [R6,#0x464]
50802C:  LDR.W           R11, [R6,#0x468]
508030:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
508034:  ADD             R0, SP, #0x70+var_60; this
508036:  MOV             R1, R6; CVehicle *
508038:  MOVS            R2, #8; int
50803A:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
50803E:  LDR.W           R1, [R6,#0x5A0]
508042:  LDR.W           R0, [R6,#0x5A4]
508046:  CMP             R1, #9
508048:  BNE             loc_5080DA
50804A:  CMP             R0, #0xA
50804C:  BEQ             loc_5080DE
50804E:  LDR.W           R0, [R10,#0x440]
508052:  ADDS            R0, #4; this
508054:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
508058:  LDR             R1, [R0]
50805A:  LDR             R1, [R1,#0x14]
50805C:  BLX             R1
50805E:  CMP.W           R0, #0x2BC
508062:  BEQ.W           loc_5081E6
508066:  LDR             R4, [R6,#0x14]
508068:  VLDR            S2, =0.1
50806C:  VLDR            S0, [R4,#8]
508070:  VABS.F32        S0, S0
508074:  VCMPE.F32       S0, S2
508078:  VMRS            APSR_nzcv, FPSCR
50807C:  BGE.W           loc_5081E6
508080:  LDR.W           R1, [R10,#0x14]
508084:  ADD.W           R0, R4, #0x30 ; '0'
508088:  CMP             R4, #0
50808A:  IT EQ
50808C:  ADDEQ           R0, R6, #4
50808E:  ADD.W           R2, R1, #0x30 ; '0'
508092:  CMP             R1, #0
508094:  VLDR            S0, [R0]
508098:  VLDR            S2, [R0,#4]
50809C:  IT EQ
50809E:  ADDEQ.W         R2, R10, #4
5080A2:  VLDR            S4, [R2]
5080A6:  VLDR            S6, [R2,#4]
5080AA:  VSUB.F32        S0, S4, S0
5080AE:  VSUB.F32        S2, S6, S2
5080B2:  VMOV            R0, S0
5080B6:  VMOV            R1, S2; x
5080BA:  EOR.W           R0, R0, #0x80000000; y
5080BE:  BLX             atan2f
5080C2:  VMOV            S16, R0
5080C6:  CBZ             R4, loc_508100
5080C8:  LDRD.W          R0, R1, [R4,#0x10]; x
5080CC:  EOR.W           R0, R0, #0x80000000; y
5080D0:  BLX             atan2f
5080D4:  VMOV            S0, R0
5080D8:  B               loc_508104
5080DA:  CMP             R0, #2
5080DC:  BEQ             loc_50804E
5080DE:  LDR             R0, =(_ZN13CCarEnterExit37ms_vecPedQuickDraggedOutCarAnimOffsetE_ptr - 0x5080EA)
5080E0:  MOVS            R5, #0
5080E2:  LDRB.W          R1, [R6,#0x42D]
5080E6:  ADD             R0, PC; _ZN13CCarEnterExit37ms_vecPedQuickDraggedOutCarAnimOffsetE_ptr
5080E8:  TST.W           R1, #0xA
5080EC:  IT EQ
5080EE:  LDREQ           R5, [R0]; CCarEnterExit::ms_vecPedQuickDraggedOutCarAnimOffset ...
5080F0:  CMP.W           R11, #0
5080F4:  IT NE
5080F6:  MOVNE           R11, R5
5080F8:  CMP             R4, #0
5080FA:  IT EQ
5080FC:  MOVEQ           R5, R4
5080FE:  B               loc_5081EC
508100:  VLDR            S0, [R6,#0x10]
508104:  VSUB.F32        S0, S16, S0
508108:  VLDR            S2, =3.1416
50810C:  VCMPE.F32       S0, S2
508110:  VMRS            APSR_nzcv, FPSCR
508114:  BLE             loc_50811C
508116:  VLDR            S2, =-6.2832
50811A:  B               loc_50812E
50811C:  VLDR            S2, =-3.1416
508120:  VCMPE.F32       S0, S2
508124:  VMRS            APSR_nzcv, FPSCR
508128:  BGE             loc_508132
50812A:  VLDR            S2, =6.2832
50812E:  VADD.F32        S0, S0, S2
508132:  VABS.F32        S0, S0
508136:  VLDR            S2, =0.5236
50813A:  VCMPE.F32       S0, S2
50813E:  VMRS            APSR_nzcv, FPSCR
508142:  BGE             loc_5081E6
508144:  MOV             R0, R10; this
508146:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
50814A:  CMP             R0, #1
50814C:  BNE             loc_50816A
50814E:  VMOV.F32        S0, #1.5
508152:  LDR.W           R0, [R10,#0x444]
508156:  VLDR            S2, [R0,#0x14]
50815A:  VCMPE.F32       S2, S0
50815E:  VMRS            APSR_nzcv, FPSCR
508162:  BLE             loc_50816A
508164:  LDR.W           R0, [R9]
508168:  CBZ             R0, loc_5081BA
50816A:  MOV             R0, R10; this
50816C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
508170:  CBNZ            R0, loc_5081B2
508172:  LDR.W           R0, [R10,#0x59C]
508176:  CMP             R0, #6
508178:  BEQ             loc_5081B2
50817A:  LDR.W           R0, [R10,#0x450]
50817E:  CMP             R0, #6
508180:  BNE             loc_5081B2
508182:  LDR.W           R0, [R10,#0x5A0]
508186:  MOVS            R5, #0
508188:  LDR.W           R2, [R9]
50818C:  LDRSB.W         R1, [R0,#0x25]
508190:  CMP             R2, #0
508192:  MOV.W           R0, #0
508196:  IT EQ
508198:  MOVEQ           R0, #1
50819A:  CMP             R1, #0x41 ; 'A'
50819C:  MOV.W           R1, #0
5081A0:  IT GT
5081A2:  MOVGT           R1, #1
5081A4:  CMP             R2, #0x12
5081A6:  BEQ             loc_5081BA
5081A8:  ANDS            R0, R1
5081AA:  MOV.W           R11, #0
5081AE:  BEQ             loc_5081EC
5081B0:  B               loc_5081BA
5081B2:  LDR.W           R0, [R9]
5081B6:  CMP             R0, #0x12
5081B8:  BNE             loc_5081E6
5081BA:  MOV             R0, R6; this
5081BC:  MOVS            R1, #word_12; CVehicle *
5081BE:  MOVS            R2, #0; int
5081C0:  MOVS            R4, #0x12
5081C2:  MOVS            R5, #0
5081C4:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
5081C8:  CMP             R0, #1
5081CA:  MOV.W           R11, #0
5081CE:  BNE             loc_5081EC
5081D0:  MOV             R0, SP; this
5081D2:  MOV             R1, R6; CVehicle *
5081D4:  MOVS            R2, #0x12; int
5081D6:  STR.W           R4, [R9]
5081DA:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
5081DE:  VLDR            D16, [SP,#0x70+var_70]
5081E2:  LDR             R0, [SP,#0x70+var_68]
5081E4:  B               loc_5083F2
5081E6:  MOVS            R5, #0
5081E8:  MOV.W           R11, #0
5081EC:  LDR.W           R0, [R10,#0x14]
5081F0:  VLDR            S0, [SP,#0x70+var_60]
5081F4:  ADD.W           R1, R0, #0x30 ; '0'
5081F8:  CMP             R0, #0
5081FA:  VLDR            S2, [SP,#0x70+var_60+4]
5081FE:  IT EQ
508200:  ADDEQ.W         R1, R10, #4
508204:  VLDR            S4, [R1]
508208:  VLDR            S6, [R1,#4]
50820C:  VLDR            S8, [SP,#0x70+var_50]
508210:  VSUB.F32        S22, S0, S4
508214:  VLDR            S10, [SP,#0x70+var_50+4]
508218:  VSUB.F32        S18, S2, S6
50821C:  VSUB.F32        S20, S8, S4
508220:  LDR.W           R1, [R6,#0x4D4]; CPed *
508224:  VSUB.F32        S16, S10, S6
508228:  CBZ             R1, loc_50827E
50822A:  VMUL.F32        S0, S18, S18
50822E:  VMUL.F32        S2, S22, S22
508232:  VMUL.F32        S4, S16, S16
508236:  VMUL.F32        S6, S20, S20
50823A:  VADD.F32        S0, S2, S0
50823E:  VADD.F32        S2, S6, S4
508242:  VCMPE.F32       S2, S0
508246:  VMRS            APSR_nzcv, FPSCR
50824A:  BGE             loc_508266
50824C:  ADD             R2, SP, #0x70+var_50; CVehicle *
50824E:  MOV             R0, R10; this
508250:  BLX             j__ZN13CCarEnterExit42IsPathToDoorBlockedByVehicleCollisionModelERK4CPedR8CVehicleRK7CVector; CCarEnterExit::IsPathToDoorBlockedByVehicleCollisionModel(CPed const&,CVehicle &,CVector const&)
508254:  VLDR            S0, =999.9
508258:  CMP             R0, #0
50825A:  ITT NE
50825C:  VMOVNE.F32      S20, S0
508260:  VMOVNE.F32      S16, S0
508264:  B               loc_50827E
508266:  ADD             R2, SP, #0x70+var_60; CVehicle *
508268:  MOV             R0, R10; this
50826A:  BLX             j__ZN13CCarEnterExit42IsPathToDoorBlockedByVehicleCollisionModelERK4CPedR8CVehicleRK7CVector; CCarEnterExit::IsPathToDoorBlockedByVehicleCollisionModel(CPed const&,CVehicle &,CVector const&)
50826E:  VLDR            S0, =999.9
508272:  CMP             R0, #0
508274:  ITT NE
508276:  VMOVNE.F32      S22, S0
50827A:  VMOVNE.F32      S18, S0
50827E:  LDR.W           R0, [R6,#0x388]
508282:  LDRB.W          R0, [R0,#0xCD]
508286:  LSLS            R0, R0, #0x18
508288:  BPL             loc_508292
50828A:  LDR.W           R0, [R6,#0x5A0]
50828E:  CMP             R0, #0
508290:  BEQ             loc_508326
508292:  LDR.W           R1, [R9]; CVehicle *
508296:  CBZ             R1, loc_5082B6
508298:  MOV             R0, R6; this
50829A:  MOV             R2, R5; int
50829C:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
5082A0:  CMP             R0, #1
5082A2:  BNE             loc_5082B6
5082A4:  LDR.W           R0, [R9]
5082A8:  CMP             R0, #8
5082AA:  BEQ.W           loc_5083CA
5082AE:  CMP             R0, #0xA
5082B0:  BEQ.W           loc_5083EC
5082B4:  B               loc_5083FE
5082B6:  LDR.W           R0, [R6,#0x464]; this
5082BA:  CBZ             R0, loc_5082D6
5082BC:  MOV             R1, R10; CPed *
5082BE:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
5082C2:  CMP             R0, #0
5082C4:  BNE.W           loc_5083FE
5082C8:  LDR.W           R0, [R6,#0x464]
5082CC:  LDRB.W          R0, [R0,#0x487]
5082D0:  LSLS            R0, R0, #0x1A
5082D2:  BMI.W           loc_5083FE
5082D6:  LDRB.W          R0, [R6,#0x42D]
5082DA:  LSLS            R0, R0, #0x1E
5082DC:  BMI             loc_508300
5082DE:  VMUL.F32        S0, S22, S22
5082E2:  VMUL.F32        S2, S18, S18
5082E6:  VMUL.F32        S4, S20, S20
5082EA:  VMUL.F32        S6, S16, S16
5082EE:  VADD.F32        S0, S2, S0
5082F2:  VADD.F32        S2, S6, S4
5082F6:  VCMPE.F32       S2, S0
5082FA:  VMRS            APSR_nzcv, FPSCR
5082FE:  BGE             loc_508356
508300:  MOV             R0, R6; this
508302:  MOVS            R1, #(byte_9+1); CVehicle *
508304:  MOV             R2, R5; int
508306:  MOVS            R4, #0xA
508308:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
50830C:  CMP             R0, #1
50830E:  BEQ             loc_5083E8
508310:  MOV             R0, R6; this
508312:  MOVS            R1, #byte_8; CVehicle *
508314:  MOV             R2, R11; int
508316:  MOVS            R4, #8
508318:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
50831C:  CMP             R0, #1
50831E:  BNE             loc_5083FE
508320:  STR.W           R4, [R9]
508324:  B               loc_5083CA
508326:  LDR.W           R0, [R6,#0x684]
50832A:  CBZ             R0, loc_508344
50832C:  LDR.W           R0, [R6,#0x67C]
508330:  CMP             R0, #0
508332:  BNE             loc_508292
508334:  MOV             R0, R6; this
508336:  MOVS            R1, #(byte_9+1); CVehicle *
508338:  MOV             R2, R5; int
50833A:  MOVS            R4, #0xA
50833C:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
508340:  CMP             R0, #1
508342:  BEQ             loc_5083E8
508344:  LDR.W           R0, [R6,#0x67C]
508348:  CMP             R0, #0
50834A:  BEQ             loc_5083FE
50834C:  MOV             R0, R6
50834E:  MOVS            R1, #8
508350:  MOV             R2, R5
508352:  MOVS            R4, #8
508354:  B               loc_5083E0
508356:  MOV             R0, R6; this
508358:  MOVS            R1, #byte_8; CVehicle *
50835A:  MOV             R2, R11; int
50835C:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
508360:  CMP             R0, #1
508362:  BNE             loc_5083D8
508364:  LDR.W           R0, [R6,#0x468]; this
508368:  CMP             R0, #0
50836A:  ITT NE
50836C:  LDRNE.W         R1, [R6,#0x5A0]
508370:  CMPNE           R1, #9
508372:  BEQ             loc_5083AC
508374:  LDR.W           R1, [R6,#0x388]
508378:  LDRB.W          R1, [R1,#0xCD]
50837C:  LSLS            R1, R1, #0x1E
50837E:  BMI             loc_5083AC
508380:  MOV             R1, R10; CPed *
508382:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
508386:  CBNZ            R0, loc_50839C
508388:  LDR.W           R0, [R6,#0x468]
50838C:  LDRB.W          R0, [R0,#0x487]
508390:  LSLS            R0, R0, #0x1A
508392:  BMI             loc_50839C
508394:  LDRB.W          R0, [R6,#0x4A8]
508398:  CMP             R0, #2
50839A:  BNE             loc_5083AC
50839C:  MOV             R0, R6; this
50839E:  MOVS            R1, #(byte_9+1); CVehicle *
5083A0:  MOV             R2, R5; int
5083A2:  MOVS            R4, #0xA
5083A4:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
5083A8:  CMP             R0, #1
5083AA:  BEQ             loc_5083E8
5083AC:  LDRB.W          R0, [R6,#0x48A]
5083B0:  LSLS            R0, R0, #0x1D
5083B2:  BPL             loc_5083C4
5083B4:  MOV             R0, R6; this
5083B6:  MOVS            R1, #(byte_9+1); CVehicle *
5083B8:  MOV             R2, R5; int
5083BA:  MOVS            R4, #0xA
5083BC:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
5083C0:  CMP             R0, #1
5083C2:  BEQ             loc_5083E8
5083C4:  MOVS            R0, #8
5083C6:  STR.W           R0, [R9]
5083CA:  VLDR            D16, [SP,#0x70+var_60]
5083CE:  LDR             R0, [SP,#0x70+var_58]
5083D0:  B               loc_5083F2
5083D2:  ALIGN 4
5083D4:  DCFS 0.1
5083D8:  MOV             R0, R6; this
5083DA:  MOVS            R1, #(byte_9+1); CVehicle *
5083DC:  MOV             R2, R5; int
5083DE:  MOVS            R4, #0xA
5083E0:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
5083E4:  CMP             R0, #1
5083E6:  BNE             loc_5083FE
5083E8:  STR.W           R4, [R9]
5083EC:  LDR             R0, [SP,#0x70+var_48]
5083EE:  VLDR            D16, [SP,#0x70+var_50]
5083F2:  STR.W           R0, [R8,#8]
5083F6:  MOVS            R0, #1
5083F8:  VSTR            D16, [R8]
5083FC:  B               loc_508400
5083FE:  MOVS            R0, #0
508400:  ADD             SP, SP, #0x30 ; '0'
508402:  VPOP            {D8-D11}
508406:  ADD             SP, SP, #4
508408:  POP.W           {R8-R11}
50840C:  POP             {R4-R7,PC}
