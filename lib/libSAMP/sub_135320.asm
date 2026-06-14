; =========================================================
; Game Engine Function: sub_135320
; Address            : 0x135320 - 0x13542A
; =========================================================

135320:  PUSH            {R4-R7,LR}
135322:  ADD             R7, SP, #0xC
135324:  PUSH.W          {R11}
135328:  SUB             SP, SP, #0x20
13532A:  MOVS            R1, #1
13532C:  MOV             R4, R0
13532E:  BL              sub_13D71C
135332:  LDR             R0, =(_ZTV13ControlLayout - 0x135338); `vtable for'ControlLayout ...
135334:  ADD             R0, PC; `vtable for'ControlLayout
135336:  ADDS            R0, #8
135338:  STR             R0, [R4]
13533A:  MOVS            R0, #0x8C; unsigned int
13533C:  BLX             j__Znwj; operator new(uint)
135340:  LDR             R1, =(off_8E5D8 - 0x135348)
135342:  MOV             R6, R0
135344:  ADD             R1, PC; off_8E5D8 ; s
135346:  ADD             R0, SP, #0x30+var_1C; int
135348:  BL              sub_DC6DC
13534C:  ADR             R0, dword_135458
13534E:  MOV             R5, SP
135350:  VLD1.64         {D16-D17}, [R0]
135354:  VST1.64         {D16-D17}, [R5,#0x30+var_30]
135358:  ADD             R1, SP, #0x30+var_1C
13535A:  MOV             R0, R6
13535C:  MOV             R2, R5
13535E:  BL              sub_135498
135362:  LDRB.W          R0, [SP,#0x30+var_1C]
135366:  STR             R6, [R4,#0x6C]
135368:  LSLS            R0, R0, #0x1F
13536A:  BEQ             loc_135374
13536C:  LDR             R0, [SP,#0x30+var_14]; void *
13536E:  BLX             j__ZdlPv; operator delete(void *)
135372:  LDR             R6, [R4,#0x6C]
135374:  MOV             R0, R4
135376:  MOV             R1, R6
135378:  BL              sub_12BDF6
13537C:  LDR             R0, [R4,#0x6C]
13537E:  VMOV.I32        Q8, #0
135382:  ADDS            R0, #0x58 ; 'X'
135384:  VST1.32         {D16-D17}, [R0]
135388:  MOVS            R0, #0x8C; unsigned int
13538A:  BLX             j__Znwj; operator new(uint)
13538E:  LDR             R1, =(unk_8F452 - 0x135396)
135390:  MOV             R6, R0
135392:  ADD             R1, PC; unk_8F452 ; s
135394:  ADD             R0, SP, #0x30+var_1C; int
135396:  BL              sub_DC6DC
13539A:  ADR             R0, dword_135468
13539C:  VLD1.64         {D16-D17}, [R0]
1353A0:  VST1.64         {D16-D17}, [R5]
1353A4:  ADD             R1, SP, #0x30+var_1C
1353A6:  MOV             R0, R6
1353A8:  MOV             R2, R5
1353AA:  BL              sub_135498
1353AE:  LDRB.W          R0, [SP,#0x30+var_1C]
1353B2:  STR             R6, [R4,#0x70]
1353B4:  LSLS            R0, R0, #0x1F
1353B6:  BEQ             loc_1353C0
1353B8:  LDR             R0, [SP,#0x30+var_14]; void *
1353BA:  BLX             j__ZdlPv; operator delete(void *)
1353BE:  LDR             R6, [R4,#0x70]
1353C0:  MOV             R0, R4
1353C2:  MOV             R1, R6
1353C4:  BL              sub_12BDF6
1353C8:  LDR             R0, [R4,#0x70]
1353CA:  VMOV.I32        Q8, #0
1353CE:  ADDS            R0, #0x58 ; 'X'
1353D0:  VST1.32         {D16-D17}, [R0]
1353D4:  MOVS            R0, #0x8C; unsigned int
1353D6:  BLX             j__Znwj; operator new(uint)
1353DA:  LDR             R1, =(unk_8CA0F - 0x1353E2)
1353DC:  MOV             R6, R0
1353DE:  ADD             R1, PC; unk_8CA0F ; s
1353E0:  ADD             R0, SP, #0x30+var_1C; int
1353E2:  BL              sub_DC6DC
1353E6:  ADR             R0, dword_135478
1353E8:  VLD1.64         {D16-D17}, [R0]
1353EC:  VST1.64         {D16-D17}, [R5]
1353F0:  ADD             R1, SP, #0x30+var_1C
1353F2:  MOV             R0, R6
1353F4:  MOV             R2, R5
1353F6:  BL              sub_135498
1353FA:  LDRB.W          R0, [SP,#0x30+var_1C]
1353FE:  STR             R6, [R4,#0x74]
135400:  LSLS            R0, R0, #0x1F
135402:  BEQ             loc_13540C
135404:  LDR             R0, [SP,#0x30+var_14]; void *
135406:  BLX             j__ZdlPv; operator delete(void *)
13540A:  LDR             R6, [R4,#0x74]
13540C:  MOV             R0, R4
13540E:  MOV             R1, R6
135410:  BL              sub_12BDF6
135414:  LDR             R0, [R4,#0x74]
135416:  VMOV.I32        Q8, #0
13541A:  ADDS            R0, #0x58 ; 'X'
13541C:  VST1.32         {D16-D17}, [R0]
135420:  MOV             R0, R4
135422:  ADD             SP, SP, #0x20 ; ' '
135424:  POP.W           {R11}
135428:  POP             {R4-R7,PC}
