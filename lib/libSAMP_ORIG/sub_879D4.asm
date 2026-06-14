; =========================================================
; Game Engine Function: sub_879D4
; Address            : 0x879D4 - 0x87ABC
; =========================================================

879D4:  PUSH            {R4-R7,LR}
879D6:  ADD             R7, SP, #0xC
879D8:  PUSH.W          {R8-R11}
879DC:  SUB             SP, SP, #4
879DE:  LDR.W           R9, [R0,#4]
879E2:  MOV             R11, R0
879E4:  CMP.W           R9, #0
879E8:  BEQ             loc_87A2C
879EA:  LDR             R0, [R1]
879EC:  ADD.W           R6, R9, R9,LSR#31
879F0:  LDR.W           R1, [R11]
879F4:  SUB.W           R3, R9, #1
879F8:  ASRS            R4, R6, #1
879FA:  MOVS            R5, #0
879FC:  LDR.W           R6, [R1,R4,LSL#3]
87A00:  CMP             R0, R6
87A02:  BEQ             loc_87A94
87A04:  IT LT
87A06:  SUBLT           R3, R4, #1
87A08:  CMP             R0, R6
87A0A:  IT GE
87A0C:  ADDGE           R5, R4, #1
87A0E:  SUBS            R6, R3, R5
87A10:  ADD.W           R6, R6, R6,LSR#31
87A14:  ADD.W           R4, R5, R6,ASR#1
87A18:  BGE             loc_879FC
87A1A:  CMP             R5, R9
87A1C:  BCS             loc_87A32
87A1E:  LDRD.W          R1, R2, [R2]
87A22:  MOV             R0, R11
87A24:  MOV             R3, R5
87A26:  BL              sub_87ABC
87A2A:  B               loc_87AB2
87A2C:  MOVS            R5, #0
87A2E:  CMP             R5, R9
87A30:  BCC             loc_87A1E
87A32:  LDR.W           R0, [R11,#8]
87A36:  LDRD.W          R10, R4, [R2]
87A3A:  CMP             R9, R0
87A3C:  BNE             loc_87A9A
87A3E:  MOVW            R1, #0xFFFE
87A42:  MOV.W           R0, R9,LSL#1
87A46:  MOVT            R1, #0x1FFF
87A4A:  CMP.W           R9, #0
87A4E:  IT EQ
87A50:  MOVEQ           R0, #0x10
87A52:  ANDS            R1, R0
87A54:  STR.W           R0, [R11,#8]
87A58:  SUBS            R1, R0, R1
87A5A:  MOV.W           R0, R0,LSL#3
87A5E:  IT NE
87A60:  MOVNE           R1, #1
87A62:  CMP             R1, #0
87A64:  IT NE
87A66:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
87A6A:  BLX             j__Znaj; operator new[](uint)
87A6E:  LDR.W           R8, [R11]
87A72:  MOV.W           R2, R9,LSL#3; n
87A76:  MOV             R5, R0
87A78:  MOV             R1, R8; src
87A7A:  BLX             j_memcpy
87A7E:  CMP.W           R8, #0
87A82:  BEQ             loc_87A8E
87A84:  MOV             R0, R8; void *
87A86:  BLX             j__ZdaPv; operator delete[](void *)
87A8A:  LDR.W           R9, [R11,#4]
87A8E:  STR.W           R5, [R11]
87A92:  B               loc_87A9E
87A94:  MOV.W           R5, #0xFFFFFFFF
87A98:  B               loc_87AB2
87A9A:  LDR.W           R5, [R11]
87A9E:  ADD.W           R0, R5, R9,LSL#3
87AA2:  STR.W           R10, [R5,R9,LSL#3]
87AA6:  STR             R4, [R0,#4]
87AA8:  LDR.W           R5, [R11,#4]
87AAC:  ADDS            R0, R5, #1
87AAE:  STR.W           R0, [R11,#4]
87AB2:  MOV             R0, R5
87AB4:  ADD             SP, SP, #4
87AB6:  POP.W           {R8-R11}
87ABA:  POP             {R4-R7,PC}
