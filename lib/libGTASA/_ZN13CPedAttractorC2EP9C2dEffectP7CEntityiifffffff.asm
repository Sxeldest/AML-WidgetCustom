; =========================================================
; Game Engine Function: _ZN13CPedAttractorC2EP9C2dEffectP7CEntityiifffffff
; Address            : 0x4A8544 - 0x4A867A
; =========================================================

4A8544:  PUSH            {R4-R7,LR}
4A8546:  ADD             R7, SP, #0xC
4A8548:  PUSH.W          {R8-R11}
4A854C:  SUB             SP, SP, #0x64
4A854E:  MOV             R5, R1
4A8550:  LDR             R1, [R7,#arg_0]
4A8552:  MOV             R4, R0
4A8554:  LDR             R0, =(_ZTV13CPedAttractor_ptr - 0x4A8562)
4A8556:  VMOV.I32        Q8, #0
4A855A:  MOV.W           R11, #0
4A855E:  ADD             R0, PC; _ZTV13CPedAttractor_ptr
4A8560:  STR             R5, [R4,#4]
4A8562:  STRD.W          R11, R1, [R4,#0x2C]
4A8566:  ADD.W           R1, R4, #0x1C
4A856A:  VLDR            S0, [R7,#arg_8]
4A856E:  MOV             R6, R4
4A8570:  VLDR            S2, [R7,#arg_C]
4A8574:  ADD.W           R9, R4, #0x68 ; 'h'
4A8578:  VLDR            S4, [R7,#arg_10]
4A857C:  ADD.W           R10, R4, #0x5C ; '\'
4A8580:  VLDR            S6, [R7,#arg_14]
4A8584:  ADD.W           R8, R4, #0x50 ; 'P'
4A8588:  VLDR            S12, [R7,#arg_4]
4A858C:  CMP             R2, #0
4A858E:  LDR             R0, [R0]; `vtable for'CPedAttractor ...
4A8590:  STR             R3, [R4,#0x74]
4A8592:  VSTR            S12, [R4,#0x34]
4A8596:  ADD.W           R0, R0, #8
4A859A:  VSTR            S0, [R4,#0x38]
4A859E:  VSTR            S2, [R4,#0x3C]
4A85A2:  VSTR            S4, [R4,#0x40]
4A85A6:  VSTR            S6, [R4,#0x44]
4A85AA:  VST1.32         {D16-D17}, [R1]
4A85AE:  ADD.W           R1, R4, #0xC
4A85B2:  VLDR            S8, [R7,#arg_18]
4A85B6:  VLDR            S10, [R7,#arg_1C]
4A85BA:  VSTR            S8, [R4,#0x48]
4A85BE:  VST1.32         {D16-D17}, [R1]
4A85C2:  VSTR            S10, [R4,#0x4C]
4A85C6:  STR             R0, [R4]
4A85C8:  STR.W           R2, [R6,#8]!
4A85CC:  BEQ             loc_4A85DA
4A85CE:  MOV             R0, R2; this
4A85D0:  MOV             R1, R6; CEntity **
4A85D2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4A85D6:  LDR             R6, [R6]
4A85D8:  B               loc_4A85DC
4A85DA:  MOVS            R6, #0
4A85DC:  CMP             R6, #0
4A85DE:  STRD.W          R11, R11, [SP,#0x80+var_40]
4A85E2:  BEQ             loc_4A8600
4A85E4:  LDR             R1, [R6,#0x14]
4A85E6:  CBNZ            R1, loc_4A85F8
4A85E8:  MOV             R0, R6; this
4A85EA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4A85EE:  LDR             R1, [R6,#0x14]; CMatrix *
4A85F0:  ADDS            R0, R6, #4; this
4A85F2:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4A85F6:  LDR             R1, [R6,#0x14]
4A85F8:  MOV             R0, SP
4A85FA:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
4A85FE:  B               loc_4A860A
4A8600:  MOV             R0, SP; this
4A8602:  MOV.W           R1, #0x3F800000; float
4A8606:  BLX             j__ZN7CMatrix8SetScaleEf; CMatrix::SetScale(float)
4A860A:  MOV             R6, SP
4A860C:  MOV             R0, R8; this
4A860E:  MOV             R1, R6; CMatrix *
4A8610:  MOV             R2, R5; CVector *
4A8612:  BLX             j__ZN7CVector12FromMultiplyERK7CMatrixRKS_; CVector::FromMultiply(CMatrix const&,CVector const&)
4A8616:  LDR             R0, [R5,#0x18]
4A8618:  ADD             R2, SP, #0x80+var_38
4A861A:  VLDR            D16, [R5,#0x10]
4A861E:  MOV             R1, R6; CVector *
4A8620:  STR             R0, [SP,#0x80+var_30]
4A8622:  ADD             R0, SP, #0x80+var_28; CMatrix *
4A8624:  VSTR            D16, [SP,#0x80+var_38]
4A8628:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4A862C:  VLDR            D16, [SP,#0x80+var_28]
4A8630:  ADD             R2, SP, #0x80+var_38
4A8632:  LDR             R0, [SP,#0x80+var_20]
4A8634:  MOV             R1, R6; CVector *
4A8636:  STR.W           R0, [R10,#8]
4A863A:  VSTR            D16, [R10]
4A863E:  LDR             R0, [R5,#0x24]
4A8640:  VLDR            D16, [R5,#0x1C]
4A8644:  STR             R0, [SP,#0x80+var_30]
4A8646:  ADD             R0, SP, #0x80+var_28; CMatrix *
4A8648:  VSTR            D16, [SP,#0x80+var_38]
4A864C:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4A8650:  VLDR            D16, [SP,#0x80+var_28]
4A8654:  LDR             R0, [SP,#0x80+var_20]
4A8656:  STR.W           R0, [R9,#8]
4A865A:  ADD.W           R0, R4, #0x78 ; 'x'
4A865E:  VSTR            D16, [R9]
4A8662:  LDR             R1, [R4,#4]
4A8664:  ADDS            R1, #0x38 ; '8'
4A8666:  BL              sub_5E6BC0
4A866A:  MOV             R0, R6; this
4A866C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4A8670:  MOV             R0, R4
4A8672:  ADD             SP, SP, #0x64 ; 'd'
4A8674:  POP.W           {R8-R11}
4A8678:  POP             {R4-R7,PC}
