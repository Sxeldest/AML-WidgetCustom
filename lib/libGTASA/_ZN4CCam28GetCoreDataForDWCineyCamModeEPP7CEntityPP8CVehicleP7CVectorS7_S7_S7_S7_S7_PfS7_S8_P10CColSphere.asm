; =========================================================
; Game Engine Function: _ZN4CCam28GetCoreDataForDWCineyCamModeEPP7CEntityPP8CVehicleP7CVectorS7_S7_S7_S7_S7_PfS7_S8_P10CColSphere
; Address            : 0x3E25C0 - 0x3E2764
; =========================================================

3E25C0:  PUSH            {R4-R7,LR}
3E25C2:  ADD             R7, SP, #0xC
3E25C4:  PUSH.W          {R8-R11}
3E25C8:  SUB             SP, SP, #0x14
3E25CA:  LDR.W           R0, [R0,#0x1F4]
3E25CE:  MOV             R4, R2
3E25D0:  STR             R0, [R1]
3E25D2:  STR             R0, [R4]
3E25D4:  LDR             R2, =(DWCineyCamLastPos_ptr - 0x3E25DC)
3E25D6:  LDR             R1, [R0,#0x14]
3E25D8:  ADD             R2, PC; DWCineyCamLastPos_ptr
3E25DA:  ADD.W           R6, R1, #0x30 ; '0'
3E25DE:  CMP             R1, #0
3E25E0:  IT EQ
3E25E2:  ADDEQ           R6, R0, #4
3E25E4:  LDR             R2, [R2]; DWCineyCamLastPos
3E25E6:  VLDR            D16, [R6]
3E25EA:  LDR             R1, [R6,#8]
3E25EC:  STR             R1, [R3,#8]
3E25EE:  VSTR            D16, [R3]
3E25F2:  LDR             R0, [R7,#arg_0]
3E25F4:  VLDR            D16, [R2]
3E25F8:  LDR             R1, [R2,#(dword_952FC4 - 0x952FBC)]
3E25FA:  STR             R1, [R0,#8]
3E25FC:  VSTR            D16, [R0]
3E2600:  LDR             R0, [R4]
3E2602:  LDR             R1, [R0,#0x14]
3E2604:  LDR             R0, [R7,#arg_4]
3E2606:  CBZ             R1, loc_3E2616
3E2608:  VLDR            S4, [R1,#0x20]
3E260C:  VLDR            S0, [R1,#0x24]
3E2610:  VLDR            S2, [R1,#0x28]
3E2614:  B               loc_3E2622
3E2616:  VLDR            S0, =0.0
3E261A:  VMOV.F32        S2, #1.0
3E261E:  VMOV.F32        S4, S0
3E2622:  VSTR            S4, [R0]
3E2626:  VSTR            S0, [R0,#4]
3E262A:  VSTR            S2, [R0,#8]
3E262E:  LDR             R1, [R4]
3E2630:  LDR             R6, [R7,#arg_8]
3E2632:  LDR             R0, [R1,#0x14]
3E2634:  CBZ             R0, loc_3E2644
3E2636:  VLDR            S4, [R0]
3E263A:  VLDR            S0, [R0,#4]
3E263E:  VLDR            S2, [R0,#8]
3E2642:  B               loc_3E2660
3E2644:  LDR             R5, [R1,#0x10]
3E2646:  MOV             R0, R5; x
3E2648:  BLX             cosf
3E264C:  MOV             R8, R0
3E264E:  MOV             R0, R5; x
3E2650:  BLX             sinf
3E2654:  VMOV            S0, R0
3E2658:  VLDR            S2, =0.0
3E265C:  VMOV            S4, R8
3E2660:  LDRD.W          R2, R10, [R7,#arg_1C]
3E2664:  LDRD.W          R11, R5, [R7,#arg_14]
3E2668:  LDRD.W          R9, R8, [R7,#arg_C]
3E266C:  VSTR            S4, [R6]
3E2670:  VSTR            S0, [R6,#4]
3E2674:  VSTR            S2, [R6,#8]
3E2678:  LDR             R1, [R4]
3E267A:  LDR             R0, [R1,#0x14]
3E267C:  CBZ             R0, loc_3E268C
3E267E:  VLDR            S4, [R0,#0x10]
3E2682:  VLDR            S2, [R0,#0x14]
3E2686:  VLDR            S0, [R0,#0x18]
3E268A:  B               loc_3E26B2
3E268C:  LDR             R6, [R1,#0x10]
3E268E:  MOV             R0, R6; x
3E2690:  BLX             sinf
3E2694:  MOV             R10, R0
3E2696:  MOV             R0, R6; x
3E2698:  BLX             cosf
3E269C:  VMOV            S2, R0
3E26A0:  EOR.W           R0, R10, #0x80000000
3E26A4:  LDR             R2, [R7,#arg_1C]
3E26A6:  LDR.W           R10, [R7,#arg_20]
3E26AA:  VMOV            S4, R0
3E26AE:  VLDR            S0, =0.0
3E26B2:  VSTR            S4, [R9]
3E26B6:  VSTR            S2, [R9,#4]
3E26BA:  VSTR            S0, [R9,#8]
3E26BE:  LDR             R0, [R4]
3E26C0:  VLDR            D16, [R0,#0x48]
3E26C4:  VSTR            D16, [R8]
3E26C8:  VLDR            S0, [R8]
3E26CC:  VLDR            S2, [R8,#4]
3E26D0:  VMUL.F32        S0, S0, S0
3E26D4:  LDR             R0, [R0,#0x50]
3E26D6:  VMUL.F32        S2, S2, S2
3E26DA:  STR.W           R0, [R8,#8]
3E26DE:  VLDR            S4, [R8,#8]
3E26E2:  VMUL.F32        S4, S4, S4
3E26E6:  VADD.F32        S0, S0, S2
3E26EA:  VADD.F32        S0, S0, S4
3E26EE:  VSQRT.F32       S0, S0
3E26F2:  VSTR            S0, [R11]
3E26F6:  LDR             R0, [R4]
3E26F8:  VLDR            D16, [R0,#0x54]
3E26FC:  VSTR            D16, [R5]
3E2700:  VLDR            S0, [R5]
3E2704:  VLDR            S2, [R5,#4]
3E2708:  VMUL.F32        S0, S0, S0
3E270C:  LDR             R0, [R0,#0x5C]
3E270E:  VMUL.F32        S2, S2, S2
3E2712:  STR             R0, [R5,#8]
3E2714:  VLDR            S4, [R5,#8]
3E2718:  ADD             R5, SP, #0x30+var_28
3E271A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3E2724)
3E271C:  VMUL.F32        S4, S4, S4
3E2720:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3E2722:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3E2724:  VADD.F32        S0, S0, S2
3E2728:  VADD.F32        S0, S0, S4
3E272C:  VSQRT.F32       S0, S0
3E2730:  VSTR            S0, [R2]
3E2734:  LDR             R1, [R4]
3E2736:  LDRSH.W         R2, [R1,#0x26]
3E273A:  LDR.W           R0, [R0,R2,LSL#2]
3E273E:  LDR             R0, [R0,#0x2C]
3E2740:  LDR             R4, [R0,#0x24]
3E2742:  MOV             R0, R5; this
3E2744:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
3E2748:  MOVS            R0, #0xFF
3E274A:  MOVS            R1, #0
3E274C:  STRD.W          R1, R0, [SP,#0x30+var_30]; unsigned __int8
3E2750:  MOV             R0, R10; this
3E2752:  MOV             R1, R4; float
3E2754:  MOV             R2, R5; CVector *
3E2756:  MOVS            R3, #0; unsigned __int8
3E2758:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
3E275C:  ADD             SP, SP, #0x14
3E275E:  POP.W           {R8-R11}
3E2762:  POP             {R4-R7,PC}
