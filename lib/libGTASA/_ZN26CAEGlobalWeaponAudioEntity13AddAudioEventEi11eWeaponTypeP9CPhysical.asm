; =========================================================
; Game Engine Function: _ZN26CAEGlobalWeaponAudioEntity13AddAudioEventEi11eWeaponTypeP9CPhysical
; Address            : 0x39742C - 0x397474
; =========================================================

39742C:  PUSH            {R7,LR}
39742E:  MOV             R7, SP
397430:  MOV             R12, R1
397432:  CBZ             R3, locret_397458
397434:  SUB.W           LR, R12, #0x91; switch 5 cases
397438:  CMP.W           LR, #4
39743C:  IT HI
39743E:  POPHI           {R7,PC}
397440:  TBB.W           [PC,LR]; switch jump
397444:  DCB 3; jump table for switch statement
397445:  DCB 0xB
397446:  DCB 0xB
397447:  DCB 0x12
397448:  DCB 3
397449:  ALIGN 2
39744A:  MOV             R1, R2; jumptable 00397440 cases 145,149
39744C:  MOV             R2, R3
39744E:  MOV             R3, R12
397450:  POP.W           {R7,LR}
397454:  B.W             sub_18B954
397458:  POP             {R7,PC}
39745A:  MOV             R1, R2; jumptable 00397440 cases 146,147
39745C:  MOV             R2, R3
39745E:  MOV             R3, R12
397460:  POP.W           {R7,LR}
397464:  B.W             sub_19B8F4
397468:  MOV             R1, R2; jumptable 00397440 case 148
39746A:  MOV             R2, R3
39746C:  MOVS            R3, #0x94
39746E:  POP.W           {R7,LR}
397472:  B               _ZN26CAEGlobalWeaponAudioEntity14ProjectileFireE11eWeaponTypeP9CPhysicali; CAEGlobalWeaponAudioEntity::ProjectileFire(eWeaponType,CPhysical *,int)
