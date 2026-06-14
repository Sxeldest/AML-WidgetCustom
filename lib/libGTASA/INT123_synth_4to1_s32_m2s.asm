; =========================================================
; Game Engine Function: INT123_synth_4to1_s32_m2s
; Address            : 0x23A692 - 0x23A6FE
; =========================================================

23A692:  PUSH            {R4-R7,LR}
23A694:  ADD             R7, SP, #0xC
23A696:  PUSH.W          {R11}
23A69A:  MOV             R4, R1
23A69C:  MOVW            R1, #0xB2A0
23A6A0:  LDR             R6, [R4,R1]
23A6A2:  MOVW            R1, #0x91C0
23A6A6:  LDR             R5, [R4,R1]
23A6A8:  MOVS            R1, #0
23A6AA:  MOV             R2, R4
23A6AC:  MOVS            R3, #1
23A6AE:  BLX             R5
23A6B0:  MOVW            R1, #0xB2A8
23A6B4:  LDR             R1, [R4,R1]
23A6B6:  ADD             R1, R6
23A6B8:  LDR.W           R2, [R1,#-0x40]
23A6BC:  LDR.W           R3, [R1,#-0x38]
23A6C0:  LDR.W           R6, [R1,#-0x30]
23A6C4:  LDR.W           R5, [R1,#-0x28]
23A6C8:  LDR.W           R4, [R1,#-0x20]
23A6CC:  LDR.W           R12, [R1,#-0x18]
23A6D0:  STR.W           R2, [R1,#-0x3C]
23A6D4:  LDR.W           R2, [R1,#-0x10]
23A6D8:  STR.W           R3, [R1,#-0x34]
23A6DC:  LDR.W           R3, [R1,#-8]
23A6E0:  STR.W           R6, [R1,#-0x2C]
23A6E4:  STR.W           R5, [R1,#-0x24]
23A6E8:  STR.W           R4, [R1,#-0x1C]
23A6EC:  STR.W           R12, [R1,#-0x14]
23A6F0:  STR.W           R2, [R1,#-0xC]
23A6F4:  STR.W           R3, [R1,#-4]
23A6F8:  POP.W           {R11}
23A6FC:  POP             {R4-R7,PC}
