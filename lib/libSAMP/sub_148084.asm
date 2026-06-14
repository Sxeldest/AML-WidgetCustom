; =========================================================
; Game Engine Function: sub_148084
; Address            : 0x148084 - 0x14811A
; =========================================================

148084:  PUSH            {R4-R7,LR}
148086:  ADD             R7, SP, #0xC
148088:  PUSH.W          {R11}
14808C:  SUB             SP, SP, #0x138
14808E:  MOV             R4, R0
148090:  ADD             R0, SP, #0x148+var_128
148092:  MOV             R6, R1
148094:  BL              sub_17D4A8
148098:  LDR             R0, =(off_234970 - 0x14809E)
14809A:  ADD             R0, PC; off_234970
14809C:  LDR             R0, [R0]; dword_23DEF0
14809E:  LDR             R0, [R0]
1480A0:  BL              sub_E35A0
1480A4:  LDR             R1, [R4,#4]
1480A6:  BL              sub_105696
1480AA:  MOV             R5, R0
1480AC:  CBZ             R0, loc_14810C
1480AE:  STR             R6, [SP,#0x148+var_14]
1480B0:  ADD             R0, SP, #0x148+var_128
1480B2:  ADD             R1, SP, #0x148+var_14
1480B4:  MOVS            R2, #0x20 ; ' '
1480B6:  MOVS            R3, #1
1480B8:  BL              sub_17D628
1480BC:  LDR             R0, [R4,#4]
1480BE:  STR             R0, [SP,#0x148+var_14]
1480C0:  ADD             R0, SP, #0x148+var_128
1480C2:  ADD             R1, SP, #0x148+var_14
1480C4:  MOVS            R2, #0x20 ; ' '
1480C6:  MOVS            R3, #1
1480C8:  BL              sub_17D628
1480CC:  ADD             R0, SP, #0x148+var_128
1480CE:  MOV             R1, R5
1480D0:  MOVS            R2, #0x34 ; '4'
1480D2:  BL              sub_17D566
1480D6:  LDR             R0, =(off_23496C - 0x1480DE)
1480D8:  MOVS            R3, #0
1480DA:  ADD             R0, PC; off_23496C
1480DC:  LDR             R0, [R0]; dword_23DEF4
1480DE:  LDR             R0, [R0]
1480E0:  LDR.W           R0, [R0,#0x210]
1480E4:  LDR             R1, =(off_234CD8 - 0x1480EA)
1480E6:  ADD             R1, PC; off_234CD8
1480E8:  LDR             R2, [R0]
1480EA:  LDR             R1, [R1]; unk_23C7F8
1480EC:  LDR             R6, [R2,#0x6C]
1480EE:  MOV.W           R12, #0xFFFFFFFF
1480F2:  MOVS            R4, #9
1480F4:  ADD             R2, SP, #0x148+var_128
1480F6:  MOVW            R5, #0xFFFF
1480FA:  STRD.W          R4, R3, [SP,#0x148+var_148]
1480FE:  STRD.W          R3, R12, [SP,#0x148+var_140]
148102:  STR             R3, [SP,#0x148+var_130]
148104:  MOVS            R3, #1
148106:  STRD.W          R5, R5, [SP,#0x148+var_138]
14810A:  BLX             R6
14810C:  ADD             R0, SP, #0x148+var_128
14810E:  BL              sub_17D542
148112:  ADD             SP, SP, #0x138
148114:  POP.W           {R11}
148118:  POP             {R4-R7,PC}
