; =========================================================
; Game Engine Function: sub_12DF4C
; Address            : 0x12DF4C - 0x12DF78
; =========================================================

12DF4C:  CBZ             R1, locret_12DF76
12DF4E:  PUSH            {R4,R5,R7,LR}
12DF50:  ADD             R7, SP, #8
12DF52:  MOV             R4, R1
12DF54:  LDR             R1, [R1]
12DF56:  MOV             R5, R0
12DF58:  BL              sub_12DF4C
12DF5C:  LDR             R1, [R4,#4]
12DF5E:  MOV             R0, R5
12DF60:  BL              sub_12DF4C
12DF64:  ADD.W           R0, R4, #0x14
12DF68:  BL              sub_12DF78
12DF6C:  MOV             R0, R4; void *
12DF6E:  POP.W           {R4,R5,R7,LR}
12DF72:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
12DF76:  BX              LR
