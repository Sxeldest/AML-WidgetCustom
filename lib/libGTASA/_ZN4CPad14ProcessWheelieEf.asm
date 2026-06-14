; =========================================================
; Game Engine Function: _ZN4CPad14ProcessWheelieEf
; Address            : 0x3F967C - 0x3F97CC
; =========================================================

3F967C:  PUSH            {R4,R5,R7,LR}
3F967E:  ADD             R7, SP, #8
3F9680:  VPUSH           {D8}
3F9684:  VMOV.F32        S0, #15.0
3F9688:  MOV             R4, R0
3F968A:  VMOV            S2, R1
3F968E:  VCMPE.F32       S2, S0
3F9692:  VMRS            APSR_nzcv, FPSCR
3F9696:  BLE             loc_3F96A4
3F9698:  MOVS            R0, #2
3F969A:  MOVS            R1, #0
3F969C:  MOVS            R2, #1
3F969E:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
3F96A2:  CBNZ            R0, loc_3F96B2
3F96A4:  MOVS            R0, #0x9E
3F96A6:  MOVS            R1, #0
3F96A8:  MOVS            R2, #1
3F96AA:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
3F96AE:  CMP             R0, #1
3F96B0:  BNE             loc_3F96C6
3F96B2:  LDR             R0, =(dword_959E04 - 0x3F96C0)
3F96B4:  MOVS            R1, #1
3F96B6:  STRB.W          R1, [R4,#0x119]
3F96BA:  MOVS            R1, #0
3F96BC:  ADD             R0, PC; dword_959E04
3F96BE:  ADDW            R5, R4, #0x119
3F96C2:  STR             R1, [R0]
3F96C4:  B               loc_3F96D2
3F96C6:  LDRB.W          R0, [R4,#0x119]
3F96CA:  ADDW            R5, R4, #0x119
3F96CE:  CMP             R0, #0
3F96D0:  BEQ             loc_3F979E
3F96D2:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3F96E0)
3F96D4:  MOVS            R1, #0
3F96D6:  VLDR            S16, =50.0
3F96DA:  MOVS            R2, #1
3F96DC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3F96DE:  VLDR            S2, =1000.0
3F96E2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3F96E4:  VLDR            S0, [R0]
3F96E8:  LDR             R0, =(dword_959E04 - 0x3F96F2)
3F96EA:  VDIV.F32        S0, S0, S16
3F96EE:  ADD             R0, PC; dword_959E04
3F96F0:  VMUL.F32        S0, S0, S2
3F96F4:  VCVT.U32.F32    S0, S0
3F96F8:  VCVT.F32.U32    S0, S0
3F96FC:  VDIV.F32        S0, S0, S2
3F9700:  VLDR            S2, [R0]
3F9704:  VADD.F32        S0, S2, S0
3F9708:  VSTR            S0, [R0]
3F970C:  MOVS            R0, #2
3F970E:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3F9712:  CBNZ            R0, loc_3F9722
3F9714:  MOVS            R0, #0x9E
3F9716:  MOVS            R1, #0
3F9718:  MOVS            R2, #1
3F971A:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3F971E:  CMP             R0, #1
3F9720:  BNE             loc_3F979E
3F9722:  MOV.W           R0, #0xFFFFFFFF; int
3F9726:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3F972A:  VMOV.F32        S0, #0.5
3F972E:  LDR             R0, [R0,#0x14]
3F9730:  VLDR            S2, [R0,#0x18]
3F9734:  VCMPE.F32       S2, S0
3F9738:  VMRS            APSR_nzcv, FPSCR
3F973C:  ITTT LT
3F973E:  MOVLT           R0, #0
3F9740:  MOVTLT          R0, #0x437F
3F9744:  STRLT.W         R0, [R4,#0x128]
3F9748:  MOV.W           R0, #0xFFFFFFFF; int
3F974C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3F9750:  LDR             R0, [R0,#0x14]
3F9752:  VLDR            S0, =0.2
3F9756:  VLDR            S2, [R0,#0x18]
3F975A:  VCMPE.F32       S2, S0
3F975E:  VMRS            APSR_nzcv, FPSCR
3F9762:  BGE             loc_3F97BE
3F9764:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3F976A)
3F9766:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3F9768:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3F976A:  VLDR            S0, [R0]
3F976E:  LDR             R0, =(dword_959E08 - 0x3F9778)
3F9770:  VDIV.F32        S0, S0, S16
3F9774:  ADD             R0, PC; dword_959E08
3F9776:  VLDR            S2, [R0]
3F977A:  VADD.F32        S0, S2, S0
3F977E:  VMOV.F32        S2, #1.5
3F9782:  VSTR            S0, [R0]
3F9786:  VCMPE.F32       S0, S2
3F978A:  VMRS            APSR_nzcv, FPSCR
3F978E:  BLE             loc_3F97C6
3F9790:  MOVS            R0, #0
3F9792:  STRH            R0, [R4,#2]
3F9794:  STRB.W          R0, [R4,#0x119]
3F9798:  VPOP            {D8}
3F979C:  POP             {R4,R5,R7,PC}
3F979E:  LDR             R0, =(dword_959E04 - 0x3F97A8)
3F97A0:  VLDR            S0, =0.2
3F97A4:  ADD             R0, PC; dword_959E04
3F97A6:  VLDR            S2, [R0]
3F97AA:  VCMPE.F32       S2, S0
3F97AE:  VMRS            APSR_nzcv, FPSCR
3F97B2:  BLE             loc_3F97C6
3F97B4:  LDR             R0, =(dword_959E08 - 0x3F97BE)
3F97B6:  MOVS            R1, #0
3F97B8:  STRB            R1, [R5]
3F97BA:  ADD             R0, PC; dword_959E08
3F97BC:  B               loc_3F97C4
3F97BE:  LDR             R0, =(dword_959E08 - 0x3F97C6)
3F97C0:  MOVS            R1, #0
3F97C2:  ADD             R0, PC; dword_959E08
3F97C4:  STR             R1, [R0]
3F97C6:  VPOP            {D8}
3F97CA:  POP             {R4,R5,R7,PC}
