; =========================================================
; Game Engine Function: _ZN23CTaskInteriorShopKeeperD0Ev
; Address            : 0x529378 - 0x52939C
; =========================================================

529378:  LDR             R1, =(_ZTV23CTaskInteriorShopKeeper_ptr - 0x52937E)
52937A:  ADD             R1, PC; _ZTV23CTaskInteriorShopKeeper_ptr
52937C:  LDR             R2, [R1]; `vtable for'CTaskInteriorShopKeeper ...
52937E:  LDR             R1, [R0,#0x18]
529380:  ADDS            R2, #8
529382:  STR             R2, [R0]
529384:  CMP             R1, #0
529386:  ITT NE
529388:  MOVNE           R2, #0
52938A:  STRBNE          R2, [R1,#1]
52938C:  PUSH            {R7,LR}
52938E:  MOV             R7, SP
529390:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
529394:  POP.W           {R7,LR}
529398:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
