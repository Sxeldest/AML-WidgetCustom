; =========================================================
; Game Engine Function: sub_138D34
; Address            : 0x138D34 - 0x138D5A
; =========================================================

138D34:  PUSH            {R4,R6,R7,LR}
138D36:  ADD             R7, SP, #8
138D38:  LDRB            R0, [R0,#4]
138D3A:  MOV             R4, R1
138D3C:  CBZ             R0, loc_138D4C
138D3E:  LDRB            R0, [R4,#0x10]
138D40:  LSLS            R0, R0, #0x1F
138D42:  ITT NE
138D44:  LDRNE           R0, [R4,#0x18]; void *
138D46:  BLXNE           j__ZdlPv; operator delete(void *)
138D4A:  B               loc_138D4E
138D4C:  CBZ             R4, locret_138D58
138D4E:  MOV             R0, R4; void *
138D50:  POP.W           {R4,R6,R7,LR}
138D54:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
138D58:  POP             {R4,R6,R7,PC}
