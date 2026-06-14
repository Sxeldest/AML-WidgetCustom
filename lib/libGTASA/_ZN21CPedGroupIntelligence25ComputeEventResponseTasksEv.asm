; =========================================================
; Game Engine Function: _ZN21CPedGroupIntelligence25ComputeEventResponseTasksEv
; Address            : 0x4B44B2 - 0x4B44D6
; =========================================================

4B44B2:  PUSH            {R4,R6,R7,LR}
4B44B4:  ADD             R7, SP, #8
4B44B6:  MOV             R4, R0
4B44B8:  ADD.W           R1, R4, #0xC; CPedTaskPair *
4B44BC:  MOVS            R2, #0; CPed *
4B44BE:  BLX             j__ZN21CPedGroupIntelligence10FlushTasksEP12CPedTaskPairP4CPed; CPedGroupIntelligence::FlushTasks(CPedTaskPair *,CPed *)
4B44C2:  ADD.W           R1, R4, #0xAC; CPedTaskPair *
4B44C6:  MOVS            R2, #0; CPed *
4B44C8:  BLX             j__ZN21CPedGroupIntelligence10FlushTasksEP12CPedTaskPairP4CPed; CPedGroupIntelligence::FlushTasks(CPedTaskPair *,CPed *)
4B44CC:  LDRD.W          R1, R0, [R4]; CEventGroupEvent *
4B44D0:  POP.W           {R4,R6,R7,LR}
4B44D4:  B               _ZN18CGroupEventHandler25ComputeEventResponseTasksERK16CEventGroupEventP9CPedGroup; CGroupEventHandler::ComputeEventResponseTasks(CEventGroupEvent const&,CPedGroup *)
