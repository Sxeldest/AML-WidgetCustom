; =========================================================
; Game Engine Function: _ZN23CAEPedWeaponAudioEntity10InitialiseEP7CEntity
; Address            : 0x39DED8 - 0x39DEEE
; =========================================================

39DED8:  PUSH            {R4,R6,R7,LR}
39DEDA:  ADD             R7, SP, #8
39DEDC:  MOV             R4, R0
39DEDE:  STR.W           R1, [R4,#0xA4]
39DEE2:  BLX             j__ZN20CAEWeaponAudioEntity10InitialiseEv; CAEWeaponAudioEntity::Initialise(void)
39DEE6:  MOVS            R0, #1
39DEE8:  STRB.W          R0, [R4,#0xA0]
39DEEC:  POP             {R4,R6,R7,PC}
