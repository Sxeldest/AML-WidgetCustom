; =========================================================
; Game Engine Function: _ZNK18CTaskComplexOnFire13CreateSubTaskEi
; Address            : 0x4EF5C8 - 0x4EF65A
; =========================================================

4EF5C8:  PUSH            {R4,R6,R7,LR}
4EF5CA:  ADD             R7, SP, #8
4EF5CC:  SUB             SP, SP, #0x10
4EF5CE:  MOVS            R4, #0
4EF5D0:  CMP             R1, #0xD9
4EF5D2:  BEQ             loc_4EF620
4EF5D4:  MOVW            R0, #0x38F
4EF5D8:  CMP             R1, R0
4EF5DA:  BNE             loc_4EF654
4EF5DC:  MOVS            R0, #dword_40; this
4EF5DE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF5E2:  MOV             R4, R0
4EF5E4:  MOV.W           R0, #0xFFFFFFFF; int
4EF5E8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EF5EC:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x4EF5F8)
4EF5EE:  MOV             R1, R0; CEntity *
4EF5F0:  LDR             R0, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x4EF5FE)
4EF5F2:  MOVS            R3, #0
4EF5F4:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
4EF5F6:  MOVT            R3, #0x447A; float
4EF5FA:  ADD             R0, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
4EF5FC:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
4EF5FE:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
4EF600:  VLDR            S0, [R0]
4EF604:  LDR             R0, [R2]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
4EF606:  MOV             R2, #0x186A0
4EF60E:  STRD.W          R2, R0, [SP,#0x18+var_18]; int
4EF612:  MOV             R0, R4; this
4EF614:  MOVS            R2, #0; bool
4EF616:  VSTR            S0, [SP,#0x18+var_10]
4EF61A:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
4EF61E:  B               loc_4EF654
4EF620:  MOVS            R0, #word_28; this
4EF622:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF626:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF62A:  LDR             R1, =(_ZTV15CTaskComplexDie_ptr - 0x4EF636)
4EF62C:  MOVS            R2, #0xF
4EF62E:  STRD.W          R4, R4, [R0,#0xC]
4EF632:  ADD             R1, PC; _ZTV15CTaskComplexDie_ptr
4EF634:  STR             R2, [R0,#0x14]
4EF636:  MOV.W           R2, #0x40800000
4EF63A:  LDR             R1, [R1]; `vtable for'CTaskComplexDie ...
4EF63C:  STRD.W          R2, R4, [R0,#0x18]
4EF640:  STR             R4, [R0,#0x24]
4EF642:  MOV             R4, R0
4EF644:  LDRB.W          R2, [R0,#0x20]
4EF648:  ADDS            R1, #8
4EF64A:  STR             R1, [R0]
4EF64C:  AND.W           R1, R2, #0xF8
4EF650:  STRB.W          R1, [R0,#0x20]
4EF654:  MOV             R0, R4
4EF656:  ADD             SP, SP, #0x10
4EF658:  POP             {R4,R6,R7,PC}
