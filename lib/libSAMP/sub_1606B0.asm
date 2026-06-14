; =========================================================
; Game Engine Function: sub_1606B0
; Address            : 0x1606B0 - 0x1606CA
; =========================================================

1606B0:  PUSH            {R4,R6,R7,LR}
1606B2:  ADD             R7, SP, #8
1606B4:  MOV             R4, R0
1606B6:  LDR             R0, [R0]
1606B8:  CBZ             R0, loc_1606C6
1606BA:  MOV             R0, R4
1606BC:  BL              sub_1606CA
1606C0:  LDR             R0, [R4]; void *
1606C2:  BLX             j__ZdlPv; operator delete(void *)
1606C6:  MOV             R0, R4
1606C8:  POP             {R4,R6,R7,PC}
