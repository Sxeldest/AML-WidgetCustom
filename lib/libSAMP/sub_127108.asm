; =========================================================
; Game Engine Function: sub_127108
; Address            : 0x127108 - 0x127138
; =========================================================

127108:  CBZ             R1, locret_127136
12710A:  PUSH            {R4,R5,R7,LR}
12710C:  ADD             R7, SP, #8
12710E:  MOV             R4, R1
127110:  LDR             R1, [R1]
127112:  MOV             R5, R0
127114:  BL              sub_127108
127118:  LDR             R1, [R4,#4]
12711A:  MOV             R0, R5
12711C:  BL              sub_127108
127120:  LDRB            R0, [R4,#0x18]
127122:  LSLS            R0, R0, #0x1F
127124:  ITT NE
127126:  LDRNE           R0, [R4,#0x20]; void *
127128:  BLXNE           j__ZdlPv; operator delete(void *)
12712C:  MOV             R0, R4; void *
12712E:  POP.W           {R4,R5,R7,LR}
127132:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
127136:  BX              LR
