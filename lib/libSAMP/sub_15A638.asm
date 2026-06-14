; =========================================================
; Game Engine Function: sub_15A638
; Address            : 0x15A638 - 0x15A71A
; =========================================================

15A638:  PUSH            {R4-R7,LR}
15A63A:  ADD             R7, SP, #0xC
15A63C:  PUSH.W          {R8-R11}
15A640:  SUBW            SP, SP, #0x80C
15A644:  MOV             R4, R1
15A646:  MOV             R9, R0
15A648:  MOVS            R0, #0
15A64A:  ADD             R1, SP, #0x828+var_820; int
15A64C:  STR             R0, [SP,#0x828+var_820]
15A64E:  MOVS            R2, #0x20 ; ' '
15A650:  STRH.W          R0, [SP,#0x828+var_822]
15A654:  MOV             R0, R4; int
15A656:  MOVS            R3, #1
15A658:  BL              sub_17D786
15A65C:  LDR             R0, [SP,#0x828+var_820]
15A65E:  MOV             R1, #0x1010300
15A666:  CMP             R0, R1
15A668:  BEQ             loc_15A684
15A66A:  LDR             R2, =(aClientXAndServ - 0x15A676); "Client (%X) and server (%X) plugin vers"... ...
15A66C:  ADD             R5, SP, #0x828+var_81C
15A66E:  STR             R0, [SP,#0x828+var_828]
15A670:  MOV             R3, R1
15A672:  ADD             R2, PC; "Client (%X) and server (%X) plugin vers"...
15A674:  MOV             R0, R5
15A676:  BL              sub_15B2DC
15A67A:  MOVS            R0, #2; int
15A67C:  MOV             R1, R5; s
15A67E:  BL              sub_159B70
15A682:  LDR             R1, [SP,#0x828+var_820]
15A684:  MOV             R0, R9
15A686:  BL              sub_1553CE
15A68A:  ADD.W           R1, SP, #0x828+var_822; int
15A68E:  MOV             R0, R4; int
15A690:  MOVS            R2, #0x10
15A692:  MOVS            R3, #1
15A694:  BL              sub_17D786
15A698:  LDRH.W          R0, [SP,#0x828+var_822]
15A69C:  CBZ             R0, loc_15A710
15A69E:  ADD.W           R8, SP, #0x828+var_824
15A6A2:  ADD.W           R11, SP, #0x828+var_81C
15A6A6:  MOV.W           R10, #0
15A6AA:  MOVS            R6, #0
15A6AC:  MOV             R0, R4; int
15A6AE:  MOV             R1, R8; int
15A6B0:  MOVS            R2, #0x10
15A6B2:  MOVS            R3, #1
15A6B4:  STRH.W          R10, [SP,#0x828+var_824]
15A6B8:  BL              sub_17D786
15A6BC:  MOV             R0, R11; int
15A6BE:  MOV             R1, R4; int
15A6C0:  BL              sub_15B24E
15A6C4:  LDR             R1, [R4]
15A6C6:  MOVS            R5, #0
15A6C8:  LDR             R0, [R4,#8]
15A6CA:  CMP             R0, R1
15A6CC:  BGE             loc_15A6E4
15A6CE:  LDR             R1, [R4,#0xC]
15A6D0:  ASRS            R2, R0, #3
15A6D2:  LDRB            R1, [R1,R2]
15A6D4:  ADDS            R2, R0, #1
15A6D6:  AND.W           R0, R0, #7
15A6DA:  STR             R2, [R4,#8]
15A6DC:  LSL.W           R0, R1, R0
15A6E0:  UXTB            R0, R0
15A6E2:  LSRS            R5, R0, #7
15A6E4:  MOV             R0, R4
15A6E6:  BL              sub_17D902
15A6EA:  LDRH.W          R2, [SP,#0x828+var_824]
15A6EE:  MOV             R0, R9
15A6F0:  MOV             R1, R11
15A6F2:  MOV             R3, R5
15A6F4:  BL              sub_15530A
15A6F8:  LDRB.W          R0, [SP,#0x828+var_81C]
15A6FC:  LSLS            R0, R0, #0x1F
15A6FE:  ITT NE
15A700:  LDRNE           R0, [SP,#0x828+var_814]; void *
15A702:  BLXNE           j__ZdlPv; operator delete(void *)
15A706:  LDRH.W          R0, [SP,#0x828+var_822]
15A70A:  ADDS            R6, #1
15A70C:  CMP             R6, R0
15A70E:  BCC             loc_15A6AC
15A710:  ADDW            SP, SP, #0x80C
15A714:  POP.W           {R8-R11}
15A718:  POP             {R4-R7,PC}
