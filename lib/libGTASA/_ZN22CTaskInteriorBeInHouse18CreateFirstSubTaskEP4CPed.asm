; =========================================================
; Game Engine Function: _ZN22CTaskInteriorBeInHouse18CreateFirstSubTaskEP4CPed
; Address            : 0x528E18 - 0x528E56
; =========================================================

528E18:  PUSH            {R4-R7,LR}
528E1A:  ADD             R7, SP, #0xC
528E1C:  PUSH.W          {R11}
528E20:  SUB             SP, SP, #8
528E22:  ADD             R2, SP, #0x18+var_14; int *
528E24:  MOV             R4, R0
528E26:  BLX             j__ZN22CTaskInteriorBeInHouse18GetInfoForPedToUseEP4CPedPi; CTaskInteriorBeInHouse::GetInfoForPedToUse(CPed *,int *)
528E2A:  MOVS            R0, #dword_1C; this
528E2C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
528E30:  LDRD.W          R5, R4, [R4,#0x10]
528E34:  LDR             R6, [SP,#0x18+var_14]
528E36:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
528E3A:  LDR             R1, =(_ZTV20CTaskInteriorUseInfo_ptr - 0x528E40)
528E3C:  ADD             R1, PC; _ZTV20CTaskInteriorUseInfo_ptr
528E3E:  LDR             R1, [R1]; `vtable for'CTaskInteriorUseInfo ...
528E40:  ADDS            R1, #8
528E42:  STR             R1, [R0]
528E44:  ADD.W           R1, R0, #0xC
528E48:  STM             R1!, {R4-R6}
528E4A:  MOVS            R1, #1
528E4C:  STRB            R1, [R0,#0x18]
528E4E:  ADD             SP, SP, #8
528E50:  POP.W           {R11}
528E54:  POP             {R4-R7,PC}
