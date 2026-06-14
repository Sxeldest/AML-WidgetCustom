; =========================================================
; Game Engine Function: _ZN11CHandObjectC2EiP4CPedb
; Address            : 0x452918 - 0x452A3A
; =========================================================

452918:  PUSH            {R4-R7,LR}; Alternative name is 'CHandObject::CHandObject(int, CPed *, bool)'
45291A:  ADD             R7, SP, #0xC
45291C:  PUSH.W          {R8,R9,R11}
452920:  SUB             SP, SP, #0x48
452922:  MOV             R4, R0
452924:  LDR             R0, =(__stack_chk_guard_ptr - 0x45292E)
452926:  MOV             R9, R3
452928:  MOV             R6, R2
45292A:  ADD             R0, PC; __stack_chk_guard_ptr
45292C:  MOV             R8, R1
45292E:  LDR             R0, [R0]; __stack_chk_guard
452930:  LDR             R0, [R0]
452932:  STR             R0, [SP,#0x60+var_1C]
452934:  MOV             R0, R4; this
452936:  BLX             j__ZN7CObjectC2Ev; CObject::CObject(void)
45293A:  LDR             R0, =(_ZTV11CHandObject_ptr - 0x452940)
45293C:  ADD             R0, PC; _ZTV11CHandObject_ptr
45293E:  LDR             R0, [R0]; `vtable for'CHandObject ...
452940:  ADDS            R0, #8
452942:  STR             R0, [R4]
452944:  LDR             R0, [R6,#0x18]
452946:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
45294A:  MOV             R5, R0
45294C:  MOV             R0, R6; this
45294E:  STR.W           R6, [R4,#0x184]
452952:  BLX             j__ZN7CEntity13UpdateRpHAnimEv; CEntity::UpdateRpHAnim(void)
452956:  MOVS            R1, #0x17
452958:  CMP.W           R9, #0
45295C:  IT NE
45295E:  MOVNE           R1, #0x21 ; '!'
452960:  MOV             R0, R5
452962:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
452966:  LDR             R1, [R4]
452968:  STR.W           R0, [R4,#0x188]
45296C:  MOV             R0, R4
45296E:  LDR             R2, [R1,#0x18]
452970:  MOV             R1, R8
452972:  BLX             R2
452974:  LDR             R0, [R4,#0x18]
452976:  BLX             j__Z20RpAnimBlendClumpInitP7RpClump; RpAnimBlendClumpInit(RpClump *)
45297A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x452982)
45297C:  MOVS            R1, #0; int
45297E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
452980:  LDR             R5, [R0]; CModelInfo::ms_modelInfoPtrs ...
452982:  LDRSH.W         R0, [R6,#0x26]
452986:  LDR.W           R0, [R5,R0,LSL#2]
45298A:  LDRSH.W         R0, [R0,#0x20]; this
45298E:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
452992:  LDRSH.W         R0, [R6,#0x26]
452996:  LDR.W           R0, [R5,R0,LSL#2]
45299A:  ADD             R5, SP, #0x60+var_5C
45299C:  ADD.W           R1, R0, #8; char *
4529A0:  MOV             R0, R5; char *
4529A2:  BLX             strcpy
4529A6:  MOV             R0, R5; char *
4529A8:  MOVS            R1, #0; char *
4529AA:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
4529AE:  CMP             R0, #0
4529B0:  STR.W           R0, [R4,#0x18C]
4529B4:  BNE             loc_4529D4
4529B6:  LDR             R0, =(RwEngineInstance_ptr - 0x4529BE)
4529B8:  ADD             R5, SP, #0x60+var_5C
4529BA:  ADD             R0, PC; RwEngineInstance_ptr
4529BC:  LDR             R0, [R0]; RwEngineInstance
4529BE:  LDR             R0, [R0]
4529C0:  LDR.W           R1, [R0,#0x120]
4529C4:  MOV             R0, R5
4529C6:  BLX             R1
4529C8:  MOV             R0, R5; char *
4529CA:  MOVS            R1, #0; char *
4529CC:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
4529D0:  STR.W           R0, [R4,#0x18C]
4529D4:  MOVS            R2, #5
4529D6:  LDRB.W          R3, [R4,#0x3A]
4529DA:  LDR             R0, [R4]
4529DC:  LDR             R1, [R4,#0x1C]
4529DE:  STRB.W          R2, [R4,#0x140]
4529E2:  MOVS            R2, #2
4529E4:  BFI.W           R3, R2, #3, #0x1D
4529E8:  MOV             R2, #0xEFFFFBFE
4529F0:  ANDS            R1, R2
4529F2:  ORR.W           R1, R1, #0x10000000
4529F6:  STRB.W          R3, [R4,#0x3A]
4529FA:  ORR.W           R1, R1, #0x400
4529FE:  STR             R1, [R4,#0x1C]
452A00:  LDR             R2, [R0,#0x14]
452A02:  MOV             R0, R4
452A04:  MOVS            R1, #0
452A06:  BLX             R2
452A08:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x452A10)
452A0A:  MOVS            R1, #0xFF
452A0C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
452A0E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
452A10:  LDR.W           R0, [R0,R8,LSL#2]
452A14:  STRB.W          R1, [R0,#0x22]
452A18:  MOVS            R0, #1
452A1A:  STRB.W          R0, [R4,#0x190]
452A1E:  LDR             R0, =(__stack_chk_guard_ptr - 0x452A26)
452A20:  LDR             R1, [SP,#0x60+var_1C]
452A22:  ADD             R0, PC; __stack_chk_guard_ptr
452A24:  LDR             R0, [R0]; __stack_chk_guard
452A26:  LDR             R0, [R0]
452A28:  SUBS            R0, R0, R1
452A2A:  ITTTT EQ
452A2C:  MOVEQ           R0, R4
452A2E:  ADDEQ           SP, SP, #0x48 ; 'H'
452A30:  POPEQ.W         {R8,R9,R11}
452A34:  POPEQ           {R4-R7,PC}
452A36:  BLX             __stack_chk_fail
