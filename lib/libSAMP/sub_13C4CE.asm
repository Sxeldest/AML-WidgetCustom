; =========================================================
; Game Engine Function: sub_13C4CE
; Address            : 0x13C4CE - 0x13C4F8
; =========================================================

13C4CE:  PUSH            {R4,R6,R7,LR}
13C4D0:  ADD             R7, SP, #8
13C4D2:  MOV             R4, R0
13C4D4:  LDRD.W          R1, R0, [R0,#4]
13C4D8:  CMP             R0, R1
13C4DA:  ITTTT NE
13C4DC:  SUBNE           R1, R0, R1
13C4DE:  SUBNE           R1, #8
13C4E0:  MVNNE.W         R1, R1,LSR#3
13C4E4:  ADDNE.W         R0, R0, R1,LSL#3
13C4E8:  IT NE
13C4EA:  STRNE           R0, [R4,#8]
13C4EC:  LDR             R0, [R4]; void *
13C4EE:  CBZ             R0, loc_13C4F4
13C4F0:  BLX             j__ZdlPv; operator delete(void *)
13C4F4:  MOV             R0, R4
13C4F6:  POP             {R4,R6,R7,PC}
