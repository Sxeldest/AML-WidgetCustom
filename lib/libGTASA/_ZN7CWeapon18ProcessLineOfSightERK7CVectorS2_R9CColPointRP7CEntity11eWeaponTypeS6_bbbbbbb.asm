; =========================================================
; Game Engine Function: _ZN7CWeapon18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntity11eWeaponTypeS6_bbbbbbb
; Address            : 0x5DF6F8 - 0x5DF748
; =========================================================

5DF6F8:  PUSH            {R4-R7,LR}
5DF6FA:  ADD             R7, SP, #0xC
5DF6FC:  PUSH.W          {R8}
5DF700:  SUB             SP, SP, #0x20
5DF702:  MOV             R8, R3
5DF704:  MOV             R5, R2
5DF706:  MOV             R6, R1
5DF708:  MOV             R4, R0
5DF70A:  BLX.W           j__ZN6CBirds13HandleGunShotEPK7CVectorS2_; CBirds::HandleGunShot(CVector const*,CVector const*)
5DF70E:  MOV             R0, R4; this
5DF710:  MOV             R1, R6; CVector *
5DF712:  BLX.W           j__ZN8CShadows20GunShotSetsOilOnFireEPK7CVectorS2_; CShadows::GunShotSetsOilOnFire(CVector const*,CVector const*)
5DF716:  MOVS            R0, #1
5DF718:  LDRD.W          R1, R12, [R7,#arg_C]
5DF71C:  LDRD.W          R2, R3, [R7,#arg_14]
5DF720:  STR             R0, [SP,#0x30+var_14]
5DF722:  LDR             R0, [R7,#arg_20]
5DF724:  STR             R0, [SP,#0x30+var_18]
5DF726:  MOVS            R0, #0
5DF728:  STR             R0, [SP,#0x30+var_1C]
5DF72A:  LDR             R0, [R7,#arg_8]
5DF72C:  STRD.W          R2, R3, [SP,#0x30+var_24]
5DF730:  MOV             R2, R5
5DF732:  STMEA.W         SP, {R0,R1,R12}
5DF736:  MOV             R0, R4
5DF738:  MOV             R1, R6
5DF73A:  MOV             R3, R8
5DF73C:  BLX.W           j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
5DF740:  ADD             SP, SP, #0x20 ; ' '
5DF742:  POP.W           {R8}
5DF746:  POP             {R4-R7,PC}
