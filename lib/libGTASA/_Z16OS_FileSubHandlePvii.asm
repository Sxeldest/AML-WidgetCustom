; =========================================================
; Game Engine Function: _Z16OS_FileSubHandlePvii
; Address            : 0x2670AC - 0x2670CC
; =========================================================

2670AC:  PUSH            {R4-R7,LR}
2670AE:  ADD             R7, SP, #0xC
2670B0:  PUSH.W          {R11}
2670B4:  MOV             R4, R2
2670B6:  MOV             R5, R1
2670B8:  MOV             R6, R0
2670BA:  BLX             j__Z18OS_FileSetPositionPvi; OS_FileSetPosition(void *,int)
2670BE:  LDR             R0, [R6,#0x1C]
2670C0:  ADD             R0, R5
2670C2:  STRD.W          R4, R0, [R6,#0x18]
2670C6:  POP.W           {R11}
2670CA:  POP             {R4-R7,PC}
