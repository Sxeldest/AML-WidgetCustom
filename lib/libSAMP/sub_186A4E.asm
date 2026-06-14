; =========================================================
; Game Engine Function: sub_186A4E
; Address            : 0x186A4E - 0x186AF0
; =========================================================

186A4E:  PUSH            {R4-R7,LR}
186A50:  ADD             R7, SP, #0xC
186A52:  PUSH.W          {R8-R11}
186A56:  SUB             SP, SP, #4
186A58:  MOV             R8, R2
186A5A:  MOV             R6, R0
186A5C:  LDRD.W          R11, R0, [R0,#4]
186A60:  MOV             R9, R3
186A62:  LDR             R2, [R7,#arg_0]
186A64:  MOV             R10, R1
186A66:  CMP             R11, R0
186A68:  BNE             loc_186AB4
186A6A:  MOV.W           R1, R11,LSL#1
186A6E:  MOVS            R0, #0xC
186A70:  CMP.W           R11, #0
186A74:  IT EQ
186A76:  MOVEQ           R1, #0x10
186A78:  UMULL.W         R0, R2, R1, R0
186A7C:  STR             R1, [R6,#8]
186A7E:  CMP             R2, #0
186A80:  IT NE
186A82:  MOVNE           R2, #1
186A84:  CMP             R2, #0
186A86:  IT NE
186A88:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
186A8C:  BLX             j__Znaj; operator new[](uint)
186A90:  LDR             R4, [R6]
186A92:  MOV             R5, R0
186A94:  ADD.W           R0, R11, R11,LSL#1
186A98:  LSLS            R2, R0, #2; n
186A9A:  MOV             R0, R5; dest
186A9C:  MOV             R1, R4; src
186A9E:  BLX             j_memcpy
186AA2:  CBZ             R4, loc_186AAE
186AA4:  MOV             R0, R4; void *
186AA6:  BLX             j__ZdaPv; operator delete[](void *)
186AAA:  LDR.W           R11, [R6,#4]
186AAE:  LDR             R2, [R7,#arg_0]
186AB0:  STR             R5, [R6]
186AB2:  B               loc_186AB6
186AB4:  LDR             R5, [R6]
186AB6:  ADD.W           R4, R2, R2,LSL#1
186ABA:  SUB.W           R2, R11, R2
186ABE:  ADD.W           R2, R2, R2,LSL#1
186AC2:  ADD.W           R1, R5, R4,LSL#2; src
186AC6:  ADD.W           R0, R1, #0xC; dest
186ACA:  LSLS            R2, R2, #2; n
186ACC:  BLX             j_memmove
186AD0:  LDRD.W          R0, R1, [R6]
186AD4:  ADDS            R1, #1
186AD6:  STR             R1, [R6,#4]
186AD8:  STR.W           R10, [R0,R4,LSL#2]
186ADC:  ADD.W           R0, R0, R4,LSL#2
186AE0:  STR.W           R9, [R0,#8]
186AE4:  STRH.W          R8, [R0,#4]
186AE8:  ADD             SP, SP, #4
186AEA:  POP.W           {R8-R11}
186AEE:  POP             {R4-R7,PC}
