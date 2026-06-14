; =========================================================
; Game Engine Function: _ZN40CTaskSimpleWaitUntilLeaderAreaCodesMatch10CreateTaskEv
; Address            : 0x491CE8 - 0x491D4A
; =========================================================

491CE8:  PUSH            {R4,R5,R7,LR}
491CEA:  ADD             R7, SP, #8
491CEC:  SUB             SP, SP, #8
491CEE:  LDR             R0, =(UseDataFence_ptr - 0x491CF4)
491CF0:  ADD             R0, PC; UseDataFence_ptr
491CF2:  LDR             R0, [R0]; UseDataFence
491CF4:  LDRB            R4, [R0]
491CF6:  CBZ             R4, loc_491D0E
491CF8:  LDR             R0, =(UseDataFence_ptr - 0x491D00)
491CFA:  MOVS            R1, #(stderr+2); void *
491CFC:  ADD             R0, PC; UseDataFence_ptr
491CFE:  LDR             R5, [R0]; UseDataFence
491D00:  MOVS            R0, #0
491D02:  STRB            R0, [R5]
491D04:  SUB.W           R0, R7, #-var_A; this
491D08:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491D0C:  STRB            R4, [R5]
491D0E:  MOV             R0, SP; this
491D10:  MOVS            R1, #byte_4; void *
491D12:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491D16:  LDR             R0, [SP,#0x10+var_10]; this
491D18:  MOVS            R5, #0
491D1A:  ADDS            R1, R0, #1; unsigned int
491D1C:  BEQ             loc_491D26
491D1E:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
491D22:  MOV             R4, R0
491D24:  B               loc_491D28
491D26:  MOVS            R4, #0
491D28:  MOVS            R0, #dword_38; this
491D2A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
491D2E:  MOV             R1, R4; CPed *
491D30:  BLX             j__ZN34CTaskSimpleWaitUntilAreaCodesMatchC2EP4CPed_0; CTaskSimpleWaitUntilAreaCodesMatch::CTaskSimpleWaitUntilAreaCodesMatch(CPed *)
491D34:  LDR             R1, =(_ZTV40CTaskSimpleWaitUntilLeaderAreaCodesMatch_ptr - 0x491D3E)
491D36:  STRB.W          R5, [R0,#0x24]
491D3A:  ADD             R1, PC; _ZTV40CTaskSimpleWaitUntilLeaderAreaCodesMatch_ptr
491D3C:  STRB.W          R5, [R0,#0x34]
491D40:  LDR             R1, [R1]; `vtable for'CTaskSimpleWaitUntilLeaderAreaCodesMatch ...
491D42:  ADDS            R1, #8
491D44:  STR             R1, [R0]
491D46:  ADD             SP, SP, #8
491D48:  POP             {R4,R5,R7,PC}
