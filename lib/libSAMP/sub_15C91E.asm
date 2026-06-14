; =========================================================
; Game Engine Function: sub_15C91E
; Address            : 0x15C91E - 0x15C942
; =========================================================

15C91E:  PUSH            {R4,R5,R7,LR}
15C920:  ADD             R7, SP, #8
15C922:  CBZ             R1, locret_15C940
15C924:  MOV             R4, R1
15C926:  LDRB            R0, [R4,#0xC]
15C928:  LDR             R5, [R4]
15C92A:  LSLS            R0, R0, #0x1F
15C92C:  ITT NE
15C92E:  LDRNE           R0, [R4,#0x14]; void *
15C930:  BLXNE           j__ZdlPv; operator delete(void *)
15C934:  MOV             R0, R4; void *
15C936:  BLX             j__ZdlPv; operator delete(void *)
15C93A:  CMP             R5, #0
15C93C:  MOV             R4, R5
15C93E:  BNE             loc_15C926
15C940:  POP             {R4,R5,R7,PC}
