; =========================================================
; Game Engine Function: sub_1416FC
; Address            : 0x1416FC - 0x1417A4
; =========================================================

1416FC:  PUSH            {R4-R7,LR}
1416FE:  ADD             R7, SP, #0xC
141700:  PUSH.W          {R11}
141704:  SUB             SP, SP, #0x138
141706:  ADD             R0, SP, #0x148+var_128
141708:  MOV             R4, R3
14170A:  MOV             R5, R2
14170C:  MOV             R6, R1
14170E:  BL              sub_17D4A8
141712:  BL              sub_17D84A
141716:  STRH.W          R6, [SP,#0x148+var_14]
14171A:  ADD             R0, SP, #0x148+var_128
14171C:  ADD             R1, SP, #0x148+var_14
14171E:  MOVS            R2, #0x10
141720:  MOVS            R3, #1
141722:  BL              sub_17D628
141726:  VLDR            S0, =0.33
14172A:  VMOV            S2, R5
14172E:  VMUL.F32        S0, S2, S0
141732:  VSTR            S0, [SP,#0x148+var_14]
141736:  ADD             R0, SP, #0x148+var_128
141738:  ADD             R1, SP, #0x148+var_14
14173A:  MOVS            R2, #0x20 ; ' '
14173C:  MOVS            R3, #1
14173E:  BL              sub_17D628
141742:  STR             R4, [SP,#0x148+var_14]
141744:  ADD             R0, SP, #0x148+var_128
141746:  ADD             R1, SP, #0x148+var_14
141748:  MOVS            R2, #0x20 ; ' '
14174A:  MOVS            R3, #1
14174C:  BL              sub_17D628
141750:  LDR             R0, [R7,#arg_0]
141752:  STR             R0, [SP,#0x148+var_14]
141754:  ADD             R0, SP, #0x148+var_128
141756:  ADD             R1, SP, #0x148+var_14
141758:  MOVS            R2, #0x20 ; ' '
14175A:  MOVS            R3, #1
14175C:  BL              sub_17D628
141760:  LDR             R0, =(off_23496C - 0x141768)
141762:  MOVS            R3, #0
141764:  ADD             R0, PC; off_23496C
141766:  LDR             R0, [R0]; dword_23DEF4
141768:  LDR             R0, [R0]
14176A:  LDR.W           R0, [R0,#0x210]
14176E:  LDR             R1, =(off_234C44 - 0x141774)
141770:  ADD             R1, PC; off_234C44
141772:  LDR             R2, [R0]
141774:  LDR             R1, [R1]; unk_23C7D0
141776:  LDR             R6, [R2,#0x6C]
141778:  MOV.W           R12, #0xFFFFFFFF
14177C:  MOVS            R4, #9
14177E:  ADD             R2, SP, #0x148+var_128
141780:  MOVW            R5, #0xFFFF
141784:  STRD.W          R4, R3, [SP,#0x148+var_148]
141788:  STRD.W          R3, R12, [SP,#0x148+var_140]
14178C:  STR             R3, [SP,#0x148+var_130]
14178E:  MOVS            R3, #1
141790:  STRD.W          R5, R5, [SP,#0x148+var_138]
141794:  BLX             R6
141796:  ADD             R0, SP, #0x148+var_128
141798:  BL              sub_17D542
14179C:  ADD             SP, SP, #0x138
14179E:  POP.W           {R11}
1417A2:  POP             {R4-R7,PC}
