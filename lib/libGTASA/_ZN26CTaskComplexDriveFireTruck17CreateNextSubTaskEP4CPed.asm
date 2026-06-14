; =========================================================
; Game Engine Function: _ZN26CTaskComplexDriveFireTruck17CreateNextSubTaskEP4CPed
; Address            : 0x5118A0 - 0x5118FC
; =========================================================

5118A0:  PUSH            {R4,R5,R7,LR}
5118A2:  ADD             R7, SP, #8
5118A4:  MOV             R4, R0
5118A6:  MOV             R5, R1
5118A8:  LDR             R0, [R4,#8]
5118AA:  LDR             R1, [R0]
5118AC:  LDR             R1, [R1,#0x14]
5118AE:  BLX             R1
5118B0:  CMP             R0, #0x6D ; 'm'
5118B2:  BEQ             loc_5118E2
5118B4:  MOVW            R1, #0x2C6; unsigned int
5118B8:  CMP             R0, R1
5118BA:  BNE             loc_5118EA
5118BC:  LDRB.W          R0, [R5,#0x485]
5118C0:  LSLS            R0, R0, #0x1F
5118C2:  ITT EQ
5118C4:  MOVEQ           R0, #0
5118C6:  POPEQ           {R4,R5,R7,PC}
5118C8:  MOVS            R0, #word_10; this
5118CA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5118CE:  LDR             R4, [R4,#0x18]
5118D0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5118D4:  LDR             R1, =(_ZTV26CTaskComplexUseWaterCannon_ptr - 0x5118DC)
5118D6:  STR             R4, [R0,#0xC]
5118D8:  ADD             R1, PC; _ZTV26CTaskComplexUseWaterCannon_ptr
5118DA:  LDR             R1, [R1]; `vtable for'CTaskComplexUseWaterCannon ...
5118DC:  ADDS            R1, #8
5118DE:  STR             R1, [R0]
5118E0:  POP             {R4,R5,R7,PC}
5118E2:  LDRB.W          R0, [R5,#0x485]
5118E6:  LSLS            R0, R0, #0x1F
5118E8:  BNE             loc_5118EE
5118EA:  MOVS            R0, #0
5118EC:  POP             {R4,R5,R7,PC}
5118EE:  LDR             R0, [R4]
5118F0:  MOV             R1, R5
5118F2:  LDR             R2, [R0,#0x2C]
5118F4:  MOV             R0, R4
5118F6:  POP.W           {R4,R5,R7,LR}
5118FA:  BX              R2
