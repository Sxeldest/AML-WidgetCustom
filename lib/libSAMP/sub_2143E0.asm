; =========================================================
; Game Engine Function: sub_2143E0
; Address            : 0x2143E0 - 0x214412
; =========================================================

2143E0:  PUSH            {R4-R7,LR}
2143E2:  ADD             R7, SP, #0xC
2143E4:  PUSH.W          {R8}
2143E8:  MOV             R5, R0
2143EA:  MOV             R4, R1
2143EC:  MOV             R0, R1
2143EE:  MOVS            R1, #0x64 ; 'd'
2143F0:  MOV.W           R8, #0x64 ; 'd'
2143F4:  BLX             sub_220A6C
2143F8:  MOV             R6, R0
2143FA:  MOV             R0, R5
2143FC:  MOV             R1, R6
2143FE:  BL              sub_214534
214402:  MLS.W           R1, R6, R8, R4
214406:  POP.W           {R8}
21440A:  POP.W           {R4-R7,LR}
21440E:  B.W             sub_214534
