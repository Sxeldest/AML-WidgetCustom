; =========================================================
; Game Engine Function: _ZN7CObject13GetRopeHeightEv
; Address            : 0x455D34 - 0x455D50
; =========================================================

455D34:  PUSH            {R7,LR}
455D36:  MOV             R7, SP
455D38:  BLX             j__ZN6CRopes8FindRopeEj; CRopes::FindRope(uint)
455D3C:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x455D46)
455D3E:  MOV.W           R2, #0x328
455D42:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
455D44:  LDR             R1, [R1]; CRopes::aRopes ...
455D46:  MLA.W           R0, R0, R2, R1
455D4A:  LDR.W           R0, [R0,#0x31C]
455D4E:  POP             {R7,PC}
