; =========================================================
; Game Engine Function: _ZN18CTaskComplexOnFire18CreateFirstSubTaskEP4CPed
; Address            : 0x4EF668 - 0x4EF6B4
; =========================================================

4EF668:  PUSH            {R4,R6,R7,LR}
4EF66A:  ADD             R7, SP, #8
4EF66C:  SUB             SP, SP, #0x10
4EF66E:  MOVS            R0, #dword_40; this
4EF670:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF674:  MOV             R4, R0
4EF676:  MOV.W           R0, #0xFFFFFFFF; int
4EF67A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EF67E:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x4EF68A)
4EF680:  MOV             R1, R0; CEntity *
4EF682:  LDR             R0, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x4EF690)
4EF684:  MOVS            R3, #0
4EF686:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
4EF688:  MOVT            R3, #0x447A; float
4EF68C:  ADD             R0, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
4EF68E:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
4EF690:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
4EF692:  VLDR            S0, [R0]
4EF696:  LDR             R0, [R2]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
4EF698:  MOV             R2, #0x186A0
4EF6A0:  STRD.W          R2, R0, [SP,#0x18+var_18]; int
4EF6A4:  MOV             R0, R4; this
4EF6A6:  MOVS            R2, #0; bool
4EF6A8:  VSTR            S0, [SP,#0x18+var_10]
4EF6AC:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
4EF6B0:  ADD             SP, SP, #0x10
4EF6B2:  POP             {R4,R6,R7,PC}
