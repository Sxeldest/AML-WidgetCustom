; =========================================================
; Game Engine Function: sub_12D318
; Address            : 0x12D318 - 0x12D3AA
; =========================================================

12D318:  SUB             SP, SP, #8
12D31A:  PUSH            {R4-R7,LR}
12D31C:  ADD             R7, SP, #0xC
12D31E:  PUSH.W          {R11}
12D322:  SUB.W           SP, SP, #0x238
12D326:  MOV             R4, R0
12D328:  MOV             R0, R1; s
12D32A:  MOV             R5, R1
12D32C:  STRD.W          R2, R3, [R7,#var_s8]
12D330:  BLX             strlen
12D334:  ADD             R6, SP, #0x248+var_21C
12D336:  MOV             R2, R0
12D338:  MOV             R1, R5
12D33A:  MOV             R0, R6
12D33C:  BL              sub_164D04
12D340:  LDRB.W          R0, [SP,#0x248+var_21C]
12D344:  ADD.W           R1, R7, #8
12D348:  LDR             R3, [SP,#0x248+var_214]
12D34A:  STR             R1, [SP,#0x248+var_220]
12D34C:  LSLS            R0, R0, #0x1F
12D34E:  STR             R1, [SP,#0x248+var_248]
12D350:  ADD             R0, SP, #0x248+s
12D352:  MOV.W           R1, #0
12D356:  MOV.W           R2, #0x200
12D35A:  IT EQ
12D35C:  ADDEQ           R3, R6, #1
12D35E:  BLX             __vsprintf_chk
12D362:  ADD             R0, SP, #0x248+var_22C; int
12D364:  ADD             R1, SP, #0x248+s; s
12D366:  BL              sub_DC6DC
12D36A:  ADR             R0, dword_12D3D0
12D36C:  ADD             R2, SP, #0x248+var_240
12D36E:  VLD1.64         {D16-D17}, [R0]
12D372:  VST1.64         {D16-D17}, [R2]
12D376:  ADD             R1, SP, #0x248+var_22C
12D378:  MOV             R0, R4
12D37A:  BL              sub_12D3E0
12D37E:  LDRB.W          R0, [SP,#0x248+var_22C]
12D382:  LSLS            R0, R0, #0x1F
12D384:  ITT NE
12D386:  LDRNE           R0, [SP,#0x248+var_224]; void *
12D388:  BLXNE           j__ZdlPv; operator delete(void *)
12D38C:  LDRB.W          R0, [SP,#0x248+var_21C]
12D390:  LSLS            R0, R0, #0x1F
12D392:  ITT NE
12D394:  LDRNE           R0, [SP,#0x248+var_214]; void *
12D396:  BLXNE           j__ZdlPv; operator delete(void *)
12D39A:  ADD.W           SP, SP, #0x238
12D39E:  POP.W           {R11}
12D3A2:  POP.W           {R4-R7,LR}
12D3A6:  ADD             SP, SP, #8
12D3A8:  BX              LR
