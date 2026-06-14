; =========================================================
; Game Engine Function: sub_F7A5E
; Address            : 0xF7A5E - 0xF7A9E
; =========================================================

F7A5E:  PUSH            {R4-R7,LR}
F7A60:  ADD             R7, SP, #0xC
F7A62:  PUSH.W          {R8}
F7A66:  LDR             R4, [R0]
F7A68:  MOV             R8, R0
F7A6A:  CBZ             R4, loc_F7A96
F7A6C:  LDR.W           R5, [R8,#4]
F7A70:  CMP             R5, R4
F7A72:  BEQ             loc_F7A8C
F7A74:  ADD.W           R6, R8, #8
F7A78:  SUBS            R5, #0x1C
F7A7A:  MOV             R0, R6
F7A7C:  MOV             R1, R5
F7A7E:  BL              sub_F7A9E
F7A82:  CMP             R5, R4
F7A84:  BNE             loc_F7A78
F7A86:  LDR.W           R0, [R8]
F7A8A:  B               loc_F7A8E
F7A8C:  MOV             R0, R4; void *
F7A8E:  STR.W           R4, [R8,#4]
F7A92:  BLX             j__ZdlPv; operator delete(void *)
F7A96:  MOV             R0, R8
F7A98:  POP.W           {R8}
F7A9C:  POP             {R4-R7,PC}
