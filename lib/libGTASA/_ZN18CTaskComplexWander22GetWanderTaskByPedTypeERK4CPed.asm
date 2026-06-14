; =========================================================
; Game Engine Function: _ZN18CTaskComplexWander22GetWanderTaskByPedTypeERK4CPed
; Address            : 0x520830 - 0x520A0A
; =========================================================

520830:  PUSH            {R4-R7,LR}
520832:  ADD             R7, SP, #0xC
520834:  PUSH.W          {R11}
520838:  LDR.W           R0, [R0,#0x59C]
52083C:  MOVW            R6, #0xFFFF
520840:  SUBS            R0, #6
520842:  MOV.W           R0, R0,ROR#1
520846:  CMP             R0, #8; switch 9 cases
520848:  BHI             def_52084A; jumptable 0052084A default case, cases 1-5
52084A:  TBB.W           [PC,R0]; switch jump
52084E:  DCB 5; jump table for switch statement
52084F:  DCB 0x3F
520850:  DCB 0x3F
520851:  DCB 0x3F
520852:  DCB 0x3F
520853:  DCB 0x3F
520854:  DCB 0x51; unsigned int
520855:  DCB 0x79
520856:  DCB 0xA3
520857:  ALIGN 2
520858:  MOVS            R0, #dword_50; jumptable 0052084A case 0
52085A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52085E:  MOV             R4, R0
520860:  BLX             rand
520864:  MOV             R5, R0
520866:  MOV             R0, R4; this
520868:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52086C:  UXTH            R1, R5
52086E:  LDR             R0, =(_ZTV21CTaskComplexWanderCop_ptr - 0x520888)
520870:  VMOV            S2, R1
520874:  VLDR            S4, =0.000015259
520878:  VMOV.I32        Q8, #0
52087C:  ADD.W           R1, R4, #0x38 ; '8'
520880:  VCVT.F32.S32    S2, S2
520884:  ADD             R0, PC; _ZTV21CTaskComplexWanderCop_ptr
520886:  VMOV.F32        S0, #8.0
52088A:  VST1.32         {D16-D17}, [R1]
52088E:  MOVS            R1, #4
520890:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderCop ...
520892:  STR             R1, [R4,#0xC]
520894:  MOV.W           R1, #0x3F000000
520898:  STR             R1, [R4,#0x14]
52089A:  MOVS            R1, #0; unsigned int
52089C:  VMUL.F32        S2, S2, S4
5208A0:  STRH            R6, [R4,#0x18]
5208A2:  STRH            R6, [R4,#0x1C]
5208A4:  ADDS            R0, #8
5208A6:  STR             R1, [R4,#0x20]
5208A8:  STR             R0, [R4]
5208AA:  LDRB.W          R0, [R4,#0x24]
5208AE:  STR.W           R1, [R4,#0x32]
5208B2:  STR.W           R1, [R4,#0x2E]
5208B6:  AND.W           R0, R0, #0xF0
5208BA:  STRD.W          R1, R1, [R4,#0x28]
5208BE:  VMUL.F32        S0, S2, S0
5208C2:  STR.W           R1, [R4,#0x4A]
5208C6:  STR.W           R1, [R4,#0x46]
5208CA:  B               loc_5209F0
5208CC:  MOVS            R0, #dword_38; jumptable 0052084A default case, cases 1-5
5208CE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5208D2:  MOV             R4, R0
5208D4:  BLX             rand
5208D8:  MOV             R5, R0
5208DA:  MOV             R0, R4; this
5208DC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5208E0:  UXTH            R0, R5
5208E2:  VMOV            S0, R0
5208E6:  LDR             R0, =(_ZTV26CTaskComplexWanderStandard_ptr - 0x5208F0)
5208E8:  VCVT.F32.S32    S0, S0
5208EC:  ADD             R0, PC; _ZTV26CTaskComplexWanderStandard_ptr
5208EE:  B               loc_520962
5208F0:  MOVS            R0, #word_28; jumptable 0052084A case 6
5208F2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5208F6:  MOV             R4, R0
5208F8:  BLX             rand
5208FC:  MOV             R5, R0
5208FE:  MOV             R0, R4; this
520900:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
520904:  UXTH            R0, R5
520906:  VLDR            S2, =0.000015259
52090A:  VMOV            S0, R0
52090E:  LDR             R0, =(_ZTV23CTaskComplexWanderMedic_ptr - 0x52091E)
520910:  VMOV.F32        S4, #8.0
520914:  MOVS            R1, #4
520916:  VCVT.F32.S32    S0, S0
52091A:  ADD             R0, PC; _ZTV23CTaskComplexWanderMedic_ptr
52091C:  STR             R1, [R4,#0xC]
52091E:  MOV.W           R1, #0x3F000000
520922:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderMedic ...
520924:  STR             R1, [R4,#0x14]
520926:  MOVS            R1, #0; unsigned int
520928:  STRH            R6, [R4,#0x18]
52092A:  ADDS            R0, #8
52092C:  STRH            R6, [R4,#0x1C]
52092E:  LDRB.W          R2, [R4,#0x24]
520932:  VMUL.F32        S0, S0, S2
520936:  STR             R1, [R4,#0x20]
520938:  STR             R0, [R4]
52093A:  VMUL.F32        S0, S0, S4
52093E:  B               loc_5209EC
520940:  MOVS            R0, #dword_38; jumptable 0052084A case 7
520942:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520946:  MOV             R4, R0
520948:  BLX             rand
52094C:  MOV             R5, R0
52094E:  MOV             R0, R4; this
520950:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
520954:  UXTH            R0, R5
520956:  VMOV            S0, R0
52095A:  LDR             R0, =(_ZTV26CTaskComplexWanderCriminal_ptr - 0x520964)
52095C:  VCVT.F32.S32    S0, S0
520960:  ADD             R0, PC; _ZTV26CTaskComplexWanderCriminal_ptr
520962:  VLDR            S2, =0.000015259
520966:  VMOV.F32        S4, #8.0
52096A:  MOVS            R1, #4
52096C:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderStandard
52096E:  VMUL.F32        S0, S0, S2
520972:  STR             R1, [R4,#0xC]
520974:  MOV.W           R1, #0x3F000000
520978:  ADDS            R0, #8
52097A:  STR             R1, [R4,#0x14]
52097C:  MOVS            R1, #0; unsigned int
52097E:  STRH            R6, [R4,#0x18]
520980:  STRH            R6, [R4,#0x1C]
520982:  STR             R1, [R4,#0x20]
520984:  LDRB.W          R2, [R4,#0x24]
520988:  VMUL.F32        S0, S0, S4
52098C:  STR             R0, [R4]
52098E:  STRH            R1, [R4,#0x30]
520990:  STR             R1, [R4,#0x34]
520992:  B               loc_5209E8
520994:  MOVS            R0, #off_3C; jumptable 0052084A case 8
520996:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52099A:  MOV             R4, R0
52099C:  BLX             rand
5209A0:  MOV             R5, R0
5209A2:  MOV             R0, R4; this
5209A4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5209A8:  UXTH            R0, R5
5209AA:  VLDR            S2, =0.000015259
5209AE:  VMOV            S0, R0
5209B2:  LDR             R0, =(_ZTV28CTaskComplexWanderProstitute_ptr - 0x5209C2)
5209B4:  VMOV.F32        S4, #8.0
5209B8:  MOVS            R1, #4
5209BA:  VCVT.F32.S32    S0, S0
5209BE:  ADD             R0, PC; _ZTV28CTaskComplexWanderProstitute_ptr
5209C0:  STR             R1, [R4,#0xC]
5209C2:  MOV.W           R1, #0x3F000000
5209C6:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderProstitute ...
5209C8:  STR             R1, [R4,#0x14]
5209CA:  MOVS            R1, #0
5209CC:  STRH            R6, [R4,#0x18]
5209CE:  ADDS            R0, #8
5209D0:  STRH            R6, [R4,#0x1C]
5209D2:  STR             R1, [R4,#0x20]
5209D4:  VMUL.F32        S0, S0, S2
5209D8:  STRH            R1, [R4,#0x30]
5209DA:  LDRB.W          R2, [R4,#0x24]
5209DE:  STR             R0, [R4]
5209E0:  STRD.W          R1, R1, [R4,#0x34]
5209E4:  VMUL.F32        S0, S0, S4
5209E8:  STR             R1, [R4,#0x28]
5209EA:  STR             R1, [R4,#0x2C]
5209EC:  AND.W           R0, R2, #0xF0
5209F0:  VCVT.S32.F32    S0, S0
5209F4:  ORR.W           R0, R0, #1
5209F8:  STRB.W          R0, [R4,#0x24]
5209FC:  VMOV            R0, S0
520A00:  STRB            R0, [R4,#0x10]
520A02:  MOV             R0, R4
520A04:  POP.W           {R11}
520A08:  POP             {R4-R7,PC}
