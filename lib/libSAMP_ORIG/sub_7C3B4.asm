; =========================================================
; Game Engine Function: sub_7C3B4
; Address            : 0x7C3B4 - 0x7C3F8
; =========================================================

7C3B4:  PUSH            {R4-R7,LR}
7C3B6:  ADD             R7, SP, #0xC
7C3B8:  PUSH.W          {R11}
7C3BC:  MOV             R4, R0
7C3BE:  LDR             R0, =(_ZTV6Widget - 0x7C3C8); `vtable for'Widget ...
7C3C0:  LDRD.W          R5, R6, [R4,#0x48]
7C3C4:  ADD             R0, PC; `vtable for'Widget
7C3C6:  CMP             R5, R6
7C3C8:  ADD.W           R0, R0, #8
7C3CC:  STR             R0, [R4]
7C3CE:  BEQ             loc_7C3E4
7C3D0:  LDR             R0, [R5]
7C3D2:  CMP             R0, #0
7C3D4:  ITTT NE
7C3D6:  LDRNE           R1, [R0]
7C3D8:  LDRNE           R1, [R1,#0x28]
7C3DA:  BLXNE           R1
7C3DC:  ADDS            R5, #4
7C3DE:  CMP             R5, R6
7C3E0:  BNE             loc_7C3D0
7C3E2:  LDR             R5, [R4,#0x48]
7C3E4:  CMP             R5, #0
7C3E6:  ITTT NE
7C3E8:  STRNE           R5, [R4,#0x4C]
7C3EA:  MOVNE           R0, R5; void *
7C3EC:  BLXNE           j__ZdlPv; operator delete(void *)
7C3F0:  MOV             R0, R4
7C3F2:  POP.W           {R11}
7C3F6:  POP             {R4-R7,PC}
