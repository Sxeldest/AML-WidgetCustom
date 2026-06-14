; =========================================================
; Game Engine Function: _ZN8CVehicle21PickUpEntityWithWinchEP7CEntity
; Address            : 0x58D60C - 0x58D630
; =========================================================

58D60C:  PUSH            {R4,R6,R7,LR}
58D60E:  ADD             R7, SP, #8
58D610:  ADDS            R0, #0x1D; this
58D612:  MOV             R4, R1
58D614:  BLX             j__ZN6CRopes8FindRopeEj; CRopes::FindRope(uint)
58D618:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x58D622)
58D61A:  MOV.W           R2, #0x328
58D61E:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
58D620:  LDR             R1, [R1]; CRopes::aRopes ...
58D622:  MLA.W           R0, R0, R2, R1; this
58D626:  MOV             R1, R4; CEntity *
58D628:  POP.W           {R4,R6,R7,LR}
58D62C:  B.W             j_j__ZN5CRope12PickUpObjectEP7CEntity; j_CRope::PickUpObject(CEntity *)
