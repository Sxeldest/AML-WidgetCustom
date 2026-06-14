; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSwatRope17CreateNextSubTaskEP4CPed
; Address            : 0x511C8A - 0x511CBA
; =========================================================

511C8A:  PUSH            {R4,R6,R7,LR}
511C8C:  ADD             R7, SP, #8
511C8E:  LDR             R0, [R0,#8]
511C90:  MOV             R4, R1
511C92:  LDR             R1, [R0]
511C94:  LDR             R1, [R1,#0x14]
511C96:  BLX             R1
511C98:  CMP             R0, #0xC8
511C9A:  MOVW            R1, #0x516
511C9E:  IT NE
511CA0:  CMPNE           R0, #0xCA
511CA2:  BEQ             loc_511CB2
511CA4:  MOVW            R1, #0x1A7
511CA8:  CMP             R0, R1
511CAA:  ITT NE
511CAC:  MOVNE           R0, #0; this
511CAE:  POPNE           {R4,R6,R7,PC}
511CB0:  MOVS            R1, #0xCA; int
511CB2:  MOV             R2, R4; CPed *
511CB4:  POP.W           {R4,R6,R7,LR}
511CB8:  B               _ZNK23CTaskComplexUseSwatRope13CreateSubTaskEiP4CPed; CTaskComplexUseSwatRope::CreateSubTask(int,CPed *)
