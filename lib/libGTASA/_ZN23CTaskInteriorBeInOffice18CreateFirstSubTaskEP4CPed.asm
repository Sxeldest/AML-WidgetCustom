; =========================================================
; Game Engine Function: _ZN23CTaskInteriorBeInOffice18CreateFirstSubTaskEP4CPed
; Address            : 0x529040 - 0x52907E
; =========================================================

529040:  PUSH            {R4-R7,LR}
529042:  ADD             R7, SP, #0xC
529044:  PUSH.W          {R11}
529048:  SUB             SP, SP, #8
52904A:  ADD             R1, SP, #0x18+var_14; int *
52904C:  MOV             R4, R0
52904E:  BLX             j__ZN23CTaskInteriorBeInOffice18GetInfoForPedToUseEPi; CTaskInteriorBeInOffice::GetInfoForPedToUse(int *)
529052:  MOVS            R0, #dword_1C; this
529054:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529058:  LDRD.W          R5, R4, [R4,#0x10]
52905C:  LDR             R6, [SP,#0x18+var_14]
52905E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
529062:  LDR             R1, =(_ZTV20CTaskInteriorUseInfo_ptr - 0x529068)
529064:  ADD             R1, PC; _ZTV20CTaskInteriorUseInfo_ptr
529066:  LDR             R1, [R1]; `vtable for'CTaskInteriorUseInfo ...
529068:  ADDS            R1, #8
52906A:  STR             R1, [R0]
52906C:  ADD.W           R1, R0, #0xC
529070:  STM             R1!, {R4-R6}
529072:  MOVS            R1, #1
529074:  STRB            R1, [R0,#0x18]
529076:  ADD             SP, SP, #8
529078:  POP.W           {R11}
52907C:  POP             {R4-R7,PC}
