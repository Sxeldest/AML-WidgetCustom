; =========================================================
; Game Engine Function: _ZN29CTaskComplexProstituteSolicitD0Ev
; Address            : 0x51B43C - 0x51B486
; =========================================================

51B43C:  PUSH            {R4,R5,R7,LR}
51B43E:  ADD             R7, SP, #8
51B440:  MOV             R4, R0
51B442:  LDR             R0, =(_ZTV29CTaskComplexProstituteSolicit_ptr - 0x51B448)
51B444:  ADD             R0, PC; _ZTV29CTaskComplexProstituteSolicit_ptr
51B446:  LDR             R0, [R0]; `vtable for'CTaskComplexProstituteSolicit ...
51B448:  ADDS            R0, #8
51B44A:  STR             R0, [R4]
51B44C:  MOV.W           R0, #0xFFFFFFFF; int
51B450:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
51B454:  CBZ             R0, loc_51B478
51B456:  LDR.W           R5, [R0,#0x444]
51B45A:  LDR.W           R0, [R5,#0xA4]!; this
51B45E:  CBZ             R0, loc_51B46A
51B460:  MOV             R1, R5; CEntity **
51B462:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51B466:  MOVS            R0, #0
51B468:  STR             R0, [R5]
51B46A:  LDRH            R0, [R4,#0x2C]
51B46C:  TST.W           R0, #0x100
51B470:  ITT NE
51B472:  BICNE.W         R0, R0, #0x100
51B476:  STRHNE          R0, [R4,#0x2C]
51B478:  MOV             R0, R4; this
51B47A:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
51B47E:  POP.W           {R4,R5,R7,LR}
51B482:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
