; =========================================================
; Game Engine Function: sub_171090
; Address            : 0x171090 - 0x1710BE
; =========================================================

171090:  PUSH            {R4,R6,R7,LR}
171092:  ADD             R7, SP, #8
171094:  MOV             R4, R0
171096:  LDR             R0, [R0,#8]
171098:  CBZ             R0, loc_1710BA
17109A:  LDR             R1, =(dword_381B58 - 0x1710A0)
17109C:  ADD             R1, PC; dword_381B58
17109E:  LDR             R1, [R1]
1710A0:  CBZ             R1, loc_1710AC
1710A2:  LDR.W           R2, [R1,#0x370]
1710A6:  SUBS            R2, #1
1710A8:  STR.W           R2, [R1,#0x370]
1710AC:  LDR             R1, =(dword_381B60 - 0x1710B4)
1710AE:  LDR             R2, =(off_2390B0 - 0x1710B6)
1710B0:  ADD             R1, PC; dword_381B60
1710B2:  ADD             R2, PC; off_2390B0
1710B4:  LDR             R1, [R1]
1710B6:  LDR             R2, [R2]; j_opus_decoder_destroy_0
1710B8:  BLX             R2; j_opus_decoder_destroy_0
1710BA:  MOV             R0, R4
1710BC:  POP             {R4,R6,R7,PC}
