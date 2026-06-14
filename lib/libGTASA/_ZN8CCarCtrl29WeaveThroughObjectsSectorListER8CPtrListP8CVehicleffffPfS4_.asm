; =========================================================
; Game Engine Function: _ZN8CCarCtrl29WeaveThroughObjectsSectorListER8CPtrListP8CVehicleffffPfS4_
; Address            : 0x2EF588 - 0x2EF682
; =========================================================

2EF588:  PUSH            {R4-R7,LR}
2EF58A:  ADD             R7, SP, #0xC
2EF58C:  PUSH.W          {R8-R11}
2EF590:  SUB             SP, SP, #4
2EF592:  VPUSH           {D8-D13}; float *
2EF596:  LDR             R4, [R0]
2EF598:  MOV             R10, R1
2EF59A:  CMP             R4, #0
2EF59C:  BEQ             loc_2EF676
2EF59E:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2EF5B0)
2EF5A0:  VMOV.F32        S24, #8.0
2EF5A4:  LDRD.W          R9, R8, [R7,#arg_8]
2EF5A8:  VMOV            S20, R3
2EF5AC:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2EF5AE:  VLDR            S16, [R7,#arg_4]
2EF5B2:  VLDR            S18, [R7,#arg_0]
2EF5B6:  VMOV            S22, R2
2EF5BA:  LDR             R6, [R0]; CWorld::ms_nCurrentScanCode ...
2EF5BC:  VLDR            S26, =0.9
2EF5C0:  LDRD.W          R5, R4, [R4]
2EF5C4:  LDRH            R1, [R6]; CWorld::ms_nCurrentScanCode
2EF5C6:  LDRH            R0, [R5,#0x30]
2EF5C8:  CMP             R0, R1
2EF5CA:  ITT NE
2EF5CC:  LDRBNE          R0, [R5,#0x1C]
2EF5CE:  MOVSNE.W        R0, R0,LSL#31
2EF5D2:  BNE             loc_2EF5DA
2EF5D4:  CMP             R4, #0
2EF5D6:  BNE             loc_2EF5C0
2EF5D8:  B               loc_2EF676
2EF5DA:  LDR             R0, [R5,#0x14]
2EF5DC:  ADD.W           R11, R5, #4
2EF5E0:  STRH            R1, [R5,#0x30]
2EF5E2:  CMP             R0, #0
2EF5E4:  MOV             R1, R11
2EF5E6:  IT NE
2EF5E8:  ADDNE.W         R1, R0, #0x30 ; '0'
2EF5EC:  VLDR            S0, [R1]
2EF5F0:  VCMPE.F32       S0, S22
2EF5F4:  VMRS            APSR_nzcv, FPSCR
2EF5F8:  BLE             loc_2EF5D4
2EF5FA:  VCMPE.F32       S0, S18
2EF5FE:  VMRS            APSR_nzcv, FPSCR
2EF602:  BGE             loc_2EF5D4
2EF604:  VLDR            S0, [R1,#4]
2EF608:  VCMPE.F32       S0, S20
2EF60C:  VMRS            APSR_nzcv, FPSCR
2EF610:  BLE             loc_2EF5D4
2EF612:  VCMPE.F32       S0, S16
2EF616:  VMRS            APSR_nzcv, FPSCR
2EF61A:  BGE             loc_2EF5D4
2EF61C:  LDR.W           R2, [R10,#0x14]
2EF620:  VLDR            S0, [R1,#8]
2EF624:  ADD.W           R1, R2, #0x30 ; '0'
2EF628:  CMP             R2, #0
2EF62A:  IT EQ
2EF62C:  ADDEQ.W         R1, R10, #4
2EF630:  VLDR            S2, [R1,#8]
2EF634:  VSUB.F32        S0, S0, S2
2EF638:  VABS.F32        S0, S0
2EF63C:  VCMPE.F32       S0, S24
2EF640:  VMRS            APSR_nzcv, FPSCR
2EF644:  BGE             loc_2EF5D4
2EF646:  CBNZ            R0, loc_2EF658
2EF648:  MOV             R0, R5; this
2EF64A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2EF64E:  LDR             R1, [R5,#0x14]; CMatrix *
2EF650:  MOV             R0, R11; this
2EF652:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2EF656:  LDR             R0, [R5,#0x14]
2EF658:  VLDR            S0, [R0,#0x28]
2EF65C:  VCMPE.F32       S0, S26
2EF660:  VMRS            APSR_nzcv, FPSCR
2EF664:  BLE             loc_2EF5D4
2EF666:  MOV             R0, R5; this
2EF668:  MOV             R1, R10; CEntity *
2EF66A:  MOV             R2, R9; CVehicle *
2EF66C:  MOV             R3, R8; float *
2EF66E:  BLX             j__ZN8CCarCtrl14WeaveForObjectEP7CEntityP8CVehiclePfS4_; CCarCtrl::WeaveForObject(CEntity *,CVehicle *,float *,float *)
2EF672:  CMP             R4, #0
2EF674:  BNE             loc_2EF5C0
2EF676:  VPOP            {D8-D13}
2EF67A:  ADD             SP, SP, #4
2EF67C:  POP.W           {R8-R11}
2EF680:  POP             {R4-R7,PC}
