; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRoute13CreateSubTaskEiP4CPed
; Address            : 0x51E750 - 0x51E9DC
; =========================================================

51E750:  PUSH            {R4-R7,LR}
51E752:  ADD             R7, SP, #0xC
51E754:  PUSH.W          {R8-R10}
51E758:  VPUSH           {D8}
51E75C:  SUB             SP, SP, #0x10
51E75E:  MOV             R6, R2
51E760:  MOV             R5, R0
51E762:  MOVS            R4, #0
51E764:  CMP.W           R1, #0x384
51E768:  BGE             loc_51E79A
51E76A:  CMP             R1, #0xC8
51E76C:  BEQ             loc_51E818
51E76E:  CMP             R1, #0xCB
51E770:  BEQ             loc_51E830
51E772:  CMP.W           R1, #0x2C0
51E776:  BNE.W           loc_51E9CE
51E77A:  MOVS            R0, #dword_34; this
51E77C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51E780:  LDR.W           R1, [R6,#0x590]; CVehicle *
51E784:  MOV             R4, R0
51E786:  MOVS            R0, #0
51E788:  MOVS            R2, #1
51E78A:  STRD.W          R2, R0, [SP,#0x30+var_30]; bool
51E78E:  MOV             R0, R4; this
51E790:  MOVS            R2, #0; int
51E792:  MOVS            R3, #0; int
51E794:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
51E798:  B               loc_51E9CE
51E79A:  BEQ             loc_51E852
51E79C:  MOVW            R0, #0x387
51E7A0:  CMP             R1, R0
51E7A2:  BEQ.W           loc_51E8B4
51E7A6:  MOVW            R0, #0x39E
51E7AA:  CMP             R1, R0
51E7AC:  BNE.W           loc_51E9CE
51E7B0:  MOVS            R0, #dword_24; this
51E7B2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51E7B6:  MOV             R4, R0
51E7B8:  LDR             R0, [R5,#0x14]
51E7BA:  BLX             j__ZN24CTaskSimpleGoToPointFine9BaseRatioE10eMoveState; CTaskSimpleGoToPointFine::BaseRatio(eMoveState)
51E7BE:  MOV             R1, R0
51E7C0:  LDRD.W          R0, R2, [R5,#0x20]
51E7C4:  ADD.W           R2, R2, R2,LSL#1
51E7C8:  MOV.W           R12, #0
51E7CC:  MOV.W           R6, #0x3F000000
51E7D0:  ADD.W           R0, R0, R2,LSL#2
51E7D4:  LDRD.W          R2, R3, [R0,#4]
51E7D8:  LDR             R0, [R0,#0xC]
51E7DA:  STMEA.W         SP, {R0,R6,R12}
51E7DE:  MOV             R0, R4
51E7E0:  BLX             j__ZN24CTaskSimpleGoToPointFineC2Ef7CVectorfP7CEntity; CTaskSimpleGoToPointFine::CTaskSimpleGoToPointFine(float,CVector,float,CEntity *)
51E7E4:  LDRB.W          R0, [R5,#0x28]
51E7E8:  LSLS            R0, R0, #0x1A
51E7EA:  BPL.W           loc_51E9CE
51E7EE:  LDR             R0, [R5,#8]
51E7F0:  CMP             R0, #0
51E7F2:  BEQ.W           loc_51E9CE
51E7F6:  LDR             R1, [R0]
51E7F8:  LDR             R1, [R1,#0x14]
51E7FA:  BLX             R1
51E7FC:  CMP.W           R0, #0x384
51E800:  BNE.W           loc_51E9CE
51E804:  LDR             R0, [R5,#8]
51E806:  LDRB            R1, [R4,#0x1C]
51E808:  LDRB            R0, [R0,#0x1C]
51E80A:  AND.W           R1, R1, #0xF0; unsigned int
51E80E:  AND.W           R0, R0, #0xF
51E812:  ORRS            R0, R1
51E814:  STRB            R0, [R4,#0x1C]
51E816:  B               loc_51E9CE
51E818:  MOVS            R0, #byte_8; this
51E81A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51E81E:  MOV             R4, R0
51E820:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
51E824:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x51E82A)
51E826:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
51E828:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
51E82A:  ADDS            R0, #8
51E82C:  STR             R0, [R4]
51E82E:  B               loc_51E9CE
51E830:  MOVS            R0, #dword_20; this
51E832:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51E836:  MOV             R4, R0
51E838:  LDR             R0, =(_ZN21CTaskSimpleStandStill18ms_iStandStillTimeE_ptr - 0x51E844)
51E83A:  MOV.W           R1, #0x41000000
51E83E:  MOVS            R2, #0; bool
51E840:  ADD             R0, PC; _ZN21CTaskSimpleStandStill18ms_iStandStillTimeE_ptr
51E842:  STR             R1, [SP,#0x30+var_30]; float
51E844:  MOVS            R3, #0; bool
51E846:  LDR             R0, [R0]; CTaskSimpleStandStill::ms_iStandStillTime ...
51E848:  LDR             R1, [R0]; int
51E84A:  MOV             R0, R4; this
51E84C:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
51E850:  B               loc_51E9CE
51E852:  MOVS            R0, #word_2C; this
51E854:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51E858:  LDR             R6, [R5,#0x14]
51E85A:  MOV             R4, R0
51E85C:  LDRD.W          R8, R9, [R5,#0x20]
51E860:  LDRB.W          R5, [R5,#0x28]
51E864:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
51E868:  LDR             R0, =(_ZTV15CTaskSimpleGoTo_ptr - 0x51E870)
51E86A:  LDR             R1, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x51E874)
51E86C:  ADD             R0, PC; _ZTV15CTaskSimpleGoTo_ptr
51E86E:  STR             R6, [R4,#8]
51E870:  ADD             R1, PC; _ZTV20CTaskSimpleGoToPoint_ptr
51E872:  LDR             R0, [R0]; `vtable for'CTaskSimpleGoTo ...
51E874:  LDR             R1, [R1]; `vtable for'CTaskSimpleGoToPoint ...
51E876:  ADDS            R0, #8
51E878:  STR             R0, [R4]
51E87A:  ADD.W           R0, R9, R9,LSL#1
51E87E:  LDRB            R2, [R4,#0x1C]
51E880:  LDRB            R3, [R4,#0x1D]
51E882:  ADD.W           R0, R8, R0,LSL#2
51E886:  VLDR            D16, [R0,#4]
51E88A:  LDR             R0, [R0,#0xC]
51E88C:  STR             R0, [R4,#0x14]
51E88E:  ADD.W           R0, R1, #8
51E892:  STR             R0, [R4]
51E894:  MOV.W           R0, #0x3F000000
51E898:  STR             R0, [R4,#0x18]
51E89A:  MOVS            R0, #8
51E89C:  AND.W           R0, R0, R5,LSL#3
51E8A0:  AND.W           R1, R3, #0xE0
51E8A4:  ORRS            R0, R1
51E8A6:  STRB            R0, [R4,#0x1D]
51E8A8:  AND.W           R0, R2, #0xC0
51E8AC:  STRB            R0, [R4,#0x1C]
51E8AE:  VSTR            D16, [R4,#0xC]
51E8B2:  B               loc_51E9CE
51E8B4:  LDR             R0, [R5,#0xC]
51E8B6:  CMP             R0, #3
51E8B8:  IT NE
51E8BA:  CMPNE           R0, #2
51E8BC:  BEQ             loc_51E8D6
51E8BE:  VLDR            S16, [R5,#0x1C]
51E8C2:  CMP             R0, #1
51E8C4:  BNE             loc_51E8DA
51E8C6:  LDR             R0, [R5,#0x10]
51E8C8:  VLDR            S0, =0.0
51E8CC:  CMP             R0, #0
51E8CE:  IT EQ
51E8D0:  VMOVEQ.F32      S16, S0
51E8D4:  B               loc_51E8DA
51E8D6:  VLDR            S16, =0.0
51E8DA:  LDR             R0, [R5,#4]
51E8DC:  CBZ             R0, loc_51E8F6
51E8DE:  LDR             R1, [R0]
51E8E0:  LDR             R1, [R1,#0x14]
51E8E2:  BLX             R1
51E8E4:  CMP.W           R0, #0x1FC
51E8E8:  BNE             loc_51E8F6
51E8EA:  LDR             R0, [R5,#4]; this
51E8EC:  BLX             j__ZNK24CTaskComplexWalkRoundCar12GoingForDoorEv; CTaskComplexWalkRoundCar::GoingForDoor(void)
51E8F0:  MOV.W           R10, R0,LSL#1
51E8F4:  B               loc_51E8FA
51E8F6:  MOV.W           R10, #0
51E8FA:  MOVS            R0, #word_28; this
51E8FC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51E900:  LDRD.W          R9, R8, [R5,#0x14]
51E904:  MOV             R4, R0
51E906:  LDRD.W          R6, R5, [R5,#0x20]
51E90A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51E90E:  LDR             R0, =(_ZTV34CTaskComplexGoToPointAndStandStill_ptr - 0x51E918)
51E910:  STR.W           R9, [R4,#0xC]
51E914:  ADD             R0, PC; _ZTV34CTaskComplexGoToPointAndStandStill_ptr
51E916:  LDRB.W          R1, [R4,#0x24]
51E91A:  VLDR            S0, [R4,#0x10]
51E91E:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointAndStandStill ...
51E920:  ADDS            R0, #8
51E922:  STR             R0, [R4]
51E924:  BIC.W           R0, R1, #0x1B
51E928:  ADD.W           R1, R5, R5,LSL#1
51E92C:  ORR.W           R0, R0, R10
51E930:  STRB.W          R0, [R4,#0x24]
51E934:  ADD.W           R1, R6, R1,LSL#2
51E938:  VLDR            S2, [R1,#4]
51E93C:  VCMP.F32        S0, S2
51E940:  VMRS            APSR_nzcv, FPSCR
51E944:  BNE             loc_51E978
51E946:  VLDR            S0, [R4,#0x14]
51E94A:  VLDR            S2, [R1,#8]
51E94E:  VCMP.F32        S0, S2
51E952:  VMRS            APSR_nzcv, FPSCR
51E956:  BNE             loc_51E978
51E958:  VLDR            S0, [R4,#0x18]
51E95C:  VLDR            S2, [R1,#0xC]
51E960:  VCMP.F32        S0, S2
51E964:  VMRS            APSR_nzcv, FPSCR
51E968:  BNE             loc_51E978
51E96A:  VLDR            S0, [R4,#0x20]
51E96E:  VCMP.F32        S0, S16
51E972:  VMRS            APSR_nzcv, FPSCR
51E976:  BEQ             loc_51E99A
51E978:  ADDS            R1, #4
51E97A:  ORR.W           R0, R0, #4
51E97E:  ADD.W           R2, R4, #0x10
51E982:  VLDR            D16, [R1]
51E986:  LDR             R1, [R1,#8]
51E988:  STR             R1, [R2,#8]
51E98A:  VSTR            D16, [R2]
51E98E:  VSTR            S16, [R4,#0x20]
51E992:  STR.W           R8, [R4,#0x1C]
51E996:  STRB.W          R0, [R4,#0x24]
51E99A:  LSLS            R1, R0, #0x1E
51E99C:  BPL             loc_51E9CE
51E99E:  CMP.W           R9, #5
51E9A2:  VLDR            S0, [R4,#0x1C]
51E9A6:  AND.W           R0, R0, #0xFE
51E9AA:  STRB.W          R0, [R4,#0x24]
51E9AE:  ITE LT
51E9B0:  VMOVLT.F32      S2, #0.5
51E9B4:  VMOVGE.F32      S2, #1.0
51E9B8:  MOVS            R0, #0
51E9BA:  VCMPE.F32       S0, S2
51E9BE:  VMRS            APSR_nzcv, FPSCR
51E9C2:  IT GE
51E9C4:  VMOVGE.F32      S2, S0
51E9C8:  STR             R0, [R4,#0x20]
51E9CA:  VSTR            S2, [R4,#0x1C]
51E9CE:  MOV             R0, R4
51E9D0:  ADD             SP, SP, #0x10
51E9D2:  VPOP            {D8}
51E9D6:  POP.W           {R8-R10}
51E9DA:  POP             {R4-R7,PC}
