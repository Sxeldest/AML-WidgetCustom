; =========================================================
; Game Engine Function: _ZN23CTaskGoToVehicleAndLean13CalcTargetPosEP4CPed
; Address            : 0x51A5F0 - 0x51A6E2
; =========================================================

51A5F0:  PUSH            {R4-R7,LR}
51A5F2:  ADD             R7, SP, #0xC
51A5F4:  PUSH.W          {R8,R9,R11}
51A5F8:  VPUSH           {D8-D12}
51A5FC:  SUB             SP, SP, #0x10
51A5FE:  MOV             R5, R1
51A600:  MOV             R8, R0
51A602:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x51A60A)
51A604:  LDR             R4, [R5,#0xC]
51A606:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
51A608:  LDRSH.W         R1, [R4,#0x26]
51A60C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
51A60E:  LDR.W           R0, [R0,R1,LSL#2]
51A612:  LDR             R0, [R0,#0x2C]
51A614:  VLDR            S18, [R0]
51A618:  VLDR            S16, [R0,#0xC]
51A61C:  MOVS            R0, #0
51A61E:  STRD.W          R0, R0, [SP,#0x50+var_4C]
51A622:  STR             R0, [SP,#0x50+var_44]
51A624:  LDR             R0, [R4,#0x14]
51A626:  LDR             R1, [R2,#0x14]
51A628:  ADD.W           R3, R0, #0x30 ; '0'
51A62C:  CMP             R0, #0
51A62E:  IT EQ
51A630:  ADDEQ           R3, R4, #4
51A632:  ADD.W           R6, R1, #0x30 ; '0'
51A636:  CMP             R1, #0
51A638:  VLDR            S0, [R3]
51A63C:  VLDR            S2, [R3,#4]
51A640:  VLDR            S4, [R3,#8]
51A644:  IT EQ
51A646:  ADDEQ           R6, R2, #4
51A648:  VLDR            S6, [R6]
51A64C:  CMP             R0, #0
51A64E:  VLDR            S8, [R6,#4]
51A652:  VLDR            S10, [R6,#8]
51A656:  VSUB.F32        S24, S6, S0
51A65A:  VSUB.F32        S22, S8, S2
51A65E:  VSUB.F32        S20, S10, S4
51A662:  BEQ             loc_51A672
51A664:  VLDR            S4, [R0]
51A668:  VLDR            S2, [R0,#4]
51A66C:  VLDR            S0, [R0,#8]
51A670:  B               loc_51A68E
51A672:  LDR             R6, [R4,#0x10]
51A674:  MOV             R0, R6; x
51A676:  BLX             cosf
51A67A:  MOV             R9, R0
51A67C:  MOV             R0, R6; x
51A67E:  BLX             sinf
51A682:  VMOV            S2, R0
51A686:  VLDR            S0, =0.0
51A68A:  VMOV            S4, R9
51A68E:  VMUL.F32        S4, S24, S4
51A692:  MOVS            R0, #0
51A694:  VMUL.F32        S2, S22, S2
51A698:  ADD             R2, SP, #0x50+var_4C
51A69A:  VMUL.F32        S0, S20, S0
51A69E:  VMOV.F32        S6, #-0.5
51A6A2:  VADD.F32        S2, S2, S4
51A6A6:  VMOV.F32        S4, #0.5
51A6AA:  VADD.F32        S6, S18, S6
51A6AE:  VADD.F32        S0, S0, S2
51A6B2:  VADD.F32        S2, S16, S4
51A6B6:  VCMPE.F32       S0, #0.0
51A6BA:  VMRS            APSR_nzcv, FPSCR
51A6BE:  IT GT
51A6C0:  VMOVGT.F32      S6, S2
51A6C4:  VSTR            S6, [SP,#0x50+var_4C]
51A6C8:  IT GT
51A6CA:  MOVGT           R0, #1
51A6CC:  STRB            R0, [R5,#0x15]
51A6CE:  MOV             R0, R8
51A6D0:  LDR             R1, [R4,#0x14]
51A6D2:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
51A6D6:  ADD             SP, SP, #0x10
51A6D8:  VPOP            {D8-D12}
51A6DC:  POP.W           {R8,R9,R11}
51A6E0:  POP             {R4-R7,PC}
