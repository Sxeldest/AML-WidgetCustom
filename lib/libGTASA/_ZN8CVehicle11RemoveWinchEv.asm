; =========================================================
; Game Engine Function: _ZN8CVehicle11RemoveWinchEv
; Address            : 0x58D5B0 - 0x58D5E4
; =========================================================

58D5B0:  PUSH            {R4,R6,R7,LR}
58D5B2:  ADD             R7, SP, #8
58D5B4:  MOV             R4, R0
58D5B6:  MOVW            R0, #0xA564
58D5BA:  ADD             R0, R4; this
58D5BC:  BLX             j__ZN6CRopes8FindRopeEj; CRopes::FindRope(uint)
58D5C0:  CMP             R0, #0
58D5C2:  BLT             loc_58D5D6
58D5C4:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x58D5CE)
58D5C6:  MOV.W           R2, #0x328
58D5CA:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
58D5CC:  LDR             R1, [R1]; CRopes::aRopes ...
58D5CE:  MLA.W           R0, R0, R2, R1; this
58D5D2:  BLX             j__ZN5CRope6RemoveEv; CRope::Remove(void)
58D5D6:  LDRB.W          R0, [R4,#0x4B2]
58D5DA:  AND.W           R0, R0, #0x9F
58D5DE:  STRB.W          R0, [R4,#0x4B2]
58D5E2:  POP             {R4,R6,R7,PC}
