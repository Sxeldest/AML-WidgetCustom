; =========================================================
; Game Engine Function: _ZN5CGame19DrasticTidyUpMemoryEb
; Address            : 0x3F467C - 0x3F46B4
; =========================================================

3F467C:  LDR             R0, =(byte_9595BC - 0x3F4682)
3F467E:  ADD             R0, PC; byte_9595BC
3F4680:  LDRB            R0, [R0]
3F4682:  CMP             R0, #0
3F4684:  IT NE
3F4686:  BXNE            LR
3F4688:  PUSH            {R4,R5,R7,LR}
3F468A:  ADD             R7, SP, #0x10+var_8
3F468C:  LDR             R4, =(byte_9595BC - 0x3F4694)
3F468E:  MOVS            R0, #(stderr+1); this
3F4690:  ADD             R4, PC; byte_9595BC
3F4692:  STRB            R0, [R4]
3F4694:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
3F4698:  MOVS            R0, #0; this
3F469A:  MOVS            R1, #0; bool
3F469C:  MOVS            R5, #0
3F469E:  BLX             j__ZN5CGame12TidyUpMemoryEbb; CGame::TidyUpMemory(bool,bool)
3F46A2:  MOVS            R0, #0; this
3F46A4:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
3F46A8:  BLX             j__ZN6CTimer6ResumeEv; CTimer::Resume(void)
3F46AC:  STRB            R5, [R4]
3F46AE:  POP.W           {R4,R5,R7,LR}
3F46B2:  BX              LR
