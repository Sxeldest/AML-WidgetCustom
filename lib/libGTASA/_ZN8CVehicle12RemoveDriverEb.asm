; =========================================================
; Game Engine Function: _ZN8CVehicle12RemoveDriverEb
; Address            : 0x58475C - 0x58484C
; =========================================================

58475C:  PUSH            {R4-R7,LR}
58475E:  ADD             R7, SP, #0xC
584760:  PUSH.W          {R11}
584764:  MOV             R5, R0
584766:  ADDW            R4, R5, #0x464
58476A:  LDRB.W          R0, [R5,#0x3A]
58476E:  MOVS            R2, #4
584770:  CMP             R1, #0
584772:  BFI.W           R0, R2, #3, #0x1D
584776:  STRB.W          R0, [R5,#0x3A]
58477A:  BNE             loc_584792
58477C:  LDR             R0, [R4]; this
58477E:  CBZ             R0, loc_584786
584780:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
584784:  CBNZ            R0, loc_584792
584786:  LDR.W           R0, [R5,#0x42C]
58478A:  BIC.W           R0, R0, #0x10
58478E:  STR.W           R0, [R5,#0x42C]
584792:  MOV.W           R0, #0xFFFFFFFF; int
584796:  LDR             R6, [R4]
584798:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
58479C:  CMP             R6, R0
58479E:  BNE             loc_584836
5847A0:  LDRSH.W         R0, [R5,#0x26]
5847A4:  SUB.W           R1, R0, #0x254
5847A8:  CMP             R1, #4
5847AA:  BCS             loc_5847E6
5847AC:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x5847B6)
5847AE:  MOVW            R1, #(byte_713E84 - 0x712330)
5847B2:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
5847B4:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
5847B6:  LDRB            R0, [R0,R1]
5847B8:  CMP             R0, #1
5847BA:  BNE             loc_584836
5847BC:  LDRB.W          R0, [R5,#0x42C]
5847C0:  LSLS            R0, R0, #0x18
5847C2:  BPL             loc_58482E
5847C4:  LDR             R0, [R4]
5847C6:  MOVS            R1, #0x19
5847C8:  MOVS            R2, #1
5847CA:  ADDW            R5, R5, #0x42C
5847CE:  BLX             j__ZN10CPlayerPed23DoesPlayerWantNewWeaponE11eWeaponTypeb; CPlayerPed::DoesPlayerWantNewWeapon(eWeaponType,bool)
5847D2:  MOV             R1, R0
5847D4:  LDR             R0, [R4]
5847D6:  CMP             R1, #1
5847D8:  BNE             loc_58481E
5847DA:  MOVS            R1, #0x19
5847DC:  MOVS            R2, #5
5847DE:  MOVS            R3, #1
5847E0:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
5847E4:  B               loc_584826
5847E6:  MOVW            R1, #0x1C9
5847EA:  CMP             R0, R1
5847EC:  BNE             loc_584836
5847EE:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x5847F8)
5847F0:  MOVW            R1, #(byte_713D44 - 0x712330)
5847F4:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
5847F6:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
5847F8:  LDRB            R0, [R0,R1]
5847FA:  CMP             R0, #1
5847FC:  BNE             loc_584836
5847FE:  LDR             R0, [R4]
584800:  MOVS            R1, #2
584802:  MOVS            R2, #1
584804:  BLX             j__ZN10CPlayerPed23DoesPlayerWantNewWeaponE11eWeaponTypeb; CPlayerPed::DoesPlayerWantNewWeapon(eWeaponType,bool)
584808:  CMP             R0, #1
58480A:  BNE             loc_584818
58480C:  LDR             R0, [R4]
58480E:  MOVS            R1, #2
584810:  MOVS            R2, #1
584812:  MOVS            R3, #1
584814:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
584818:  MOVW            R0, #0x14D
58481C:  B               loc_584832
58481E:  MOVS            R1, #0x19
584820:  MOVS            R2, #5
584822:  BLX             j__ZN4CPed9GrantAmmoE11eWeaponTypej; CPed::GrantAmmo(eWeaponType,uint)
584826:  LDR             R0, [R5]
584828:  BIC.W           R0, R0, #0x80
58482C:  STR             R0, [R5]
58482E:  MOVW            R0, #(elf_hash_bucket+0x61); this
584832:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
584836:  LDR             R0, [R4]; this
584838:  CMP             R0, #0
58483A:  ITT NE
58483C:  MOVNE           R1, R4; CEntity **
58483E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
584842:  MOVS            R0, #0
584844:  STR             R0, [R4]
584846:  POP.W           {R11}
58484A:  POP             {R4-R7,PC}
