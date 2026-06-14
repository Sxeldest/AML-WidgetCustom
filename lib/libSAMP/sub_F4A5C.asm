; =========================================================
; Game Engine Function: sub_F4A5C
; Address            : 0xF4A5C - 0xF4AB6
; =========================================================

F4A5C:  PUSH            {R4-R7,LR}
F4A5E:  ADD             R7, SP, #0xC
F4A60:  PUSH.W          {R11}
F4A64:  MOV             R4, R0
F4A66:  LDR             R0, =(off_23494C - 0xF4A74)
F4A68:  MOVW            R2, #0x1C70
F4A6C:  LDR.W           R1, [R4,#0xBEC]
F4A70:  ADD             R0, PC; off_23494C
F4A72:  MOVT            R2, #0x67 ; 'g'
F4A76:  LDR             R0, [R0]; dword_23DF24
F4A78:  LDR             R0, [R0]
F4A7A:  ADD             R0, R2
F4A7C:  MOVS            R2, #0
F4A7E:  BL              sub_164196
F4A82:  MOVW            R5, #0x5F4
F4A86:  ADDS            R0, R4, R5
F4A88:  LDRB.W          R1, [R0,#0x5EC]
F4A8C:  LSLS            R1, R1, #0x1F
F4A8E:  ITT NE
F4A90:  LDRNE.W         R0, [R0,#0x5F4]; void *
F4A94:  BLXNE           j__ZdlPv; operator delete(void *)
F4A98:  SUBS            R5, #0xC
F4A9A:  BNE             loc_F4A86
F4A9C:  MOV.W           R5, #0x5F0
F4AA0:  ADDS            R0, R4, R5
F4AA2:  BL              sub_1630A8
F4AA6:  SUBS            R5, #4
F4AA8:  CMP.W           R5, #0x3F4
F4AAC:  BNE             loc_F4AA0
F4AAE:  MOV             R0, R4
F4AB0:  POP.W           {R11}
F4AB4:  POP             {R4-R7,PC}
