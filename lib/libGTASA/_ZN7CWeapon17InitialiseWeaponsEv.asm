; =========================================================
; Game Engine Function: _ZN7CWeapon17InitialiseWeaponsEv
; Address            : 0x5DB838 - 0x5DB864
; =========================================================

5DB838:  PUSH            {R7,LR}
5DB83A:  MOV             R7, SP
5DB83C:  BLX.W           j__ZN11CWeaponInfo10InitialiseEv; CWeaponInfo::Initialise(void)
5DB840:  BLX.W           j__ZN9CShotInfo10InitialiseEv; CShotInfo::Initialise(void)
5DB844:  BLX.W           j__ZN10CExplosion10InitialiseEv; CExplosion::Initialise(void)
5DB848:  BLX.W           j__ZN15CProjectileInfo10InitialiseEv; CProjectileInfo::Initialise(void)
5DB84C:  BLX.W           j__ZN11CBulletInfo10InitialiseEv; CBulletInfo::Initialise(void)
5DB850:  LDR             R0, =(_ZN7CWeapon13ms_bTakePhotoE_ptr - 0x5DB85A)
5DB852:  MOVS            R2, #0
5DB854:  LDR             R1, =(_ZN7CWeapon26ms_bPhotographHasBeenTakenE_ptr - 0x5DB85C)
5DB856:  ADD             R0, PC; _ZN7CWeapon13ms_bTakePhotoE_ptr
5DB858:  ADD             R1, PC; _ZN7CWeapon26ms_bPhotographHasBeenTakenE_ptr
5DB85A:  LDR             R0, [R0]; CWeapon::ms_bTakePhoto ...
5DB85C:  LDR             R1, [R1]; CWeapon::ms_bPhotographHasBeenTaken ...
5DB85E:  STRB            R2, [R0]; CWeapon::ms_bTakePhoto
5DB860:  STRB            R2, [R1]; CWeapon::ms_bPhotographHasBeenTaken
5DB862:  POP             {R7,PC}
