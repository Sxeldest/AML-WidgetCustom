; =========================================================
; Game Engine Function: _ZN6CPools31MakeSureSlotInObjectPoolIsEmptyEi
; Address            : 0x40D514 - 0x40D5B2
; =========================================================

40D514:  PUSH            {R4-R7,LR}
40D516:  ADD             R7, SP, #0xC
40D518:  PUSH.W          {R8}
40D51C:  MOV             R5, R0
40D51E:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x40D524)
40D520:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
40D522:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
40D524:  LDR             R0, [R0]; CPools::ms_pObjectPool
40D526:  LDR             R1, [R0,#4]
40D528:  LDRSB           R1, [R1,R5]
40D52A:  CMP             R1, #0
40D52C:  BLT             loc_40D5AC
40D52E:  MOV.W           R1, #(elf_hash_bucket+0xA8); CObject *
40D532:  LDR             R6, [R0]
40D534:  MLA.W           R4, R5, R1, R6
40D538:  LDRB.W          R0, [R4,#0x140]
40D53C:  CMP             R0, #3
40D53E:  BNE             loc_40D558
40D540:  MOV             R0, R4; this
40D542:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
40D546:  CBZ             R4, loc_40D5AC
40D548:  LDR             R0, [R4]
40D54A:  LDR             R1, [R0,#4]
40D54C:  MOV             R0, R4
40D54E:  POP.W           {R8}
40D552:  POP.W           {R4-R7,LR}
40D556:  BX              R1
40D558:  MOV             R0, R4; this
40D55A:  BLX             j__ZN15CProjectileInfo25RemoveIfThisIsAProjectileEP7CObject; CProjectileInfo::RemoveIfThisIsAProjectile(CObject *)
40D55E:  CBNZ            R0, loc_40D5AC
40D560:  MOV.W           R0, #0x1A4
40D564:  MLA.W           R6, R5, R0, R6
40D568:  MOV.W           R0, #(elf_hash_bucket+0x88); this
40D56C:  BLX             j__ZN7CObjectnwEj; CObject::operator new(uint)
40D570:  LDRSH.W         R1, [R6,#0x26]; int
40D574:  MOVS            R2, #0; bool
40D576:  MOV             R5, R0
40D578:  MOV.W           R8, #0
40D57C:  BLX             j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
40D580:  MOV             R0, R4; this
40D582:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
40D586:  MOV             R0, R5; void *
40D588:  MOV             R1, R4; void *
40D58A:  MOV.W           R2, #0x1A4; size_t
40D58E:  BLX             memcpy_1
40D592:  MOV             R0, R5; this
40D594:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
40D598:  CMP             R4, #0
40D59A:  STR.W           R8, [R6,#0x18]
40D59E:  BEQ             loc_40D5A8
40D5A0:  LDR             R0, [R4]
40D5A2:  LDR             R1, [R0,#4]
40D5A4:  MOV             R0, R4
40D5A6:  BLX             R1
40D5A8:  STR.W           R8, [R5,#0x28]
40D5AC:  POP.W           {R8}
40D5B0:  POP             {R4-R7,PC}
