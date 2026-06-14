; =========================================================
; Game Engine Function: _Z21SaveSCCloudGameToDiskiPvi
; Address            : 0x286F94 - 0x286FF8
; =========================================================

286F94:  PUSH            {R4-R7,LR}
286F96:  ADD             R7, SP, #0xC
286F98:  PUSH.W          {R11}
286F9C:  SUB             SP, SP, #0x88
286F9E:  MOV             R5, R1
286FA0:  LDR             R1, =(__stack_chk_guard_ptr - 0x286FAA)
286FA2:  MOV             R4, R2
286FA4:  CMP             R4, #1
286FA6:  ADD             R1, PC; __stack_chk_guard_ptr
286FA8:  LDR             R1, [R1]; __stack_chk_guard
286FAA:  LDR             R1, [R1]
286FAC:  STR             R1, [SP,#0x98+var_14]
286FAE:  BLT             loc_286FDE
286FB0:  LDR             R2, =(PcSaveHelper_ptr - 0x286FBA)
286FB2:  ADDS            R1, R0, #6; int
286FB4:  ADD             R6, SP, #0x98+var_94
286FB6:  ADD             R2, PC; PcSaveHelper_ptr
286FB8:  LDR             R0, [R2]; PcSaveHelper ; this
286FBA:  MOV             R2, R6; char *
286FBC:  BLX             j__ZN8C_PcSave20GenerateGameFilenameEiPc; C_PcSave::GenerateGameFilename(int,char *)
286FC0:  MOV             R1, SP
286FC2:  MOVS            R0, #1
286FC4:  MOV             R2, R6
286FC6:  MOVS            R3, #1
286FC8:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
286FCC:  CBNZ            R0, loc_286FDE
286FCE:  LDR             R0, [SP,#0x98+var_98]; void *
286FD0:  MOV             R1, R5; ptr
286FD2:  MOV             R2, R4; int
286FD4:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
286FD8:  LDR             R0, [SP,#0x98+var_98]; this
286FDA:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
286FDE:  LDR             R0, =(__stack_chk_guard_ptr - 0x286FE6)
286FE0:  LDR             R1, [SP,#0x98+var_14]
286FE2:  ADD             R0, PC; __stack_chk_guard_ptr
286FE4:  LDR             R0, [R0]; __stack_chk_guard
286FE6:  LDR             R0, [R0]
286FE8:  SUBS            R0, R0, R1
286FEA:  ITTT EQ
286FEC:  ADDEQ           SP, SP, #0x88
286FEE:  POPEQ.W         {R11}
286FF2:  POPEQ           {R4-R7,PC}
286FF4:  BLX             __stack_chk_fail
