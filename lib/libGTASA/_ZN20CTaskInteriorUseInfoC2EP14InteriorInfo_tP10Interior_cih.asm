; =========================================================
; Game Engine Function: _ZN20CTaskInteriorUseInfoC2EP14InteriorInfo_tP10Interior_cih
; Address            : 0x5297A8 - 0x5297D4
; =========================================================

5297A8:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskInteriorUseInfo::CTaskInteriorUseInfo(InteriorInfo_t *, Interior_c *, int, unsigned char)'
5297AA:  ADD             R7, SP, #0xC
5297AC:  PUSH.W          {R11}
5297B0:  MOV             R4, R3
5297B2:  MOV             R5, R2
5297B4:  MOV             R6, R1
5297B6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5297BA:  LDR             R1, =(_ZTV20CTaskInteriorUseInfo_ptr - 0x5297C2)
5297BC:  LDR             R2, [R7,#arg_0]
5297BE:  ADD             R1, PC; _ZTV20CTaskInteriorUseInfo_ptr
5297C0:  STRD.W          R6, R5, [R0,#0xC]
5297C4:  STR             R4, [R0,#0x14]
5297C6:  LDR             R1, [R1]; `vtable for'CTaskInteriorUseInfo ...
5297C8:  STRB            R2, [R0,#0x18]
5297CA:  ADDS            R1, #8
5297CC:  STR             R1, [R0]
5297CE:  POP.W           {R11}
5297D2:  POP             {R4-R7,PC}
