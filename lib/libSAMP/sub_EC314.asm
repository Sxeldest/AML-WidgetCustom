; =========================================================
; Game Engine Function: sub_EC314
; Address            : 0xEC314 - 0xEC382
; =========================================================

EC314:  PUSH            {R4-R7,LR}
EC316:  ADD             R7, SP, #0xC
EC318:  PUSH.W          {R11}
EC31C:  SUB             SP, SP, #0x10
EC31E:  MOV             R5, R0
EC320:  LDR             R0, [R0]
EC322:  LDR             R2, [R1]
EC324:  CMP             R0, R2
EC326:  BNE             loc_EC352
EC328:  LDRB            R0, [R0]
EC32A:  CMP             R0, #2
EC32C:  BEQ             loc_EC338
EC32E:  CMP             R0, #1
EC330:  BNE             loc_EC33E
EC332:  LDR             R0, [R1,#4]
EC334:  LDR             R1, [R5,#4]
EC336:  B               loc_EC342
EC338:  LDR             R0, [R1,#8]
EC33A:  LDR             R1, [R5,#8]
EC33C:  B               loc_EC342
EC33E:  LDR             R0, [R1,#0xC]
EC340:  LDR             R1, [R5,#0xC]
EC342:  SUBS            R0, R1, R0
EC344:  CLZ.W           R0, R0
EC348:  LSRS            R0, R0, #5
EC34A:  ADD             SP, SP, #0x10
EC34C:  POP.W           {R11}
EC350:  POP             {R4-R7,PC}
EC352:  MOVS            R0, #0x10; thrown_size
EC354:  BLX             j___cxa_allocate_exception
EC358:  LDR             R1, =(aCannotCompareI - 0xEC360); "cannot compare iterators of different c"... ...
EC35A:  MOV             R4, R0
EC35C:  ADD             R1, PC; "cannot compare iterators of different c"...
EC35E:  ADD             R0, SP, #0x20+var_1C; int
EC360:  BL              sub_DC6DC
EC364:  MOVS            R6, #1
EC366:  LDR             R3, [R5]
EC368:  ADD             R2, SP, #0x20+var_1C
EC36A:  MOV             R0, R4
EC36C:  MOVS            R1, #0xD4
EC36E:  BL              sub_E9B38
EC372:  LDR             R1, =(_ZTIN8nlohmann6detail16invalid_iteratorE - 0xEC37C); `typeinfo for'nlohmann::detail::invalid_iterator ...
EC374:  MOVS            R6, #0
EC376:  LDR             R2, =(sub_E9438+1 - 0xEC37E)
EC378:  ADD             R1, PC; lptinfo
EC37A:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
EC37C:  MOV             R0, R4; void *
EC37E:  BLX             j___cxa_throw
