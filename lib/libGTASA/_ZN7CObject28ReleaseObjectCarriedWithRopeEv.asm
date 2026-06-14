; =========================================================
; Game Engine Function: _ZN7CObject28ReleaseObjectCarriedWithRopeEv
; Address            : 0x455D98 - 0x455DB6
; =========================================================

455D98:  PUSH            {R7,LR}
455D9A:  MOV             R7, SP
455D9C:  BLX             j__ZN6CRopes8FindRopeEj; CRopes::FindRope(uint)
455DA0:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x455DAA)
455DA2:  MOV.W           R2, #0x328
455DA6:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
455DA8:  LDR             R1, [R1]; CRopes::aRopes ...
455DAA:  MLA.W           R0, R0, R2, R1; this
455DAE:  POP.W           {R7,LR}
455DB2:  B.W             sub_19666C
