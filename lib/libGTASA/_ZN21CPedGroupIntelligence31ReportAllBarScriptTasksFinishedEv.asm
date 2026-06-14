; =========================================================
; Game Engine Function: _ZN21CPedGroupIntelligence31ReportAllBarScriptTasksFinishedEv
; Address            : 0x4B3C26 - 0x4B3C3E
; =========================================================

4B3C26:  PUSH            {R4,R6,R7,LR}
4B3C28:  ADD             R7, SP, #8
4B3C2A:  MOV             R4, R0
4B3C2C:  ADD.W           R1, R4, #0xC; CPedTaskPair *
4B3C30:  BLX             j__ZN21CPedGroupIntelligence22ReportAllTasksFinishedEP12CPedTaskPair; CPedGroupIntelligence::ReportAllTasksFinished(CPedTaskPair *)
4B3C34:  ADD.W           R1, R4, #0xAC; CPedTaskPair *
4B3C38:  POP.W           {R4,R6,R7,LR}
4B3C3C:  B               _ZN21CPedGroupIntelligence22ReportAllTasksFinishedEP12CPedTaskPair; CPedGroupIntelligence::ReportAllTasksFinished(CPedTaskPair *)
