; =========================================================
; Game Engine Function: sub_1821D6
; Address            : 0x1821D6 - 0x1822C6
; =========================================================

1821D6:  PUSH            {R4-R7,LR}
1821D8:  ADD             R7, SP, #0xC
1821DA:  PUSH.W          {R8-R11}
1821DE:  SUB             SP, SP, #4
1821E0:  LDR.W           R8, [R0,#0xC]
1821E4:  MOV             R6, R1
1821E6:  MOV             R11, R0
1821E8:  CMP.W           R8, #0
1821EC:  BEQ             loc_18229E
1821EE:  LDR.W           R0, [R11,#4]
1821F2:  CMP             R0, #0
1821F4:  IT EQ
1821F6:  MOVEQ           R0, R8
1821F8:  SUB.W           R9, R0, #1
1821FC:  STR.W           R9, [R11,#4]
182200:  CBZ             R2, loc_18221A
182202:  LSLS            R0, R0, #2
182204:  MOV             R1, R2
182206:  LDR.W           R3, [R11]
18220A:  SUBS            R1, #1
18220C:  LDR             R5, [R3,R0]
18220E:  ADD             R3, R0
182210:  ADD.W           R0, R0, #4
182214:  STR.W           R5, [R3,#-4]
182218:  BNE             loc_182206
18221A:  LDR.W           R1, [R11,#8]
18221E:  ADD             R2, R9
182220:  LDR.W           R0, [R11]
182224:  LDR             R3, [R6]
182226:  CMP             R1, R9
182228:  STR.W           R3, [R0,R2,LSL#2]
18222C:  BNE             loc_1822BE
18222E:  MOV             R0, #0x3FFFFFFE
182236:  AND.W           R0, R0, R8,LSL#1
18223A:  SUBS.W          R1, R0, R8,LSL#1
18223E:  MOV.W           R0, R8,LSL#3
182242:  IT NE
182244:  MOVNE           R1, #1
182246:  CMP             R1, #0
182248:  IT NE
18224A:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
18224E:  BLX             j__Znaj; operator new[](uint)
182252:  MOV             R4, R8
182254:  CMP.W           R8, #1
182258:  IT LS
18225A:  MOVLS           R4, #1
18225C:  LDR.W           R5, [R11]
182260:  MOV             R6, R0
182262:  MOV.W           R0, R8,LSL#1
182266:  MOV.W           R10, #0
18226A:  STR             R0, [SP,#0x20+var_20]
18226C:  ADD.W           R0, R9, R10
182270:  MOV             R1, R8
182272:  BLX             sub_221798
182276:  LDR.W           R0, [R5,R1,LSL#2]
18227A:  STR.W           R0, [R6,R10,LSL#2]
18227E:  ADD.W           R10, R10, #1
182282:  CMP             R4, R10
182284:  BNE             loc_18226C
182286:  MOVS            R0, #0
182288:  STRD.W          R0, R8, [R11,#4]
18228C:  LDR             R0, [SP,#0x20+var_20]
18228E:  STR.W           R0, [R11,#0xC]
182292:  MOV             R0, R5; void *
182294:  BLX             j__ZdaPv; operator delete[](void *)
182298:  STR.W           R6, [R11]
18229C:  B               loc_1822BE
18229E:  MOVS            R0, #0x40 ; '@'; unsigned int
1822A0:  BLX             j__Znaj; operator new[](uint)
1822A4:  MOVS            R1, #1
1822A6:  STR.W           R0, [R11]
1822AA:  STR.W           R1, [R11,#8]
1822AE:  MOVS            R1, #0
1822B0:  STR.W           R1, [R11,#4]
1822B4:  MOVS            R2, #0x10
1822B6:  LDR             R1, [R6]
1822B8:  STR.W           R2, [R11,#0xC]
1822BC:  STR             R1, [R0]
1822BE:  ADD             SP, SP, #4
1822C0:  POP.W           {R8-R11}
1822C4:  POP             {R4-R7,PC}
