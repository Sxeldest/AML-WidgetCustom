; =========================================================
; Game Engine Function: sub_15611C
; Address            : 0x15611C - 0x15614C
; =========================================================

15611C:  CBZ             R1, locret_15614A
15611E:  PUSH            {R4,R5,R7,LR}
156120:  ADD             R7, SP, #8
156122:  MOV             R0, R1
156124:  MOV             R4, R1
156126:  LDR.W           R1, [R0,#4]!
15612A:  MOVS            R5, #0
15612C:  STR             R5, [R0]
15612E:  CBZ             R1, loc_156134
156130:  BL              sub_15614C
156134:  LDR             R0, [R4]
156136:  STR             R5, [R4]
156138:  CBZ             R0, loc_156140
15613A:  LDR             R1, [R0]
15613C:  LDR             R1, [R1,#4]
15613E:  BLX             R1
156140:  MOV             R0, R4; void *
156142:  POP.W           {R4,R5,R7,LR}
156146:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
15614A:  BX              LR
