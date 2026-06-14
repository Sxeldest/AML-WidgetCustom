; =========================================================
; Game Engine Function: _ZNK27CTaskComplexGoToPointAiming5CloneEv
; Address            : 0x52773C - 0x52781E
; =========================================================

52773C:  PUSH            {R4-R7,LR}
52773E:  ADD             R7, SP, #0xC
527740:  PUSH.W          {R8-R11}
527744:  SUB             SP, SP, #4
527746:  VPUSH           {D8-D9}
52774A:  MOV             R5, R0
52774C:  MOVS            R0, #dword_38; this
52774E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
527752:  ADD.W           R11, R5, #0x14
527756:  VLDR            S16, [R5,#0x2C]
52775A:  VLDR            S18, [R5,#0x30]
52775E:  MOV             R4, R0
527760:  LDRD.W          R8, R6, [R5,#0xC]
527764:  LDM.W           R11, {R9-R11}
527768:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52776C:  LDR             R0, =(_ZTV27CTaskComplexGoToPointAiming_ptr - 0x52777C)
52776E:  ADD.W           R1, R4, #0x14
527772:  STR.W           R8, [R4,#0xC]
527776:  CMP             R6, #0
527778:  ADD             R0, PC; _ZTV27CTaskComplexGoToPointAiming_ptr
52777A:  STM.W           R1, {R9-R11}
52777E:  MOV             R1, R4
527780:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointAiming ...
527782:  ADD.W           R8, R5, #0x20 ; ' '
527786:  ADD.W           R0, R0, #8
52778A:  STR             R0, [R4]
52778C:  STR.W           R6, [R1,#0x10]!; CEntity **
527790:  ITT NE
527792:  MOVNE           R0, R6; this
527794:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
527798:  VLDR            S0, [R8]
52779C:  VLDR            S2, [R4,#0x20]
5277A0:  VCMP.F32        S2, S0
5277A4:  VMRS            APSR_nzcv, FPSCR
5277A8:  BNE             loc_5277EA
5277AA:  VLDR            S0, [R5,#0x24]
5277AE:  VLDR            S2, [R4,#0x24]
5277B2:  VCMP.F32        S2, S0
5277B6:  VMRS            APSR_nzcv, FPSCR
5277BA:  BNE             loc_5277EA
5277BC:  VLDR            S0, [R5,#0x28]
5277C0:  VLDR            S2, [R4,#0x28]
5277C4:  VCMP.F32        S2, S0
5277C8:  VMRS            APSR_nzcv, FPSCR
5277CC:  BNE             loc_5277EA
5277CE:  VLDR            S0, [R4,#0x2C]
5277D2:  VCMP.F32        S0, S16
5277D6:  VMRS            APSR_nzcv, FPSCR
5277DA:  BNE             loc_5277EA
5277DC:  VLDR            S0, [R4,#0x30]
5277E0:  VCMP.F32        S0, S18
5277E4:  VMRS            APSR_nzcv, FPSCR
5277E8:  BEQ             loc_527810
5277EA:  ADD.W           R0, R4, #0x20 ; ' '
5277EE:  VLDR            D16, [R8]
5277F2:  LDR.W           R1, [R8,#8]
5277F6:  STR             R1, [R0,#8]
5277F8:  VSTR            D16, [R0]
5277FC:  LDRB.W          R0, [R4,#0x34]
527800:  VSTR            S16, [R4,#0x2C]
527804:  VSTR            S18, [R4,#0x30]
527808:  ORR.W           R0, R0, #1
52780C:  STRB.W          R0, [R4,#0x34]
527810:  MOV             R0, R4
527812:  VPOP            {D8-D9}
527816:  ADD             SP, SP, #4
527818:  POP.W           {R8-R11}
52781C:  POP             {R4-R7,PC}
