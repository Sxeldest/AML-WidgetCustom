; =========================================================
; Game Engine Function: sub_15BBFE
; Address            : 0x15BBFE - 0x15BC16
; =========================================================

15BBFE:  PUSH            {R4,R6,R7,LR}
15BC00:  ADD             R7, SP, #8
15BC02:  MOV             R4, R0
15BC04:  MOVS            R0, #0
15BC06:  STRD.W          R1, R0, [R4]
15BC0A:  MOV             R0, R1; unsigned int
15BC0C:  BLX             j__Znaj; operator new[](uint)
15BC10:  STR             R0, [R4,#8]
15BC12:  MOV             R0, R4
15BC14:  POP             {R4,R6,R7,PC}
