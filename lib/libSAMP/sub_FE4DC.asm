; =========================================================
; Game Engine Function: sub_FE4DC
; Address            : 0xFE4DC - 0xFE5DC
; =========================================================

FE4DC:  PUSH            {R4-R7,LR}
FE4DE:  ADD             R7, SP, #0xC
FE4E0:  PUSH.W          {R11}
FE4E4:  SUB             SP, SP, #8
FE4E6:  MOV             R4, R0
FE4E8:  LDR             R0, =(off_23496C - 0xFE4EE)
FE4EA:  ADD             R0, PC; off_23496C
FE4EC:  LDR             R6, [R0]; dword_23DEF4
FE4EE:  LDR             R0, [R6]
FE4F0:  CMP             R0, #0
FE4F2:  BEQ             loc_FE5C8
FE4F4:  BL              sub_F61A4
FE4F8:  MOV             R1, R4
FE4FA:  BL              sub_15EB0C
FE4FE:  BL              sub_163768
FE502:  LDRH            R1, [R4,#0x26]
FE504:  LDR.W           R5, [R0,R1,LSL#2]
FE508:  CMP             R5, #0
FE50A:  BEQ             loc_FE5C8
FE50C:  LDR             R0, [R5]
FE50E:  LDR             R1, [R0,#0x14]
FE510:  MOV             R0, R5
FE512:  BLX             R1
FE514:  CMP             R0, #6
FE516:  BNE             loc_FE5C8
FE518:  MOV             R0, R5
FE51A:  BL              sub_163810
FE51E:  CMP             R0, #0
FE520:  BEQ             loc_FE5C8
FE522:  MOV             R0, R4
FE524:  MOV             R1, R5
FE526:  BL              sub_FE5FC
FE52A:  CBNZ            R0, loc_FE586
FE52C:  LDR             R0, [R6]
FE52E:  MOVW            R1, #0xEA60
FE532:  LDR.W           R0, [R0,#0x3B0]
FE536:  LDR             R2, [R0,#4]
FE538:  LDR             R0, [R2,R1]
FE53A:  ADD             R1, R2
FE53C:  LDR             R1, [R1,#4]
FE53E:  CMP             R0, R1
FE540:  BEQ             loc_FE55A
FE542:  MOV.W           R3, #0x1F40
FE546:  LDR             R6, [R0]
FE548:  ADD.W           R6, R2, R6,LSL#2
FE54C:  LDR             R6, [R6,R3]
FE54E:  CMP             R6, R4
FE550:  BEQ             loc_FE55A
FE552:  ADDS            R0, #4
FE554:  CMP             R0, R1
FE556:  BNE             loc_FE546
FE558:  B               loc_FE568
FE55A:  CMP             R0, R1
FE55C:  ITTT NE
FE55E:  LDRHNE          R3, [R0]
FE560:  MOVWNE          R0, #0xFFFF
FE564:  CMPNE           R3, R0
FE566:  BNE             loc_FE574
FE568:  LDR             R1, =(aAxl - 0xFE570); "AXL" ...
FE56A:  LDR             R2, =(aFailToCreateNu - 0xFE574); "Fail to create numberplate for local ve"... ...
FE56C:  ADD             R1, PC; "AXL"
FE56E:  LDRH            R3, [R4,#0x26]
FE570:  ADD             R2, PC; "Fail to create numberplate for local ve"...
FE572:  B               loc_FE580
FE574:  LDR             R1, =(aAxl - 0xFE57E); "AXL" ...
FE576:  LDRH            R0, [R4,#0x26]
FE578:  LDR             R2, =(aFailToCreateNu_0 - 0xFE582); "Fail to create numberplate for vehicle "... ...
FE57A:  ADD             R1, PC; "AXL"
FE57C:  STR             R0, [SP,#0x18+var_18]
FE57E:  ADD             R2, PC; "Fail to create numberplate for vehicle "...
FE580:  MOVS            R0, #5; prio
FE582:  BLX             __android_log_print
FE586:  LDR             R0, =(off_23494C - 0xFE58E)
FE588:  LDR             R1, [R4]
FE58A:  ADD             R0, PC; off_23494C
FE58C:  LDR             R0, [R0]; dword_23DF24
FE58E:  LDR             R0, [R0]
FE590:  SUBS            R0, R1, R0
FE592:  BL              sub_FD5FA
FE596:  MOV             R1, #0x553DD4
FE59E:  CMP             R0, R1
FE5A0:  BEQ             loc_FE5C8
FE5A2:  LDR             R6, =(unk_2475F8 - 0xFE5AA)
FE5A4:  LDRH            R0, [R4,#0x26]
FE5A6:  ADD             R6, PC; unk_2475F8
FE5A8:  LDR.W           R0, [R6,R0,LSL#2]
FE5AC:  CBNZ            R0, loc_FE5BC
FE5AE:  MOV             R0, R5
FE5B0:  BL              sub_16381A
FE5B4:  LDRH            R1, [R4,#0x26]
FE5B6:  LDR             R0, [R0]
FE5B8:  STR.W           R0, [R6,R1,LSL#2]
FE5BC:  MOV             R0, R5
FE5BE:  LDR.W           R6, [R4,#0x598]
FE5C2:  BL              sub_16381A
FE5C6:  STR             R6, [R0]
FE5C8:  LDR             R0, =(off_25AE78 - 0xFE5CE)
FE5CA:  ADD             R0, PC; off_25AE78
FE5CC:  LDR             R1, [R0]
FE5CE:  MOV             R0, R4
FE5D0:  ADD             SP, SP, #8
FE5D2:  POP.W           {R11}
FE5D6:  POP.W           {R4-R7,LR}
FE5DA:  BX              R1
