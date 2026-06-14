; =========================================================
; Game Engine Function: sub_13CE0A
; Address            : 0x13CE0A - 0x13CE34
; =========================================================

13CE0A:  PUSH            {R4,R6,R7,LR}
13CE0C:  ADD             R7, SP, #8
13CE0E:  MOV             R4, R0
13CE10:  LDRD.W          R1, R0, [R0,#4]
13CE14:  CMP             R0, R1
13CE16:  ITTTT NE
13CE18:  SUBNE           R1, R0, R1
13CE1A:  SUBNE           R1, #8
13CE1C:  MVNNE.W         R1, R1,LSR#3
13CE20:  ADDNE.W         R0, R0, R1,LSL#3
13CE24:  IT NE
13CE26:  STRNE           R0, [R4,#8]
13CE28:  LDR             R0, [R4]; void *
13CE2A:  CBZ             R0, loc_13CE30
13CE2C:  BLX             j__ZdlPv; operator delete(void *)
13CE30:  MOV             R0, R4
13CE32:  POP             {R4,R6,R7,PC}
