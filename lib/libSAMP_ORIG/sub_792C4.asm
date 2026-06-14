; =========================================================
; Game Engine Function: sub_792C4
; Address            : 0x792C4 - 0x7935E
; =========================================================

792C4:  PUSH            {R4-R7,LR}
792C6:  ADD             R7, SP, #0xC
792C8:  PUSH.W          {R11}
792CC:  SUB             SP, SP, #0x120
792CE:  LDR             R1, =(__stack_chk_guard_ptr - 0x792D6)
792D0:  MOVS            R3, #0
792D2:  ADD             R1, PC; __stack_chk_guard_ptr
792D4:  LDR             R1, [R1]; __stack_chk_guard
792D6:  LDR             R1, [R1]
792D8:  STR             R1, [SP,#0x130+var_14]
792DA:  LDRD.W          R1, R0, [R0]; src
792DE:  ASRS            R2, R0, #0x1F
792E0:  ADD.W           R0, R0, R2,LSR#29
792E4:  MOVS            R2, #1
792E6:  ADD.W           R2, R2, R0,ASR#3; size
792EA:  ADD             R0, SP, #0x130+var_128; int
792EC:  BL              sub_86BA8
792F0:  ADD             R1, SP, #0x130+var_12C; int
792F2:  MOVS            R2, #0x20 ; ' '
792F4:  MOVS            R3, #1
792F6:  BL              sub_86E30
792FA:  LDR             R1, [SP,#0x130+var_12C]
792FC:  CMP             R1, #0x19
792FE:  BCC             loc_7930A
79300:  LDR             R0, =(aInvalidAttachS - 0x79306); "Invalid attach slot %d" ...
79302:  ADD             R0, PC; "Invalid attach slot %d"
79304:  BL              sub_6C73C
79308:  B               loc_7933E
7930A:  LDR             R0, =(dword_1A4548 - 0x79314)
7930C:  MOVS            R5, #1
7930E:  LDR             R2, =(dword_116D38 - 0x79316)
79310:  ADD             R0, PC; dword_1A4548
79312:  ADD             R2, PC; dword_116D38
79314:  STR             R5, [R0]
79316:  STR             R1, [R2]
79318:  BL              sub_68858
7931C:  LDR             R1, =(off_114B10 - 0x79322)
7931E:  ADD             R1, PC; off_114B10
79320:  LDR             R1, [R1]; dword_1A442C
79322:  LDR             R1, [R1]
79324:  LDR             R2, =(byte_1A44AD - 0x79332)
79326:  LDRD.W          R3, R4, [R1,#0x94]
7932A:  LDR.W           R1, [R1,#0x9C]
7932E:  ADD             R2, PC; byte_1A44AD
79330:  LDR             R6, =(dword_1A454C - 0x79338)
79332:  STRB            R5, [R4,#8]
79334:  ADD             R6, PC; dword_1A454C
79336:  STRB            R5, [R3,#8]
79338:  STRB            R5, [R2]
7933A:  STR             R0, [R6]
7933C:  STRB            R5, [R1,#8]
7933E:  ADD             R0, SP, #0x130+var_128
79340:  BL              sub_86BF8
79344:  LDR             R0, [SP,#0x130+var_14]
79346:  LDR             R1, =(__stack_chk_guard_ptr - 0x7934C)
79348:  ADD             R1, PC; __stack_chk_guard_ptr
7934A:  LDR             R1, [R1]; __stack_chk_guard
7934C:  LDR             R1, [R1]
7934E:  CMP             R1, R0
79350:  ITTT EQ
79352:  ADDEQ           SP, SP, #0x120
79354:  POPEQ.W         {R11}
79358:  POPEQ           {R4-R7,PC}
7935A:  BLX             __stack_chk_fail
