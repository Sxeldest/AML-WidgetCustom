; =========================================================
; Game Engine Function: sub_1531A8
; Address            : 0x1531A8 - 0x1531DE
; =========================================================

1531A8:  PUSH            {R4,R5,R7,LR}
1531AA:  ADD             R7, SP, #8
1531AC:  SUB             SP, SP, #0x10
1531AE:  MOV             R2, R1
1531B0:  MOV             R1, R0
1531B2:  ADD             R0, SP, #0x18+var_14
1531B4:  LDR             R4, [R2]
1531B6:  BL              sub_1531DE
1531BA:  LDR             R5, [SP,#0x18+var_14]
1531BC:  MOVS            R0, #0
1531BE:  STR             R0, [SP,#0x18+var_14]
1531C0:  CBZ             R5, loc_1531D8
1531C2:  LDRB.W          R0, [SP,#0x18+var_C]
1531C6:  CBZ             R0, loc_1531D2
1531C8:  ADD.W           R0, R5, #0xC
1531CC:  MOVS            R1, #0
1531CE:  BL              sub_153336
1531D2:  MOV             R0, R5; void *
1531D4:  BLX             j__ZdlPv; operator delete(void *)
1531D8:  MOV             R0, R4
1531DA:  ADD             SP, SP, #0x10
1531DC:  POP             {R4,R5,R7,PC}
