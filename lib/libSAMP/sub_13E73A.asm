; =========================================================
; Game Engine Function: sub_13E73A
; Address            : 0x13E73A - 0x13E766
; =========================================================

13E73A:  PUSH            {R4-R7,LR}
13E73C:  ADD             R7, SP, #0xC
13E73E:  PUSH.W          {R11}
13E742:  MOV             R4, R0
13E744:  MOVS            R5, #0
13E746:  MOVS            R6, #0
13E748:  LDR.W           R0, [R4,R6,LSL#2]; void *
13E74C:  CBZ             R0, loc_13E756
13E74E:  BLX             j__ZdlPv; operator delete(void *)
13E752:  STR.W           R5, [R4,R6,LSL#2]
13E756:  ADDS            R6, #1
13E758:  CMP.W           R6, #0x400
13E75C:  BNE             loc_13E748
13E75E:  MOV             R0, R4
13E760:  POP.W           {R11}
13E764:  POP             {R4-R7,PC}
