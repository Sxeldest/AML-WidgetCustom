; =========================================================
; Game Engine Function: _ZN32CTaskComplexScreamInCarThenLeave17CreateNextSubTaskEP4CPed
; Address            : 0x4F9C5C - 0x4F9C94
; =========================================================

4F9C5C:  PUSH            {R4,R5,R7,LR}
4F9C5E:  ADD             R7, SP, #8
4F9C60:  MOV             R5, R0
4F9C62:  MOV             R4, R1
4F9C64:  LDR             R0, [R5,#8]
4F9C66:  LDR             R1, [R0]
4F9C68:  LDR             R1, [R1,#0x14]
4F9C6A:  BLX             R1
4F9C6C:  MOVW            R1, #0x2C2
4F9C70:  CMP             R0, R1
4F9C72:  BEQ             loc_4F9C86
4F9C74:  MOVW            R1, #0x2C5
4F9C78:  CMP             R0, R1
4F9C7A:  ITT NE
4F9C7C:  MOVNE           R0, #0
4F9C7E:  POPNE           {R4,R5,R7,PC}
4F9C80:  MOVW            R1, #0x2C2
4F9C84:  B               loc_4F9C8A
4F9C86:  MOVW            R1, #0x516; int
4F9C8A:  MOV             R0, R5; this
4F9C8C:  MOV             R2, R4; CPed *
4F9C8E:  POP.W           {R4,R5,R7,LR}
4F9C92:  B               _ZN32CTaskComplexScreamInCarThenLeave13CreateSubTaskEiP4CPed; CTaskComplexScreamInCarThenLeave::CreateSubTask(int,CPed *)
