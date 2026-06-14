; =========================================================
; Game Engine Function: _ZN24CTaskSimpleGoToPointFineC2Ef7CVectorfP7CEntity
; Address            : 0x5177F0 - 0x51781C
; =========================================================

5177F0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleGoToPointFine::CTaskSimpleGoToPointFine(float, CVector, float, CEntity *)'
5177F2:  ADD             R7, SP, #8
5177F4:  SUB             SP, SP, #0x10
5177F6:  MOV             R4, R1
5177F8:  LDRD.W          R1, R12, [R7,#arg_0]
5177FC:  STRD.W          R2, R3, [SP,#0x18+var_14]
517800:  ADD             R2, SP, #0x18+var_14; CVector *
517802:  STR             R1, [SP,#0x18+var_C]
517804:  MOVS            R1, #4; int
517806:  MOV             R3, R12; float
517808:  BLX             j__ZN15CTaskSimpleGoToC2EiRK7CVectorf; CTaskSimpleGoTo::CTaskSimpleGoTo(int,CVector const&,float)
51780C:  LDR             R1, =(_ZTV24CTaskSimpleGoToPointFine_ptr - 0x517814)
51780E:  STR             R4, [R0,#0x20]
517810:  ADD             R1, PC; _ZTV24CTaskSimpleGoToPointFine_ptr
517812:  LDR             R1, [R1]; `vtable for'CTaskSimpleGoToPointFine ...
517814:  ADDS            R1, #8
517816:  STR             R1, [R0]
517818:  ADD             SP, SP, #0x10
51781A:  POP             {R4,R6,R7,PC}
