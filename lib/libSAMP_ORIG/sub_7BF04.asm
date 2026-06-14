; =========================================================
; Game Engine Function: sub_7BF04
; Address            : 0x7BF04 - 0x7BF3C
; =========================================================

7BF04:  PUSH            {R4,R5,R7,LR}
7BF06:  ADD             R7, SP, #8
7BF08:  MOV             R4, R0
7BF0A:  LDR             R0, =(_ZTV2UI - 0x7BF16); `vtable for'UI ...
7BF0C:  LDRB.W          R1, [R4,#0xA8]
7BF10:  MOV             R5, R4
7BF12:  ADD             R0, PC; `vtable for'UI
7BF14:  ADD.W           R2, R0, #8
7BF18:  ADDS            R0, #0x4C ; 'L'
7BF1A:  STR.W           R0, [R5,#0x54]!
7BF1E:  LSLS            R0, R1, #0x1F
7BF20:  STR             R2, [R4]
7BF22:  ITT NE
7BF24:  LDRNE.W         R0, [R4,#0xB0]; void *
7BF28:  BLXNE           j__ZdlPv; operator delete(void *)
7BF2C:  MOV             R0, R5
7BF2E:  BL              sub_71CA8
7BF32:  MOV             R0, R4
7BF34:  POP.W           {R4,R5,R7,LR}
7BF38:  B.W             sub_7C3B4
