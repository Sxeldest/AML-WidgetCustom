; =========================================================
; Game Engine Function: _ZN8CPickups6UpdateEv
; Address            : 0x31D12C - 0x31D414
; =========================================================

31D12C:  PUSH            {R4-R7,LR}
31D12E:  ADD             R7, SP, #0xC
31D130:  PUSH.W          {R8-R11}
31D134:  SUB             SP, SP, #4
31D136:  VPUSH           {D8-D9}
31D13A:  SUB             SP, SP, #0x10
31D13C:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x31D146)
31D13E:  MOV.W           R2, #0x26C
31D142:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
31D144:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
31D146:  LDR             R0, [R0]; CTimer::m_FrameCounter
31D148:  AND.W           R0, R0, #0x1F
31D14C:  SMLABB.W        R1, R0, R2, R2
31D150:  SMULBB.W        R0, R0, R2
31D154:  LSRS            R0, R0, #5
31D156:  CMP.W           R0, R1,LSR#5
31D15A:  BCS             loc_31D210
31D15C:  LDR             R2, =(_ZN8CPickups8aPickUpsE_ptr - 0x31D16A)
31D15E:  LSRS            R1, R1, #5
31D160:  SUBS            R5, R1, R0
31D162:  VMOV.I32        D8, #0x3E000000
31D166:  ADD             R2, PC; _ZN8CPickups8aPickUpsE_ptr
31D168:  VLDR            S18, =100.0
31D16C:  MOV.W           R8, #0
31D170:  LDR             R2, [R2]; CPickups::aPickUps ...
31D172:  ADD.W           R4, R2, R0,LSL#5
31D176:  LDR             R0, =(TheCamera_ptr - 0x31D17C)
31D178:  ADD             R0, PC; TheCamera_ptr
31D17A:  LDR             R6, [R0]; TheCamera
31D17C:  LDRB            R0, [R4,#0x1C]
31D17E:  CMP             R0, #0
31D180:  BEQ             loc_31D208
31D182:  ADD.W           R0, R4, #0x10
31D186:  VLD1.32         {D16[0]}, [R0@32]
31D18A:  LDR             R0, [R6,#(dword_951FBC - 0x951FA8)]
31D18C:  ADD.W           R1, R0, #0x30 ; '0'
31D190:  CMP             R0, #0
31D192:  VMOVL.S16       Q8, D16
31D196:  IT EQ
31D198:  ADDEQ           R1, R6, #4
31D19A:  VCVT.F32.S32    D16, D16
31D19E:  VLDR            D17, [R1]
31D1A2:  LDRB            R1, [R4,#0x1D]
31D1A4:  VMUL.F32        D16, D16, D8
31D1A8:  VSUB.F32        D16, D17, D16
31D1AC:  VMUL.F32        D0, D16, D16
31D1B0:  VADD.F32        S0, S0, S1
31D1B4:  VSQRT.F32       S0, S0
31D1B8:  VCMPE.F32       S0, S18
31D1BC:  VMRS            APSR_nzcv, FPSCR
31D1C0:  BGE             loc_31D1EA
31D1C2:  TST.W           R1, #1
31D1C6:  ORR.W           R0, R1, #8
31D1CA:  STRB            R0, [R4,#0x1D]
31D1CC:  BNE             loc_31D208
31D1CE:  MOV             R1, R4
31D1D0:  LDR.W           R0, [R1,#4]!; CObject **
31D1D4:  CBNZ            R0, loc_31D208
31D1D6:  MOV             R0, R4; this
31D1D8:  MOV.W           R2, #0xFFFFFFFF; int
31D1DC:  BLX             j__ZN7CPickup19GiveUsAPickUpObjectEPP7CObjecti; CPickup::GiveUsAPickUpObject(CObject **,int)
31D1E0:  LDR             R0, [R4,#4]; this
31D1E2:  CBZ             R0, loc_31D208
31D1E4:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
31D1E8:  B               loc_31D208
31D1EA:  LDR             R0, [R4,#4]; this
31D1EC:  AND.W           R1, R1, #0xF7; CEntity *
31D1F0:  STRB            R1, [R4,#0x1D]
31D1F2:  CBZ             R0, loc_31D208
31D1F4:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
31D1F8:  LDR             R0, [R4,#4]
31D1FA:  CMP             R0, #0
31D1FC:  ITTT NE
31D1FE:  LDRNE           R1, [R0]
31D200:  LDRNE           R1, [R1,#4]
31D202:  BLXNE           R1
31D204:  STR.W           R8, [R4,#4]
31D208:  SUBS            R5, #1
31D20A:  ADD.W           R4, R4, #0x20 ; ' '
31D20E:  BNE             loc_31D17C
31D210:  MOVS            R0, #0; this
31D212:  MOVS            R4, #0
31D214:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
31D218:  BLX             j__ZN4CPad21CollectPickupJustDownEv; CPad::CollectPickupJustDown(void)
31D21C:  CBZ             R0, loc_31D222
31D21E:  MOVS            R4, #6
31D220:  B               loc_31D232
31D222:  LDR             R0, =(CollectPickupBuffer_ptr - 0x31D228)
31D224:  ADD             R0, PC; CollectPickupBuffer_ptr
31D226:  LDR             R0, [R0]; CollectPickupBuffer
31D228:  LDR             R0, [R0]
31D22A:  SUBS            R0, #1
31D22C:  CMP             R0, #0
31D22E:  IT GT
31D230:  MOVGT           R4, R0
31D232:  LDR             R0, =(_ZN8CPickups20PlayerOnWeaponPickupE_ptr - 0x31D23A)
31D234:  LDR             R1, =(CollectPickupBuffer_ptr - 0x31D23C)
31D236:  ADD             R0, PC; _ZN8CPickups20PlayerOnWeaponPickupE_ptr
31D238:  ADD             R1, PC; CollectPickupBuffer_ptr
31D23A:  LDR             R0, [R0]; CPickups::PlayerOnWeaponPickup ...
31D23C:  LDR             R1, [R1]; CollectPickupBuffer
31D23E:  LDR             R0, [R0]; CPickups::PlayerOnWeaponPickup
31D240:  STR             R4, [R1]
31D242:  CBZ             R0, loc_31D254
31D244:  LDR             R1, =(_ZN8CPickups20PlayerOnWeaponPickupE_ptr - 0x31D24E)
31D246:  SUBS            R0, #1
31D248:  CMP             R0, #0
31D24A:  ADD             R1, PC; _ZN8CPickups20PlayerOnWeaponPickupE_ptr
31D24C:  IT LE
31D24E:  MOVLE           R0, #0
31D250:  LDR             R1, [R1]; int
31D252:  STR             R0, [R1]; CPickups::PlayerOnWeaponPickup
31D254:  MOVS            R0, #0; this
31D256:  MOVS            R4, #0
31D258:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
31D25C:  MOVS            R1, #0; bool
31D25E:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
31D262:  CMP             R0, #1
31D264:  BNE             loc_31D26E
31D266:  LDR             R0, =(CollectPickupBuffer_ptr - 0x31D26C)
31D268:  ADD             R0, PC; CollectPickupBuffer_ptr
31D26A:  LDR             R0, [R0]; CollectPickupBuffer
31D26C:  STR             R4, [R0]
31D26E:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x31D278)
31D270:  MOVW            R1, #0x2BD; int
31D274:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
31D276:  LDR             R0, [R0]; CWorld::Players ...
31D278:  LDR             R0, [R0]; CWorld::Players
31D27A:  LDR.W           R0, [R0,#0x440]; this
31D27E:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
31D282:  MOV.W           R9, #0
31D286:  CBNZ            R0, loc_31D2A4
31D288:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x31D292)
31D28A:  MOV.W           R1, #0x640; int
31D28E:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
31D290:  LDR             R0, [R0]; CWorld::Players ...
31D292:  LDR             R0, [R0]; CWorld::Players
31D294:  LDR.W           R0, [R0,#0x440]; this
31D298:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
31D29C:  CMP             R0, #0
31D29E:  IT EQ
31D2A0:  MOVEQ.W         R9, #1
31D2A4:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x31D2AA)
31D2A6:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
31D2A8:  LDR             R0, [R0]; CWorld::Players ...
31D2AA:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
31D2AE:  CBZ             R0, loc_31D2E8
31D2B0:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x31D2BA)
31D2B2:  MOVW            R1, #0x2BD; int
31D2B6:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
31D2B8:  LDR             R0, [R0]; CWorld::Players ...
31D2BA:  LDR             R0, [R0]; CWorld::Players
31D2BC:  LDR.W           R0, [R0,#0x440]; this
31D2C0:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
31D2C4:  MOV.W           R8, #0
31D2C8:  CBNZ            R0, loc_31D2EC
31D2CA:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x31D2D4)
31D2CC:  MOV.W           R1, #0x640; int
31D2D0:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
31D2D2:  LDR             R0, [R0]; CWorld::Players ...
31D2D4:  LDR             R0, [R0]; CWorld::Players
31D2D6:  LDR.W           R0, [R0,#0x440]; this
31D2DA:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
31D2DE:  CMP             R0, #0
31D2E0:  IT EQ
31D2E2:  MOVEQ.W         R8, #1
31D2E6:  B               loc_31D2EC
31D2E8:  MOV.W           R8, #0
31D2EC:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x31D2FA)
31D2EE:  MOV             R1, #0xAAAAAAAB
31D2F6:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
31D2F8:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
31D2FA:  LDR             R0, [R0]; CTimer::m_FrameCounter
31D2FC:  UMULL.W         R2, R3, R0, R1
31D300:  LSRS            R2, R3, #2
31D302:  ADD.W           R2, R2, R2,LSL#1
31D306:  SUB.W           R0, R0, R2,LSL#1
31D30A:  MOV.W           R2, #0x26C
31D30E:  MULS            R0, R2
31D310:  UMULL.W         R2, R3, R0, R1
31D314:  ADD.W           R0, R0, #0x26C
31D318:  UMULL.W         R1, R0, R0, R1
31D31C:  LSRS            R6, R3, #2
31D31E:  CMP.W           R6, R0,LSR#2
31D322:  BCS             loc_31D406
31D324:  MOV.W           R10, R0,LSR#2
31D328:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31D330)
31D32A:  LDR             R1, =(_ZN8CPickups17aPickUpsCollectedE_ptr - 0x31D332)
31D32C:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31D32E:  ADD             R1, PC; _ZN8CPickups17aPickUpsCollectedE_ptr
31D330:  LDR             R0, [R0]; CPickups::aPickUps ...
31D332:  ADD.W           R4, R0, R6,LSL#5
31D336:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x31D33C)
31D338:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
31D33A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
31D33C:  STR             R0, [SP,#0x40+var_34]
31D33E:  LDR             R0, =(_ZN8CPickups20CollectedPickUpIndexE_ptr - 0x31D344)
31D340:  ADD             R0, PC; _ZN8CPickups20CollectedPickUpIndexE_ptr
31D342:  LDR.W           R11, [R0]; CPickups::CollectedPickUpIndex ...
31D346:  LDR             R0, [R1]; CPickups::aPickUpsCollected ...
31D348:  STR             R0, [SP,#0x40+var_38]
31D34A:  LDR             R0, =(_ZN8CPickups20CollectedPickUpIndexE_ptr - 0x31D352)
31D34C:  LDR             R1, =(_ZN8CPickups17aPickUpsCollectedE_ptr - 0x31D354)
31D34E:  ADD             R0, PC; _ZN8CPickups20CollectedPickUpIndexE_ptr
31D350:  ADD             R1, PC; _ZN8CPickups17aPickUpsCollectedE_ptr
31D352:  LDR             R0, [R0]; CPickups::CollectedPickUpIndex ...
31D354:  STR             R0, [SP,#0x40+var_3C]
31D356:  LDR             R0, [R1]; CPickups::aPickUpsCollected ...
31D358:  STR             R0, [SP,#0x40+var_40]
31D35A:  LDRB            R0, [R4,#0x1C]
31D35C:  CMP             R0, #0
31D35E:  BEQ             loc_31D3FE
31D360:  LDRB            R0, [R4,#0x1D]
31D362:  LSLS            R0, R0, #0x1C
31D364:  BPL             loc_31D3FE
31D366:  CMP.W           R9, #1
31D36A:  BNE             loc_31D3B2
31D36C:  MOV.W           R0, #0xFFFFFFFF; int
31D370:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
31D374:  MOV             R5, R0
31D376:  MOV.W           R0, #0xFFFFFFFF; int
31D37A:  MOVS            R1, #0; bool
31D37C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31D380:  MOV             R2, R0; CVehicle *
31D382:  LDR             R0, [SP,#0x40+var_34]
31D384:  MOV             R1, R5; CPlayerPed *
31D386:  LDR             R3, [R0]; int
31D388:  MOV             R0, R4; this
31D38A:  BLX             j__ZN7CPickup6UpdateEP10CPlayerPedP8CVehiclei; CPickup::Update(CPlayerPed *,CVehicle *,int)
31D38E:  CMP             R0, #1
31D390:  BNE             loc_31D3B2
31D392:  LDRH            R0, [R4,#0x1A]
31D394:  LDRH.W          R1, [R11]; CPickups::CollectedPickUpIndex
31D398:  LDR             R2, [SP,#0x40+var_38]
31D39A:  ORR.W           R0, R6, R0,LSL#16
31D39E:  STR.W           R0, [R2,R1,LSL#2]
31D3A2:  ADDS            R0, R1, #1
31D3A4:  UXTH            R1, R0
31D3A6:  CMP             R1, #0x13
31D3A8:  IT HI
31D3AA:  MOVHI           R0, #0
31D3AC:  STRH.W          R0, [R11]; CPickups::CollectedPickUpIndex
31D3B0:  B               loc_31D3FE
31D3B2:  CMP.W           R8, #1
31D3B6:  BNE             loc_31D3FE
31D3B8:  LDRB            R0, [R4,#0x1C]
31D3BA:  CBZ             R0, loc_31D3FE
31D3BC:  LDRB            R0, [R4,#0x1D]
31D3BE:  LSLS            R0, R0, #0x1C
31D3C0:  BPL             loc_31D3FE
31D3C2:  MOVS            R0, #1; int
31D3C4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
31D3C8:  MOV             R5, R0
31D3CA:  MOVS            R0, #1; int
31D3CC:  MOVS            R1, #0; bool
31D3CE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
31D3D2:  MOV             R2, R0; CVehicle *
31D3D4:  MOV             R0, R4; this
31D3D6:  MOV             R1, R5; CPlayerPed *
31D3D8:  MOVS            R3, #1; int
31D3DA:  BLX             j__ZN7CPickup6UpdateEP10CPlayerPedP8CVehiclei; CPickup::Update(CPlayerPed *,CVehicle *,int)
31D3DE:  CMP             R0, #1
31D3E0:  BNE             loc_31D3FE
31D3E2:  LDR             R2, [SP,#0x40+var_3C]
31D3E4:  LDRH            R0, [R4,#0x1A]
31D3E6:  LDR             R3, [SP,#0x40+var_40]
31D3E8:  LDRH            R1, [R2]
31D3EA:  ORR.W           R0, R6, R0,LSL#16
31D3EE:  STR.W           R0, [R3,R1,LSL#2]
31D3F2:  ADDS            R0, R1, #1
31D3F4:  UXTH            R1, R0
31D3F6:  CMP             R1, #0x13
31D3F8:  IT HI
31D3FA:  MOVHI           R0, #0
31D3FC:  STRH            R0, [R2]
31D3FE:  ADDS            R6, #1
31D400:  ADDS            R4, #0x20 ; ' '
31D402:  CMP             R6, R10
31D404:  BLT             loc_31D35A
31D406:  ADD             SP, SP, #0x10
31D408:  VPOP            {D8-D9}
31D40C:  ADD             SP, SP, #4
31D40E:  POP.W           {R8-R11}
31D412:  POP             {R4-R7,PC}
