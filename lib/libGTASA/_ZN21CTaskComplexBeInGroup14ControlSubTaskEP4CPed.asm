; =========================================================
; Game Engine Function: _ZN21CTaskComplexBeInGroup14ControlSubTaskEP4CPed
; Address            : 0x4EED08 - 0x4EED1E
; =========================================================

4EED08:  PUSH            {R4,R5,R7,LR}
4EED0A:  ADD             R7, SP, #8
4EED0C:  MOV             R4, R1
4EED0E:  MOV             R5, R0
4EED10:  BLX             j__ZN21CTaskComplexBeInGroup25MonitorSecondaryGroupTaskEP4CPed; CTaskComplexBeInGroup::MonitorSecondaryGroupTask(CPed *)
4EED14:  MOV             R0, R5; this
4EED16:  MOV             R1, R4; CPed *
4EED18:  POP.W           {R4,R5,R7,LR}
4EED1C:  B               _ZN21CTaskComplexBeInGroup20MonitorMainGroupTaskEP4CPed; CTaskComplexBeInGroup::MonitorMainGroupTask(CPed *)
