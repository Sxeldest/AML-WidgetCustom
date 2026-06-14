; =========================================================
; Game Engine Function: _ZN13CEventHandler26ComputeOnEscalatorResponseEP6CEventP5CTaskS3_
; Address            : 0x383ABC - 0x383AEA
; =========================================================

383ABC:  PUSH            {R4,R6,R7,LR}
383ABE:  ADD             R7, SP, #8
383AC0:  SUB             SP, SP, #8
383AC2:  MOV             R4, R0
383AC4:  MOVS            R0, #dword_20; this
383AC6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383ACA:  MOV.W           R1, #0x41000000
383ACE:  MOVS            R2, #1; bool
383AD0:  STR             R1, [SP,#0x10+var_10]; float
383AD2:  MOVS            R1, #0; int
383AD4:  MOVS            R3, #0; bool
383AD6:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf_0; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
383ADA:  LDR             R1, =(_ZTV22CTaskSimpleOnEscalator_ptr - 0x383AE0)
383ADC:  ADD             R1, PC; _ZTV22CTaskSimpleOnEscalator_ptr
383ADE:  LDR             R1, [R1]; `vtable for'CTaskSimpleOnEscalator ...
383AE0:  ADDS            R1, #8
383AE2:  STR             R1, [R0]
383AE4:  STR             R0, [R4,#0x24]
383AE6:  ADD             SP, SP, #8
383AE8:  POP             {R4,R6,R7,PC}
