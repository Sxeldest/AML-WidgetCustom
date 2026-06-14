; =========================================================
; Game Engine Function: _ZN11CFileLoader13LoadTXDParentEPKc
; Address            : 0x46AAD8 - 0x46AB4A
; =========================================================

46AAD8:  PUSH            {R4,R6,R7,LR}
46AADA:  ADD             R7, SP, #8
46AADC:  SUB             SP, SP, #0x48
46AADE:  LDR             R1, =(__stack_chk_guard_ptr - 0x46AAE8)
46AAE0:  ADD             R4, SP, #0x50+var_2C
46AAE2:  ADD             R3, SP, #0x50+var_4C
46AAE4:  ADD             R1, PC; __stack_chk_guard_ptr
46AAE6:  MOV             R2, R4
46AAE8:  LDR             R1, [R1]; __stack_chk_guard
46AAEA:  LDR             R1, [R1]
46AAEC:  STR             R1, [SP,#0x50+var_C]
46AAEE:  ADR             R1, aSS_2; "%s %s"
46AAF0:  BLX             sscanf
46AAF4:  MOV             R0, R4; this
46AAF6:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
46AAFA:  MOV             R4, R0
46AAFC:  ADDS            R0, R4, #1
46AAFE:  BNE             loc_46AB0C
46AB00:  ADD             R0, SP, #0x50+var_2C; this
46AB02:  ADR             R1, aCutscene_0; "cutscene"
46AB04:  MOVS            R2, #0; char *
46AB06:  BLX             j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
46AB0A:  MOV             R4, R0
46AB0C:  ADD             R0, SP, #0x50+var_4C; this
46AB0E:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
46AB12:  ADDS            R1, R0, #1
46AB14:  BNE             loc_46AB20
46AB16:  ADD             R0, SP, #0x50+var_4C; this
46AB18:  ADR             R1, aGta3_3; "gta3"
46AB1A:  MOVS            R2, #0; char *
46AB1C:  BLX             j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
46AB20:  LDR             R1, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x46AB2A)
46AB22:  RSB.W           R2, R4, R4,LSL#3
46AB26:  ADD             R1, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
46AB28:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool ...
46AB2A:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool
46AB2C:  LDR             R1, [R1]
46AB2E:  ADD.W           R1, R1, R2,LSL#3
46AB32:  STRH            R0, [R1,#6]
46AB34:  LDR             R0, =(__stack_chk_guard_ptr - 0x46AB3C)
46AB36:  LDR             R1, [SP,#0x50+var_C]
46AB38:  ADD             R0, PC; __stack_chk_guard_ptr
46AB3A:  LDR             R0, [R0]; __stack_chk_guard
46AB3C:  LDR             R0, [R0]
46AB3E:  SUBS            R0, R0, R1
46AB40:  ITT EQ
46AB42:  ADDEQ           SP, SP, #0x48 ; 'H'
46AB44:  POPEQ           {R4,R6,R7,PC}
46AB46:  BLX             __stack_chk_fail
