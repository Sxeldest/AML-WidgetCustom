; =========================================================
; Game Engine Function: _ZN11CAutomobile14SetTotalDamageEb
; Address            : 0x553234 - 0x553392
; =========================================================

553234:  PUSH            {R4-R7,LR}
553236:  ADD             R7, SP, #0xC
553238:  PUSH.W          {R8-R11}
55323C:  SUB             SP, SP, #4
55323E:  VPUSH           {D8-D9}
553242:  MOV             R5, R0
553244:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x553252)
553246:  VMOV.F32        S18, #3.0
55324A:  ADDW            R9, R5, #0x5B4
55324E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
553250:  VLDR            S16, =0.000015259
553254:  MOV             R8, R1
553256:  MOVS            R4, #0
553258:  LDR.W           R10, [R0]; CModelInfo::ms_modelInfoPtrs ...
55325C:  MOV             R0, R4
55325E:  BLX             j__ZN14CDamageManager23GetCarNodeIndexFromDoorE6eDoors; CDamageManager::GetCarNodeIndexFromDoor(eDoors)
553262:  MOV             R6, R0
553264:  ADD.W           R0, R5, R6,LSL#2
553268:  LDR.W           R1, [R0,#0x65C]
55326C:  CBZ             R1, loc_5532E2
55326E:  ADDW            R11, R0, #0x65C
553272:  CMP.W           R8, #1
553276:  BNE             loc_553298
553278:  BLX             rand
55327C:  UXTH            R0, R0
55327E:  VMOV            S0, R0
553282:  VCVT.F32.S32    S0, S0
553286:  VMUL.F32        S0, S0, S16
55328A:  VMUL.F32        S0, S0, S18
55328E:  VCVT.S32.F32    S0, S0
553292:  VMOV            R0, S0
553296:  CBZ             R0, loc_5532CC
553298:  MOV             R0, R9
55329A:  MOV             R1, R4
55329C:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
5532A0:  CBNZ            R0, loc_5532E2
5532A2:  LDRSH.W         R0, [R5,#0x26]
5532A6:  MOVS            R1, #1
5532A8:  LSLS            R1, R6
5532AA:  LDR.W           R0, [R10,R0,LSL#2]
5532AE:  LDR             R0, [R0,#0x74]
5532B0:  LDR.W           R0, [R0,#0x328]
5532B4:  TST             R0, R1
5532B6:  BEQ             loc_5532E2
5532B8:  MOV             R0, R9
5532BA:  MOV             R1, R4
5532BC:  MOVS            R2, #2
5532BE:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
5532C2:  LDR.W           R1, [R11]
5532C6:  MOV             R0, R5
5532C8:  MOVS            R2, #2
5532CA:  B               loc_5532DE
5532CC:  MOV             R0, R9
5532CE:  MOV             R1, R4
5532D0:  MOVS            R2, #4
5532D2:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
5532D6:  LDR.W           R1, [R11]
5532DA:  MOV             R0, R5
5532DC:  MOVS            R2, #0
5532DE:  BLX             j__ZN8CVehicle22SetComponentVisibilityEP7RwFramej; CVehicle::SetComponentVisibility(RwFrame *,uint)
5532E2:  ADDS            R4, #1
5532E4:  CMP             R4, #6
5532E6:  BNE             loc_55325C
5532E8:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5532F0)
5532EA:  MOVS            R4, #0
5532EC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5532EE:  LDR.W           R10, [R0]; CModelInfo::ms_modelInfoPtrs ...
5532F2:  BIC.W           R0, R4, #1
5532F6:  CMP             R0, #2
5532F8:  BEQ             loc_553380
5532FA:  MOV             R0, R4
5532FC:  BLX             j__ZN14CDamageManager24GetCarNodeIndexFromPanelE7ePanels; CDamageManager::GetCarNodeIndexFromPanel(ePanels)
553300:  MOV             R6, R0
553302:  ADD.W           R0, R5, R6,LSL#2
553306:  LDR.W           R1, [R0,#0x65C]
55330A:  CBZ             R1, loc_553380
55330C:  ADDW            R11, R0, #0x65C
553310:  CMP.W           R8, #1
553314:  BNE             loc_553336
553316:  BLX             rand
55331A:  UXTH            R0, R0
55331C:  VMOV            S0, R0
553320:  VCVT.F32.S32    S0, S0
553324:  VMUL.F32        S0, S0, S16
553328:  VMUL.F32        S0, S0, S18
55332C:  VCVT.S32.F32    S0, S0
553330:  VMOV            R0, S0
553334:  CBZ             R0, loc_55336A
553336:  MOV             R0, R9; this
553338:  MOV             R1, R4; int
55333A:  BLX             j__ZNK14CDamageManager14GetPanelStatusEi; CDamageManager::GetPanelStatus(int)
55333E:  CBNZ            R0, loc_553380
553340:  LDRSH.W         R0, [R5,#0x26]
553344:  MOVS            R1, #1
553346:  LSLS            R1, R6
553348:  LDR.W           R0, [R10,R0,LSL#2]
55334C:  LDR             R0, [R0,#0x74]
55334E:  LDR.W           R0, [R0,#0x328]
553352:  TST             R0, R1
553354:  BEQ             loc_553380
553356:  MOV             R0, R9; this
553358:  MOV             R1, R4; int
55335A:  MOVS            R2, #1; unsigned int
55335C:  BLX             j__ZN14CDamageManager14SetPanelStatusEij; CDamageManager::SetPanelStatus(int,uint)
553360:  LDR.W           R1, [R11]
553364:  MOV             R0, R5
553366:  MOVS            R2, #2
553368:  B               loc_55337C
55336A:  MOV             R0, R9; this
55336C:  MOV             R1, R4; int
55336E:  MOVS            R2, #3; unsigned int
553370:  BLX             j__ZN14CDamageManager14SetPanelStatusEij; CDamageManager::SetPanelStatus(int,uint)
553374:  LDR.W           R1, [R11]
553378:  MOV             R0, R5
55337A:  MOVS            R2, #0
55337C:  BLX             j__ZN8CVehicle22SetComponentVisibilityEP7RwFramej; CVehicle::SetComponentVisibility(RwFrame *,uint)
553380:  ADDS            R4, #1
553382:  CMP             R4, #7
553384:  BNE             loc_5532F2
553386:  VPOP            {D8-D9}
55338A:  ADD             SP, SP, #4
55338C:  POP.W           {R8-R11}
553390:  POP             {R4-R7,PC}
