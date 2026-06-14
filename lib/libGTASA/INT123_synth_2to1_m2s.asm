; =========================================================
; Game Engine Function: INT123_synth_2to1_m2s
; Address            : 0x2356E0 - 0x23578C
; =========================================================

2356E0:  PUSH            {R4-R7,LR}
2356E2:  ADD             R7, SP, #0xC
2356E4:  PUSH.W          {R8,R9,R11}
2356E8:  MOV             R4, R1
2356EA:  MOVW            R1, #0xB2A0
2356EE:  LDR             R6, [R4,R1]
2356F0:  MOVW            R1, #0x91A4
2356F4:  LDR             R5, [R4,R1]
2356F6:  MOVS            R1, #0
2356F8:  MOV             R2, R4
2356FA:  MOVS            R3, #1
2356FC:  BLX             R5
2356FE:  MOVW            R1, #0xB2A8
235702:  LDR             R1, [R4,R1]
235704:  ADD             R1, R6
235706:  LDRH.W          R2, [R1,#-0x40]
23570A:  LDRH.W          R3, [R1,#-0x3C]
23570E:  LDRH.W          R6, [R1,#-0x38]
235712:  LDRH.W          R5, [R1,#-0x34]
235716:  LDRH.W          R4, [R1,#-0x30]
23571A:  LDRH.W          R12, [R1,#-0x2C]
23571E:  STRH.W          R2, [R1,#-0x3E]
235722:  LDRH.W          LR, [R1,#-0x28]
235726:  STRH.W          R3, [R1,#-0x3A]
23572A:  LDRH.W          R8, [R1,#-0x24]
23572E:  STRH.W          R6, [R1,#-0x36]
235732:  LDRH.W          R6, [R1,#-0x20]
235736:  STRH.W          R5, [R1,#-0x32]
23573A:  LDRH.W          R5, [R1,#-0x1C]
23573E:  STRH.W          R4, [R1,#-0x2E]
235742:  LDRH.W          R9, [R1,#-0x18]
235746:  STRH.W          R12, [R1,#-0x2A]
23574A:  LDRH.W          R2, [R1,#-0x14]
23574E:  STRH.W          LR, [R1,#-0x26]
235752:  LDRH.W          R3, [R1,#-0x10]
235756:  STRH.W          R8, [R1,#-0x22]
23575A:  LDRH.W          R4, [R1,#-0xC]
23575E:  STRH.W          R6, [R1,#-0x1E]
235762:  LDRH.W          R6, [R1,#-8]
235766:  STRH.W          R5, [R1,#-0x1A]
23576A:  LDRH.W          R5, [R1,#-4]
23576E:  STRH.W          R9, [R1,#-0x16]
235772:  STRH.W          R2, [R1,#-0x12]
235776:  STRH.W          R3, [R1,#-0xE]
23577A:  STRH.W          R4, [R1,#-0xA]
23577E:  STRH.W          R6, [R1,#-6]
235782:  STRH.W          R5, [R1,#-2]
235786:  POP.W           {R8,R9,R11}
23578A:  POP             {R4-R7,PC}
