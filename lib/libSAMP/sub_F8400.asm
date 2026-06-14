; =========================================================
; Game Engine Function: sub_F8400
; Address            : 0xF8400 - 0xF8462
; =========================================================

F8400:  PUSH            {R4,R6,R7,LR}
F8402:  ADD             R7, SP, #8
F8404:  MOVS            R1, #0x2C ; ','
F8406:  LDR             R3, =(dword_2402E0 - 0xF8412)
F8408:  MUL.W           R2, R0, R1
F840C:  LDR             R4, =(unk_2431E4 - 0xF8414)
F840E:  ADD             R3, PC; dword_2402E0
F8410:  ADD             R4, PC; unk_2431E4
F8412:  SMLABB.W        R1, R0, R1, R4
F8416:  LDR             R3, [R3]
F8418:  LDR             R2, [R4,R2]
F841A:  STR.W           R2, [R3,#0x114]
F841E:  LDR             R2, [R1,#4]
F8420:  STR.W           R2, [R3,#0x118]
F8424:  LDR             R2, [R1,#8]
F8426:  STR.W           R2, [R3,#0x11C]
F842A:  LDR             R2, [R1,#0xC]
F842C:  STR.W           R2, [R3,#0x120]
F8430:  LDR             R2, [R1,#0x10]
F8432:  STR.W           R2, [R3,#0x124]
F8436:  LDR             R2, [R1,#0x14]
F8438:  STR.W           R2, [R3,#0x128]
F843C:  LDR             R2, [R1,#0x18]
F843E:  STR.W           R2, [R3,#0x12C]
F8442:  LDR             R2, [R1,#0x1C]
F8444:  STR.W           R2, [R3,#0x130]
F8448:  LDR             R2, [R1,#0x20]
F844A:  LDR             R4, =(byte_24562C - 0xF8456)
F844C:  STR.W           R2, [R3,#0x134]
F8450:  LDR             R2, [R1,#0x24]
F8452:  ADD             R4, PC; byte_24562C
F8454:  STR.W           R2, [R3,#0x138]
F8458:  LDR             R1, [R1,#0x28]
F845A:  STRB            R0, [R4]
F845C:  STR.W           R1, [R3,#0x13C]
F8460:  POP             {R4,R6,R7,PC}
