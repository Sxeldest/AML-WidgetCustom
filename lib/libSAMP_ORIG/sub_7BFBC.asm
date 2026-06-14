; =========================================================
; Game Engine Function: sub_7BFBC
; Address            : 0x7BFBC - 0x7BFF8
; =========================================================

7BFBC:  PUSH            {R4,R5,R7,LR}
7BFBE:  ADD             R7, SP, #8
7BFC0:  MOV             R5, R0
7BFC2:  LDR             R0, =(_ZTV2UI - 0x7BFCE); `vtable for'UI ...
7BFC4:  LDRB.W          R1, [R5,#0x54]
7BFC8:  MOV             R4, R5
7BFCA:  ADD             R0, PC; `vtable for'UI
7BFCC:  ADD.W           R2, R0, #0x4C ; 'L'
7BFD0:  ADDS            R0, #8
7BFD2:  STR.W           R0, [R4,#-0x54]!
7BFD6:  LSLS            R0, R1, #0x1F
7BFD8:  STR             R2, [R5]
7BFDA:  ITT NE
7BFDC:  LDRNE.W         R0, [R4,#0xB0]; void *
7BFE0:  BLXNE           j__ZdlPv; operator delete(void *)
7BFE4:  MOV             R0, R5
7BFE6:  BL              sub_71CA8
7BFEA:  MOV             R0, R4
7BFEC:  BL              sub_7C3B4
7BFF0:  POP.W           {R4,R5,R7,LR}
7BFF4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
