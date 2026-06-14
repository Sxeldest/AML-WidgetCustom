; =========================================================
; Game Engine Function: sub_17E4F4
; Address            : 0x17E4F4 - 0x17E50E
; =========================================================

17E4F4:  PUSH            {R4,R6,R7,LR}
17E4F6:  ADD             R7, SP, #8
17E4F8:  MOV             R4, R0
17E4FA:  BL              sub_17E50E
17E4FE:  LDR             R0, [R4,#0xC]
17E500:  CBZ             R0, loc_17E50A
17E502:  LDR             R0, [R4]; void *
17E504:  CBZ             R0, loc_17E50A
17E506:  BLX             j__ZdaPv; operator delete[](void *)
17E50A:  MOV             R0, R4
17E50C:  POP             {R4,R6,R7,PC}
