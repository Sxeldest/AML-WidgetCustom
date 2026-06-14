; =========================================================
; Game Engine Function: sub_138B72
; Address            : 0x138B72 - 0x138B9C
; =========================================================

138B72:  PUSH            {R4,R6,R7,LR}
138B74:  ADD             R7, SP, #8
138B76:  MOV             R4, R0
138B78:  LDRD.W          R1, R0, [R0,#4]
138B7C:  CMP             R0, R1
138B7E:  ITTTT NE
138B80:  SUBNE           R1, R0, R1
138B82:  SUBNE           R1, #4
138B84:  MVNNE.W         R1, R1,LSR#2
138B88:  ADDNE.W         R0, R0, R1,LSL#2
138B8C:  IT NE
138B8E:  STRNE           R0, [R4,#8]
138B90:  LDR             R0, [R4]; void *
138B92:  CBZ             R0, loc_138B98
138B94:  BLX             j__ZdlPv; operator delete(void *)
138B98:  MOV             R0, R4
138B9A:  POP             {R4,R6,R7,PC}
