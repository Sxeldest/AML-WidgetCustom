; =========================================================
; Game Engine Function: sub_78174
; Address            : 0x78174 - 0x781B2
; =========================================================

78174:  CMP             R1, #0
78176:  IT EQ
78178:  BXEQ            LR
7817A:  PUSH            {R4,R5,R7,LR}
7817C:  ADD             R7, SP, #0x10+var_8
7817E:  MOV             R4, R1
78180:  LDR             R1, [R1]
78182:  MOV             R5, R0
78184:  BL              sub_78174
78188:  LDR             R1, [R4,#4]
7818A:  MOV             R0, R5
7818C:  BL              sub_78174
78190:  LDRB            R0, [R4,#0x1C]
78192:  LSLS            R0, R0, #0x1F
78194:  ITT NE
78196:  LDRNE           R0, [R4,#0x24]; void *
78198:  BLXNE           j__ZdlPv; operator delete(void *)
7819C:  LDRB            R0, [R4,#0x10]
7819E:  LSLS            R0, R0, #0x1F
781A0:  ITT NE
781A2:  LDRNE           R0, [R4,#0x18]; void *
781A4:  BLXNE           j__ZdlPv; operator delete(void *)
781A8:  MOV             R0, R4; void *
781AA:  POP.W           {R4,R5,R7,LR}
781AE:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
