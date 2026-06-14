; =========================================================
; Game Engine Function: _ZN11FxManager_c13LoadFxProjectEPc
; Address            : 0x46D91C - 0x46DA54
; =========================================================

46D91C:  PUSH            {R4-R7,LR}
46D91E:  ADD             R7, SP, #0xC
46D920:  PUSH.W          {R8-R11}
46D924:  SUB.W           SP, SP, #0x30C
46D928:  MOV             R9, R0
46D92A:  LDR             R0, =(__stack_chk_guard_ptr - 0x46D934)
46D92C:  ADD             R5, SP, #0x328+var_1A0
46D92E:  MOV             R4, R1
46D930:  ADD             R0, PC; __stack_chk_guard_ptr
46D932:  LDR             R0, [R0]; __stack_chk_guard
46D934:  LDR             R0, [R0]
46D936:  STR             R0, [SP,#0x328+var_20]
46D938:  MOV             R0, R5; char *
46D93A:  BLX             strcpy
46D93E:  MOV             R0, R5; char *
46D940:  BLX             strlen
46D944:  MOVS            R1, #0x78 ; 'x'
46D946:  MOVS            R2, #0; char *
46D948:  STRB            R1, [R5,R0]
46D94A:  ADD             R0, R5
46D94C:  MOVS            R1, #0x2E ; '.'
46D94E:  STRB.W          R1, [R0,#-2]
46D952:  MOVW            R1, #0x4350
46D956:  STRH.W          R1, [R0,#-4]
46D95A:  MOVS            R1, #0x74 ; 't'
46D95C:  STRB.W          R1, [R0,#-1]
46D960:  MOVS            R1, #0x64 ; 'd'
46D962:  STRH.W          R1, [R0,#1]
46D966:  ADR             R0, dword_46DA58; this
46D968:  ADR             R1, off_46DA5C; char *
46D96A:  MOVS            R6, #0
46D96C:  BLX             j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
46D970:  MOV             R1, R5; int
46D972:  STR.W           R0, [R9,#0x28]
46D976:  BLX             j__ZN9CTxdStore7LoadTxdEiPKc; CTxdStore::LoadTxd(int,char const*)
46D97A:  LDR.W           R0, [R9,#0x28]; this
46D97E:  BLX             j__ZN9CTxdStore6AddRefEi; CTxdStore::AddRef(int)
46D982:  BLX             j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
46D986:  LDR.W           R0, [R9,#0x28]; this
46D98A:  MOVS            R1, #0; int
46D98C:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
46D990:  ADR             R1, dword_46DA60; char *
46D992:  MOV             R0, R4; this
46D994:  BLX             j__Z8OpenFilePKcS0_; OpenFile(char const*,char const*)
46D998:  MOV             R5, R0
46D99A:  CMP             R5, #0
46D99C:  BEQ             loc_46DA36
46D99E:  ADD             R6, SP, #0x328+var_2A0
46D9A0:  MOV             R0, R5; unsigned int
46D9A2:  MOV.W           R2, #0x100; int
46D9A6:  MOV             R1, R6; char *
46D9A8:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46D9AC:  ADD.W           R11, SP, #0x328+var_320
46D9B0:  ADR             R1, dword_46DA64; format
46D9B2:  MOV             R0, R6; s
46D9B4:  MOV             R2, R11
46D9B6:  BLX             sscanf
46D9BA:  ADD             R4, SP, #0x328+var_120
46D9BC:  ADD.W           R8, SP, #0x328+var_324
46D9C0:  B               loc_46D9F4
46D9C2:  MOV             R0, R5; unsigned int
46D9C4:  MOV             R1, R4; char *
46D9C6:  MOV.W           R2, #0x100; int
46D9CA:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46D9CE:  ADR             R1, aD_4; "%d"
46D9D0:  MOV             R0, R4; s
46D9D2:  MOV             R2, R8
46D9D4:  BLX             sscanf
46D9D8:  MOVS            R0, #dword_24; this
46D9DA:  BLX             j__ZN12FxSystemBP_cnwEj; FxSystemBP_c::operator new(uint)
46D9DE:  MOV             R10, R0
46D9E0:  BLX             j__ZN12FxSystemBP_cC2Ev; FxSystemBP_c::FxSystemBP_c(void)
46D9E4:  LDR             R3, [SP,#0x328+var_324]; int
46D9E6:  MOV             R2, R5; unsigned int
46D9E8:  BLX             j__ZN12FxSystemBP_c4LoadEPcji; FxSystemBP_c::Load(char *,uint,int)
46D9EC:  MOV             R0, R9; this
46D9EE:  MOV             R1, R10; ListItem_c *
46D9F0:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
46D9F4:  MOV             R0, R5; unsigned int
46D9F6:  MOV             R1, R6; char *
46D9F8:  MOV.W           R2, #0x100; int
46D9FC:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DA00:  MOV             R0, R5; unsigned int
46DA02:  MOV             R1, R6; char *
46DA04:  MOV.W           R2, #0x100; int
46DA08:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DA0C:  ADR             R1, dword_46DA64; format
46DA0E:  MOV             R0, R6; s
46DA10:  MOV             R2, R11
46DA12:  BLX             sscanf
46DA16:  ADR             R1, aFxSystemData; "FX_SYSTEM_DATA:"
46DA18:  MOV             R0, R11; char *
46DA1A:  BLX             strcmp
46DA1E:  CMP             R0, #0
46DA20:  BEQ             loc_46D9C2
46DA22:  MOV             R0, R5; unsigned int
46DA24:  BLX             j__Z9CloseFilej; CloseFile(uint)
46DA28:  BLX             j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
46DA2C:  ADD.W           R0, R9, #0xAC; this
46DA30:  BLX             j__ZN14FxMemoryPool_c8OptimiseEv; FxMemoryPool_c::Optimise(void)
46DA34:  MOVS            R6, #1
46DA36:  LDR             R0, =(__stack_chk_guard_ptr - 0x46DA3E)
46DA38:  LDR             R1, [SP,#0x328+var_20]
46DA3A:  ADD             R0, PC; __stack_chk_guard_ptr
46DA3C:  LDR             R0, [R0]; __stack_chk_guard
46DA3E:  LDR             R0, [R0]
46DA40:  SUBS            R0, R0, R1
46DA42:  ITTTT EQ
46DA44:  MOVEQ           R0, R6
46DA46:  ADDEQ.W         SP, SP, #0x30C
46DA4A:  POPEQ.W         {R8-R11}
46DA4E:  POPEQ           {R4-R7,PC}
46DA50:  BLX             __stack_chk_fail
