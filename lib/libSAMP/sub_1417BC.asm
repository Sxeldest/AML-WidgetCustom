; =========================================================
; Game Engine Function: sub_1417BC
; Address            : 0x1417BC - 0x141864
; =========================================================

1417BC:  PUSH            {R4-R7,LR}
1417BE:  ADD             R7, SP, #0xC
1417C0:  PUSH.W          {R11}
1417C4:  SUB             SP, SP, #0x138
1417C6:  ADD             R0, SP, #0x148+var_128
1417C8:  MOV             R4, R3
1417CA:  MOV             R5, R2
1417CC:  MOV             R6, R1
1417CE:  BL              sub_17D4A8
1417D2:  BL              sub_17D828
1417D6:  STRH.W          R6, [SP,#0x148+var_14]
1417DA:  ADD             R0, SP, #0x148+var_128
1417DC:  ADD             R1, SP, #0x148+var_14
1417DE:  MOVS            R2, #0x10
1417E0:  MOVS            R3, #1
1417E2:  BL              sub_17D628
1417E6:  VLDR            S0, =0.33
1417EA:  VMOV            S2, R5
1417EE:  VMUL.F32        S0, S2, S0
1417F2:  VSTR            S0, [SP,#0x148+var_14]
1417F6:  ADD             R0, SP, #0x148+var_128
1417F8:  ADD             R1, SP, #0x148+var_14
1417FA:  MOVS            R2, #0x20 ; ' '
1417FC:  MOVS            R3, #1
1417FE:  BL              sub_17D628
141802:  STR             R4, [SP,#0x148+var_14]
141804:  ADD             R0, SP, #0x148+var_128
141806:  ADD             R1, SP, #0x148+var_14
141808:  MOVS            R2, #0x20 ; ' '
14180A:  MOVS            R3, #1
14180C:  BL              sub_17D628
141810:  LDR             R0, [R7,#arg_0]
141812:  STR             R0, [SP,#0x148+var_14]
141814:  ADD             R0, SP, #0x148+var_128
141816:  ADD             R1, SP, #0x148+var_14
141818:  MOVS            R2, #0x20 ; ' '
14181A:  MOVS            R3, #1
14181C:  BL              sub_17D628
141820:  LDR             R0, =(off_23496C - 0x141828)
141822:  MOVS            R3, #0
141824:  ADD             R0, PC; off_23496C
141826:  LDR             R0, [R0]; dword_23DEF4
141828:  LDR             R0, [R0]
14182A:  LDR.W           R0, [R0,#0x210]
14182E:  LDR             R1, =(off_234C44 - 0x141834)
141830:  ADD             R1, PC; off_234C44
141832:  LDR             R2, [R0]
141834:  LDR             R1, [R1]; unk_23C7D0
141836:  LDR             R6, [R2,#0x6C]
141838:  MOV.W           R12, #0xFFFFFFFF
14183C:  MOVS            R4, #9
14183E:  ADD             R2, SP, #0x148+var_128
141840:  MOVW            R5, #0xFFFF
141844:  STRD.W          R4, R3, [SP,#0x148+var_148]
141848:  STRD.W          R3, R12, [SP,#0x148+var_140]
14184C:  STR             R3, [SP,#0x148+var_130]
14184E:  MOVS            R3, #1
141850:  STRD.W          R5, R5, [SP,#0x148+var_138]
141854:  BLX             R6
141856:  ADD             R0, SP, #0x148+var_128
141858:  BL              sub_17D542
14185C:  ADD             SP, SP, #0x138
14185E:  POP.W           {R11}
141862:  POP             {R4-R7,PC}
