; =========================================================
; Game Engine Function: _ZN29CTaskComplexProstituteSolicitD2Ev
; Address            : 0x51B3F0 - 0x51B436
; =========================================================

51B3F0:  PUSH            {R4,R5,R7,LR}
51B3F2:  ADD             R7, SP, #8
51B3F4:  MOV             R4, R0
51B3F6:  LDR             R0, =(_ZTV29CTaskComplexProstituteSolicit_ptr - 0x51B3FC)
51B3F8:  ADD             R0, PC; _ZTV29CTaskComplexProstituteSolicit_ptr
51B3FA:  LDR             R0, [R0]; `vtable for'CTaskComplexProstituteSolicit ...
51B3FC:  ADDS            R0, #8
51B3FE:  STR             R0, [R4]
51B400:  MOV.W           R0, #0xFFFFFFFF; int
51B404:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
51B408:  CBZ             R0, loc_51B42C
51B40A:  LDR.W           R5, [R0,#0x444]
51B40E:  LDR.W           R0, [R5,#0xA4]!; this
51B412:  CBZ             R0, loc_51B41E
51B414:  MOV             R1, R5; CEntity **
51B416:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51B41A:  MOVS            R0, #0
51B41C:  STR             R0, [R5]
51B41E:  LDRH            R0, [R4,#0x2C]
51B420:  TST.W           R0, #0x100
51B424:  ITT NE
51B426:  BICNE.W         R0, R0, #0x100
51B42A:  STRHNE          R0, [R4,#0x2C]
51B42C:  MOV             R0, R4; this
51B42E:  POP.W           {R4,R5,R7,LR}
51B432:  B.W             sub_18EDE8
