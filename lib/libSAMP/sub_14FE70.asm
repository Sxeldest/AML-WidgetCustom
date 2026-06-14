; =========================================================
; Game Engine Function: sub_14FE70
; Address            : 0x14FE70 - 0x14FEA4
; =========================================================

14FE70:  PUSH            {R4-R7,LR}
14FE72:  ADD             R7, SP, #0xC
14FE74:  PUSH.W          {R11}
14FE78:  MOV             R4, R0
14FE7A:  MOVW            R0, #0xEA60
14FE7E:  ADDS            R5, R4, R0
14FE80:  MOVS            R6, #0
14FE82:  UXTH            R1, R6
14FE84:  MOV             R0, R4
14FE86:  BL              sub_14FEB6
14FE8A:  ADDS            R6, #1
14FE8C:  CMP.W           R6, #0x7D0
14FE90:  BNE             loc_14FE82
14FE92:  LDR             R0, [R5]; void *
14FE94:  CBZ             R0, loc_14FE9C
14FE96:  STR             R0, [R5,#4]
14FE98:  BLX             j__ZdlPv; operator delete(void *)
14FE9C:  MOV             R0, R4
14FE9E:  POP.W           {R11}
14FEA2:  POP             {R4-R7,PC}
