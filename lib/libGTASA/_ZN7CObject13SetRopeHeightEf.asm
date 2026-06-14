; =========================================================
; Game Engine Function: _ZN7CObject13SetRopeHeightEf
; Address            : 0x455D54 - 0x455D72
; =========================================================

455D54:  PUSH            {R4,R6,R7,LR}
455D56:  ADD             R7, SP, #8
455D58:  MOV             R4, R1
455D5A:  BLX             j__ZN6CRopes8FindRopeEj; CRopes::FindRope(uint)
455D5E:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x455D68)
455D60:  MOV.W           R2, #0x328
455D64:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
455D66:  LDR             R1, [R1]; CRopes::aRopes ...
455D68:  MLA.W           R0, R0, R2, R1
455D6C:  STR.W           R4, [R0,#0x31C]
455D70:  POP             {R4,R6,R7,PC}
