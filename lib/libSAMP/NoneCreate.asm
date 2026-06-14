; =========================================================
; Game Engine Function: NoneCreate
; Address            : 0x1DDB90 - 0x1DDBE0
; =========================================================

1DDB90:  PUSH            {R11,LR}
1DDB94:  MOV             R11, SP
1DDB98:  MOV             R0, #1; nmemb
1DDB9C:  MOV             R1, #0x10; size
1DDBA0:  BL              calloc
1DDBA4:  CMP             R0, #0
1DDBA8:  MOVEQ           R0, #0
1DDBAC:  POPEQ           {R11,PC}
1DDBB0:  LDR             R2, =(j_free - 0x1DDBC4)
1DDBB4:  LDR             R1, =(sub_1DDBF4 - 0x1DDBCC)
1DDBB8:  LDR             R3, =(nullsub_47 - 0x1DDBD0)
1DDBBC:  ADD             R2, PC, R2; j_free
1DDBC0:  LDR             R12, =(nullsub_48 - 0x1DDBD8)
1DDBC4:  ADD             LR, PC, R1; sub_1DDBF4
1DDBC8:  ADD             R3, PC, R3; nullsub_47
1DDBCC:  STM             R0, {R2,LR}
1DDBD0:  ADD             R1, PC, R12; nullsub_48
1DDBD4:  STR             R3, [R0,#8]
1DDBD8:  STR             R1, [R0,#0xC]
1DDBDC:  POP             {R11,PC}
