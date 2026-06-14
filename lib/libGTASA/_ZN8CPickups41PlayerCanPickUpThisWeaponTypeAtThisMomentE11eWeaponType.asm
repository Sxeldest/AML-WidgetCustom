; =========================================================
; Game Engine Function: _ZN8CPickups41PlayerCanPickUpThisWeaponTypeAtThisMomentE11eWeaponType
; Address            : 0x31F682 - 0x31F6AE
; =========================================================

31F682:  PUSH            {R7,LR}
31F684:  MOV             R7, SP
31F686:  MOVS            R1, #1
31F688:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
31F68C:  LDRB            R0, [R0,#0x18]
31F68E:  LSLS            R0, R0, #0x1E
31F690:  BMI             loc_31F6AA
31F692:  MOV.W           R0, #0xFFFFFFFF; int
31F696:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
31F69A:  LDR.W           R0, [R0,#0x440]; this
31F69E:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
31F6A2:  CMP             R0, #0
31F6A4:  ITT NE
31F6A6:  MOVNE           R0, #0
31F6A8:  POPNE           {R7,PC}
31F6AA:  MOVS            R0, #1
31F6AC:  POP             {R7,PC}
