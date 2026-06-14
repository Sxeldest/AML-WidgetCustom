; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun11SetMoveAnimEP4CPed
; Address            : 0x4DD5E8 - 0x4DD9E2
; =========================================================

4DD5E8:  PUSH            {R4-R7,LR}
4DD5EA:  ADD             R7, SP, #0xC
4DD5EC:  PUSH.W          {R8-R11}
4DD5F0:  SUB             SP, SP, #4
4DD5F2:  VPUSH           {D8-D10}
4DD5F6:  MOV             R6, R1
4DD5F8:  MOV             R4, R0
4DD5FA:  LDR             R0, [R6,#0x18]
4DD5FC:  MOVS            R1, #0x31 ; '1'
4DD5FE:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DD602:  MOV             R5, R0
4DD604:  LDR             R0, [R6,#0x18]
4DD606:  MOVS            R1, #0x32 ; '2'
4DD608:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DD60C:  MOV             R9, R0
4DD60E:  LDR             R0, [R6,#0x18]
4DD610:  MOVS            R1, #0x33 ; '3'
4DD612:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DD616:  MOV             R11, R0
4DD618:  LDR             R0, [R6,#0x18]
4DD61A:  MOVS            R1, #0x34 ; '4'
4DD61C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DD620:  MOV             R8, R0
4DD622:  LDR             R0, [R6,#0x18]
4DD624:  MOVS            R1, #0x35 ; '5'
4DD626:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DD62A:  MOV             R10, R0
4DD62C:  LDRB.W          R0, [R6,#0x487]
4DD630:  LSLS            R0, R0, #0x1D
4DD632:  BMI             loc_4DD674
4DD634:  LDRB            R0, [R4,#0xA]
4DD636:  VLDR            S16, =0.0
4DD63A:  CBZ             R0, loc_4DD694
4DD63C:  LDRB            R0, [R4,#0x10]
4DD63E:  CMP             R0, #2
4DD640:  BNE             loc_4DD64E
4DD642:  LDR             R0, [R4,#0x30]
4DD644:  VMOV.F32        S0, S16
4DD648:  LDRB            R0, [R0,#0x18]
4DD64A:  LSLS            R0, R0, #0x1A
4DD64C:  BPL             loc_4DD698
4DD64E:  VLDR            S0, [R4,#0x14]
4DD652:  VLDR            S2, [R4,#0x18]
4DD656:  VMUL.F32        S6, S0, S0
4DD65A:  VMUL.F32        S4, S2, S2
4DD65E:  VABS.F32        S2, S2
4DD662:  VABS.F32        S0, S0
4DD666:  VADD.F32        S4, S6, S4
4DD66A:  VADD.F32        S0, S0, S2
4DD66E:  VSQRT.F32       S16, S4
4DD672:  B               loc_4DD698
4DD674:  LDR.W           R0, [R6,#0x440]; this
4DD678:  MOVS            R1, #1; bool
4DD67A:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4DD67E:  CMP             R0, #0
4DD680:  BEQ.W           loc_4DD7BE
4DD684:  LDRB            R1, [R4,#0x10]
4DD686:  SUBS            R1, #2
4DD688:  UXTB            R1, R1
4DD68A:  CMP             R1, #2
4DD68C:  IT LS
4DD68E:  BLXLS           j__ZN15CTaskSimpleDuck13ForceStopMoveEv; CTaskSimpleDuck::ForceStopMove(void)
4DD692:  B               loc_4DD7BE
4DD694:  VMOV.F32        S0, S16
4DD698:  LDR             R0, [R4,#0x30]
4DD69A:  VLDR            S2, =0.1
4DD69E:  LDR             R0, [R0,#0x18]
4DD6A0:  VCMPE.F32       S0, S2
4DD6A4:  VMRS            APSR_nzcv, FPSCR
4DD6A8:  AND.W           R0, R0, #2
4DD6AC:  BGE             loc_4DD6CE
4DD6AE:  CBZ             R0, loc_4DD6EA
4DD6B0:  MOV             R0, R6
4DD6B2:  MOVS            R1, #1
4DD6B4:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4DD6B8:  LDR.W           R0, [R6,#0x59C]
4DD6BC:  CMP             R0, #7
4DD6BE:  BLT             loc_4DD718
4DD6C0:  CMP             R0, #0x10
4DD6C2:  BLT             loc_4DD71C
4DD6C4:  LDR.W           R1, [R6,#0x4E0]
4DD6C8:  MOVS            R2, #3
4DD6CA:  LDR             R0, [R6,#0x18]
4DD6CC:  B               loc_4DD6F0
4DD6CE:  CBZ             R0, loc_4DD6F6
4DD6D0:  VMOV.F32        S2, #0.75
4DD6D4:  VLDR            S0, [R4,#0x14]
4DD6D8:  VCMPE.F32       S0, S2
4DD6DC:  VMRS            APSR_nzcv, FPSCR
4DD6E0:  BLE             loc_4DD7D2
4DD6E2:  LDR             R0, [R6,#0x18]
4DD6E4:  MOVS            R1, #0
4DD6E6:  MOVS            R2, #0x35 ; '5'
4DD6E8:  B               loc_4DD864
4DD6EA:  LDR             R0, [R6,#0x18]
4DD6EC:  MOVS            R1, #0
4DD6EE:  MOVS            R2, #0x31 ; '1'
4DD6F0:  MOV.W           R3, #0x41000000
4DD6F4:  B               loc_4DD726
4DD6F6:  CMP             R5, #0
4DD6F8:  BEQ             loc_4DD7E8
4DD6FA:  VLDR            S2, [R5,#0x1C]
4DD6FE:  VCMPE.F32       S2, #0.0
4DD702:  VMRS            APSR_nzcv, FPSCR
4DD706:  BGE             loc_4DD7EE
4DD708:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4DD712)
4DD70A:  VLDR            S6, [R5,#0x18]
4DD70E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4DD710:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4DD712:  VLDR            S4, [R0]
4DD716:  B               loc_4DD820
4DD718:  CMP             R0, #6
4DD71A:  BNE             loc_4DD6C4
4DD71C:  LDR             R0, [R6,#0x18]; int
4DD71E:  MOVS            R1, #0; int
4DD720:  MOVS            R2, #0xBE; unsigned int
4DD722:  MOV.W           R3, #0x40800000
4DD726:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DD72A:  CMP.W           R9, #0
4DD72E:  ITTT NE
4DD730:  LDRHNE.W        R1, [R9,#0x2E]
4DD734:  BICNE.W         R1, R1, #1
4DD738:  STRHNE.W        R1, [R9,#0x2E]
4DD73C:  CMP.W           R11, #0
4DD740:  ITTT NE
4DD742:  LDRHNE.W        R1, [R11,#0x2E]
4DD746:  BICNE.W         R1, R1, #1
4DD74A:  STRHNE.W        R1, [R11,#0x2E]
4DD74E:  CMP.W           R8, #0
4DD752:  ITTT NE
4DD754:  LDRHNE.W        R1, [R8,#0x2E]
4DD758:  BICNE.W         R1, R1, #1
4DD75C:  STRHNE.W        R1, [R8,#0x2E]
4DD760:  CMP.W           R10, #0
4DD764:  ITTT NE
4DD766:  LDRHNE.W        R1, [R10,#0x2E]
4DD76A:  BICNE.W         R1, R1, #1
4DD76E:  STRHNE.W        R1, [R10,#0x2E]
4DD772:  CBZ             R0, loc_4DD7BE
4DD774:  VLDR            S0, =0.95
4DD778:  VLDR            S2, [R0,#0x18]
4DD77C:  VCMPE.F32       S2, S0
4DD780:  VMRS            APSR_nzcv, FPSCR
4DD784:  BLE             loc_4DD7BE
4DD786:  CMP.W           R9, #0
4DD78A:  ITTT NE
4DD78C:  MOVNE           R0, R9; this
4DD78E:  MOVNE           R1, #0; float
4DD790:  BLXNE           j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DD794:  CMP.W           R11, #0
4DD798:  ITTT NE
4DD79A:  MOVNE           R0, R11; this
4DD79C:  MOVNE           R1, #0; float
4DD79E:  BLXNE           j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DD7A2:  CMP.W           R8, #0
4DD7A6:  ITTT NE
4DD7A8:  MOVNE           R0, R8; this
4DD7AA:  MOVNE           R1, #0; float
4DD7AC:  BLXNE           j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DD7B0:  CMP.W           R10, #0
4DD7B4:  BEQ             loc_4DD7BE
4DD7B6:  MOV             R0, R10; this
4DD7B8:  MOVS            R1, #0; float
4DD7BA:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DD7BE:  MOVS            R0, #0
4DD7C0:  STR             R0, [R4,#0x14]
4DD7C2:  STR             R0, [R4,#0x18]
4DD7C4:  STRB            R0, [R4,#0xA]
4DD7C6:  VPOP            {D8-D10}
4DD7CA:  ADD             SP, SP, #4
4DD7CC:  POP.W           {R8-R11}
4DD7D0:  POP             {R4-R7,PC}
4DD7D2:  VMOV.F32        S2, #-0.75
4DD7D6:  VCMPE.F32       S0, S2
4DD7DA:  VMRS            APSR_nzcv, FPSCR
4DD7DE:  BGE             loc_4DD84E
4DD7E0:  LDR             R0, [R6,#0x18]
4DD7E2:  MOVS            R1, #0
4DD7E4:  MOVS            R2, #0x33 ; '3'
4DD7E6:  B               loc_4DD864
4DD7E8:  VMOV.F32        S2, #1.0
4DD7EC:  B               loc_4DD8A0
4DD7EE:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4DD7FE)
4DD7F0:  VMOV.F32        S2, #-8.0
4DD7F4:  MOVS            R1, #0
4DD7F6:  VLDR            S6, =50.0
4DD7FA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4DD7FC:  STR             R1, [R5,#0x1C]
4DD7FE:  VLDR            S8, [R5,#0x18]
4DD802:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4DD804:  VLDR            S4, [R0]
4DD808:  VMUL.F32        S2, S4, S2
4DD80C:  VDIV.F32        S6, S2, S6
4DD810:  VADD.F32        S6, S8, S6
4DD814:  VLDR            S2, =0.0
4DD818:  VMAX.F32        D3, D3, D1
4DD81C:  VSTR            S6, [R5,#0x18]
4DD820:  VMUL.F32        S2, S2, S4
4DD824:  VLDR            S4, =50.0
4DD828:  VDIV.F32        S4, S2, S4
4DD82C:  VMOV.F32        S2, #1.0
4DD830:  VADD.F32        S4, S6, S4
4DD834:  VCMPE.F32       S4, S2
4DD838:  VMRS            APSR_nzcv, FPSCR
4DD83C:  ITT LE
4DD83E:  VCMPELE.F32     S4, #0.0
4DD842:  VMRSLE          APSR_nzcv, FPSCR
4DD846:  BGE             loc_4DD88A
4DD848:  VLDR            S6, =0.0
4DD84C:  B               loc_4DD89C
4DD84E:  VLDR            S0, [R4,#0x18]
4DD852:  MOVS            R1, #0; int
4DD854:  LDR             R0, [R6,#0x18]; int
4DD856:  VCMPE.F32       S0, #0.0
4DD85A:  VMRS            APSR_nzcv, FPSCR
4DD85E:  ITE LE
4DD860:  MOVLE           R2, #0x32 ; '2'
4DD862:  MOVGT           R2, #0x34 ; '4'; unsigned int
4DD864:  MOV.W           R3, #0x41000000
4DD868:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DD86C:  LDRH            R1, [R0,#0x2E]
4DD86E:  ORR.W           R1, R1, #1
4DD872:  STRH            R1, [R0,#0x2E]
4DD874:  MOV             R0, R6
4DD876:  MOVS            R1, #0
4DD878:  VPOP            {D8-D10}
4DD87C:  ADD             SP, SP, #4
4DD87E:  POP.W           {R8-R11}
4DD882:  POP.W           {R4-R7,LR}
4DD886:  B.W             sub_1A1190
4DD88A:  VCMPE.F32       S4, S2
4DD88E:  VMRS            APSR_nzcv, FPSCR
4DD892:  VMOV.F32        S6, S2
4DD896:  IT LE
4DD898:  VMOVLE.F32      S6, S4
4DD89C:  VSUB.F32        S2, S2, S6
4DD8A0:  VLDR            S4, [R4,#0x14]
4DD8A4:  VLDR            S6, [R4,#0x18]
4DD8A8:  VMUL.F32        S4, S2, S4
4DD8AC:  VMUL.F32        S2, S2, S6
4DD8B0:  VDIV.F32        S20, S4, S0
4DD8B4:  VDIV.F32        S18, S2, S0
4DD8B8:  VCMPE.F32       S20, #0.0
4DD8BC:  VMRS            APSR_nzcv, FPSCR
4DD8C0:  BLE             loc_4DD8D8
4DD8C2:  CMP.W           R11, #0
4DD8C6:  ITT NE
4DD8C8:  MOVNE           R0, #0
4DD8CA:  STRDNE.W        R0, R0, [R11,#0x18]
4DD8CE:  CMP.W           R10, #0
4DD8D2:  BEQ             loc_4DD8FE
4DD8D4:  MOV             R11, R10
4DD8D6:  B               loc_4DD90A
4DD8D8:  BGE             loc_4DD92E
4DD8DA:  CMP.W           R10, #0
4DD8DE:  ITT NE
4DD8E0:  MOVNE           R0, #0
4DD8E2:  STRDNE.W        R0, R0, [R10,#0x18]
4DD8E6:  CMP.W           R11, #0
4DD8EA:  BNE             loc_4DD8F8
4DD8EC:  LDR             R0, [R6,#0x18]; int
4DD8EE:  MOVS            R1, #0; int
4DD8F0:  MOVS            R2, #0x33 ; '3'; unsigned int
4DD8F2:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
4DD8F6:  MOV             R11, R0
4DD8F8:  VNEG.F32        S20, S20
4DD8FC:  B               loc_4DD90A
4DD8FE:  LDR             R0, [R6,#0x18]; int
4DD900:  MOVS            R1, #0; int
4DD902:  MOVS            R2, #0x35 ; '5'; unsigned int
4DD904:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
4DD908:  MOV             R11, R0
4DD90A:  MOVS            R0, #0
4DD90C:  STR.W           R0, [R11,#0x1C]
4DD910:  VSTR            S20, [R11,#0x18]
4DD914:  LDR             R0, [R4,#0x30]
4DD916:  VLDR            S0, [R0,#0x3C]
4DD91A:  LDRH.W          R0, [R11,#0x2E]
4DD91E:  VMUL.F32        S0, S16, S0
4DD922:  ORR.W           R0, R0, #1
4DD926:  STRH.W          R0, [R11,#0x2E]
4DD92A:  VSTR            S0, [R11,#0x24]
4DD92E:  VCMPE.F32       S18, #0.0
4DD932:  VMRS            APSR_nzcv, FPSCR
4DD936:  BGE             loc_4DD95C
4DD938:  CMP.W           R8, #0
4DD93C:  ITT NE
4DD93E:  MOVNE           R0, #0
4DD940:  STRDNE.W        R0, R0, [R8,#0x18]
4DD944:  CMP.W           R9, #0
4DD948:  BNE             loc_4DD956
4DD94A:  LDR             R0, [R6,#0x18]; int
4DD94C:  MOVS            R1, #0; int
4DD94E:  MOVS            R2, #0x32 ; '2'; unsigned int
4DD950:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
4DD954:  MOV             R9, R0
4DD956:  VNEG.F32        S18, S18
4DD95A:  B               loc_4DD984
4DD95C:  BLE             loc_4DD9A8
4DD95E:  CMP.W           R9, #0
4DD962:  ITT NE
4DD964:  MOVNE           R0, #0
4DD966:  STRDNE.W        R0, R0, [R9,#0x18]
4DD96A:  CMP.W           R8, #0
4DD96E:  BEQ             loc_4DD978
4DD970:  MOV             R9, R8
4DD972:  B               loc_4DD984
4DD974:  DCFS 0.0
4DD978:  LDR             R0, [R6,#0x18]; int
4DD97A:  MOVS            R1, #0; int
4DD97C:  MOVS            R2, #0x34 ; '4'; unsigned int
4DD97E:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
4DD982:  MOV             R9, R0
4DD984:  MOVS            R0, #0
4DD986:  STR.W           R0, [R9,#0x1C]
4DD98A:  VSTR            S18, [R9,#0x18]
4DD98E:  LDR             R0, [R4,#0x30]
4DD990:  VLDR            S0, [R0,#0x3C]
4DD994:  LDRH.W          R0, [R9,#0x2E]
4DD998:  VMUL.F32        S0, S16, S0
4DD99C:  ORR.W           R0, R0, #1
4DD9A0:  STRH.W          R0, [R9,#0x2E]
4DD9A4:  VSTR            S0, [R9,#0x24]
4DD9A8:  LDRB            R0, [R4,#0x10]
4DD9AA:  CMP             R0, #1
4DD9AC:  BNE             loc_4DD9DE
4DD9AE:  LDR             R0, [R4,#0x2C]
4DD9B0:  CBZ             R0, loc_4DD9DE
4DD9B2:  VLDR            S0, [R0,#0x18]
4DD9B6:  VCMPE.F32       S0, #0.0
4DD9BA:  VMRS            APSR_nzcv, FPSCR
4DD9BE:  BLE             loc_4DD9DE
4DD9C0:  VLDR            S0, [R0,#0x1C]
4DD9C4:  VCMPE.F32       S0, #0.0
4DD9C8:  VMRS            APSR_nzcv, FPSCR
4DD9CC:  BLT             loc_4DD9DE
4DD9CE:  LDR             R1, [R4,#0x30]
4DD9D0:  LDRB            R1, [R1,#0x18]
4DD9D2:  LSLS            R1, R1, #0x1B
4DD9D4:  ITTT PL
4DD9D6:  MOVPL           R1, #0
4DD9D8:  MOVTPL          R1, #0xC080
4DD9DC:  STRPL           R1, [R0,#0x1C]
4DD9DE:  MOVS            R0, #0
4DD9E0:  B               loc_4DD7C4
