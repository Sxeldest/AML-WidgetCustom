; =========================================================
; Game Engine Function: sub_7BF80
; Address            : 0x7BF80 - 0x7BFB8
; =========================================================

7BF80:  PUSH            {R4,R5,R7,LR}
7BF82:  ADD             R7, SP, #8
7BF84:  MOV             R4, R0
7BF86:  LDR             R0, =(_ZTV2UI - 0x7BF92); `vtable for'UI ...
7BF88:  LDRB.W          R1, [R4,#0x54]
7BF8C:  MOV             R5, R4
7BF8E:  ADD             R0, PC; `vtable for'UI
7BF90:  ADD.W           R2, R0, #0x4C ; 'L'
7BF94:  ADDS            R0, #8
7BF96:  STR.W           R0, [R5,#-0x54]!
7BF9A:  LSLS            R0, R1, #0x1F
7BF9C:  STR             R2, [R4]
7BF9E:  ITT NE
7BFA0:  LDRNE.W         R0, [R5,#0xB0]; void *
7BFA4:  BLXNE           j__ZdlPv; operator delete(void *)
7BFA8:  MOV             R0, R4
7BFAA:  BL              sub_71CA8
7BFAE:  MOV             R0, R5
7BFB0:  POP.W           {R4,R5,R7,LR}
7BFB4:  B.W             sub_7C3B4
