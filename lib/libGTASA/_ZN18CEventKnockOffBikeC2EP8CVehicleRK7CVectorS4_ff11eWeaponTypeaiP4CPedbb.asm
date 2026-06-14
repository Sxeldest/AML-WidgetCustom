; =========================================================
; Game Engine Function: _ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb
; Address            : 0x3753EC - 0x37548E
; =========================================================

3753EC:  PUSH            {R4-R7,LR}; Alternative name is 'CEventKnockOffBike::CEventKnockOffBike(CVehicle *, CVector const&, CVector const&, float, float, eWeaponType, signed char, int, CPed *, bool, bool)'
3753EE:  ADD             R7, SP, #0xC
3753F0:  PUSH.W          {R8}
3753F4:  MOV             R4, R0
3753F6:  LDR             R0, =(_ZTV18CEventKnockOffBike_ptr - 0x375402)
3753F8:  MOV.W           R12, #0
3753FC:  MOV             R5, R4
3753FE:  ADD             R0, PC; _ZTV18CEventKnockOffBike_ptr
375400:  STRB.W          R12, [R4,#8]
375404:  LDR.W           R8, [R7,#arg_1C]
375408:  CMP             R1, #0
37540A:  LDR             R0, [R0]; `vtable for'CEventKnockOffBike ...
37540C:  VLDR            S0, [R7,#arg_0]
375410:  ADD.W           R0, R0, #8
375414:  STRD.W          R0, R12, [R4]
375418:  VLDR            D16, [R2]
37541C:  LDR             R2, [R2,#8]
37541E:  STR             R2, [R4,#0x14]
375420:  VSTR            D16, [R4,#0xC]
375424:  LDR             R0, [R7,#arg_14]
375426:  VLDR            D16, [R3]
37542A:  LDR             R2, [R3,#8]
37542C:  LDRD.W          R6, LR, [R7,#arg_8]
375430:  STR.W           R0, [R5,#0x30]!
375434:  LDR             R3, [R7,#arg_10]
375436:  STR.W           R2, [R5,#-0x10]
37543A:  STR.W           R3, [R5,#-4]
37543E:  LDRB            R3, [R5,#5]
375440:  LDR             R2, [R7,#arg_18]
375442:  VLDR            S2, [R7,#arg_4]
375446:  AND.W           R3, R3, #0xFC
37544A:  ORR.W           R2, R2, R8,LSL#1
37544E:  VSTR            S0, [R5,#-0xC]
375452:  ORR.W           R2, R2, R3
375456:  VSTR            S2, [R5,#-8]
37545A:  STRB.W          LR, [R5,#4]
37545E:  STRB            R6, [R5,#6]
375460:  STRB.W          R12, [R5,#7]
375464:  VSTR            D16, [R5,#-0x18]
375468:  STRB            R2, [R5,#5]
37546A:  MOV             R2, R5
37546C:  STR.W           R1, [R2,#8]!
375470:  BEQ             loc_37547C
375472:  MOV             R0, R1; this
375474:  MOV             R1, R2; CEntity **
375476:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37547A:  LDR             R0, [R5]; this
37547C:  CMP             R0, #0
37547E:  ITT NE
375480:  MOVNE           R1, R5; CEntity **
375482:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
375486:  MOV             R0, R4
375488:  POP.W           {R8}
37548C:  POP             {R4-R7,PC}
