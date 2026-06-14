; =========================================================
; Game Engine Function: _ZN21CTaskComplexArrestPed18CreateFirstSubTaskEP4CPed
; Address            : 0x53D214 - 0x53D2D8
; =========================================================

53D214:  PUSH            {R4-R7,LR}
53D216:  ADD             R7, SP, #0xC
53D218:  PUSH.W          {R11}
53D21C:  MOV             R5, R0
53D21E:  MOV             R4, R1
53D220:  LDR             R0, [R5,#0x10]
53D222:  CBZ             R0, loc_53D236
53D224:  MOVS            R1, #0
53D226:  STRB            R1, [R5,#0xC]
53D228:  LDRB.W          R1, [R0,#0x485]
53D22C:  LSLS            R1, R1, #0x1F
53D22E:  BNE             loc_53D23E
53D230:  MOV.W           R6, #0x3E8
53D234:  B               loc_53D284
53D236:  MOVS            R0, #0
53D238:  POP.W           {R11}
53D23C:  POP             {R4-R7,PC}
53D23E:  LDR.W           R0, [R0,#0x590]; this
53D242:  LDR.W           R1, [R0,#0x5A0]
53D246:  CMP             R1, #9
53D248:  BEQ             loc_53D280
53D24A:  LDR.W           R1, [R0,#0x5A4]
53D24E:  CMP             R1, #2
53D250:  BEQ             loc_53D280
53D252:  CMP             R1, #5
53D254:  BNE             loc_53D294
53D256:  LDRSB.W         R0, [R4,#0x71C]
53D25A:  RSB.W           R0, R0, R0,LSL#3
53D25E:  ADD.W           R0, R4, R0,LSL#2
53D262:  ADDW            R0, R0, #0x5A4; this
53D266:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
53D26A:  CMP             R0, #1
53D26C:  BNE             loc_53D2D2
53D26E:  MOV             R0, R4
53D270:  MOVS            R1, #0x19
53D272:  BLX             j__ZN4CPed23DoWeHaveWeaponAvailableE11eWeaponType; CPed::DoWeHaveWeaponAvailable(eWeaponType)
53D276:  CMP             R0, #1
53D278:  BNE             loc_53D2B4
53D27A:  MOV             R0, R4
53D27C:  MOVS            R1, #0x19
53D27E:  B               loc_53D2CE
53D280:  MOVW            R6, #0x2BF
53D284:  MOV             R0, R5; this
53D286:  MOV             R1, R6; int
53D288:  MOV             R2, R4; CPed *
53D28A:  POP.W           {R11}
53D28E:  POP.W           {R4-R7,LR}
53D292:  B               _ZN21CTaskComplexArrestPed13CreateSubTaskEiP4CPed; CTaskComplexArrestPed::CreateSubTask(int,CPed *)
53D294:  BLX             j__ZNK8CVehicle12IsUpsideDownEv; CVehicle::IsUpsideDown(void)
53D298:  MOVW            R6, #0x3EB
53D29C:  CMP             R0, #0
53D29E:  BNE             loc_53D284
53D2A0:  LDR             R0, [R5,#0x10]
53D2A2:  LDR.W           R0, [R0,#0x590]; this
53D2A6:  BLX             j__ZNK8CVehicle11IsOnItsSideEv; CVehicle::IsOnItsSide(void)
53D2AA:  CMP             R0, #0
53D2AC:  IT EQ
53D2AE:  MOVWEQ          R6, #0x2D2
53D2B2:  B               loc_53D284
53D2B4:  MOV             R0, R4
53D2B6:  MOVS            R1, #0x16
53D2B8:  BLX             j__ZN4CPed23DoWeHaveWeaponAvailableE11eWeaponType; CPed::DoWeHaveWeaponAvailable(eWeaponType)
53D2BC:  CBNZ            R0, loc_53D2CA
53D2BE:  MOV             R0, R4
53D2C0:  MOVS            R1, #0x16
53D2C2:  MOVS            R2, #0xA
53D2C4:  MOVS            R3, #0
53D2C6:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
53D2CA:  MOV             R0, R4
53D2CC:  MOVS            R1, #0x16
53D2CE:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
53D2D2:  MOVW            R6, #0x3EB
53D2D6:  B               loc_53D284
