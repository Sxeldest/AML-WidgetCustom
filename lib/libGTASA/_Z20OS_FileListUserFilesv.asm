; =========================================================
; Game Engine Function: _Z20OS_FileListUserFilesv
; Address            : 0x267864 - 0x26792A
; =========================================================

267864:  PUSH            {R4-R7,LR}
267866:  ADD             R7, SP, #0xC
267868:  PUSH.W          {R8-R10}
26786C:  SUB.W           SP, SP, #0x208
267870:  LDR             R0, =(__stack_chk_guard_ptr - 0x26787A)
267872:  ADD             R4, SP, #0x220+var_21C
267874:  LDR             R1, =(BasePath_ptr - 0x26787E)
267876:  ADD             R0, PC; __stack_chk_guard_ptr
267878:  LDR             R2, =(StorageRootBuffer_ptr - 0x267882)
26787A:  ADD             R1, PC; BasePath_ptr
26787C:  LDR             R0, [R0]; __stack_chk_guard
26787E:  ADD             R2, PC; StorageRootBuffer_ptr
267880:  LDR             R3, [R1]; BasePath
267882:  LDR             R1, =(aSS_6 - 0x26788C); "%s/%s"
267884:  LDR             R0, [R0]
267886:  STR             R0, [SP,#0x220+var_1C]
267888:  ADD             R1, PC; "%s/%s"
26788A:  LDR             R2, [R2]; StorageRootBuffer
26788C:  MOV             R0, R4
26788E:  LDR             R3, [R3]
267890:  BL              sub_5E6BC0
267894:  MOV             R0, R4; name
267896:  BLX             opendir
26789A:  MOV             R5, R0
26789C:  MOV.W           R0, #0x10400; byte_count
2678A0:  BLX             malloc
2678A4:  MOV.W           R1, #0x400
2678A8:  MOV             R9, R0
2678AA:  BLX             j___aeabi_memclr8_0
2678AE:  CBZ             R5, loc_26790C
2678B0:  MOV             R0, R5; dirp
2678B2:  BLX             readdir
2678B6:  MOV             R4, R0
2678B8:  CBZ             R4, loc_267906
2678BA:  ADD.W           R8, R9, #0x400
2678BE:  ADR             R6, off_26793C; "_SOFT"
2678C0:  MOV.W           R10, #0
2678C4:  B               loc_2678E4
2678C6:  MOV             R0, R8; char *
2678C8:  MOV             R1, R4; char *
2678CA:  BLX             strcpy
2678CE:  MOV             R0, R8; char *
2678D0:  STR.W           R8, [R9,R10,LSL#2]
2678D4:  BLX             strlen
2678D8:  ADD             R0, R8
2678DA:  ADD.W           R10, R10, #1
2678DE:  ADD.W           R8, R0, #1
2678E2:  B               loc_2678FA
2678E4:  LDRB.W          R0, [R4,#0x13]!
2678E8:  CMP             R0, #0x2E ; '.'
2678EA:  BEQ             loc_2678FA
2678EC:  MOV             R0, R4; char *
2678EE:  MOV             R1, R6; char *
2678F0:  MOVS            R2, #3; size_t
2678F2:  BLX             strncmp
2678F6:  CMP             R0, #0
2678F8:  BNE             loc_2678C6
2678FA:  MOV             R0, R5; dirp
2678FC:  BLX             readdir
267900:  MOV             R4, R0
267902:  CMP             R4, #0
267904:  BNE             loc_2678E4
267906:  MOV             R0, R5; dirp
267908:  BLX             closedir
26790C:  LDR             R0, =(__stack_chk_guard_ptr - 0x267914)
26790E:  LDR             R1, [SP,#0x220+var_1C]
267910:  ADD             R0, PC; __stack_chk_guard_ptr
267912:  LDR             R0, [R0]; __stack_chk_guard
267914:  LDR             R0, [R0]
267916:  SUBS            R0, R0, R1
267918:  ITTTT EQ
26791A:  MOVEQ           R0, R9
26791C:  ADDEQ.W         SP, SP, #0x208
267920:  POPEQ.W         {R8-R10}
267924:  POPEQ           {R4-R7,PC}
267926:  BLX             __stack_chk_fail
