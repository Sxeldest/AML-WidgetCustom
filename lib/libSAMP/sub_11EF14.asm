; =========================================================
; Game Engine Function: sub_11EF14
; Address            : 0x11EF14 - 0x11EF84
; =========================================================

11EF14:  PUSH            {R4-R7,LR}
11EF16:  ADD             R7, SP, #0xC
11EF18:  PUSH.W          {R8,R9,R11}
11EF1C:  MOV             R9, R1
11EF1E:  LDR             R1, =(off_23494C - 0x11EF26)
11EF20:  MOV             R8, R2
11EF22:  ADD             R1, PC; off_23494C
11EF24:  LDR             R6, [R1]; dword_23DF24
11EF26:  LDR             R1, [R6]
11EF28:  ADDS            R4, R1, R0
11EF2A:  LDR.W           R5, [R1,R9]
11EF2E:  LDR.W           R0, [R4,#0x220]
11EF32:  LDR.W           R2, [R5,#0x220]
11EF36:  CMP             R2, R0
11EF38:  BGT             loc_11EF4C
11EF3A:  LDR             R0, [R5]
11EF3C:  LDR             R1, [R5,#4]
11EF3E:  STR             R1, [R4,#4]
11EF40:  STR             R0, [R4]
11EF42:  LDR             R1, [R6]
11EF44:  LDR.W           R0, [R5,#0x220]
11EF48:  STR.W           R0, [R4,#0x220]
11EF4C:  MOV             R0, #0x67A110
11EF54:  LDR             R2, [R1,R0]
11EF56:  CMP             R2, R5
11EF58:  IT EQ
11EF5A:  STREQ           R4, [R1,R0]
11EF5C:  ADD.W           R0, R1, R8
11EF60:  BL              sub_1641C4
11EF64:  LDR             R0, [R6]
11EF66:  STR.W           R4, [R0,R8]
11EF6A:  ADD             R0, R9
11EF6C:  BL              sub_1641C4
11EF70:  LDR             R0, [R6]
11EF72:  STR.W           R4, [R0,R9]
11EF76:  MOV             R0, R5; void *
11EF78:  POP.W           {R8,R9,R11}
11EF7C:  POP.W           {R4-R7,LR}
11EF80:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
