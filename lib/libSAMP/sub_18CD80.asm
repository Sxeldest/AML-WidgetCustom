; =========================================================
; Game Engine Function: sub_18CD80
; Address            : 0x18CD80 - 0x18CDAE
; =========================================================

18CD80:  PUSH            {R4-R7,LR}
18CD82:  ADD             R7, SP, #0xC
18CD84:  PUSH.W          {R11}
18CD88:  SUB             SP, SP, #8
18CD8A:  LDR             R0, [R7,#cp]; cp
18CD8C:  MOV             R4, R3
18CD8E:  MOV             R5, R2
18CD90:  MOV             R6, R1
18CD92:  BLX             inet_addr
18CD96:  LDR             R1, [R7,#arg_4]
18CD98:  MOV             R2, R5
18CD9A:  MOV             R3, R4
18CD9C:  STRD.W          R0, R1, [SP,#0x18+var_18]
18CDA0:  MOV             R1, R6
18CDA2:  BL              sub_18CCDC
18CDA6:  ADD             SP, SP, #8
18CDA8:  POP.W           {R11}
18CDAC:  POP             {R4-R7,PC}
