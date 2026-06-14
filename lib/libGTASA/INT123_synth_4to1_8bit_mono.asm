; =========================================================
; Game Engine Function: INT123_synth_4to1_8bit_mono
; Address            : 0x2375C8 - 0x237662
; =========================================================

2375C8:  PUSH            {R4-R7,LR}
2375CA:  ADD             R7, SP, #0xC
2375CC:  PUSH.W          {R8,R9,R11}
2375D0:  SUB             SP, SP, #0x18
2375D2:  MOV             R4, R1
2375D4:  LDR             R1, =(__stack_chk_guard_ptr - 0x2375E2)
2375D6:  MOVW            R8, #0xB2A8
2375DA:  MOVW            R9, #0xB2A0
2375DE:  ADD             R1, PC; __stack_chk_guard_ptr
2375E0:  MOV             R2, R4
2375E2:  MOVS            R3, #0
2375E4:  LDR             R1, [R1]; __stack_chk_guard
2375E6:  LDR             R1, [R1]
2375E8:  STR             R1, [SP,#0x30+var_1C]
2375EA:  MOVW            R1, #0x91B8
2375EE:  LDR.W           R12, [R4,R1]
2375F2:  ADD             R1, SP, #0x30+var_2C
2375F4:  LDR.W           R6, [R4,R8]
2375F8:  LDR.W           R5, [R4,R9]
2375FC:  STR.W           R1, [R4,R9]
237600:  MOVS            R1, #0
237602:  STR.W           R1, [R4,R8]
237606:  MOVS            R1, #0
237608:  BLX             R12
23760A:  STR.W           R5, [R4,R9]
23760E:  ADDS            R2, R5, R6
237610:  LDRB.W          R1, [SP,#0x30+var_2C]
237614:  STRB            R1, [R5,R6]
237616:  LDRB.W          R1, [SP,#0x30+var_2A]
23761A:  STRB            R1, [R2,#1]
23761C:  LDRB.W          R1, [SP,#0x30+var_28]
237620:  STRB            R1, [R2,#2]
237622:  LDRB.W          R1, [SP,#0x30+var_26]
237626:  STRB            R1, [R2,#3]
237628:  LDRB.W          R1, [SP,#0x30+var_24]
23762C:  STRB            R1, [R2,#4]
23762E:  LDRB.W          R1, [SP,#0x30+var_22]
237632:  STRB            R1, [R2,#5]
237634:  LDRB.W          R1, [SP,#0x30+var_20]
237638:  STRB            R1, [R2,#6]
23763A:  LDRB.W          R1, [SP,#0x30+var_1E]
23763E:  STRB            R1, [R2,#7]
237640:  ADD.W           R1, R6, #8
237644:  STR.W           R1, [R4,R8]
237648:  LDR             R1, =(__stack_chk_guard_ptr - 0x237650)
23764A:  LDR             R2, [SP,#0x30+var_1C]
23764C:  ADD             R1, PC; __stack_chk_guard_ptr
23764E:  LDR             R1, [R1]; __stack_chk_guard
237650:  LDR             R1, [R1]
237652:  SUBS            R1, R1, R2
237654:  ITTT EQ
237656:  ADDEQ           SP, SP, #0x18
237658:  POPEQ.W         {R8,R9,R11}
23765C:  POPEQ           {R4-R7,PC}
23765E:  BLX             __stack_chk_fail
