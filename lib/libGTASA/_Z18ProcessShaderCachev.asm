; =========================================================
; Game Engine Function: _Z18ProcessShaderCachev
; Address            : 0x2A91B0 - 0x2A92AE
; =========================================================

2A91B0:  PUSH            {R4-R7,LR}
2A91B2:  ADD             R7, SP, #0xC
2A91B4:  PUSH.W          {R8-R11}
2A91B8:  SUB             SP, SP, #0x114
2A91BA:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2A91C2)
2A91BC:  LDR             R1, =(__stack_chk_guard_ptr - 0x2A91C4)
2A91BE:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2A91C0:  ADD             R1, PC; __stack_chk_guard_ptr
2A91C2:  LDR             R0, [R0]; MobileSettings::settings ...
2A91C4:  LDR             R1, [R1]; __stack_chk_guard
2A91C6:  LDR             R2, [R0,#(dword_6E03FC - 0x6E03F4)]; char *
2A91C8:  LDR             R0, [R1]
2A91CA:  ADR             R1, aScacheSmallLow; "scache_small_low.txt"
2A91CC:  STR             R0, [SP,#0x130+var_20]
2A91CE:  ADR             R0, aScacheSmallTxt; "scache_small.txt"
2A91D0:  CMP             R2, #0
2A91D2:  IT EQ
2A91D4:  MOVEQ           R0, R1; this
2A91D6:  ADR             R1, aR_0; "r"
2A91D8:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
2A91DC:  MOV             R5, R0
2A91DE:  CMP             R5, #0
2A91E0:  BEQ             loc_2A9294
2A91E2:  ADD             R1, SP, #0x130+s; unsigned int
2A91E4:  MOV             R0, R5; this
2A91E6:  MOV.W           R2, #(elf_hash_bucket+4); char *
2A91EA:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
2A91EE:  MOVS            R1, #0
2A91F0:  CMP             R0, #1
2A91F2:  STR             R1, [SP,#0x130+p]
2A91F4:  BNE             loc_2A927A
2A91F6:  ADD             R6, SP, #0x130+s
2A91F8:  STR             R5, [SP,#0x130+var_128]
2A91FA:  MOV.W           R10, #1
2A91FE:  MOVS            R5, #0
2A9200:  MOV.W           R11, #0
2A9204:  MOVS            R4, #0
2A9206:  MOV.W           R8, #0
2A920A:  MOV.W           R9, #0
2A920E:  MOVS            R0, #0
2A9210:  ADR             R1, aX; "%x"
2A9212:  ADD             R2, SP, #0x130+var_124
2A9214:  STR             R0, [SP,#0x130+var_124]
2A9216:  MOV             R0, R6; s
2A9218:  BLX             sscanf
2A921C:  CMP             R11, R10
2A921E:  BCS             loc_2A9254
2A9220:  MOVW            R1, #0xAAAB
2A9224:  ADDS            R0, R5, #4
2A9226:  MOVT            R1, #0xAAAA
2A922A:  UMULL.W         R0, R1, R0, R1
2A922E:  MOVS            R0, #3
2A9230:  ADD.W           R11, R0, R1,LSR#1
2A9234:  MOV.W           R0, R11,LSL#2; byte_count
2A9238:  BLX             malloc
2A923C:  MOV             R9, R0
2A923E:  CBZ             R4, loc_2A9250
2A9240:  MOV             R0, R9; void *
2A9242:  MOV             R1, R8; void *
2A9244:  MOV             R2, R5; size_t
2A9246:  BLX             memcpy_0
2A924A:  MOV             R0, R8; p
2A924C:  BLX             free
2A9250:  MOV             R8, R9
2A9252:  MOV             R4, R9
2A9254:  LDR             R0, [SP,#0x130+var_124]
2A9256:  MOV             R1, R6; unsigned int
2A9258:  STR             R0, [R4,R5]
2A925A:  MOV.W           R2, #(elf_hash_bucket+4); char *
2A925E:  LDR             R0, [SP,#0x130+var_128]; this
2A9260:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
2A9264:  ADDS            R5, #4
2A9266:  ADD.W           R10, R10, #1
2A926A:  CMP             R0, #0
2A926C:  BNE             loc_2A920E
2A926E:  LDR             R5, [SP,#0x130+var_128]
2A9270:  SUB.W           R1, R10, #1
2A9274:  STR.W           R9, [SP,#0x130+p]
2A9278:  B               loc_2A927E
2A927A:  MOVS            R4, #0
2A927C:  MOVS            R1, #0; unsigned int
2A927E:  MOV             R0, R4; unsigned int *
2A9280:  BLX             j__Z21emu_ShaderListCompilePjj; emu_ShaderListCompile(uint *,uint)
2A9284:  MOV             R0, R5; this
2A9286:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
2A928A:  CMP             R4, #0
2A928C:  ITT NE
2A928E:  LDRNE           R0, [SP,#0x130+p]; p
2A9290:  BLXNE           free
2A9294:  LDR             R0, =(__stack_chk_guard_ptr - 0x2A929C)
2A9296:  LDR             R1, [SP,#0x130+var_20]
2A9298:  ADD             R0, PC; __stack_chk_guard_ptr
2A929A:  LDR             R0, [R0]; __stack_chk_guard
2A929C:  LDR             R0, [R0]
2A929E:  SUBS            R0, R0, R1
2A92A0:  ITTT EQ
2A92A2:  ADDEQ           SP, SP, #0x114
2A92A4:  POPEQ.W         {R8-R11}
2A92A8:  POPEQ           {R4-R7,PC}
2A92AA:  BLX             __stack_chk_fail
