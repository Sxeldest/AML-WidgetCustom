; =========================================================
; Game Engine Function: _ZN23CTaskInteriorBeInOffice17CreateNextSubTaskEP4CPed
; Address            : 0x528EC4 - 0x528F10
; =========================================================

528EC4:  PUSH            {R4-R7,LR}
528EC6:  ADD             R7, SP, #0xC
528EC8:  PUSH.W          {R11}
528ECC:  SUB             SP, SP, #8
528ECE:  MOV             R4, R0
528ED0:  LDR.W           R0, [R1,#0x48C]
528ED4:  ORR.W           R0, R0, #0x80
528ED8:  STR.W           R0, [R1,#0x48C]
528EDC:  ADD             R1, SP, #0x18+var_14; int *
528EDE:  MOV             R0, R4; this
528EE0:  BLX             j__ZN23CTaskInteriorBeInOffice18GetInfoForPedToUseEPi; CTaskInteriorBeInOffice::GetInfoForPedToUse(int *)
528EE4:  MOVS            R0, #dword_1C; this
528EE6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
528EEA:  LDRD.W          R5, R4, [R4,#0x10]
528EEE:  LDR             R6, [SP,#0x18+var_14]
528EF0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
528EF4:  LDR             R1, =(_ZTV20CTaskInteriorUseInfo_ptr - 0x528EFA)
528EF6:  ADD             R1, PC; _ZTV20CTaskInteriorUseInfo_ptr
528EF8:  LDR             R1, [R1]; `vtable for'CTaskInteriorUseInfo ...
528EFA:  ADDS            R1, #8
528EFC:  STR             R1, [R0]
528EFE:  ADD.W           R1, R0, #0xC
528F02:  STM             R1!, {R4-R6}
528F04:  MOVS            R1, #0
528F06:  STRB            R1, [R0,#0x18]
528F08:  ADD             SP, SP, #8
528F0A:  POP.W           {R11}
528F0E:  POP             {R4-R7,PC}
