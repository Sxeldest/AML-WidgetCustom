; =========================================================
; Game Engine Function: sub_862A4
; Address            : 0x862A4 - 0x86384
; =========================================================

862A4:  PUSH            {R4-R7,LR}
862A6:  ADD             R7, SP, #0xC
862A8:  PUSH.W          {R8-R11}
862AC:  SUB             SP, SP, #4
862AE:  LDR             R6, =(byte_1ABE60 - 0x862B4)
862B0:  ADD             R6, PC; byte_1ABE60
862B2:  LDRB            R0, [R6]
862B4:  CMP             R0, #0
862B6:  BEQ             loc_8637C
862B8:  LDR             R0, =(aDbgRenderFreeM - 0x862BE); "[dbg:render:free] : module releasing..." ...
862BA:  ADD             R0, PC; "[dbg:render:free] : module releasing..."
862BC:  BL              sub_80664
862C0:  LDR             R0, =(dword_1ABE7C - 0x862C6)
862C2:  ADD             R0, PC; dword_1ABE7C
862C4:  LDR             R4, [R0]
862C6:  MOV             R9, R0
862C8:  LDR             R5, [R0,#(dword_1ABE80 - 0x1ABE7C)]
862CA:  B               loc_862CE
862CC:  ADDS            R4, #0x18
862CE:  CMP             R4, R5
862D0:  BEQ             loc_862E0
862D2:  LDR             R0, [R4,#0x10]
862D4:  CMP             R0, #0
862D6:  BEQ             loc_862CC
862D8:  LDR             R1, [R0]
862DA:  LDR             R1, [R1,#0x18]
862DC:  BLX             R1
862DE:  B               loc_862CC
862E0:  LDR             R0, =(dword_1ABE64 - 0x862E6)
862E2:  ADD             R0, PC; dword_1ABE64
862E4:  LDR             R5, [R0]
862E6:  MOV             R10, R0
862E8:  LDR             R4, [R0,#(dword_1ABE68 - 0x1ABE64)]
862EA:  B               loc_862F6
862EC:  MOVS            R1, #4
862EE:  LDR             R2, [R0]
862F0:  LDR.W           R1, [R2,R1,LSL#2]
862F4:  BLX             R1
862F6:  CMP             R4, R5
862F8:  BEQ             loc_8630C
862FA:  LDR.W           R0, [R4,#-8]
862FE:  SUBS            R4, #0x18
86300:  CMP             R4, R0
86302:  BEQ             loc_862EC
86304:  CMP             R0, #0
86306:  BEQ             loc_862F6
86308:  MOVS            R1, #5
8630A:  B               loc_862EE
8630C:  LDR             R0, =(dword_1ABE70 - 0x86318)
8630E:  MOV             R8, R6
86310:  STR.W           R5, [R10,#(dword_1ABE68 - 0x1ABE64)]
86314:  ADD             R0, PC; dword_1ABE70
86316:  LDR             R4, [R0]
86318:  MOV             R11, R0
8631A:  LDR             R6, [R0,#(dword_1ABE74 - 0x1ABE70)]
8631C:  B               loc_86328
8631E:  MOVS            R1, #4
86320:  LDR             R2, [R0]
86322:  LDR.W           R1, [R2,R1,LSL#2]
86326:  BLX             R1
86328:  CMP             R6, R4
8632A:  BEQ             loc_8633E
8632C:  LDR.W           R0, [R6,#-8]
86330:  SUBS            R6, #0x18
86332:  CMP             R6, R0
86334:  BEQ             loc_8631E
86336:  CMP             R0, #0
86338:  BEQ             loc_86328
8633A:  MOVS            R1, #5
8633C:  B               loc_86320
8633E:  LDRD.W          R5, R6, [R9]
86342:  MOV             R0, R9
86344:  STR.W           R4, [R11,#(dword_1ABE74 - 0x1ABE70)]
86348:  B               loc_86354
8634A:  MOVS            R1, #4
8634C:  LDR             R2, [R0]
8634E:  LDR.W           R1, [R2,R1,LSL#2]
86352:  BLX             R1
86354:  CMP             R6, R5
86356:  BEQ             loc_8636A
86358:  LDR.W           R0, [R6,#-8]
8635C:  SUBS            R6, #0x18
8635E:  CMP             R6, R0
86360:  BEQ             loc_8634A
86362:  CMP             R0, #0
86364:  BEQ             loc_86354
86366:  MOVS            R1, #5
86368:  B               loc_8634C
8636A:  LDR             R0, =(aDbgRenderFreeM_0 - 0x86374); "[dbg:render:free] : module released" ...
8636C:  STR.W           R5, [R9,#(dword_1ABE80 - 0x1ABE7C)]
86370:  ADD             R0, PC; "[dbg:render:free] : module released"
86372:  BL              sub_80664
86376:  MOVS            R0, #0
86378:  STRB.W          R0, [R8]
8637C:  ADD             SP, SP, #4
8637E:  POP.W           {R8-R11}
86382:  POP             {R4-R7,PC}
