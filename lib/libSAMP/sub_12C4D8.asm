; =========================================================
; Game Engine Function: sub_12C4D8
; Address            : 0x12C4D8 - 0x12C500
; =========================================================

12C4D8:  PUSH            {R4,R6,R7,LR}
12C4DA:  ADD             R7, SP, #8
12C4DC:  LDR             R1, =(_ZTV11ButtonPanel - 0x12C4E6); `vtable for'ButtonPanel ...
12C4DE:  MOV             R4, R0
12C4E0:  LDR             R0, [R0,#0x6C]; void *
12C4E2:  ADD             R1, PC; `vtable for'ButtonPanel
12C4E4:  ADD.W           R1, R1, #8
12C4E8:  STR             R1, [R4]
12C4EA:  CBZ             R0, loc_12C4F2
12C4EC:  STR             R0, [R4,#0x70]
12C4EE:  BLX             j__ZdlPv; operator delete(void *)
12C4F2:  MOV             R0, R4
12C4F4:  BL              sub_12BCE4
12C4F8:  POP.W           {R4,R6,R7,LR}
12C4FC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
