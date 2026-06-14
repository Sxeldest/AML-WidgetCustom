; =========================================================
; Game Engine Function: sub_F253C
; Address            : 0xF253C - 0xF25FC
; =========================================================

F253C:  PUSH            {R4-R7,LR}
F253E:  ADD             R7, SP, #0xC
F2540:  PUSH.W          {R8-R11}
F2544:  SUB             SP, SP, #0x4C
F2546:  MOV             R4, R0
F2548:  LDR             R0, =(off_23494C - 0xF2552)
F254A:  LDR             R1, =(sub_F2648+1 - 0xF2556)
F254C:  MOVS            R2, #0
F254E:  ADD             R0, PC; off_23494C
F2550:  MOV             R9, SP
F2552:  ADD             R1, PC; sub_F2648
F2554:  MOV             R3, R4
F2556:  LDR             R0, [R0]; dword_23DF24
F2558:  LDR.W           R10, [R0]
F255C:  MOV             R0, R9
F255E:  STR             R2, [R4]
F2560:  MOVS            R2, #0
F2562:  BL              sub_F273C
F2566:  ADD.W           R11, SP, #0x68+var_50
F256A:  MOV             R1, R9
F256C:  MOV             R0, R11
F256E:  BL              sub_F2EB8
F2572:  BL              sub_F2E60
F2576:  LDR             R0, =(unk_23FCB8 - 0xF257C)
F2578:  ADD             R0, PC; unk_23FCB8
F257A:  LDR             R6, [R0,#(dword_23FCC8 - 0x23FCB8)]
F257C:  CBNZ            R6, loc_F25B0
F257E:  ADD.W           R8, SP, #0x68+var_50
F2582:  ADD             R0, SP, #0x68+var_38
F2584:  MOV             R1, R8
F2586:  BL              sub_F2EB8
F258A:  BL              sub_F2E60
F258E:  LDR             R0, =(unk_23FCB8 - 0xF2594)
F2590:  ADD             R0, PC; unk_23FCB8
F2592:  ADD             R5, SP, #0x68+var_38
F2594:  MOV             R1, R5
F2596:  BL              sub_F2EE4
F259A:  LDR             R0, [SP,#0x68+var_28]
F259C:  CMP             R5, R0
F259E:  BEQ             loc_F25A6
F25A0:  CBZ             R0, loc_F25B0
F25A2:  MOVS            R1, #5
F25A4:  B               loc_F25A8
F25A6:  MOVS            R1, #4
F25A8:  LDR             R2, [R0]
F25AA:  LDR.W           R1, [R2,R1,LSL#2]
F25AE:  BLX             R1
F25B0:  LDR             R0, [SP,#0x68+var_40]
F25B2:  CMP             R11, R0
F25B4:  BEQ             loc_F25BC
F25B6:  CBZ             R0, loc_F25C6
F25B8:  MOVS            R1, #5
F25BA:  B               loc_F25BE
F25BC:  MOVS            R1, #4
F25BE:  LDR             R2, [R0]
F25C0:  LDR.W           R1, [R2,R1,LSL#2]
F25C4:  BLX             R1
F25C6:  CBNZ            R6, loc_F25DC
F25C8:  MOVW            R0, #0x36FC
F25CC:  LDR             R1, =(sub_F2E40+1 - 0xF25D8)
F25CE:  MOVT            R0, #0x67 ; 'g'
F25D2:  ADD             R0, R10
F25D4:  ADD             R1, PC; sub_F2E40
F25D6:  MOV             R2, R4
F25D8:  BL              sub_164196
F25DC:  LDR             R0, [SP,#0x68+var_58]
F25DE:  CMP             R9, R0
F25E0:  BEQ             loc_F25E8
F25E2:  CBZ             R0, loc_F25F2
F25E4:  MOVS            R1, #5
F25E6:  B               loc_F25EA
F25E8:  MOVS            R1, #4
F25EA:  LDR             R2, [R0]
F25EC:  LDR.W           R1, [R2,R1,LSL#2]
F25F0:  BLX             R1
F25F2:  MOV             R0, R4
F25F4:  ADD             SP, SP, #0x4C ; 'L'
F25F6:  POP.W           {R8-R11}
F25FA:  POP             {R4-R7,PC}
