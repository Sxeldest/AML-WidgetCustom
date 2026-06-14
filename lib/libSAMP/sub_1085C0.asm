; =========================================================
; Game Engine Function: sub_1085C0
; Address            : 0x1085C0 - 0x108630
; =========================================================

1085C0:  PUSH            {R4-R7,LR}
1085C2:  ADD             R7, SP, #0xC
1085C4:  PUSH.W          {R11}
1085C8:  SUB             SP, SP, #8
1085CA:  MOVS            R5, #0
1085CC:  CBZ             R0, loc_108626
1085CE:  MOV             R4, R1
1085D0:  CBZ             R1, loc_108626
1085D2:  BL              loc_108644
1085D6:  MOV             R5, R0
1085D8:  ADDS            R0, #1
1085DA:  BNE             loc_1085E6
1085DC:  LDR             R0, =(asc_879DB - 0x1085E2); "*" ...
1085DE:  ADD             R0, PC; "*"
1085E0:  BL              loc_108644
1085E4:  MOV             R5, R0
1085E6:  BL              sub_10867C
1085EA:  MOV             R0, R5
1085EC:  MOVS            R1, #0
1085EE:  MOVS            R6, #0
1085F0:  BL              sub_1086A8
1085F4:  LDR             R0, =(off_23494C - 0x108604)
1085F6:  MOV             R1, #0x5C8839
1085FE:  STR             R6, [SP,#0x18+var_14]
108600:  ADD             R0, PC; off_23494C
108602:  LDR             R0, [R0]; dword_23DF24
108604:  LDR             R0, [R0]
108606:  ADDS            R2, R0, R1
108608:  ADD             R0, SP, #0x18+var_14
10860A:  MOV             R1, R4
10860C:  BLX             R2
10860E:  LDR             R5, [SP,#0x18+var_14]
108610:  CBNZ            R5, loc_108622
108612:  LDR             R1, =(aAxl - 0x10861E); "AXL" ...
108614:  MOVS            R0, #3; prio
108616:  LDR             R2, =(aTextureSWasNot - 0x108620); "Texture \"%s\" was not found!" ...
108618:  MOV             R3, R4
10861A:  ADD             R1, PC; "AXL"
10861C:  ADD             R2, PC; "Texture \"%s\" was not found!"
10861E:  BLX             __android_log_print
108622:  BL              sub_1086D4
108626:  MOV             R0, R5
108628:  ADD             SP, SP, #8
10862A:  POP.W           {R11}
10862E:  POP             {R4-R7,PC}
