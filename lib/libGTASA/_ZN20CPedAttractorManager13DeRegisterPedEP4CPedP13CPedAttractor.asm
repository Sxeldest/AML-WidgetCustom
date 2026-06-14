; =========================================================
; Game Engine Function: _ZN20CPedAttractorManager13DeRegisterPedEP4CPedP13CPedAttractor
; Address            : 0x4AAC38 - 0x4AACC0
; =========================================================

4AAC38:  PUSH            {R4-R7,LR}
4AAC3A:  ADD             R7, SP, #0xC
4AAC3C:  PUSH.W          {R11}
4AAC40:  MOV             R4, R2
4AAC42:  MOV             R5, R1
4AAC44:  MOV             R6, R0
4AAC46:  CBZ             R4, def_4AAC60; jumptable 004AAC60 default case
4AAC48:  MOV             R0, R6; this
4AAC4A:  MOV             R1, R5; CPed *
4AAC4C:  BLX             j__ZNK20CPedAttractorManager25IsPedRegisteredWithEffectEP4CPed; CPedAttractorManager::IsPedRegisteredWithEffect(CPed *)
4AAC50:  CMP             R0, #1
4AAC52:  BNE             def_4AAC60; jumptable 004AAC60 default case
4AAC54:  LDR             R0, [R4]
4AAC56:  LDR             R1, [R0]
4AAC58:  MOV             R0, R4
4AAC5A:  BLX             R1
4AAC5C:  CMP             R0, #9; switch 10 cases
4AAC5E:  BHI             def_4AAC60; jumptable 004AAC60 default case
4AAC60:  TBB.W           [PC,R0]; switch jump
4AAC64:  DCB 5; jump table for switch statement
4AAC65:  DCB 0xC
4AAC66:  DCB 0x10
4AAC67:  DCB 0x13
4AAC68:  DCB 0x16
4AAC69:  DCB 0x19
4AAC6A:  DCB 0x1C
4AAC6B:  DCB 0x1F
4AAC6C:  DCB 0x22
4AAC6D:  DCB 0x25
4AAC6E:  ADD.W           R3, R6, #0xC; jumptable 004AAC60 case 0
4AAC72:  B               loc_4AACB2
4AAC74:  MOVS            R0, #0; jumptable 004AAC60 default case
4AAC76:  POP.W           {R11}
4AAC7A:  POP             {R4-R7,PC}
4AAC7C:  MOV             R1, R5; jumptable 004AAC60 case 1
4AAC7E:  MOV             R2, R4
4AAC80:  MOV             R3, R6
4AAC82:  B               loc_4AACB6
4AAC84:  ADD.W           R3, R6, #0x18; jumptable 004AAC60 case 2
4AAC88:  B               loc_4AACB2
4AAC8A:  ADD.W           R3, R6, #0x24 ; '$'; jumptable 004AAC60 case 3
4AAC8E:  B               loc_4AACB2
4AAC90:  ADD.W           R3, R6, #0x30 ; '0'; jumptable 004AAC60 case 4
4AAC94:  B               loc_4AACB2
4AAC96:  ADD.W           R3, R6, #0x3C ; '<'; jumptable 004AAC60 case 5
4AAC9A:  B               loc_4AACB2
4AAC9C:  ADD.W           R3, R6, #0x48 ; 'H'; jumptable 004AAC60 case 6
4AACA0:  B               loc_4AACB2
4AACA2:  ADD.W           R3, R6, #0x54 ; 'T'; jumptable 004AAC60 case 7
4AACA6:  B               loc_4AACB2
4AACA8:  ADD.W           R3, R6, #0x60 ; '`'; jumptable 004AAC60 case 8
4AACAC:  B               loc_4AACB2
4AACAE:  ADD.W           R3, R6, #0x6C ; 'l'; jumptable 004AAC60 case 9
4AACB2:  MOV             R1, R5
4AACB4:  MOV             R2, R4
4AACB6:  POP.W           {R11}
4AACBA:  POP.W           {R4-R7,LR}
4AACBE:  B               _ZN20CPedAttractorManager13DeRegisterPedEP4CPedP13CPedAttractorR6SArrayIS3_E; CPedAttractorManager::DeRegisterPed(CPed *,CPedAttractor *,SArray<CPedAttractor *> &)
