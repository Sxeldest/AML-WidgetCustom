; =========================================================
; Game Engine Function: INT123_synth_4to1_s32_mono
; Address            : 0x23A624 - 0x23A692
; =========================================================

23A624:  PUSH            {R4-R7,LR}
23A626:  ADD             R7, SP, #0xC
23A628:  PUSH.W          {R8,R9,R11}
23A62C:  SUB             SP, SP, #0x40
23A62E:  MOV             R4, R1
23A630:  MOVW            R1, #0x91C0
23A634:  LDR.W           R12, [R4,R1]
23A638:  MOVW            R8, #0xB2A8
23A63C:  MOVW            R9, #0xB2A0
23A640:  MOV             R1, SP
23A642:  LDR.W           R6, [R4,R8]
23A646:  LDR.W           R5, [R4,R9]
23A64A:  STR.W           R1, [R4,R9]
23A64E:  MOVS            R1, #0
23A650:  STR.W           R1, [R4,R8]
23A654:  MOVS            R1, #0
23A656:  MOV             R2, R4
23A658:  MOVS            R3, #0
23A65A:  BLX             R12
23A65C:  STR.W           R5, [R4,R9]
23A660:  ADDS            R2, R5, R6
23A662:  LDR             R1, [SP,#0x58+var_58]
23A664:  STR             R1, [R5,R6]
23A666:  LDR             R1, [SP,#0x58+var_50]
23A668:  STR             R1, [R2,#4]
23A66A:  LDR             R1, [SP,#0x58+var_48]
23A66C:  STR             R1, [R2,#8]
23A66E:  LDR             R1, [SP,#0x58+var_40]
23A670:  STR             R1, [R2,#0xC]
23A672:  LDR             R1, [SP,#0x58+var_38]
23A674:  STR             R1, [R2,#0x10]
23A676:  LDR             R1, [SP,#0x58+var_30]
23A678:  STR             R1, [R2,#0x14]
23A67A:  LDR             R1, [SP,#0x58+var_28]
23A67C:  STR             R1, [R2,#0x18]
23A67E:  LDR             R1, [SP,#0x58+var_20]
23A680:  STR             R1, [R2,#0x1C]
23A682:  ADD.W           R1, R6, #0x20 ; ' '
23A686:  STR.W           R1, [R4,R8]
23A68A:  ADD             SP, SP, #0x40 ; '@'
23A68C:  POP.W           {R8,R9,R11}
23A690:  POP             {R4-R7,PC}
