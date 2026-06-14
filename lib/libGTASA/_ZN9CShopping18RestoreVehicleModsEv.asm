; =========================================================
; Game Engine Function: _ZN9CShopping18RestoreVehicleModsEv
; Address            : 0x36118C - 0x3613E0
; =========================================================

36118C:  PUSH            {R4-R7,LR}
36118E:  ADD             R7, SP, #0xC
361190:  PUSH.W          {R8-R11}
361194:  SUB             SP, SP, #4
361196:  MOV.W           R0, #0xFFFFFFFF; int
36119A:  MOVS            R1, #0; bool
36119C:  MOVS            R6, #0
36119E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3611A2:  LDR             R5, =(word_81FFC0 - 0x3611AE)
3611A4:  MOV             R9, R0
3611A6:  MOVW            R8, #0xFFFF
3611AA:  ADD             R5, PC; word_81FFC0
3611AC:  ADD.W           R4, R9, R6
3611B0:  LDRH.W          R0, [R4,#0x43E]
3611B4:  CMP             R0, R8
3611B6:  BEQ             loc_3611C0
3611B8:  SXTH            R1, R0; int
3611BA:  MOV             R0, R9; this
3611BC:  BLX             j__ZN8CVehicle20RemoveVehicleUpgradeEi; CVehicle::RemoveVehicleUpgrade(int)
3611C0:  LDRH            R0, [R5,R6]
3611C2:  STRH.W          R0, [R4,#0x43E]
3611C6:  CMP             R0, R8
3611C8:  BEQ             loc_3611D2
3611CA:  SXTH            R0, R0; this
3611CC:  MOVS            R1, #0xA; int
3611CE:  BLX             j__ZN10CStreaming21RequestVehicleUpgradeEii; CStreaming::RequestVehicleUpgrade(int,int)
3611D2:  ADDS            R6, #2
3611D4:  CMP             R6, #0x1E
3611D6:  BNE             loc_3611AC
3611D8:  MOVS            R0, #0; this
3611DA:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
3611DE:  MOV             R0, R9; this
3611E0:  BLX             j__ZN8CVehicle22SetupUpgradesAfterLoadEv; CVehicle::SetupUpgradesAfterLoad(void)
3611E4:  LDR             R0, =(word_81FFC0 - 0x3611EA)
3611E6:  ADD             R0, PC; word_81FFC0
3611E8:  LDRH            R0, [R0]
3611EA:  CMP             R0, R8
3611EC:  ITT NE
3611EE:  SXTHNE          R0, R0; this
3611F0:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
3611F4:  LDR             R0, =(word_81FFC0 - 0x3611FA)
3611F6:  ADD             R0, PC; word_81FFC0
3611F8:  LDRH            R0, [R0,#(word_81FFC2 - 0x81FFC0)]
3611FA:  CMP             R0, R8
3611FC:  ITT NE
3611FE:  SXTHNE          R0, R0; this
361200:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
361204:  LDR             R0, =(word_81FFC0 - 0x36120A)
361206:  ADD             R0, PC; word_81FFC0
361208:  LDRH            R0, [R0,#(word_81FFC4 - 0x81FFC0)]
36120A:  CMP             R0, R8
36120C:  ITT NE
36120E:  SXTHNE          R0, R0; this
361210:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
361214:  LDR             R0, =(word_81FFC0 - 0x36121A)
361216:  ADD             R0, PC; word_81FFC0
361218:  LDRH            R0, [R0,#(word_81FFC6 - 0x81FFC0)]
36121A:  CMP             R0, R8
36121C:  ITT NE
36121E:  SXTHNE          R0, R0; this
361220:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
361224:  LDR             R0, =(word_81FFC0 - 0x36122A)
361226:  ADD             R0, PC; word_81FFC0
361228:  LDRH            R0, [R0,#(word_81FFC8 - 0x81FFC0)]
36122A:  CMP             R0, R8
36122C:  ITT NE
36122E:  SXTHNE          R0, R0; this
361230:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
361234:  LDR             R0, =(word_81FFC0 - 0x36123A)
361236:  ADD             R0, PC; word_81FFC0
361238:  LDRH            R0, [R0,#(word_81FFCA - 0x81FFC0)]
36123A:  CMP             R0, R8
36123C:  ITT NE
36123E:  SXTHNE          R0, R0; this
361240:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
361244:  LDR             R0, =(word_81FFC0 - 0x36124A)
361246:  ADD             R0, PC; word_81FFC0
361248:  LDRH            R0, [R0,#(word_81FFCC - 0x81FFC0)]
36124A:  CMP             R0, R8
36124C:  ITT NE
36124E:  SXTHNE          R0, R0; this
361250:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
361254:  LDR             R0, =(word_81FFC0 - 0x36125A)
361256:  ADD             R0, PC; word_81FFC0
361258:  LDRH            R0, [R0,#(word_81FFCE - 0x81FFC0)]
36125A:  CMP             R0, R8
36125C:  ITT NE
36125E:  SXTHNE          R0, R0; this
361260:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
361264:  LDR             R0, =(word_81FFC0 - 0x36126A)
361266:  ADD             R0, PC; word_81FFC0
361268:  LDRH            R0, [R0,#(word_81FFD0 - 0x81FFC0)]
36126A:  CMP             R0, R8
36126C:  ITT NE
36126E:  SXTHNE          R0, R0; this
361270:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
361274:  LDR             R0, =(word_81FFC0 - 0x36127A)
361276:  ADD             R0, PC; word_81FFC0
361278:  LDRH            R0, [R0,#(word_81FFD2 - 0x81FFC0)]
36127A:  CMP             R0, R8
36127C:  ITT NE
36127E:  SXTHNE          R0, R0; this
361280:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
361284:  LDR             R0, =(word_81FFC0 - 0x36128A)
361286:  ADD             R0, PC; word_81FFC0
361288:  LDRH            R0, [R0,#(word_81FFD4 - 0x81FFC0)]
36128A:  CMP             R0, R8
36128C:  ITT NE
36128E:  SXTHNE          R0, R0; this
361290:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
361294:  LDR             R0, =(word_81FFC0 - 0x36129A)
361296:  ADD             R0, PC; word_81FFC0
361298:  LDRH            R0, [R0,#(word_81FFD6 - 0x81FFC0)]
36129A:  CMP             R0, R8
36129C:  ITT NE
36129E:  SXTHNE          R0, R0; this
3612A0:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
3612A4:  LDR             R0, =(word_81FFC0 - 0x3612AA)
3612A6:  ADD             R0, PC; word_81FFC0
3612A8:  LDRH            R0, [R0,#(word_81FFD8 - 0x81FFC0)]
3612AA:  CMP             R0, R8
3612AC:  ITT NE
3612AE:  SXTHNE          R0, R0; this
3612B0:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
3612B4:  LDR             R0, =(word_81FFC0 - 0x3612BA)
3612B6:  ADD             R0, PC; word_81FFC0
3612B8:  LDRH            R0, [R0,#(word_81FFDA - 0x81FFC0)]
3612BA:  CMP             R0, R8
3612BC:  ITT NE
3612BE:  SXTHNE          R0, R0; this
3612C0:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
3612C4:  LDR             R0, =(word_81FFC0 - 0x3612CA)
3612C6:  ADD             R0, PC; word_81FFC0
3612C8:  LDRH            R0, [R0,#(word_81FFDC - 0x81FFC0)]
3612CA:  CMP             R0, R8
3612CC:  ITT NE
3612CE:  SXTHNE          R0, R0; this
3612D0:  BLXNE           j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
3612D4:  LDR.W           R0, [R9,#0x5A0]
3612D8:  CMP             R0, #0
3612DA:  BNE.W           loc_3613D8
3612DE:  LDR.W           R8, =(unk_81FFDE - 0x3612F2)
3612E2:  ADDW            R5, R9, #0x5B4
3612E6:  LDR             R4, =(unk_81FFDE - 0x3612F8)
3612E8:  MOVS            R6, #0
3612EA:  LDR.W           R10, =(unk_81FFDE - 0x3612FA)
3612EE:  ADD             R8, PC; unk_81FFDE
3612F0:  LDR.W           R11, =(unk_81FFDE - 0x3612FC)
3612F4:  ADD             R4, PC; unk_81FFDE
3612F6:  ADD             R10, PC; unk_81FFDE
3612F8:  ADD             R11, PC; unk_81FFDE
3612FA:  B               loc_3612FE
3612FC:  ADDS            R6, #1
3612FE:  SUBS            R0, R6, #2; switch 16 cases
361300:  CMP             R0, #0xF
361302:  BHI             def_361304; jumptable 00361304 default case, cases 3,6,8-11,14,15
361304:  TBB.W           [PC,R0]; switch jump
361308:  DCB 8; jump table for switch statement
361309:  DCB 0x11
36130A:  DCB 0x15
36130B:  DCB 0x1E
36130C:  DCB 0x11
36130D:  DCB 0x27
36130E:  DCB 0x11
36130F:  DCB 0x11
361310:  DCB 0x11
361311:  DCB 0x11
361312:  DCB 0x33
361313:  DCB 0x3E
361314:  DCB 0x11
361315:  DCB 0x11
361316:  DCB 0x4D
361317:  DCB 0x59
361318:  LDR             R0, =(unk_81FFDE - 0x36131E); jumptable 00361304 case 2
36131A:  ADD             R0, PC; unk_81FFDE
36131C:  LDRSB.W         R2, [R0,#(byte_81FFE0 - 0x81FFDE)]
361320:  CMP             R2, #1
361322:  BLT             loc_3612FC
361324:  MOV             R0, R5
361326:  MOVS            R1, #2
361328:  B               loc_361366
36132A:  ADDS            R6, #1; jumptable 00361304 default case, cases 3,6,8-11,14,15
36132C:  CMP             R6, #0x19
36132E:  BNE             loc_3612FE
361330:  B               loc_3613D8
361332:  LDR             R0, =(unk_81FFDE - 0x361338); jumptable 00361304 case 4
361334:  ADD             R0, PC; unk_81FFDE
361336:  LDRSB.W         R2, [R0,#(byte_81FFE2 - 0x81FFDE)]
36133A:  CMP             R2, #1
36133C:  BLT             loc_3612FC
36133E:  MOV             R0, R5
361340:  MOVS            R1, #3
361342:  B               loc_361366
361344:  LDR             R0, =(unk_81FFDE - 0x36134A); jumptable 00361304 case 5
361346:  ADD             R0, PC; unk_81FFDE
361348:  LDRSB.W         R2, [R0,#(byte_81FFE3 - 0x81FFDE)]
36134C:  CMP             R2, #1
36134E:  BLT             loc_3612FC
361350:  MOV             R0, R5
361352:  MOVS            R1, #0
361354:  B               loc_361366
361356:  LDR             R0, =(unk_81FFDE - 0x36135C); jumptable 00361304 case 7
361358:  ADD             R0, PC; unk_81FFDE
36135A:  LDRSB.W         R2, [R0,#(byte_81FFE5 - 0x81FFDE)]; unsigned int
36135E:  CMP             R2, #1
361360:  BLT             loc_3612FC
361362:  MOV             R0, R5; this
361364:  MOVS            R1, #1; int
361366:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
36136A:  ADDS            R6, #1
36136C:  B               loc_3612FE
36136E:  LDRSB.W         R2, [R8,#(byte_81FFEA - 0x81FFDE)]; jumptable 00361304 case 12
361372:  CMP             R2, #1
361374:  BLT             loc_3612FC
361376:  MOV             R0, R5; this
361378:  MOVS            R1, #5; int
36137A:  BLX             j__ZN14CDamageManager14SetPanelStatusEij; CDamageManager::SetPanelStatus(int,uint)
36137E:  MOV             R0, R9
361380:  MOVS            R1, #5
361382:  B               loc_361398
361384:  LDRSB.W         R2, [R4,#(byte_81FFEB - 0x81FFDE)]; jumptable 00361304 case 13
361388:  CMP             R2, #1
36138A:  BLT             loc_3612FC
36138C:  MOV             R0, R5; this
36138E:  MOVS            R1, #6; int
361390:  BLX             j__ZN14CDamageManager14SetPanelStatusEij; CDamageManager::SetPanelStatus(int,uint)
361394:  MOV             R0, R9
361396:  MOVS            R1, #6
361398:  MOVS            R2, #1
36139A:  BLX             j__ZN11CAutomobile14SetPanelDamageE7ePanelsb; CAutomobile::SetPanelDamage(ePanels,bool)
36139E:  ADDS            R6, #1
3613A0:  B               loc_3612FE
3613A2:  LDRSB.W         R2, [R10,#(byte_81FFEE - 0x81FFDE)]; jumptable 00361304 case 16
3613A6:  CMP             R2, #1
3613A8:  BLT.W           loc_3612FC
3613AC:  MOV             R0, R5
3613AE:  MOVS            R1, #0
3613B0:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
3613B4:  MOV             R0, R9
3613B6:  MOVS            R1, #0
3613B8:  B               loc_3613D0
3613BA:  LDRSB.W         R2, [R11,#(byte_81FFEF - 0x81FFDE)]; jumptable 00361304 case 17
3613BE:  CMP             R2, #1
3613C0:  BLT.W           loc_3612FC
3613C4:  MOV             R0, R5
3613C6:  MOVS            R1, #1
3613C8:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
3613CC:  MOV             R0, R9
3613CE:  MOVS            R1, #1
3613D0:  MOVS            R2, #1
3613D2:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
3613D6:  B               loc_3612FC
3613D8:  ADD             SP, SP, #4
3613DA:  POP.W           {R8-R11}
3613DE:  POP             {R4-R7,PC}
