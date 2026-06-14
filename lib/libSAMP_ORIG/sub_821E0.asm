; =========================================================
; Game Engine Function: sub_821E0
; Address            : 0x821E0 - 0x82216
; =========================================================

821E0:  CMP             R1, #0
821E2:  IT EQ
821E4:  BXEQ            LR
821E6:  PUSH            {R4,R5,R7,LR}
821E8:  ADD             R7, SP, #0x10+var_8
821EA:  MOV             R4, R1
821EC:  LDR             R1, [R1]
821EE:  MOV             R5, R0
821F0:  BL              sub_821E0
821F4:  LDR             R1, [R4,#4]
821F6:  MOV             R0, R5
821F8:  BL              sub_821E0
821FC:  LDR             R0, [R4,#0x14]
821FE:  MOVS            R1, #0
82200:  STR             R1, [R4,#0x14]
82202:  CMP             R0, #0
82204:  ITTT NE
82206:  LDRNE           R1, [R0]
82208:  LDRNE           R1, [R1,#4]
8220A:  BLXNE           R1
8220C:  MOV             R0, R4; void *
8220E:  POP.W           {R4,R5,R7,LR}
82212:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
