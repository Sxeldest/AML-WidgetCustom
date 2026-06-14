; =========================================================
; Game Engine Function: alGetSourceiv
; Address            : 0x1CD2A0 - 0x1CD510
; =========================================================

1CD2A0:  PUSH            {R4-R7,R11,LR}
1CD2A4:  ADD             R11, SP, #0x10
1CD2A8:  SUB             SP, SP, #0x20
1CD2AC:  MOV             R7, R0
1CD2B0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CD2C8)
1CD2B4:  MOV             R5, R1
1CD2B8:  MOV             R4, R2
1CD2BC:  CMP             R5, #0xC000
1CD2C0:  LDR             R0, [PC,R0]; __stack_chk_guard
1CD2C4:  LDR             R0, [R0]
1CD2C8:  STR             R0, [R11,#var_14]
1CD2CC:  BGE             loc_1CD3DC
1CD2D0:  MOVW            R0, #0x1001
1CD2D4:  SUB             R0, R5, R0
1CD2D8:  CMP             R0, #0x32; switch 51 cases
1CD2DC:  BHI             def_1CD2EC; jumptable 001CD2EC default case
1CD2E0:  ADR             R1, jpt_1CD2EC
1CD2E4:  MOV             R0, R0,LSL#2
1CD2E8:  LDR             R0, [R0,R1]
1CD2EC:  ADD             PC, R0, R1; switch jump
1CD2F0:  DCD loc_1CD408 - 0x1CD2F0; jump table for switch statement
1CD2F4:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD2F8:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD2FC:  DCD loc_1CD3BC - 0x1CD2F0; jumptable 001CD2EC cases 3-5
1CD300:  DCD loc_1CD3BC - 0x1CD2F0; jumptable 001CD2EC cases 3-5
1CD304:  DCD loc_1CD3BC - 0x1CD2F0; jumptable 001CD2EC cases 3-5
1CD308:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD30C:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD310:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD314:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD318:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD31C:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD320:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD324:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD328:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD32C:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD330:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD334:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD338:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD33C:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD340:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD344:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD348:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD34C:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD350:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD354:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD358:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD35C:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD360:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD364:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD368:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD36C:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD370:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD374:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD378:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD37C:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD380:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD384:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD388:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD38C:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD390:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD394:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD398:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD39C:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD3A0:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD3A4:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD3A8:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD3AC:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD3B0:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD3B4:  DCD loc_1CD444 - 0x1CD2F0; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD3B8:  DCD loc_1CD408 - 0x1CD2F0; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD3BC:  ADD             R0, R4, #8; jumptable 001CD2EC cases 3-5
1CD3C0:  ADD             R3, R4, #4
1CD3C4:  STR             R0, [SP,#0x30+var_30]
1CD3C8:  MOV             R0, R7
1CD3CC:  MOV             R1, R5
1CD3D0:  MOV             R2, R4
1CD3D4:  BL              j_alGetSource3i
1CD3D8:  B               loc_1CD418
1CD3DC:  SUB             R0, R5, #5
1CD3E0:  SUB             R0, R0, #0x20000
1CD3E4:  CMP             R0, #7
1CD3E8:  BHI             loc_1CD3FC
1CD3EC:  MOV             R1, #1
1CD3F0:  MOV             R2, #0xE1
1CD3F4:  TST             R2, R1,LSL R0
1CD3F8:  BNE             loc_1CD408; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD3FC:  CMP             R5, #0xD000
1CD400:  CMPNE           R5, #0xC000
1CD404:  BNE             loc_1CD444; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD408:  MOV             R0, R7; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD40C:  MOV             R1, R5
1CD410:  MOV             R2, R4
1CD414:  BL              j_alGetSourcei
1CD418:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CD428)
1CD41C:  LDR             R1, [R11,#var_14]
1CD420:  LDR             R0, [PC,R0]; __stack_chk_guard
1CD424:  LDR             R0, [R0]
1CD428:  SUBS            R0, R0, R1
1CD42C:  SUBEQ           SP, R11, #0x10
1CD430:  POPEQ           {R4-R7,R11,PC}
1CD434:  BL              __stack_chk_fail
1CD438:  MOVW            R0, #0x202; jumptable 001CD2EC default case
1CD43C:  CMP             R5, R0
1CD440:  BEQ             loc_1CD408; jumptable 001CD2EC cases 0,1,6,8,15,20,21,31,32,34-38,50
1CD444:  BL              j_GetContextRef; jumptable 001CD2EC cases 2,7,9-14,16-19,22-30,33,39-49
1CD448:  MOV             R6, R0
1CD44C:  CMP             R6, #0
1CD450:  BEQ             loc_1CD418
1CD454:  CMP             R4, #0
1CD458:  BEQ             loc_1CD4E0
1CD45C:  ADD             R0, R6, #0x7C ; '|'
1CD460:  MOV             R1, R7
1CD464:  BL              j_LookupUIntMapKey
1CD468:  MOV             R7, R0
1CD46C:  CMP             R7, #0
1CD470:  BEQ             loc_1CD4EC
1CD474:  MOVW            R0, #0x1031
1CD478:  SUB             R0, R5, R0
1CD47C:  CMP             R0, #1
1CD480:  BHI             loc_1CD4F8
1CD484:  LDR             R0, [R6,#0xFC]
1CD488:  ADD             R0, R0, #8; mutex
1CD48C:  BL              j_EnterCriticalSection
1CD490:  LDR             R0, [R6,#0xFC]
1CD494:  ADD             R2, SP, #0x30+var_28
1CD498:  MOV             R1, R5
1CD49C:  VLDR            S0, [R0,#0xC]
1CD4A0:  VLDR            S2, [R0,#0x10]
1CD4A4:  MOV             R0, R7
1CD4A8:  VCVT.F64.U32    D0, S0
1CD4AC:  VCVT.F64.U32    D1, S2
1CD4B0:  VDIV.F64        D0, D1, D0
1CD4B4:  BL              sub_1CC7D8
1CD4B8:  LDR             R0, [R6,#0xFC]
1CD4BC:  ADD             R0, R0, #8; mutex
1CD4C0:  BL              j_LeaveCriticalSection
1CD4C4:  VLDR            D0, [SP,#0x30+var_28]
1CD4C8:  VCVT.S32.F64    S0, D0
1CD4CC:  VSTR            S0, [R4]
1CD4D0:  VLDR            D0, [SP,#0x30+var_20]
1CD4D4:  VCVT.S32.F64    S0, D0
1CD4D8:  VSTR            S0, [R4,#4]
1CD4DC:  B               loc_1CD504
1CD4E0:  MOV             R0, R6
1CD4E4:  MOVW            R1, #0xA003
1CD4E8:  B               loc_1CD500
1CD4EC:  MOV             R0, R6
1CD4F0:  MOVW            R1, #0xA001
1CD4F4:  B               loc_1CD500
1CD4F8:  MOV             R0, R6
1CD4FC:  MOVW            R1, #0xA002
1CD500:  BL              j_alSetError
1CD504:  MOV             R0, R6
1CD508:  BL              j_ALCcontext_DecRef
1CD50C:  B               loc_1CD418
