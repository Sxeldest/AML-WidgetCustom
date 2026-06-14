; =========================================================
; Game Engine Function: sub_10B314
; Address            : 0x10B314 - 0x10B36A
; =========================================================

10B314:  PUSH            {R4,R6,R7,LR}
10B316:  ADD             R7, SP, #8
10B318:  LDR             R0, =(byte_263194 - 0x10B31E)
10B31A:  ADD             R0, PC; byte_263194
10B31C:  LDRB            R0, [R0]
10B31E:  DMB.W           ISH
10B322:  LDR             R4, =(off_263190 - 0x10B328)
10B324:  ADD             R4, PC; off_263190
10B326:  LSLS            R0, R0, #0x1F
10B328:  BEQ             loc_10B340
10B32A:  LDR             R1, [R4]
10B32C:  MOVS            R0, #0
10B32E:  MOVS            R4, #0
10B330:  BLX             R1
10B332:  CBZ             R0, loc_10B33C
10B334:  LDR             R4, [R0,#0x14]
10B336:  CMP             R4, #0
10B338:  IT NE
10B33A:  MOVNE           R4, R0
10B33C:  MOV             R0, R4
10B33E:  POP             {R4,R6,R7,PC}
10B340:  LDR             R0, =(byte_263194 - 0x10B346)
10B342:  ADD             R0, PC; byte_263194 ; __guard *
10B344:  BLX             j___cxa_guard_acquire
10B348:  CMP             R0, #0
10B34A:  BEQ             loc_10B32A
10B34C:  LDR             R0, =(off_23494C - 0x10B35A)
10B34E:  MOV             R2, #0x40B289
10B356:  ADD             R0, PC; off_23494C
10B358:  LDR             R1, [R0]; dword_23DF24
10B35A:  LDR             R0, =(byte_263194 - 0x10B362)
10B35C:  LDR             R1, [R1]
10B35E:  ADD             R0, PC; byte_263194 ; __guard *
10B360:  ADD             R1, R2
10B362:  STR             R1, [R4]
10B364:  BLX             j___cxa_guard_release
10B368:  B               loc_10B32A
