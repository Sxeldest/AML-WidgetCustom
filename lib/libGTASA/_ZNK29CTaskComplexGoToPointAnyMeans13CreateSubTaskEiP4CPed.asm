; =========================================================
; Game Engine Function: _ZNK29CTaskComplexGoToPointAnyMeans13CreateSubTaskEiP4CPed
; Address            : 0x524908 - 0x524B00
; =========================================================

524908:  PUSH            {R4-R7,LR}
52490A:  ADD             R7, SP, #0xC
52490C:  PUSH.W          {R8}
524910:  SUB             SP, SP, #0x10; int
524912:  MOV             R6, R2
524914:  MOV             R5, R0
524916:  MOVS            R4, #0
524918:  CMP.W           R1, #0x340
52491C:  BGE             loc_52495E
52491E:  MOVW            R0, #0x2BD
524922:  CMP             R1, R0
524924:  BEQ             loc_524A14
524926:  CMP.W           R1, #0x2C0
52492A:  BEQ             loc_524A24
52492C:  MOVW            R0, #0x2C6
524930:  CMP             R1, R0
524932:  BNE.W           loc_524AF6
524936:  MOVS            R0, #off_3C; this
524938:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52493C:  MOVS            R3, #0
52493E:  MOV             R4, R0
524940:  LDR             R1, [R5,#0x20]; CVehicle *
524942:  MOVS            R0, #0
524944:  MOVT            R3, #0xBF80; float
524948:  MOV.W           R2, #0xFFFFFFFF
52494C:  STMEA.W         SP, {R0,R2,R3}
524950:  ADD.W           R2, R5, #0xC; CVector *
524954:  STR             R0, [SP,#0x20+var_14]; int
524956:  MOV             R0, R4; this
524958:  BLX             j__ZN24CTaskComplexDriveToPointC2EP8CVehicleRK7CVectorfiifi; CTaskComplexDriveToPoint::CTaskComplexDriveToPoint(CVehicle *,CVector const&,float,int,int,float,int)
52495C:  B               loc_524AF6
52495E:  BEQ             loc_524A44
524960:  MOVW            R0, #0x387
524964:  CMP             R1, R0
524966:  BEQ             loc_524A62
524968:  MOVW            R0, #0x38A
52496C:  CMP             R1, R0
52496E:  BNE.W           loc_524AF6
524972:  MOVS            R0, #dword_60; this
524974:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
524978:  MOV             R4, R0
52497A:  LDRD.W          R6, R8, [R5,#0x18]
52497E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
524982:  LDR             R0, =(_ZTV27CTaskComplexFollowNodeRoute_ptr - 0x524992)
524984:  MOVS            R2, #0
524986:  ADD.W           R12, R4, #0x14
52498A:  VMOV.I32        Q9, #0
52498E:  ADD             R0, PC; _ZTV27CTaskComplexFollowNodeRoute_ptr
524990:  MOVT            R2, #0x4040
524994:  MOV.W           R3, #0x40000000
524998:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowNodeRoute ...
52499A:  ADDS            R0, #8
52499C:  STR             R0, [R4]
52499E:  LDR             R1, [R5,#0x14]
5249A0:  LDRB.W          R0, [R4,#0x4C]
5249A4:  VLDR            D16, [R5,#0xC]
5249A8:  MOVW            R5, #0xFFFF
5249AC:  STM.W           R12, {R1,R6,R8}
5249B0:  MOVS            R6, #0
5249B2:  MOV.W           R1, #0xFFFFFFFF
5249B6:  AND.W           R0, R0, #0x96
5249BA:  STRD.W          R2, R3, [R4,#0x20]
5249BE:  STR             R6, [R4,#0x38]
5249C0:  ORR.W           R0, R0, #8
5249C4:  STR             R1, [R4,#0x3C]
5249C6:  ADD.W           R1, R4, #0x50 ; 'P'; unsigned int
5249CA:  STRH            R5, [R4,#0x28]
5249CC:  STRH            R5, [R4,#0x34]
5249CE:  STRH.W          R6, [R4,#0x48]
5249D2:  VST1.32         {D18-D19}, [R1]
5249D6:  STRD.W          R6, R6, [R4,#0x40]
5249DA:  VSTR            D16, [R4,#0xC]
5249DE:  STRB.W          R0, [R4,#0x4C]
5249E2:  MOVS            R0, #dword_64; this
5249E4:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
5249E8:  STR             R6, [R0]
5249EA:  STR             R0, [R4,#0x30]
5249EC:  MOVS            R0, #dword_24; this
5249EE:  BLX             j__ZN10CNodeRoutenwEj; CNodeRoute::operator new(uint)
5249F2:  LDR             R1, =(EmptyNodeAddress_ptr - 0x5249FA)
5249F4:  STR             R6, [R0]
5249F6:  ADD             R1, PC; EmptyNodeAddress_ptr
5249F8:  STRH            R5, [R0,#4]
5249FA:  STRH            R5, [R0,#8]
5249FC:  LDR             R1, [R1]; EmptyNodeAddress ; unsigned int
5249FE:  STRH            R5, [R0,#0xC]
524A00:  STRH            R5, [R0,#0x10]
524A02:  STRH            R5, [R0,#0x14]
524A04:  STRH            R5, [R0,#0x18]
524A06:  STRH            R5, [R0,#0x1C]
524A08:  STRH            R5, [R0,#0x20]
524A0A:  STRH            R5, [R4,#0x34]
524A0C:  STR             R0, [R4,#0x2C]
524A0E:  LDR             R0, [R1]
524A10:  STR             R0, [R4,#0x28]
524A12:  B               loc_524AF6
524A14:  MOVS            R0, #dword_50; this
524A16:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
524A1A:  LDR             R1, [R5,#0x20]; CVehicle *
524A1C:  MOV             R4, R0
524A1E:  BLX             j__ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle; CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)
524A22:  B               loc_524AF6
524A24:  MOVS            R0, #dword_34; this
524A26:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
524A2A:  LDR.W           R1, [R6,#0x590]; CVehicle *
524A2E:  MOV             R4, R0
524A30:  MOVS            R0, #0
524A32:  MOVS            R2, #1
524A34:  STRD.W          R2, R0, [SP,#0x20+var_20]; bool
524A38:  MOV             R0, R4; this
524A3A:  MOVS            R2, #0; int
524A3C:  MOVS            R3, #0; int
524A3E:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
524A42:  B               loc_524AF6
524A44:  MOVS            R0, #dword_34; this
524A46:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
524A4A:  MOV             R4, R0
524A4C:  LDR             R0, [R6,#0x14]
524A4E:  LDR             R2, [R5,#0x24]; int
524A50:  ADD.W           R1, R0, #0x30 ; '0'
524A54:  CMP             R0, #0
524A56:  IT EQ
524A58:  ADDEQ           R1, R6, #4; CVector *
524A5A:  MOV             R0, R4; this
524A5C:  BLX             j__ZN28CTaskSimpleCreateCarAndGetInC2ERK7CVectori; CTaskSimpleCreateCarAndGetIn::CTaskSimpleCreateCarAndGetIn(CVector const&,int)
524A60:  B               loc_524AF6
524A62:  MOVS            R0, #word_28; this
524A64:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
524A68:  MOV             R4, R0
524A6A:  LDRD.W          R6, R8, [R5,#0x18]
524A6E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
524A72:  LDR             R0, =(_ZTV34CTaskComplexGoToPointAndStandStill_ptr - 0x524A7A)
524A74:  STR             R6, [R4,#0xC]
524A76:  ADD             R0, PC; _ZTV34CTaskComplexGoToPointAndStandStill_ptr
524A78:  LDRB.W          R1, [R4,#0x24]
524A7C:  VLDR            S0, [R4,#0x10]
524A80:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointAndStandStill ...
524A82:  ADDS            R0, #8
524A84:  STR             R0, [R4]
524A86:  BIC.W           R0, R1, #0x1B
524A8A:  STRB.W          R0, [R4,#0x24]
524A8E:  VLDR            S2, [R5,#0xC]
524A92:  VCMP.F32        S0, S2
524A96:  VMRS            APSR_nzcv, FPSCR
524A9A:  BNE             loc_524AD2
524A9C:  VLDR            S0, [R5,#0x10]
524AA0:  VLDR            S2, [R4,#0x14]
524AA4:  VCMP.F32        S2, S0
524AA8:  VMRS            APSR_nzcv, FPSCR
524AAC:  BNE             loc_524AD2
524AAE:  VLDR            S0, [R5,#0x14]
524AB2:  VLDR            S2, [R4,#0x18]
524AB6:  VCMP.F32        S2, S0
524ABA:  VMRS            APSR_nzcv, FPSCR
524ABE:  BNE             loc_524AD2
524AC0:  VMOV.F32        S0, #2.0
524AC4:  VLDR            S2, [R4,#0x20]
524AC8:  VCMP.F32        S2, S0
524ACC:  VMRS            APSR_nzcv, FPSCR
524AD0:  BEQ             loc_524AF6
524AD2:  ADD.W           R1, R5, #0xC
524AD6:  ADD.W           R2, R4, #0x10
524ADA:  ORR.W           R0, R0, #4
524ADE:  VLDR            D16, [R1]
524AE2:  LDR             R1, [R1,#8]
524AE4:  STR             R1, [R2,#8]
524AE6:  MOV.W           R1, #0x40000000
524AEA:  VSTR            D16, [R2]
524AEE:  STRD.W          R8, R1, [R4,#0x1C]
524AF2:  STRB.W          R0, [R4,#0x24]
524AF6:  MOV             R0, R4
524AF8:  ADD             SP, SP, #0x10
524AFA:  POP.W           {R8}
524AFE:  POP             {R4-R7,PC}
