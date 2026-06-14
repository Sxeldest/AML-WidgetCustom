; =========================================================
; Game Engine Function: _ZN5CRope23CreateHookObjectForRopeEv
; Address            : 0x41463C - 0x4146E2
; =========================================================

41463C:  PUSH            {R4-R7,LR}
41463E:  ADD             R7, SP, #0xC
414640:  PUSH.W          {R11}
414644:  MOV             R4, R0
414646:  LDR.W           R0, [R4,#0x314]
41464A:  CMP             R0, #0
41464C:  BNE             loc_4146DC
41464E:  LDRB.W          R0, [R4,#0x325]
414652:  SUBS            R0, #1
414654:  UXTB            R1, R0
414656:  CMP             R1, #6
414658:  BHI             loc_4146DC
41465A:  LDR             R1, =(off_667D30 - 0x414666)
41465C:  SXTB            R0, R0
41465E:  ADD.W           R5, R4, #0x314
414662:  ADD             R1, PC; off_667D30 ; unsigned int
414664:  LDR.W           R0, [R1,R0,LSL#2]
414668:  LDRH            R6, [R0]
41466A:  MOV.W           R0, #(elf_hash_bucket+0x88); this
41466E:  BLX             j__ZN7CObjectnwEj; CObject::operator new(uint)
414672:  MOV             R1, R6; int
414674:  MOVS            R2, #1; bool
414676:  BLX             j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
41467A:  MOV             R1, R5; CEntity **
41467C:  STR.W           R0, [R4,#0x314]
414680:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
414684:  LDRD.W          R3, R2, [R4,#0x174]
414688:  LDR.W           R1, [R4,#0x314]
41468C:  LDR.W           R0, [R4,#0x17C]
414690:  LDR             R6, [R1,#0x14]
414692:  CBZ             R6, loc_4146A0
414694:  STR             R3, [R6,#0x30]
414696:  LDR             R3, [R1,#0x14]
414698:  STR             R2, [R3,#0x34]
41469A:  LDR             R1, [R1,#0x14]
41469C:  ADDS            R1, #0x38 ; '8'
41469E:  B               loc_4146A6
4146A0:  STRD.W          R3, R2, [R1,#4]
4146A4:  ADDS            R1, #0xC
4146A6:  STR             R0, [R1]
4146A8:  MOVS            R1, #5
4146AA:  LDR.W           R0, [R4,#0x314]
4146AE:  MOVS            R5, #0
4146B0:  STRB.W          R1, [R0,#0x140]
4146B4:  LDR.W           R0, [R4,#0x314]
4146B8:  LDR             R1, [R0]
4146BA:  LDR             R2, [R1,#0x14]
4146BC:  MOVS            R1, #0
4146BE:  BLX             R2
4146C0:  LDR.W           R0, [R4,#0x314]
4146C4:  LDR             R1, [R0,#0x44]
4146C6:  ORR.W           R1, R1, #0x2000000; CEntity *
4146CA:  STR             R1, [R0,#0x44]
4146CC:  LDR.W           R0, [R4,#0x314]; this
4146D0:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
4146D4:  STRB.W          R5, [R4,#0x326]
4146D8:  STR.W           R5, [R4,#0x318]
4146DC:  POP.W           {R11}
4146E0:  POP             {R4-R7,PC}
