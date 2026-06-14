; =========================================================
; Game Engine Function: sub_161AD8
; Address            : 0x161AD8 - 0x161B14
; =========================================================

161AD8:  PUSH            {R4,R6,R7,LR}
161ADA:  ADD             R7, SP, #8
161ADC:  LDR             R4, [R0,#4]
161ADE:  MOVS            R1, #0
161AE0:  STRD.W          R1, R1, [R0]
161AE4:  CBZ             R4, locret_161B00
161AE6:  ADDS            R0, R4, #4
161AE8:  DMB.W           ISH
161AEC:  LDREX.W         R1, [R0]
161AF0:  SUBS            R2, R1, #1
161AF2:  STREX.W         R3, R2, [R0]
161AF6:  CMP             R3, #0
161AF8:  BNE             loc_161AEC
161AFA:  DMB.W           ISH
161AFE:  CBZ             R1, loc_161B02
161B00:  POP             {R4,R6,R7,PC}
161B02:  LDR             R0, [R4]
161B04:  LDR             R1, [R0,#8]
161B06:  MOV             R0, R4
161B08:  BLX             R1
161B0A:  MOV             R0, R4
161B0C:  POP.W           {R4,R6,R7,LR}
161B10:  B.W             sub_2242E0
