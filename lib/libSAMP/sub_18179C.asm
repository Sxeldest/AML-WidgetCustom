; =========================================================
; Game Engine Function: sub_18179C
; Address            : 0x18179C - 0x181838
; =========================================================

18179C:  MOVS            R3, #0
18179E:  B.W             loc_1817A2
1817A2:  PUSH            {R4-R7,LR}
1817A4:  ADD             R7, SP, #0xC
1817A6:  PUSH.W          {R8-R10}
1817AA:  SUB             SP, SP, #0x138
1817AC:  MOV             R4, R0
1817AE:  LDR             R0, [R0]
1817B0:  MOV             R6, R1
1817B2:  MOV             R5, R3
1817B4:  MOV             R8, R2
1817B6:  LDR             R1, [R0,#0x2C]
1817B8:  MOV             R0, R4
1817BA:  BLX             R1
1817BC:  CBZ             R0, loc_181830
1817BE:  ADD             R0, SP, #0x150+var_130; int
1817C0:  MOVS            R1, #5; size
1817C2:  BL              sub_17D4C0
1817C6:  MOVS            R1, #6
1817C8:  STRB.W          R1, [SP,#0x150+var_1C]
1817CC:  ADD             R1, SP, #0x150+var_1C
1817CE:  MOVS            R2, #8
1817D0:  MOVS            R3, #1
1817D2:  BL              sub_17D628
1817D6:  BL              sub_17E348
1817DA:  MOV             R9, R0
1817DC:  MOV             R10, R1
1817DE:  BL              sub_17E2E4
1817E2:  STR             R0, [SP,#0x150+var_1C]
1817E4:  ADD             R0, SP, #0x150+var_130
1817E6:  ADD             R1, SP, #0x150+var_1C
1817E8:  MOVS            R2, #0x20 ; ' '
1817EA:  MOVS            R3, #1
1817EC:  BL              sub_17D628
1817F0:  CBZ             R5, loc_181814
1817F2:  LDR             R1, [SP,#0x150+var_124]
1817F4:  LDR             R2, [SP,#0x150+var_130]
1817F6:  MOVS            R0, #0
1817F8:  MOVS            R3, #6
1817FA:  STRD.W          R3, R0, [SP,#0x150+var_150]
1817FE:  MOVS            R3, #0
181800:  STRD.W          R0, R0, [SP,#0x150+var_140]
181804:  MOV             R0, R4
181806:  STRD.W          R6, R8, [SP,#0x150+var_148]
18180A:  STRD.W          R9, R10, [SP,#0x150+var_138]
18180E:  BL              sub_1825E8
181812:  B               loc_18182A
181814:  LDR             R0, [R4]
181816:  LDR             R5, [R0,#0x38]
181818:  MOVS            R0, #0
18181A:  ADD             R1, SP, #0x150+var_130
18181C:  STMEA.W         SP, {R0,R6,R8}
181820:  MOVS            R2, #0
181822:  MOVS            R3, #6
181824:  STR             R0, [SP,#0x150+var_144]
181826:  MOV             R0, R4
181828:  BLX             R5
18182A:  ADD             R0, SP, #0x150+var_130
18182C:  BL              sub_17D542
181830:  ADD             SP, SP, #0x138
181832:  POP.W           {R8-R10}
181836:  POP             {R4-R7,PC}
