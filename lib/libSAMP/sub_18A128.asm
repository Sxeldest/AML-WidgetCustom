; =========================================================
; Game Engine Function: sub_18A128
; Address            : 0x18A128 - 0x18A144
; =========================================================

18A128:  PUSH            {R4,R6,R7,LR}
18A12A:  ADD             R7, SP, #8
18A12C:  MOVS            R1, #0
18A12E:  MOV             R4, R0
18A130:  BL              sub_18A144
18A134:  LDR             R0, [R4,#8]
18A136:  CBZ             R0, loc_18A140
18A138:  LDR             R0, [R4]; void *
18A13A:  CBZ             R0, loc_18A140
18A13C:  BLX             j__ZdaPv; operator delete[](void *)
18A140:  MOV             R0, R4
18A142:  POP             {R4,R6,R7,PC}
