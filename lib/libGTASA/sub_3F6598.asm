; =========================================================
; Game Engine Function: sub_3F6598
; Address            : 0x3F6598 - 0x3F65AC
; =========================================================

3F6598:  PUSH.W          {R1-R11,LR}
3F659C:  MOV             R0, R8; this
3F659E:  ADDS            R1, R6, #4
3F65A0:  BLX             j__ZN26CAEGlobalWeaponAudioEntity21ServiceAmbientGunFireEv; CAEGlobalWeaponAudioEntity::ServiceAmbientGunFire(void)
3F65A4:  POP.W           {R1-R11,LR}
3F65A8:  B.W             sub_40AC40
