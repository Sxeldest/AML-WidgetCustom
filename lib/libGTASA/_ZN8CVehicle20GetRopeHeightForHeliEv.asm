; =========================================================
; Game Engine Function: _ZN8CVehicle20GetRopeHeightForHeliEv
; Address            : 0x58D658 - 0x58D676
; =========================================================

58D658:  PUSH            {R7,LR}
58D65A:  MOV             R7, SP
58D65C:  ADDS            R0, #0x1D; this
58D65E:  BLX             j__ZN6CRopes8FindRopeEj; CRopes::FindRope(uint)
58D662:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x58D66C)
58D664:  MOV.W           R2, #0x328
58D668:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
58D66A:  LDR             R1, [R1]; CRopes::aRopes ...
58D66C:  MLA.W           R0, R0, R2, R1
58D670:  LDR.W           R0, [R0,#0x31C]
58D674:  POP             {R7,PC}
