; =========================================================
; Game Engine Function: _ZNK24CTaskComplexDriveToPoint15IsTargetBlockedEP4CPedPP7CEntityi
; Address            : 0x4FC608 - 0x4FC716
; =========================================================

4FC608:  PUSH            {R4,R5,R7,LR}
4FC60A:  ADD             R7, SP, #8
4FC60C:  LDR.W           LR, [R1,#0x590]
4FC610:  CMP.W           LR, #0
4FC614:  BEQ             loc_4FC70E
4FC616:  LDR.W           R12, [LR,#0x14]
4FC61A:  ADD.W           R1, R12, #0x30 ; '0'
4FC61E:  CMP.W           R12, #0
4FC622:  IT EQ
4FC624:  ADDEQ.W         R1, LR, #4
4FC628:  CMP             R3, #1
4FC62A:  BLT             loc_4FC70E
4FC62C:  VLDR            S0, [R0,#0x24]
4FC630:  VLDR            S6, [R1]
4FC634:  VLDR            S2, [R0,#0x28]
4FC638:  VLDR            S8, [R1,#4]
4FC63C:  VSUB.F32        S12, S6, S0
4FC640:  VLDR            S10, [R1,#8]
4FC644:  VSUB.F32        S8, S8, S2
4FC648:  VLDR            S4, [R0,#0x2C]
4FC64C:  LDR.W           R12, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4FC65C)
4FC650:  VMOV.F64        D17, #1.5
4FC654:  LDRSH.W         R4, [LR,#0x26]
4FC658:  ADD             R12, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4FC65A:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4FC66C)
4FC65C:  VSUB.F32        S10, S10, S4
4FC660:  LDR.W           R0, [R12]; CModelInfo::ms_modelInfoPtrs ...
4FC664:  VMUL.F32        S12, S12, S12
4FC668:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4FC66A:  VMUL.F32        S8, S8, S8
4FC66E:  LDR.W           R0, [R0,R4,LSL#2]
4FC672:  LDR.W           R12, [R1]; CModelInfo::ms_modelInfoPtrs ...
4FC676:  LDR             R0, [R0,#0x2C]
4FC678:  VMUL.F32        S10, S10, S10
4FC67C:  VADD.F32        S8, S12, S8
4FC680:  VLDR            S6, [R0,#0x24]
4FC684:  MOVS            R0, #0
4FC686:  VADD.F32        S8, S8, S10
4FC68A:  VCVT.F64.F32    D16, S8
4FC68E:  LDR.W           R1, [R2,R0,LSL#2]
4FC692:  CMP             R1, #0
4FC694:  IT NE
4FC696:  CMPNE           R1, LR
4FC698:  BEQ             loc_4FC708
4FC69A:  LDR             R4, [R1,#0x14]
4FC69C:  ADD.W           R5, R4, #0x30 ; '0'
4FC6A0:  CMP             R4, #0
4FC6A2:  IT EQ
4FC6A4:  ADDEQ           R5, R1, #4
4FC6A6:  LDRSH.W         R1, [R1,#0x26]
4FC6AA:  VLDR            S8, [R5]
4FC6AE:  VLDR            S10, [R5,#4]
4FC6B2:  VSUB.F32        S8, S8, S0
4FC6B6:  VLDR            S12, [R5,#8]
4FC6BA:  VSUB.F32        S10, S10, S2
4FC6BE:  LDR.W           R1, [R12,R1,LSL#2]
4FC6C2:  VSUB.F32        S12, S12, S4
4FC6C6:  LDR             R1, [R1,#0x2C]
4FC6C8:  VMUL.F32        S8, S8, S8
4FC6CC:  VMUL.F32        S10, S10, S10
4FC6D0:  VMUL.F32        S12, S12, S12
4FC6D4:  VADD.F32        S10, S8, S10
4FC6D8:  VLDR            S8, [R1,#0x24]
4FC6DC:  VMUL.F32        S14, S8, S8
4FC6E0:  VADD.F32        S10, S10, S12
4FC6E4:  VCMPE.F32       S10, S14
4FC6E8:  VMRS            APSR_nzcv, FPSCR
4FC6EC:  BGE             loc_4FC708
4FC6EE:  VADD.F32        S8, S6, S8
4FC6F2:  VMUL.F32        S8, S8, S8
4FC6F6:  VCVT.F64.F32    D18, S8
4FC6FA:  VMUL.F64        D18, D18, D17
4FC6FE:  VCMPE.F64       D18, D16
4FC702:  VMRS            APSR_nzcv, FPSCR
4FC706:  BGT             loc_4FC712
4FC708:  ADDS            R0, #1
4FC70A:  CMP             R0, R3
4FC70C:  BLT             loc_4FC68E
4FC70E:  MOVS            R0, #0
4FC710:  POP             {R4,R5,R7,PC}
4FC712:  MOVS            R0, #1
4FC714:  POP             {R4,R5,R7,PC}
