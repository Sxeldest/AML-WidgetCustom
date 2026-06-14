; =========================================================
; Game Engine Function: sub_156178
; Address            : 0x156178 - 0x1561A8
; =========================================================

156178:  CBZ             R1, locret_1561A6
15617A:  PUSH            {R4,R5,R7,LR}
15617C:  ADD             R7, SP, #8
15617E:  MOV             R4, R1
156180:  LDR             R1, [R1]
156182:  MOV             R5, R0
156184:  BL              sub_156178
156188:  LDR             R1, [R4,#4]
15618A:  MOV             R0, R5
15618C:  BL              sub_156178
156190:  LDRB            R0, [R4,#0x10]
156192:  LSLS            R0, R0, #0x1F
156194:  ITT NE
156196:  LDRNE           R0, [R4,#0x18]; void *
156198:  BLXNE           j__ZdlPv; operator delete(void *)
15619C:  MOV             R0, R4; void *
15619E:  POP.W           {R4,R5,R7,LR}
1561A2:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
1561A6:  BX              LR
