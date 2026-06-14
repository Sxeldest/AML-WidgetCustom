; =========================================================
; Game Engine Function: sub_1476D0
; Address            : 0x1476D0 - 0x147754
; =========================================================

1476D0:  PUSH            {R4,R6,R7,LR}
1476D2:  ADD             R7, SP, #8
1476D4:  SUB             SP, SP, #0x120
1476D6:  LDRD.W          R1, R0, [R0]; src
1476DA:  MOVS            R3, #0
1476DC:  ASRS            R2, R0, #0x1F
1476DE:  ADD.W           R0, R0, R2,LSR#29
1476E2:  MOVS            R2, #1
1476E4:  ADD.W           R2, R2, R0,ASR#3; size
1476E8:  ADD             R0, SP, #0x128+var_11C; int
1476EA:  BL              sub_17D4F2
1476EE:  LDR             R1, [SP,#0x128+var_11C]
1476F0:  LDR             R0, [SP,#0x128+var_114]
1476F2:  CMP             R0, R1
1476F4:  BGE             loc_14770C
1476F6:  LDR             R1, [SP,#0x128+var_110]
1476F8:  ASRS            R2, R0, #3
1476FA:  LDRB            R1, [R1,R2]
1476FC:  ADDS            R2, R0, #1
1476FE:  AND.W           R0, R0, #7
147702:  STR             R2, [SP,#0x128+var_114]
147704:  LSL.W           R0, R1, R0
147708:  UXTB            R0, R0
14770A:  LSRS            R4, R0, #7
14770C:  ADD             R0, SP, #0x128+var_11C; int
14770E:  ADD.W           R1, SP, #0x128+var_11E; int
147712:  MOVS            R2, #0x10
147714:  MOVS            R3, #1
147716:  BL              sub_17D786
14771A:  LDRH.W          R0, [SP,#0x128+var_11E]
14771E:  LDR             R1, =(aAxl - 0x147726); "AXL" ...
147720:  LDR             R2, =(aEditobjectBpla - 0x147728); "EditObject: bPlayerObject(%d), objectID"... ...
147722:  ADD             R1, PC; "AXL"
147724:  ADD             R2, PC; "EditObject: bPlayerObject(%d), objectID"...
147726:  UXTB            R4, R4
147728:  STR             R0, [SP,#0x128+var_128]
14772A:  MOVS            R0, #4; prio
14772C:  MOV             R3, R4
14772E:  BLX             __android_log_print
147732:  LDR             R0, =(off_234A20 - 0x14773C)
147734:  LDRH.W          R1, [SP,#0x128+var_11E]
147738:  ADD             R0, PC; off_234A20
14773A:  LDR             R0, [R0]; dword_23DF0C
14773C:  LDR             R0, [R0]
14773E:  CMP             R4, #0
147740:  IT NE
147742:  MOVNE           R4, #1
147744:  MOV             R2, R4
147746:  BL              sub_147E28
14774A:  ADD             R0, SP, #0x128+var_11C
14774C:  BL              sub_17D542
147750:  ADD             SP, SP, #0x120
147752:  POP             {R4,R6,R7,PC}
