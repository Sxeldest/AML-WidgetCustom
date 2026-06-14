; =========================================================
; Game Engine Function: sub_1374E4
; Address            : 0x1374E4 - 0x137558
; =========================================================

1374E4:  PUSH            {R4,R6,R7,LR}
1374E6:  ADD             R7, SP, #8
1374E8:  SUB             SP, SP, #8
1374EA:  MOV             R4, R0
1374EC:  LDR             R0, =(off_234BB0 - 0x1374F4)
1374EE:  LDR             R1, =(off_234BE4 - 0x1374F8)
1374F0:  ADD             R0, PC; off_234BB0
1374F2:  LDR             R3, [R4,#0x54]
1374F4:  ADD             R1, PC; off_234BE4
1374F6:  LDR             R0, [R0]; dword_314190
1374F8:  ADDS            R3, #0x14
1374FA:  LDR             R1, [R1]; dword_238EE4
1374FC:  LDRD.W          R2, R0, [R0]
137500:  VMOV            D16, R2, R0
137504:  VMOV            D17, D16
137508:  VST1.32         {D16-D17}, [R3]!
13750C:  STRD.W          R2, R0, [R3]
137510:  LDR             R0, [R4,#0x54]
137512:  LDRD.W          R2, R1, [R1]
137516:  STRD.W          R2, R1, [SP,#0x10+var_10]
13751A:  MOV             R1, SP
13751C:  BL              sub_12BD92
137520:  LDR             R0, =(off_234BB8 - 0x137528)
137522:  LDR             R1, =(off_234BB4 - 0x13752C)
137524:  ADD             R0, PC; off_234BB8
137526:  LDR             R3, [R4,#0x58]
137528:  ADD             R1, PC; off_234BB4
13752A:  LDR             R0, [R0]; dword_238EF8
13752C:  ADDS            R3, #0x14
13752E:  LDR             R1, [R1]; dword_238EF0
137530:  LDRD.W          R2, R0, [R0]
137534:  VMOV            D16, R2, R0
137538:  VMOV            D17, D16
13753C:  VST1.32         {D16-D17}, [R3]!
137540:  STRD.W          R2, R0, [R3]
137544:  LDR             R0, [R4,#0x58]
137546:  LDRD.W          R2, R1, [R1]
13754A:  STRD.W          R2, R1, [SP,#0x10+var_10]
13754E:  MOV             R1, SP
137550:  BL              sub_12BD92
137554:  ADD             SP, SP, #8
137556:  POP             {R4,R6,R7,PC}
