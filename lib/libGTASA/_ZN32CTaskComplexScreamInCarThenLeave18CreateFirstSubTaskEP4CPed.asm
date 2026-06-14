; =========================================================
; Game Engine Function: _ZN32CTaskComplexScreamInCarThenLeave18CreateFirstSubTaskEP4CPed
; Address            : 0x4F9E1C - 0x4F9E3E
; =========================================================

4F9E1C:  PUSH            {R4,R5,R7,LR}
4F9E1E:  ADD             R7, SP, #8
4F9E20:  MOV             R4, R1
4F9E22:  MOV             R5, R0
4F9E24:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
4F9E28:  CMP             R0, #0
4F9E2A:  MOVW            R1, #0x2C2
4F9E2E:  IT EQ
4F9E30:  MOVWEQ          R1, #0x2C5; int
4F9E34:  MOV             R0, R5; this
4F9E36:  MOV             R2, R4; CPed *
4F9E38:  POP.W           {R4,R5,R7,LR}
4F9E3C:  B               _ZN32CTaskComplexScreamInCarThenLeave13CreateSubTaskEiP4CPed; CTaskComplexScreamInCarThenLeave::CreateSubTask(int,CPed *)
