; =========================================================
; Game Engine Function: sub_112A38
; Address            : 0x112A38 - 0x112B14
; =========================================================

112A38:  PUSH            {R4-R7,LR}
112A3A:  ADD             R7, SP, #0xC
112A3C:  PUSH.W          {R11}
112A40:  SUB             SP, SP, #8
112A42:  MOV             R5, R0
112A44:  MOV             R0, R1
112A46:  MOV             R4, R1
112A48:  BL              sub_17D81C
112A4C:  SUB.W           R1, R7, #-var_11; int
112A50:  MOV             R0, R4; int
112A52:  MOVS            R2, #8
112A54:  MOVS            R3, #1
112A56:  BL              sub_17D786
112A5A:  LDRB.W          R0, [R7,#var_11]
112A5E:  CMP             R0, #2
112A60:  BEQ             loc_112AC6
112A62:  CMP             R0, #1
112A64:  BEQ             loc_112A92
112A66:  CMP             R0, #0
112A68:  BNE             loc_112B0C
112A6A:  LDR.W           R4, [R5,#0x85C]
112A6E:  MOVS            R0, #0
112A70:  STR.W           R0, [R5,#0x858]
112A74:  CMP             R4, #0
112A76:  STR.W           R0, [R5,#0x85C]
112A7A:  BEQ             loc_112B0C
112A7C:  ADDS            R0, R4, #4
112A7E:  DMB.W           ISH
112A82:  LDREX.W         R1, [R0]
112A86:  SUBS            R2, R1, #1
112A88:  STREX.W         R3, R2, [R0]
112A8C:  CMP             R3, #0
112A8E:  BNE             loc_112A82
112A90:  B               loc_112AF8
112A92:  MOVS            R0, #0x88; unsigned int
112A94:  BLX             j__Znwj; operator new(uint)
112A98:  MOV             R6, R0
112A9A:  BL              sub_113730
112A9E:  LDR.W           R4, [R5,#0x85C]
112AA2:  ADD.W           R0, R6, #0x10
112AA6:  STR.W           R0, [R5,#0x858]
112AAA:  STR.W           R6, [R5,#0x85C]
112AAE:  CBZ             R4, loc_112B0C
112AB0:  ADDS            R0, R4, #4
112AB2:  DMB.W           ISH
112AB6:  LDREX.W         R1, [R0]
112ABA:  SUBS            R2, R1, #1
112ABC:  STREX.W         R3, R2, [R0]
112AC0:  CMP             R3, #0
112AC2:  BNE             loc_112AB6
112AC4:  B               loc_112AF8
112AC6:  MOVS            R0, #0x88; unsigned int
112AC8:  BLX             j__Znwj; operator new(uint)
112ACC:  MOV             R6, R0
112ACE:  BL              sub_113FE4
112AD2:  LDR.W           R4, [R5,#0x85C]
112AD6:  ADD.W           R0, R6, #0x10
112ADA:  STR.W           R0, [R5,#0x858]
112ADE:  STR.W           R6, [R5,#0x85C]
112AE2:  CBZ             R4, loc_112B0C
112AE4:  ADDS            R0, R4, #4
112AE6:  DMB.W           ISH
112AEA:  LDREX.W         R1, [R0]
112AEE:  SUBS            R2, R1, #1
112AF0:  STREX.W         R3, R2, [R0]
112AF4:  CMP             R3, #0
112AF6:  BNE             loc_112AEA
112AF8:  DMB.W           ISH
112AFC:  CBNZ            R1, loc_112B0C
112AFE:  LDR             R0, [R4]
112B00:  LDR             R1, [R0,#8]
112B02:  MOV             R0, R4
112B04:  BLX             R1
112B06:  MOV             R0, R4; this
112B08:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
112B0C:  ADD             SP, SP, #8
112B0E:  POP.W           {R11}
112B12:  POP             {R4-R7,PC}
