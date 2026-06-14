; =========================================================
; Game Engine Function: sub_F627C
; Address            : 0xF627C - 0xF629E
; =========================================================

F627C:  PUSH            {R4,R5,R7,LR}
F627E:  ADD             R7, SP, #8
F6280:  CBZ             R1, locret_F629C
F6282:  MOV             R4, R1
F6284:  MOV             R0, R4
F6286:  MOVS            R1, #0
F6288:  LDR.W           R5, [R0],#0xC
F628C:  BL              sub_F629E
F6290:  MOV             R0, R4; void *
F6292:  BLX             j__ZdlPv; operator delete(void *)
F6296:  CMP             R5, #0
F6298:  MOV             R4, R5
F629A:  BNE             loc_F6284
F629C:  POP             {R4,R5,R7,PC}
