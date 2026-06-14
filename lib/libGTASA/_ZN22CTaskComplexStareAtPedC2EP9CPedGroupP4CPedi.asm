; =========================================================
; Game Engine Function: _ZN22CTaskComplexStareAtPedC2EP9CPedGroupP4CPedi
; Address            : 0x5197EC - 0x519844
; =========================================================

5197EC:  PUSH            {R4-R7,LR}
5197EE:  ADD             R7, SP, #0xC
5197F0:  PUSH.W          {R8,R9,R11}
5197F4:  MOV             R8, R3
5197F6:  MOV             R6, R2
5197F8:  MOV             R5, R1
5197FA:  MOV             R4, R0
5197FC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
519800:  LDR             R0, =(_ZTV22CTaskComplexStareAtPed_ptr - 0x51980E)
519802:  MOV.W           R9, #0
519806:  STRH.W          R9, [R4,#0x20]
51980A:  ADD             R0, PC; _ZTV22CTaskComplexStareAtPed_ptr
51980C:  STR             R5, [R4,#0xC]
51980E:  STRD.W          R9, R9, [R4,#0x18]
519812:  LDR             R0, [R0]; `vtable for'CTaskComplexStareAtPed ...
519814:  ADDS            R0, #8
519816:  STR             R0, [R4]
519818:  MOV             R0, R6; CEntity *
51981A:  BLX             j__Z20IsEntityPointerValidP7CEntity; IsEntityPointerValid(CEntity *)
51981E:  ADD.W           R1, R4, #0x10; CEntity **
519822:  CMP             R0, #1
519824:  BNE             loc_519830
519826:  MOV             R0, R6; this
519828:  STR             R6, [R1]
51982A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51982E:  B               loc_519834
519830:  STR.W           R9, [R1]
519834:  MOVS            R0, #0
519836:  STR.W           R8, [R4,#0x14]
51983A:  STRH            R0, [R4,#0x24]
51983C:  MOV             R0, R4
51983E:  POP.W           {R8,R9,R11}
519842:  POP             {R4-R7,PC}
