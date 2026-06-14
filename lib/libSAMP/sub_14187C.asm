; =========================================================
; Game Engine Function: sub_14187C
; Address            : 0x14187C - 0x14191C
; =========================================================

14187C:  PUSH            {R4-R7,LR}
14187E:  ADD             R7, SP, #0xC
141880:  PUSH.W          {R11}
141884:  SUB             SP, SP, #0x138
141886:  ADD             R0, SP, #0x148+var_128
141888:  MOV             R4, R3
14188A:  MOV             R5, R2
14188C:  MOV             R6, R1
14188E:  BL              sub_17D4A8
141892:  BL              sub_17D828
141896:  STRH.W          R6, [SP,#0x148+var_14]
14189A:  ADD             R0, SP, #0x148+var_128
14189C:  ADD             R1, SP, #0x148+var_14
14189E:  MOVS            R2, #0x10
1418A0:  MOVS            R3, #1
1418A2:  BL              sub_17D628
1418A6:  VMOV            S0, R5
1418AA:  VSTR            S0, [SP,#0x148+var_14]
1418AE:  ADD             R0, SP, #0x148+var_128
1418B0:  ADD             R1, SP, #0x148+var_14
1418B2:  MOVS            R2, #0x20 ; ' '
1418B4:  MOVS            R3, #1
1418B6:  BL              sub_17D628
1418BA:  STR             R4, [SP,#0x148+var_14]
1418BC:  ADD             R0, SP, #0x148+var_128
1418BE:  ADD             R1, SP, #0x148+var_14
1418C0:  MOVS            R2, #0x20 ; ' '
1418C2:  MOVS            R3, #1
1418C4:  BL              sub_17D628
1418C8:  LDR             R0, [R7,#arg_0]
1418CA:  STR             R0, [SP,#0x148+var_14]
1418CC:  ADD             R0, SP, #0x148+var_128
1418CE:  ADD             R1, SP, #0x148+var_14
1418D0:  MOVS            R2, #0x20 ; ' '
1418D2:  MOVS            R3, #1
1418D4:  BL              sub_17D628
1418D8:  LDR             R0, =(off_23496C - 0x1418E0)
1418DA:  MOVS            R3, #0
1418DC:  ADD             R0, PC; off_23496C
1418DE:  LDR             R0, [R0]; dword_23DEF4
1418E0:  LDR             R0, [R0]
1418E2:  LDR.W           R0, [R0,#0x210]
1418E6:  LDR             R1, =(off_234C48 - 0x1418EC)
1418E8:  ADD             R1, PC; off_234C48
1418EA:  LDR             R2, [R0]
1418EC:  LDR             R1, [R1]; unk_23C7D4
1418EE:  LDR             R6, [R2,#0x6C]
1418F0:  MOV.W           R12, #0xFFFFFFFF
1418F4:  MOVS            R4, #9
1418F6:  ADD             R2, SP, #0x148+var_128
1418F8:  MOVW            R5, #0xFFFF
1418FC:  STRD.W          R4, R3, [SP,#0x148+var_148]
141900:  STRD.W          R3, R12, [SP,#0x148+var_140]
141904:  STR             R3, [SP,#0x148+var_130]
141906:  MOVS            R3, #1
141908:  STRD.W          R5, R5, [SP,#0x148+var_138]
14190C:  BLX             R6
14190E:  ADD             R0, SP, #0x148+var_128
141910:  BL              sub_17D542
141914:  ADD             SP, SP, #0x138
141916:  POP.W           {R11}
14191A:  POP             {R4-R7,PC}
