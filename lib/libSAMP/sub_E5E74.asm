; =========================================================
; Game Engine Function: sub_E5E74
; Address            : 0xE5E74 - 0xE5EAC
; =========================================================

E5E74:  CBZ             R1, locret_E5EAA
E5E76:  PUSH            {R4,R5,R7,LR}
E5E78:  ADD             R7, SP, #8
E5E7A:  MOV             R4, R1
E5E7C:  LDR             R1, [R1]
E5E7E:  MOV             R5, R0
E5E80:  BL              sub_E5E74
E5E84:  LDR             R1, [R4,#4]
E5E86:  MOV             R0, R5
E5E88:  BL              sub_E5E74
E5E8C:  ADD.W           R0, R4, #0x20 ; ' '
E5E90:  BL              sub_E3F7A
E5E94:  LDRB            R0, [R4,#0x10]
E5E96:  LSLS            R0, R0, #0x1F
E5E98:  ITT NE
E5E9A:  LDRNE           R0, [R4,#0x18]; void *
E5E9C:  BLXNE           j__ZdlPv; operator delete(void *)
E5EA0:  MOV             R0, R4; void *
E5EA2:  POP.W           {R4,R5,R7,LR}
E5EA6:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
E5EAA:  BX              LR
