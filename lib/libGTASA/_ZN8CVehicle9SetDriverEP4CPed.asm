; =========================================================
; Game Engine Function: _ZN8CVehicle9SetDriverEP4CPed
; Address            : 0x58458C - 0x584748
; =========================================================

58458C:  PUSH            {R4-R7,LR}
58458E:  ADD             R7, SP, #0xC
584590:  PUSH.W          {R11}
584594:  SUB             SP, SP, #0x10
584596:  MOV             R4, R0
584598:  ADDW            R6, R4, #0x464
58459C:  LDR.W           R0, [R4,#0x464]; this
5845A0:  MOV             R5, R1
5845A2:  CMP             R0, #0
5845A4:  ITT NE
5845A6:  MOVNE           R1, R6; CEntity **
5845A8:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5845AC:  MOV             R0, R5; this
5845AE:  MOV             R1, R6; CEntity **
5845B0:  STR.W           R5, [R4,#0x464]
5845B4:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5845B8:  LDRB.W          R0, [R4,#0x42C]
5845BC:  LSLS            R0, R0, #0x18
5845BE:  BPL             loc_5845CC
5845C0:  MOV.W           R0, #0xFFFFFFFF; int
5845C4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5845C8:  CMP             R0, R5
5845CA:  BEQ             loc_584654
5845CC:  VLDR            S0, =-0.02
5845D0:  VLDR            S2, [R5,#0x90]
5845D4:  LDR.W           R0, [R4,#0x5A0]
5845D8:  VMUL.F32        S0, S2, S0
5845DC:  CMP             R0, #9
5845DE:  BNE             loc_584616
5845E0:  LDR             R0, [R4,#0x14]
5845E2:  VLDR            S2, [R0,#0x20]
5845E6:  VLDR            S4, [R0,#0x24]
5845EA:  VLDR            S6, [R0,#0x28]
5845EE:  VMUL.F32        S2, S0, S2
5845F2:  VMUL.F32        S4, S0, S4
5845F6:  MOV             R0, R4
5845F8:  VMUL.F32        S0, S0, S6
5845FC:  VMOV            R1, S2
584600:  VMOV            R2, S4
584604:  VMOV            R3, S0
584608:  ADD             SP, SP, #0x10
58460A:  POP.W           {R11}
58460E:  POP.W           {R4-R7,LR}
584612:  B.W             sub_193318
584616:  VMOV            R3, S0
58461A:  LDR             R0, [R4,#0x14]
58461C:  LDR             R1, [R5,#0x14]
58461E:  MOVS            R2, #0
584620:  VLDR            S0, [R0,#0x30]
584624:  VLDR            S2, [R0,#0x34]
584628:  MOVS            R0, #0
58462A:  VLDR            S4, [R1,#0x30]
58462E:  VLDR            S6, [R1,#0x34]
584632:  MOVS            R1, #0
584634:  VSUB.F32        S0, S4, S0
584638:  STR             R0, [SP,#0x20+var_18]
58463A:  VSUB.F32        S2, S6, S2
58463E:  MOV             R0, R4
584640:  VSTR            S0, [SP,#0x20+var_20]
584644:  VSTR            S2, [SP,#0x20+var_1C]
584648:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
58464C:  ADD             SP, SP, #0x10
58464E:  POP.W           {R11}
584652:  POP             {R4-R7,PC}
584654:  ADDW            R6, R4, #0x42C
584658:  LDR             R0, [R6]
58465A:  BIC.W           R0, R0, #0x80
58465E:  STR             R0, [R6]
584660:  LDRSH.W         R0, [R4,#0x26]
584664:  SUB.W           R1, R0, #0x1A0; switch 42 cases
584668:  CMP             R1, #0x29 ; ')'
58466A:  BLS             loc_584688
58466C:  SUB.W           R1, R0, #0x254; jumptable 00584688 default case
584670:  CMP             R1, #4
584672:  BCS             loc_5846DA
584674:  MOVW            R0, #(elf_hash_bucket+0x61); this
584678:  MOVS            R1, #2; int
58467A:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
58467E:  LDR             R0, [R6]
584680:  ORR.W           R0, R0, #0x80
584684:  STR             R0, [R6]
584686:  B               loc_5845CC
584688:  TBB.W           [PC,R1]; switch jump
58468C:  DCB 0x32; jump table for switch statement
58468D:  DCB 0x15
58468E:  DCB 0x15
58468F:  DCB 0x15
584690:  DCB 0x16
584691:  DCB 0x15
584692:  DCB 0x15
584693:  DCB 0x15
584694:  DCB 0x15
584695:  DCB 0x15
584696:  DCB 0x15
584697:  DCB 0x4C
584698:  DCB 0x15
584699:  DCB 0x15
58469A:  DCB 0x15
58469B:  DCB 0x15
58469C:  DCB 0x15
58469D:  DCB 0x15
58469E:  DCB 0x15
58469F:  DCB 0x15
5846A0:  DCB 0x15
5846A1:  DCB 0x15
5846A2:  DCB 0x16
5846A3:  DCB 0x15
5846A4:  DCB 0x15
5846A5:  DCB 0x15
5846A6:  DCB 0x15
5846A7:  DCB 0x15
5846A8:  DCB 0x15
5846A9:  DCB 0x15
5846AA:  DCB 0x15
5846AB:  DCB 0x15
5846AC:  DCB 0x15
5846AD:  DCB 0x15
5846AE:  DCB 0x15
5846AF:  DCB 0x15
5846B0:  DCB 0x15
5846B1:  DCB 0x15
5846B2:  DCB 0x15
5846B3:  DCB 0x15
5846B4:  DCB 0x15
5846B5:  DCB 0x39
5846B6:  B               loc_5845CC; jumptable 00584688 cases 417-419,421-426,428-437,439-456
5846B8:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x5846C4); jumptable 00584688 cases 420,438
5846BA:  MOV.W           R2, #0x194
5846BE:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x5846C6)
5846C0:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
5846C2:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
5846C4:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
5846C6:  LDR             R1, [R1]; CWorld::Players ...
5846C8:  LDR             R0, [R0]; CWorld::PlayerInFocus
5846CA:  SMLABB.W        R0, R0, R2, R1
5846CE:  LDR.W           R1, [R0,#0xB8]
5846D2:  ADDS            R1, #0xC
5846D4:  STR.W           R1, [R0,#0xB8]
5846D8:  B               loc_5845CC
5846DA:  CMP.W           R0, #0x24C
5846DE:  BNE.W           loc_5845CC
5846E2:  MOVS            R1, #0
5846E4:  MOVS            R0, #(elf_hash_nbucket+1); this
5846E6:  MOVT            R1, #0x4220; unsigned __int16
5846EA:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
5846EE:  B               loc_5845CC
5846F0:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x5846F8); jumptable 00584688 case 416
5846F2:  MOVS            R1, #0x14; int
5846F4:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
5846F6:  LDR             R0, [R0]; this
5846F8:  BLX             j__ZN11CPlayerInfo9AddHealthEi; CPlayerInfo::AddHealth(int)
5846FC:  B               loc_5845CC
5846FE:  MOV             R0, R5; jumptable 00584688 case 457
584700:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
584704:  CMP             R0, #1
584706:  BNE             loc_584718
584708:  MOV             R0, R5
58470A:  MOVS            R1, #2
58470C:  MOVS            R2, #1
58470E:  BLX             j__ZN10CPlayerPed23DoesPlayerWantNewWeaponE11eWeaponTypeb; CPlayerPed::DoesPlayerWantNewWeapon(eWeaponType,bool)
584712:  CMP             R0, #1
584714:  BNE.W           loc_5845CC
584718:  MOVW            R0, #(elf_hash_bucket+0x51); this
58471C:  MOVS            R1, #2; int
58471E:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
584722:  B               loc_5845CC
584724:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x58472E); jumptable 00584688 case 427
584726:  ADDW            R1, R5, #0x54C
58472A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
58472C:  VLDR            S0, [R1]
584730:  LDR             R0, [R0]; CWorld::Players ...
584732:  LDRB.W          R0, [R0,#(byte_96B7EC - 0x96B69C)]
584736:  VMOV            S2, R0
58473A:  VCVT.F32.U32    S2, S2
58473E:  VMAX.F32        D0, D0, D1
584742:  VSTR            S0, [R1]
584746:  B               loc_5845CC
