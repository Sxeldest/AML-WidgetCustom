; =========================================================
; Game Engine Function: sub_15C8A0
; Address            : 0x15C8A0 - 0x15C8C6
; =========================================================

15C8A0:  PUSH            {R4,R5,R7,LR}
15C8A2:  ADD             R7, SP, #8
15C8A4:  MOV             R4, R0
15C8A6:  LDR             R0, [R0,#8]; void *
15C8A8:  CBZ             R0, loc_15C8B6
15C8AA:  LDR             R5, [R0]
15C8AC:  BLX             j__ZdlPv; operator delete(void *)
15C8B0:  CMP             R5, #0
15C8B2:  MOV             R0, R5
15C8B4:  BNE             loc_15C8AA
15C8B6:  LDR             R0, [R4]; void *
15C8B8:  MOVS            R1, #0
15C8BA:  STR             R1, [R4]
15C8BC:  CBZ             R0, loc_15C8C2
15C8BE:  BLX             j__ZdlPv; operator delete(void *)
15C8C2:  MOV             R0, R4
15C8C4:  POP             {R4,R5,R7,PC}
