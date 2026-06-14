; =========================================================
; Game Engine Function: _ZN7CGarage31RemoveCarsBlockingDoorNotInsideEv
; Address            : 0x3126CC - 0x312804
; =========================================================

3126CC:  PUSH            {R4-R7,LR}
3126CE:  ADD             R7, SP, #0xC
3126D0:  PUSH.W          {R8-R11}
3126D4:  SUB             SP, SP, #4
3126D6:  MOV             R8, R0
3126D8:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3126DE)
3126DA:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3126DC:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3126DE:  LDR.W           R9, [R0]; CPools::ms_pVehiclePool
3126E2:  LDR.W           R0, [R9,#8]
3126E6:  CMP             R0, #0
3126E8:  BEQ             loc_3127DA
3126EA:  MOVW            R1, #0xA2C
3126EE:  MOVW            R10, #0xFA00
3126F2:  MUL.W           R4, R0, R1
3126F6:  SUBS            R6, R0, #1
3126F8:  MOVT            R10, #0xFFFF
3126FC:  LDR.W           R0, [R9,#4]
312700:  LDRSB           R0, [R0,R6]
312702:  CMP             R0, #0
312704:  BLT             loc_3127D0
312706:  LDR.W           R0, [R9]
31270A:  ADD.W           R11, R0, R4
31270E:  SUBW            R5, R11, #0xA2C
312712:  CMP             R5, #0
312714:  BEQ             loc_3127D0
312716:  MOV             R0, R8; this
312718:  MOV             R1, R5; CEntity *
31271A:  BLX             j__ZN7CGarage18IsEntityTouching3DEP7CEntity; CGarage::IsEntityTouching3D(CEntity *)
31271E:  CMP             R0, #0
312720:  BEQ             loc_3127D0
312722:  SUBW            R0, R11, #0xA28
312726:  VLDR            S2, [R8,#8]
31272A:  LDR             R1, [R0,#0x10]
31272C:  CMP             R1, #0
31272E:  IT NE
312730:  ADDNE.W         R0, R1, #0x30 ; '0'
312734:  VLDR            S0, [R0,#8]
312738:  VCMPE.F32       S2, S0
31273C:  VMRS            APSR_nzcv, FPSCR
312740:  BGT             loc_3127C0
312742:  VLDR            S2, [R8,#0x1C]
312746:  VCMPE.F32       S2, S0
31274A:  VMRS            APSR_nzcv, FPSCR
31274E:  BLT             loc_3127C0
312750:  VLDR            S0, [R0]
312754:  VLDR            S4, [R8]
312758:  VLDR            S2, [R0,#4]
31275C:  VLDR            S6, [R8,#4]
312760:  VSUB.F32        S0, S0, S4
312764:  VLDR            S8, [R8,#0xC]
312768:  VSUB.F32        S2, S2, S6
31276C:  VLDR            S10, [R8,#0x10]
312770:  VMUL.F32        S6, S0, S8
312774:  VMUL.F32        S4, S2, S10
312778:  VADD.F32        S4, S6, S4
31277C:  VCMPE.F32       S4, #0.0
312780:  VMRS            APSR_nzcv, FPSCR
312784:  BLT             loc_3127C0
312786:  VLDR            S6, [R8,#0x20]
31278A:  VCMPE.F32       S4, S6
31278E:  VMRS            APSR_nzcv, FPSCR
312792:  BGT             loc_3127C0
312794:  VLDR            S4, [R8,#0x14]
312798:  VLDR            S6, [R8,#0x18]
31279C:  VMUL.F32        S0, S0, S4
3127A0:  VMUL.F32        S2, S2, S6
3127A4:  VADD.F32        S0, S0, S2
3127A8:  VCMPE.F32       S0, #0.0
3127AC:  VMRS            APSR_nzcv, FPSCR
3127B0:  BLT             loc_3127C0
3127B2:  VLDR            S2, [R8,#0x24]
3127B6:  VCMPE.F32       S0, S2
3127BA:  VMRS            APSR_nzcv, FPSCR
3127BE:  BLE             loc_3127D0
3127C0:  LDRB.W          R0, [R11,R10]
3127C4:  LSLS            R0, R0, #0x1C
3127C6:  BMI             loc_3127D0
3127C8:  MOV             R0, R5; this
3127CA:  BLX             j__ZNK8CVehicle12CanBeDeletedEv; CVehicle::CanBeDeleted(void)
3127CE:  CBNZ            R0, loc_3127E2
3127D0:  SUBS            R6, #1
3127D2:  SUBW            R4, R4, #0xA2C
3127D6:  ADDS            R0, R6, #1
3127D8:  BNE             loc_3126FC
3127DA:  ADD             SP, SP, #4
3127DC:  POP.W           {R8-R11}
3127E0:  POP             {R4-R7,PC}
3127E2:  MOV             R0, R5; this
3127E4:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
3127E8:  MOV             R0, #0xFFFFF5D4
3127F0:  LDR.W           R0, [R11,R0]
3127F4:  LDR             R1, [R0,#4]
3127F6:  MOV             R0, R5
3127F8:  ADD             SP, SP, #4
3127FA:  POP.W           {R8-R11}
3127FE:  POP.W           {R4-R7,LR}
312802:  BX              R1
