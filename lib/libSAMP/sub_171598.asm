; =========================================================
; Game Engine Function: sub_171598
; Address            : 0x171598 - 0x1715C6
; =========================================================

171598:  PUSH            {R4,R6,R7,LR}
17159A:  ADD             R7, SP, #8
17159C:  MOV             R4, R0
17159E:  LDR             R0, [R0,#8]
1715A0:  CBZ             R0, loc_1715C2
1715A2:  LDR             R1, =(dword_381B58 - 0x1715A8)
1715A4:  ADD             R1, PC; dword_381B58
1715A6:  LDR             R1, [R1]
1715A8:  CBZ             R1, loc_1715B4
1715AA:  LDR.W           R2, [R1,#0x370]
1715AE:  SUBS            R2, #1
1715B0:  STR.W           R2, [R1,#0x370]
1715B4:  LDR             R1, =(dword_381B60 - 0x1715BC)
1715B6:  LDR             R2, =(off_2390B0 - 0x1715BE)
1715B8:  ADD             R1, PC; dword_381B60
1715BA:  ADD             R2, PC; off_2390B0
1715BC:  LDR             R1, [R1]
1715BE:  LDR             R2, [R2]; j_opus_decoder_destroy_0
1715C0:  BLX             R2; j_opus_decoder_destroy_0
1715C2:  MOV             R0, R4
1715C4:  POP             {R4,R6,R7,PC}
