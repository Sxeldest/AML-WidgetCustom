; =========================================================
; Game Engine Function: _ZN20CTaskInteriorUseInfo17CreateNextSubTaskEP4CPed
; Address            : 0x52987C - 0x529B22
; =========================================================

52987C:  PUSH            {R4-R7,LR}
52987E:  ADD             R7, SP, #0xC
529880:  PUSH.W          {R8}
529884:  SUB             SP, SP, #0x10
529886:  MOV             R5, R0
529888:  MOV             R6, R1
52988A:  LDR             R0, [R5,#0xC]
52988C:  CBZ             R0, loc_5298EE
52988E:  LDR             R0, [R5,#8]
529890:  LDR             R1, [R0]
529892:  LDR             R1, [R1,#0x14]
529894:  BLX             R1
529896:  MOVW            R1, #0x579; unsigned int
52989A:  CMP             R0, R1
52989C:  BNE.W           def_5298AC; jumptable 005298AC default case
5298A0:  LDR             R0, [R5,#0xC]
5298A2:  LDRB            R0, [R0]
5298A4:  SUBS            R0, #1; switch 10 cases
5298A6:  CMP             R0, #9
5298A8:  BHI.W           def_5298AC; jumptable 005298AC default case
5298AC:  TBH.W           [PC,R0,LSL#1]; switch jump
5298B0:  DCW 0xA; jump table for switch statement
5298B2:  DCW 0x21
5298B4:  DCW 0x2E
5298B6:  DCW 0x43
5298B8:  DCW 0x62
5298BA:  DCW 0x8C
5298BC:  DCW 0xAD
5298BE:  DCW 0xC1
5298C0:  DCW 0xE1
5298C2:  DCW 0x12B
5298C4:  MOVS            R0, #word_2C; jumptable 005298AC case 1
5298C6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5298CA:  MOV             R4, R0
5298CC:  LDR.W           R8, [R5,#0xC]
5298D0:  LDR             R6, [R5,#0x14]
5298D2:  LDRB            R5, [R5,#0x18]
5298D4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5298D8:  LDR             R0, =(_ZTV23CTaskInteriorSitInChair_ptr - 0x5298E6)
5298DA:  MOVS            R1, #0
5298DC:  STRH            R1, [R4,#0x24]
5298DE:  MOV.W           R2, #0xFFFFFFFF
5298E2:  ADD             R0, PC; _ZTV23CTaskInteriorSitInChair_ptr
5298E4:  STRD.W          R6, R8, [R4,#8]
5298E8:  STRB            R5, [R4,#0x10]
5298EA:  LDR             R0, [R0]; `vtable for'CTaskInteriorSitInChair ...
5298EC:  B               loc_529964
5298EE:  MOVS            R4, #0
5298F0:  B               loc_529AFC
5298F2:  MOVS            R0, #dword_20; jumptable 005298AC case 2
5298F4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5298F8:  MOVW            R1, #:lower16:unk_98967F
5298FC:  MOV             R4, R0
5298FE:  MOV.W           R0, #0x41000000
529902:  MOVT            R1, #:upper16:unk_98967F
529906:  STR             R0, [SP,#0x20+var_20]
529908:  MOV             R0, R4
52990A:  B               loc_529A2E
52990C:  MOVS            R0, #word_30; jumptable 005298AC case 3
52990E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529912:  MOV             R4, R0
529914:  LDR.W           R8, [R5,#0xC]
529918:  LDR             R6, [R5,#0x14]
52991A:  LDRB            R5, [R5,#0x18]
52991C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
529920:  LDR             R0, =(_ZTV21CTaskInteriorLieInBed_ptr - 0x529930)
529922:  MOVS            R1, #0
529924:  MOV.W           R2, #0xFFFFFFFF
529928:  MOVW            R3, #0x151
52992C:  ADD             R0, PC; _ZTV21CTaskInteriorLieInBed_ptr
52992E:  STRH            R1, [R4,#0x24]
529930:  STRD.W          R6, R8, [R4,#8]
529934:  B               loc_52995E
529936:  MOVS            R0, #word_30; jumptable 005298AC case 4
529938:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52993C:  MOV             R4, R0
52993E:  LDR.W           R8, [R5,#0xC]
529942:  LDR             R6, [R5,#0x14]
529944:  LDRB            R5, [R5,#0x18]
529946:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52994A:  LDR             R0, =(_ZTV21CTaskInteriorLieInBed_ptr - 0x529958)
52994C:  MOVS            R1, #0
52994E:  STRH            R1, [R4,#0x24]
529950:  MOV.W           R2, #0xFFFFFFFF
529954:  ADD             R0, PC; _ZTV21CTaskInteriorLieInBed_ptr
529956:  STRD.W          R6, R8, [R4,#8]
52995A:  MOV.W           R3, #0x154
52995E:  LDR             R0, [R0]; `vtable for'CTaskInteriorLieInBed ...
529960:  STR             R3, [R4,#0x2C]
529962:  STRB            R5, [R4,#0x11]
529964:  STRH            R1, [R4,#0x28]
529966:  STRB.W          R1, [R4,#0x2A]
52996A:  STR             R1, [R4,#0x14]
52996C:  STR             R2, [R4,#0x18]
52996E:  STR             R1, [R4,#0x1C]
529970:  STR             R1, [R4,#0x20]
529972:  B               loc_529A04
529974:  LDR             R0, =(g_interiorMan_ptr - 0x529980); jumptable 005298AC case 5
529976:  MOVS            R1, #0; int
529978:  MOV.W           R8, #0
52997C:  ADD             R0, PC; g_interiorMan_ptr
52997E:  LDR             R0, [R0]; g_interiorMan ; this
529980:  BLX             j__ZN17InteriorManager_c14AreAnimsLoadedEi; InteriorManager_c::AreAnimsLoaded(int)
529984:  CMP             R0, #0
529986:  BEQ.W           def_5298AC; jumptable 005298AC default case
52998A:  LDRB            R0, [R5,#0x18]
52998C:  VMOV.F32        S0, #4.0
529990:  VLDR            S2, =1000.0
529994:  CMP             R0, #0
529996:  MOV.W           R0, #dword_34; this
52999A:  IT NE
52999C:  VMOVNE.F32      S0, S2
5299A0:  VMOV            R6, S0
5299A4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5299A8:  MOV             R4, R0
5299AA:  LDR             R0, [R5,#0x14]
5299AC:  MOV.W           R1, #0x40800000
5299B0:  MOV.W           R2, #0x15A; int
5299B4:  MOV             R3, R6; int
5299B6:  STRD.W          R1, R0, [SP,#0x20+var_20]; float
5299BA:  MOV             R0, R4; int
5299BC:  MOVS            R1, #0x54 ; 'T'; int
5299BE:  STR.W           R8, [SP,#0x20+var_18]; int
5299C2:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffib; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,bool)
5299C6:  B               loc_529AFC
5299C8:  MOVS            R0, #dword_38; jumptable 005298AC case 6
5299CA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5299CE:  MOV             R4, R0
5299D0:  LDR.W           R8, [R5,#0xC]
5299D4:  LDR             R6, [R5,#0x14]
5299D6:  LDRB            R5, [R5,#0x18]
5299D8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5299DC:  LDR             R0, =(_ZTV22CTaskInteriorSitAtDesk_ptr - 0x5299EA)
5299DE:  MOVS            R1, #0
5299E0:  MOV.W           R2, #0xFFFFFFFF
5299E4:  STRH            R1, [R4,#0x24]
5299E6:  ADD             R0, PC; _ZTV22CTaskInteriorSitAtDesk_ptr
5299E8:  STRH            R1, [R4,#0x30]
5299EA:  STRD.W          R1, R1, [R4,#0x28]
5299EE:  STRD.W          R6, R8, [R4,#8]
5299F2:  STRB            R5, [R4,#0x10]
5299F4:  STRD.W          R1, R2, [R4,#0x14]
5299F8:  STRD.W          R1, R1, [R4,#0x1C]
5299FC:  STRH            R1, [R4,#0x34]
5299FE:  LDR             R0, [R0]; `vtable for'CTaskInteriorSitAtDesk ...
529A00:  STRB.W          R1, [R4,#0x36]
529A04:  ADDS            R0, #8
529A06:  STR             R0, [R4]
529A08:  B               loc_529AFC
529A0A:  LDR             R0, =(g_interiorMan_ptr - 0x529A12); jumptable 005298AC case 7
529A0C:  MOVS            R1, #2; int
529A0E:  ADD             R0, PC; g_interiorMan_ptr
529A10:  LDR             R0, [R0]; g_interiorMan ; this
529A12:  BLX             j__ZN17InteriorManager_c14AreAnimsLoadedEi; InteriorManager_c::AreAnimsLoaded(int)
529A16:  CMP             R0, #0
529A18:  BEQ             def_5298AC; jumptable 005298AC default case
529A1A:  MOVS            R0, #dword_20; this
529A1C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529A20:  MOV             R4, R0
529A22:  MOV.W           R0, #0x41000000
529A26:  STR             R0, [SP,#0x20+var_20]
529A28:  MOV             R0, R4
529A2A:  MOVW            R1, #0x1388
529A2E:  MOVS            R2, #0
529A30:  B               loc_529B1A
529A32:  LDR             R0, =(g_interiorMan_ptr - 0x529A3A); jumptable 005298AC case 8
529A34:  MOVS            R1, #1; int
529A36:  ADD             R0, PC; g_interiorMan_ptr
529A38:  LDR             R0, [R0]; g_interiorMan ; this
529A3A:  BLX             j__ZN17InteriorManager_c14AreAnimsLoadedEi; InteriorManager_c::AreAnimsLoaded(int)
529A3E:  CMP             R0, #0
529A40:  BEQ             def_5298AC; jumptable 005298AC default case
529A42:  MOVS            R5, #0
529A44:  MOV             R0, R6; this
529A46:  MOVS            R1, #0xBC; unsigned __int16
529A48:  MOVS            R2, #0; unsigned int
529A4A:  MOV.W           R3, #0x3F800000; float
529A4E:  STRD.W          R5, R5, [SP,#0x20+var_20]; unsigned __int8
529A52:  STR             R5, [SP,#0x20+var_18]; unsigned __int8
529A54:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
529A58:  MOVS            R0, #dword_20; this
529A5A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529A5E:  MOVS            R1, #0x56 ; 'V'
529A60:  MOVW            R2, #0x145
529A64:  MOV.W           R3, #0x40800000
529A68:  MOV             R4, R0
529A6A:  STR             R5, [SP,#0x20+var_20]
529A6C:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
529A70:  B               loc_529AFC
529A72:  LDR             R0, =(g_interiorMan_ptr - 0x529A7A); jumptable 005298AC case 9
529A74:  MOVS            R1, #1; int
529A76:  ADD             R0, PC; g_interiorMan_ptr
529A78:  LDR             R0, [R0]; g_interiorMan ; this
529A7A:  BLX             j__ZN17InteriorManager_c14AreAnimsLoadedEi; InteriorManager_c::AreAnimsLoaded(int)
529A7E:  CBZ             R0, def_5298AC; jumptable 005298AC default case
529A80:  LDR             R0, [R5,#0x10]
529A82:  MOVS            R1, #0; int
529A84:  MOV.W           R8, #0
529A88:  LDR             R0, [R0,#0xC]; this
529A8A:  BLX             j__ZN15InteriorGroup_c6GetPedEi; InteriorGroup_c::GetPed(int)
529A8E:  LDR.W           R0, [R0,#0x440]
529A92:  LDR             R4, [R0,#0x14]
529A94:  LDR             R0, [R4]
529A96:  LDR             R1, [R0,#0x14]
529A98:  MOV             R0, R4
529A9A:  BLX             R1
529A9C:  MOVW            R1, #0x57D
529AA0:  CMP             R0, R1
529AA2:  BNE             def_5298AC; jumptable 005298AC default case
529AA4:  MOVS            R0, #1
529AA6:  MOVS            R1, #0xBD; unsigned __int16
529AA8:  STRB            R0, [R4,#0xC]
529AAA:  MOV             R0, R6; this
529AAC:  MOVS            R2, #0; unsigned int
529AAE:  MOV.W           R3, #0x3F800000; float
529AB2:  STRD.W          R8, R8, [SP,#0x20+var_20]; unsigned __int8
529AB6:  STR.W           R8, [SP,#0x20+var_18]; unsigned __int8
529ABA:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
529ABE:  MOVS            R0, #dword_40; this
529AC0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529AC4:  MOV             R4, R0
529AC6:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
529ACA:  MOVS            R0, #dword_20; this
529ACC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529AD0:  MOVS            R1, #0x56 ; 'V'
529AD2:  MOV.W           R2, #0x146
529AD6:  MOV.W           R3, #0x40800000
529ADA:  MOV             R5, R0
529ADC:  STR.W           R8, [SP,#0x20+var_20]
529AE0:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
529AE4:  MOV             R0, R4; this
529AE6:  MOV             R1, R5; CTask *
529AE8:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
529AEC:  B               loc_529AFC
529AEE:  LDR             R0, [R5,#0xC]; jumptable 005298AC default case
529AF0:  MOVS            R4, #0
529AF2:  LDR             R0, [R0,#0x1C]
529AF4:  CMP             R0, #0
529AF6:  IT NE
529AF8:  STRNE.W         R4, [R6,#0x12C]
529AFC:  MOV             R0, R4
529AFE:  ADD             SP, SP, #0x10
529B00:  POP.W           {R8}
529B04:  POP             {R4-R7,PC}
529B06:  MOVS            R0, #dword_20; jumptable 005298AC case 10
529B08:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529B0C:  MOV             R4, R0
529B0E:  MOV.W           R0, #0x41000000
529B12:  STR             R0, [SP,#0x20+var_20]; float
529B14:  MOV             R0, R4; this
529B16:  MOVS            R1, #0; int
529B18:  MOVS            R2, #1; bool
529B1A:  MOVS            R3, #0; bool
529B1C:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
529B20:  B               loc_529AFC
