; =========================================================
; Game Engine Function: INT123_synth_4to1_8bit_m2s
; Address            : 0x23766C - 0x2376D8
; =========================================================

23766C:  PUSH            {R4-R7,LR}
23766E:  ADD             R7, SP, #0xC
237670:  PUSH.W          {R11}
237674:  MOV             R4, R1
237676:  MOVW            R1, #0xB2A0
23767A:  LDR             R6, [R4,R1]
23767C:  MOVW            R1, #0x91B8
237680:  LDR             R5, [R4,R1]
237682:  MOVS            R1, #0
237684:  MOV             R2, R4
237686:  MOVS            R3, #1
237688:  BLX             R5
23768A:  MOVW            R1, #0xB2A8
23768E:  LDR             R1, [R4,R1]
237690:  ADD             R1, R6
237692:  LDRB.W          R2, [R1,#-0x10]
237696:  LDRB.W          R3, [R1,#-0xE]
23769A:  LDRB.W          R6, [R1,#-0xC]
23769E:  LDRB.W          R5, [R1,#-0xA]
2376A2:  LDRB.W          R4, [R1,#-8]
2376A6:  LDRB.W          R12, [R1,#-6]
2376AA:  STRB.W          R2, [R1,#-0xF]
2376AE:  LDRB.W          R2, [R1,#-4]
2376B2:  STRB.W          R3, [R1,#-0xD]
2376B6:  LDRB.W          R3, [R1,#-2]
2376BA:  STRB.W          R6, [R1,#-0xB]
2376BE:  STRB.W          R5, [R1,#-9]
2376C2:  STRB.W          R4, [R1,#-7]
2376C6:  STRB.W          R12, [R1,#-5]
2376CA:  STRB.W          R2, [R1,#-3]
2376CE:  STRB.W          R3, [R1,#-1]
2376D2:  POP.W           {R11}
2376D6:  POP             {R4-R7,PC}
