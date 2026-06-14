; =========================================================
; Game Engine Function: sub_78110
; Address            : 0x78110 - 0x78142
; =========================================================

78110:  CMP             R1, #0
78112:  IT EQ
78114:  BXEQ            LR
78116:  PUSH            {R4,R5,R7,LR}
78118:  ADD             R7, SP, #0x10+var_8
7811A:  MOV             R4, R1
7811C:  LDR             R1, [R1]
7811E:  MOV             R5, R0
78120:  BL              sub_78110
78124:  LDR             R1, [R4,#4]
78126:  MOV             R0, R5
78128:  BL              sub_78110
7812C:  LDRB            R0, [R4,#0x10]
7812E:  LSLS            R0, R0, #0x1F
78130:  ITT NE
78132:  LDRNE           R0, [R4,#0x18]; void *
78134:  BLXNE           j__ZdlPv; operator delete(void *)
78138:  MOV             R0, R4; void *
7813A:  POP.W           {R4,R5,R7,LR}
7813E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
