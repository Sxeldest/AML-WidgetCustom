; =========================================================
; Game Engine Function: _ZNK23CTaskInteriorShopKeeper5CloneEv
; Address            : 0x5293A0 - 0x5293DC
; =========================================================

5293A0:  PUSH            {R4-R7,LR}
5293A2:  ADD             R7, SP, #0xC
5293A4:  PUSH.W          {R11}
5293A8:  MOV             R4, R0
5293AA:  MOVS            R0, #dword_20; this
5293AC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5293B0:  LDRB            R5, [R4,#0x14]
5293B2:  LDR             R6, [R4,#0x10]
5293B4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5293B8:  LDR             R1, =(_ZTV23CTaskInteriorShopKeeper_ptr - 0x5293C2)
5293BA:  MOVS            R2, #0
5293BC:  STR             R6, [R0,#0x10]
5293BE:  ADD             R1, PC; _ZTV23CTaskInteriorShopKeeper_ptr
5293C0:  STRB            R5, [R0,#0x14]
5293C2:  STRD.W          R2, R2, [R0,#0x18]
5293C6:  LDR             R1, [R1]; `vtable for'CTaskInteriorShopKeeper ...
5293C8:  STRB            R2, [R0,#0xC]
5293CA:  ADDS            R1, #8
5293CC:  STR             R1, [R0]
5293CE:  LDR             R1, [R4,#0x18]
5293D0:  STR             R1, [R0,#0x18]
5293D2:  LDR             R1, [R4,#0x1C]
5293D4:  STR             R1, [R0,#0x1C]
5293D6:  POP.W           {R11}
5293DA:  POP             {R4-R7,PC}
