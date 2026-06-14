; =========================================================
; Game Engine Function: sub_138A84
; Address            : 0x138A84 - 0x138AB2
; =========================================================

138A84:  PUSH            {R4-R7,LR}
138A86:  ADD             R7, SP, #0xC
138A88:  PUSH.W          {R11}
138A8C:  MOV             R4, R0
138A8E:  BL              sub_138AB2
138A92:  LDRD.W          R5, R6, [R4,#4]
138A96:  CMP             R5, R6
138A98:  BEQ             loc_138AA4
138A9A:  LDR.W           R0, [R5],#4; void *
138A9E:  BLX             j__ZdlPv; operator delete(void *)
138AA2:  B               loc_138A96
138AA4:  MOV             R0, R4
138AA6:  POP.W           {R11}
138AAA:  POP.W           {R4-R7,LR}
138AAE:  B.W             sub_138B72
