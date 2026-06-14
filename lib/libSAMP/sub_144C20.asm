; =========================================================
; Game Engine Function: sub_144C20
; Address            : 0x144C20 - 0x144C4C
; =========================================================

144C20:  CBZ             R1, locret_144C4A
144C22:  PUSH            {R4,R5,R7,LR}
144C24:  ADD             R7, SP, #8
144C26:  MOV             R4, R1
144C28:  LDR             R1, [R1]
144C2A:  MOV             R5, R0
144C2C:  BL              sub_144C20
144C30:  LDR             R1, [R4,#4]
144C32:  MOV             R0, R5
144C34:  BL              sub_144C20
144C38:  ADD.W           R0, R4, #0x14
144C3C:  BL              sub_113328
144C40:  MOV             R0, R4; void *
144C42:  POP.W           {R4,R5,R7,LR}
144C46:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
144C4A:  BX              LR
