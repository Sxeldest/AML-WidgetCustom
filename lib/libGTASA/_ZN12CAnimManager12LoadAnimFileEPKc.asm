; =========================================================
; Game Engine Function: _ZN12CAnimManager12LoadAnimFileEPKc
; Address            : 0x38E5D8 - 0x38E62E
; =========================================================

38E5D8:  PUSH            {R4,R5,R7,LR}
38E5DA:  ADD             R7, SP, #8
38E5DC:  SUB             SP, SP, #0x108
38E5DE:  MOV             R4, R0
38E5E0:  LDR             R0, =(__stack_chk_guard_ptr - 0x38E5E6)
38E5E2:  ADD             R0, PC; __stack_chk_guard_ptr
38E5E4:  LDR             R0, [R0]; __stack_chk_guard
38E5E6:  LDR             R0, [R0]
38E5E8:  STR             R0, [SP,#0x110+var_C]
38E5EA:  MOV             R0, R4; char *
38E5EC:  BLX             strlen
38E5F0:  ADDS            R2, R0, #1; size_t
38E5F2:  MOV             R5, SP
38E5F4:  MOV             R0, R5; void *
38E5F6:  MOV             R1, R4; void *
38E5F8:  BLX             memcpy_1
38E5FC:  MOVS            R0, #2
38E5FE:  MOVS            R1, #1
38E600:  MOV             R2, R5
38E602:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
38E606:  MOVS            R1, #1
38E608:  MOVS            R2, #0
38E60A:  MOV             R4, R0
38E60C:  BLX             j__ZN12CAnimManager12LoadAnimFileEP8RwStreambPA32_Kc; CAnimManager::LoadAnimFile(RwStream *,bool,char const(*)[32])
38E610:  MOV             R0, R4
38E612:  MOVS            R1, #0
38E614:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
38E618:  LDR             R0, =(__stack_chk_guard_ptr - 0x38E620)
38E61A:  LDR             R1, [SP,#0x110+var_C]
38E61C:  ADD             R0, PC; __stack_chk_guard_ptr
38E61E:  LDR             R0, [R0]; __stack_chk_guard
38E620:  LDR             R0, [R0]
38E622:  SUBS            R0, R0, R1
38E624:  ITT EQ
38E626:  ADDEQ           SP, SP, #0x108
38E628:  POPEQ           {R4,R5,R7,PC}
38E62A:  BLX             __stack_chk_fail
