; =========================================================
; Game Engine Function: _ZN7CObject24GetObjectCarriedWithRopeEv
; Address            : 0x455D78 - 0x455D94
; =========================================================

455D78:  PUSH            {R7,LR}
455D7A:  MOV             R7, SP
455D7C:  BLX             j__ZN6CRopes8FindRopeEj; CRopes::FindRope(uint)
455D80:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x455D8A)
455D82:  MOV.W           R2, #0x328
455D86:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
455D88:  LDR             R1, [R1]; CRopes::aRopes ...
455D8A:  MLA.W           R0, R0, R2, R1
455D8E:  LDR.W           R0, [R0,#0x318]
455D92:  POP             {R7,PC}
