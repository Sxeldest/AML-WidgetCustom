; =========================================================
; Game Engine Function: sub_140860
; Address            : 0x140860 - 0x1408BC
; =========================================================

140860:  PUSH            {R4,R5,R7,LR}
140862:  ADD             R7, SP, #8
140864:  SUB             SP, SP, #0x138
140866:  ADD             R0, SP, #0x140+var_120
140868:  MOV             R4, R1
14086A:  BL              sub_17D4A8
14086E:  STR             R4, [SP,#0x140+var_C]
140870:  ADD             R1, SP, #0x140+var_C
140872:  MOVS            R2, #0x20 ; ' '
140874:  MOVS            R3, #1
140876:  BL              sub_17D628
14087A:  LDR             R0, =(off_23496C - 0x140882)
14087C:  MOVS            R3, #0
14087E:  ADD             R0, PC; off_23496C
140880:  LDR             R0, [R0]; dword_23DEF4
140882:  LDR             R0, [R0]
140884:  LDR.W           R0, [R0,#0x210]
140888:  LDR             R1, =(off_234C34 - 0x14088E)
14088A:  ADD             R1, PC; off_234C34
14088C:  LDR             R2, [R0]
14088E:  LDR             R1, [R1]; unk_23C744
140890:  LDR.W           R12, [R2,#0x6C]
140894:  MOV.W           LR, #0xFFFFFFFF
140898:  MOVS            R5, #8
14089A:  ADD             R2, SP, #0x140+var_120
14089C:  MOVW            R4, #0xFFFF
1408A0:  STRD.W          R5, R3, [SP,#0x140+var_140]
1408A4:  STRD.W          R3, LR, [SP,#0x140+var_138]
1408A8:  STR             R3, [SP,#0x140+var_128]
1408AA:  MOVS            R3, #1
1408AC:  STRD.W          R4, R4, [SP,#0x140+var_130]
1408B0:  BLX             R12
1408B2:  ADD             R0, SP, #0x140+var_120
1408B4:  BL              sub_17D542
1408B8:  ADD             SP, SP, #0x138
1408BA:  POP             {R4,R5,R7,PC}
