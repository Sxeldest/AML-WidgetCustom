; =========================================================
; Game Engine Function: _ZN7CWeapon13UpdateWeaponsEv
; Address            : 0x5DB898 - 0x5DB8B0
; =========================================================

5DB898:  PUSH            {R7,LR}
5DB89A:  MOV             R7, SP
5DB89C:  BLX.W           j__ZN9CShotInfo6UpdateEv; CShotInfo::Update(void)
5DB8A0:  BLX.W           j__ZN10CExplosion6UpdateEv; CExplosion::Update(void)
5DB8A4:  BLX.W           j__ZN15CProjectileInfo6UpdateEv; CProjectileInfo::Update(void)
5DB8A8:  POP.W           {R7,LR}
5DB8AC:  B.W             sub_19AC84
