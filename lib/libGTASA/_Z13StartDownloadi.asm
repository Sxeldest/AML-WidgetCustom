; =========================================================
; Game Engine Function: _Z13StartDownloadi
; Address            : 0x296F88 - 0x297010
; =========================================================

296F88:  PUSH            {R4-R7,LR}
296F8A:  ADD             R7, SP, #0xC
296F8C:  PUSH.W          {R11}
296F90:  SUB             SP, SP, #0x90
296F92:  LDR             R1, =(__stack_chk_guard_ptr - 0x296F9C)
296F94:  LSLS            R0, R0, #4
296F96:  LDR             R2, =(AmazonDownloadFilenames_ptr - 0x296F9E)
296F98:  ADD             R1, PC; __stack_chk_guard_ptr
296F9A:  ADD             R2, PC; AmazonDownloadFilenames_ptr
296F9C:  LDR             R1, [R1]; __stack_chk_guard
296F9E:  LDR             R2, [R2]; AmazonDownloadFilenames
296FA0:  LDR             R1, [R1]
296FA2:  STR             R1, [SP,#0xA0+var_14]
296FA4:  LDR             R4, [R2,R0]
296FA6:  MOV             R0, R4; char *
296FA8:  BLX             strlen
296FAC:  ADD             R5, SP, #0xA0+var_98
296FAE:  ADDS            R2, R0, #1; size_t
296FB0:  MOV             R1, R4; void *
296FB2:  MOV             R0, R5; void *
296FB4:  BLX             memcpy_1
296FB8:  ADR             R0, aDownload; "Download"
296FBA:  MOV             R1, R5; char *
296FBC:  BLX             j__Z20OS_ServiceAppCommandPKcS0_; OS_ServiceAppCommand(char const*,char const*)
296FC0:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
296FC4:  LDR             R4, =(aGetdownloadsta - 0x296FCC); "GetDownloadState"
296FC6:  LDR             R5, =(byte_61CD7E - 0x296FCE)
296FC8:  ADD             R4, PC; "GetDownloadState"
296FCA:  ADD             R5, PC; byte_61CD7E
296FCC:  MOV             R0, R4; char *
296FCE:  MOV             R1, R5; char *
296FD0:  BLX             j__Z25OS_ServiceAppCommandValuePKcS0_; OS_ServiceAppCommandValue(char const*,char const*)
296FD4:  MOV             R6, R0
296FD6:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
296FDA:  CMP             R6, #0
296FDC:  BEQ             loc_296FCC
296FDE:  LDR             R0, =(_Z14DownloadThreadPv_ptr - 0x296FEA)
296FE0:  MOVS            R1, #1
296FE2:  MOVS            R2, #0
296FE4:  ADR             R3, aDownloadthread; "DownloadThread"
296FE6:  ADD             R0, PC; _Z14DownloadThreadPv_ptr
296FE8:  STRD.W          R2, R1, [SP,#0xA0+var_A0]
296FEC:  MOVS            R1, #0
296FEE:  MOVS            R2, #1
296FF0:  LDR             R0, [R0]; DownloadThread(void *)
296FF2:  BLX             j__Z15OS_ThreadLaunchPFjPvES_jPKci16OSThreadPriority; OS_ThreadLaunch(uint (*)(void *),void *,uint,char const*,int,OSThreadPriority)
296FF6:  LDR             R0, =(__stack_chk_guard_ptr - 0x296FFE)
296FF8:  LDR             R1, [SP,#0xA0+var_14]
296FFA:  ADD             R0, PC; __stack_chk_guard_ptr
296FFC:  LDR             R0, [R0]; __stack_chk_guard
296FFE:  LDR             R0, [R0]
297000:  SUBS            R0, R0, R1
297002:  ITTT EQ
297004:  ADDEQ           SP, SP, #0x90
297006:  POPEQ.W         {R11}
29700A:  POPEQ           {R4-R7,PC}
29700C:  BLX             __stack_chk_fail
