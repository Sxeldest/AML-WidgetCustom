; =========================================================
; Game Engine Function: sub_17D744
; Address            : 0x17D744 - 0x17D786
; =========================================================

17D744:  PUSH            {R4,R5,R7,LR}
17D746:  ADD             R7, SP, #8
17D748:  MOV             R4, R0
17D74A:  LDR             R0, [R0,#8]
17D74C:  LSLS            R5, R2, #3
17D74E:  LSLS            R3, R0, #0x1D
17D750:  BEQ             loc_17D760
17D752:  MOV             R0, R4; int
17D754:  MOV             R2, R5; n
17D756:  MOVS            R3, #1
17D758:  POP.W           {R4,R5,R7,LR}
17D75C:  B.W             sub_17D786
17D760:  LDR             R3, [R4]
17D762:  ADD.W           R12, R0, R5
17D766:  CMP             R12, R3
17D768:  BLE             loc_17D76E
17D76A:  MOVS            R0, #0
17D76C:  POP             {R4,R5,R7,PC}
17D76E:  LDR             R3, [R4,#0xC]
17D770:  ADD.W           R3, R3, R0,ASR#3
17D774:  MOV             R0, R1; dest
17D776:  MOV             R1, R3; src
17D778:  BLX             j_memcpy
17D77C:  LDR             R0, [R4,#8]
17D77E:  ADD             R0, R5
17D780:  STR             R0, [R4,#8]
17D782:  MOVS            R0, #1
17D784:  POP             {R4,R5,R7,PC}
