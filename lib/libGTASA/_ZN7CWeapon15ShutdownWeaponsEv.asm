; =========================================================
; Game Engine Function: _ZN7CWeapon15ShutdownWeaponsEv
; Address            : 0x5DB86C - 0x5DB892
; =========================================================

5DB86C:  PUSH            {R7,LR}
5DB86E:  MOV             R7, SP
5DB870:  BLX.W           j__ZN11CWeaponInfo8ShutdownEv; CWeaponInfo::Shutdown(void)
5DB874:  BLX.W           j__ZN9CShotInfo8ShutdownEv; CShotInfo::Shutdown(void)
5DB878:  BLX.W           j__ZN10CExplosion8ShutdownEv; CExplosion::Shutdown(void)
5DB87C:  BLX.W           j__ZN15CProjectileInfo8ShutdownEv; CProjectileInfo::Shutdown(void)
5DB880:  BLX.W           j__ZN11CBulletInfo8ShutdownEv; CBulletInfo::Shutdown(void)
5DB884:  LDR             R0, =(_ZN7CWeapon16ms_PelletTestColE_ptr - 0x5DB88A)
5DB886:  ADD             R0, PC; _ZN7CWeapon16ms_PelletTestColE_ptr
5DB888:  LDR             R0, [R0]; this
5DB88A:  POP.W           {R7,LR}
5DB88E:  B.W             j_j__ZN9CColModel22RemoveCollisionVolumesEv; j_CColModel::RemoveCollisionVolumes(void)
