; =========================================================
; Game Engine Function: sub_7BF40
; Address            : 0x7BF40 - 0x7BF7C
; =========================================================

7BF40:  PUSH            {R4,R5,R7,LR}
7BF42:  ADD             R7, SP, #8
7BF44:  MOV             R4, R0
7BF46:  LDR             R0, =(_ZTV2UI - 0x7BF52); `vtable for'UI ...
7BF48:  LDRB.W          R1, [R4,#0xA8]
7BF4C:  MOV             R5, R4
7BF4E:  ADD             R0, PC; `vtable for'UI
7BF50:  ADD.W           R2, R0, #8
7BF54:  ADDS            R0, #0x4C ; 'L'
7BF56:  STR.W           R0, [R5,#0x54]!
7BF5A:  LSLS            R0, R1, #0x1F
7BF5C:  STR             R2, [R4]
7BF5E:  ITT NE
7BF60:  LDRNE.W         R0, [R4,#0xB0]; void *
7BF64:  BLXNE           j__ZdlPv; operator delete(void *)
7BF68:  MOV             R0, R5
7BF6A:  BL              sub_71CA8
7BF6E:  MOV             R0, R4
7BF70:  BL              sub_7C3B4
7BF74:  POP.W           {R4,R5,R7,LR}
7BF78:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
