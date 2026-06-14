; =========================================================
; Game Engine Function: _ZN23CTaskComplexEvasiveStep17CreateNextSubTaskEP4CPed
; Address            : 0x50B038 - 0x50B06C
; =========================================================

50B038:  PUSH            {R4,R6,R7,LR}
50B03A:  ADD             R7, SP, #8
50B03C:  MOV             R4, R0
50B03E:  LDR             R0, [R4,#8]
50B040:  LDR             R1, [R0]
50B042:  LDR             R1, [R1,#0x14]
50B044:  BLX             R1
50B046:  MOVW            R1, #0x1F5
50B04A:  CMP             R0, R1
50B04C:  BEQ             loc_50B060
50B04E:  MOVW            R1, #0x386
50B052:  CMP             R0, R1
50B054:  ITT NE
50B056:  MOVNE           R0, #0
50B058:  POPNE           {R4,R6,R7,PC}
50B05A:  MOVW            R1, #0x1F5
50B05E:  B               loc_50B064
50B060:  MOVW            R1, #0x516; int
50B064:  MOV             R0, R4; this
50B066:  POP.W           {R4,R6,R7,LR}
50B06A:  B               _ZNK23CTaskComplexEvasiveStep13CreateSubTaskEi; CTaskComplexEvasiveStep::CreateSubTask(int)
