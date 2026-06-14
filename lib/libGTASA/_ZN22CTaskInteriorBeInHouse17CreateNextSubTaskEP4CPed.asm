; =========================================================
; Game Engine Function: _ZN22CTaskInteriorBeInHouse17CreateNextSubTaskEP4CPed
; Address            : 0x528C8C - 0x528CD8
; =========================================================

528C8C:  PUSH            {R4-R7,LR}
528C8E:  ADD             R7, SP, #0xC
528C90:  PUSH.W          {R11}
528C94:  SUB             SP, SP, #8
528C96:  MOV             R4, R0
528C98:  LDR.W           R0, [R1,#0x48C]
528C9C:  ADD             R2, SP, #0x18+var_14; int *
528C9E:  ORR.W           R0, R0, #0x80
528CA2:  STR.W           R0, [R1,#0x48C]
528CA6:  MOV             R0, R4; this
528CA8:  BLX             j__ZN22CTaskInteriorBeInHouse18GetInfoForPedToUseEP4CPedPi; CTaskInteriorBeInHouse::GetInfoForPedToUse(CPed *,int *)
528CAC:  MOVS            R0, #dword_1C; this
528CAE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
528CB2:  LDRD.W          R5, R4, [R4,#0x10]
528CB6:  LDR             R6, [SP,#0x18+var_14]
528CB8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
528CBC:  LDR             R1, =(_ZTV20CTaskInteriorUseInfo_ptr - 0x528CC2)
528CBE:  ADD             R1, PC; _ZTV20CTaskInteriorUseInfo_ptr
528CC0:  LDR             R1, [R1]; `vtable for'CTaskInteriorUseInfo ...
528CC2:  ADDS            R1, #8
528CC4:  STR             R1, [R0]
528CC6:  ADD.W           R1, R0, #0xC
528CCA:  STM             R1!, {R4-R6}
528CCC:  MOVS            R1, #0
528CCE:  STRB            R1, [R0,#0x18]
528CD0:  ADD             SP, SP, #8
528CD2:  POP.W           {R11}
528CD6:  POP             {R4-R7,PC}
