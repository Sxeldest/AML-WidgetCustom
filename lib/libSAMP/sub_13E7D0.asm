; =========================================================
; Game Engine Function: sub_13E7D0
; Address            : 0x13E7D0 - 0x13E7F2
; =========================================================

13E7D0:  PUSH            {R4,R5,R7,LR}
13E7D2:  ADD             R7, SP, #8
13E7D4:  MOV             R5, R0
13E7D6:  LDR.W           R0, [R0,R1,LSL#2]; void *
13E7DA:  CBZ             R0, locret_13E7F0
13E7DC:  MOV             R4, R1
13E7DE:  BLX             j__ZdlPv; operator delete(void *)
13E7E2:  ADDS            R1, R5, R4
13E7E4:  MOVS            R0, #0
13E7E6:  MOV.W           R2, #0x1000
13E7EA:  STR.W           R0, [R5,R4,LSL#2]
13E7EE:  STRB            R0, [R1,R2]
13E7F0:  POP             {R4,R5,R7,PC}
