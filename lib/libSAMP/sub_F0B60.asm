; =========================================================
; Game Engine Function: sub_F0B60
; Address            : 0xF0B60 - 0xF0BAE
; =========================================================

F0B60:  PUSH            {R4,R6,R7,LR}
F0B62:  ADD             R7, SP, #8
F0B64:  BL              sub_F0830
F0B68:  LDR             R0, =(dword_23DEEC - 0xF0B6E)
F0B6A:  ADD             R0, PC; dword_23DEEC
F0B6C:  LDR             R0, [R0]
F0B6E:  CBZ             R0, loc_F0B76
F0B70:  LDR             R1, [R0]
F0B72:  LDR             R1, [R1,#0x38]
F0B74:  BLX             R1
F0B76:  LDR             R4, =(dword_23DEF4 - 0xF0B7C)
F0B78:  ADD             R4, PC; dword_23DEF4
F0B7A:  LDR             R0, [R4]
F0B7C:  CBZ             R0, loc_F0B9C
F0B7E:  BL              sub_141D3C
F0B82:  LDR             R0, [R4]
F0B84:  LDR.W           R0, [R0,#0x3B0]
F0B88:  LDR             R0, [R0,#0x18]
F0B8A:  CBZ             R0, loc_F0B90
F0B8C:  BL              sub_14F44C
F0B90:  LDR             R0, =(dword_23DF0C - 0xF0B96)
F0B92:  ADD             R0, PC; dword_23DF0C
F0B94:  LDR             R0, [R0]
F0B96:  CBZ             R0, loc_F0B9C
F0B98:  BL              sub_148198
F0B9C:  LDR             R0, =(dword_23DF04 - 0xF0BA2)
F0B9E:  ADD             R0, PC; dword_23DF04
F0BA0:  LDR             R0, [R0]
F0BA2:  CBZ             R0, locret_F0BAC
F0BA4:  POP.W           {R4,R6,R7,LR}
F0BA8:  B.W             nullsub_6
F0BAC:  POP             {R4,R6,R7,PC}
