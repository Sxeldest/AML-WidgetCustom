; =========================================================
; Game Engine Function: sub_171260
; Address            : 0x171260 - 0x17128E
; =========================================================

171260:  PUSH            {R4,R6,R7,LR}
171262:  ADD             R7, SP, #8
171264:  MOV             R4, R0
171266:  LDR             R0, [R0,#8]
171268:  CBZ             R0, loc_17128A
17126A:  LDR             R1, =(dword_381B58 - 0x171270)
17126C:  ADD             R1, PC; dword_381B58
17126E:  LDR             R1, [R1]
171270:  CBZ             R1, loc_17127C
171272:  LDR.W           R2, [R1,#0x370]
171276:  SUBS            R2, #1
171278:  STR.W           R2, [R1,#0x370]
17127C:  LDR             R1, =(dword_381B60 - 0x171284)
17127E:  LDR             R2, =(off_2390B0 - 0x171286)
171280:  ADD             R1, PC; dword_381B60
171282:  ADD             R2, PC; off_2390B0
171284:  LDR             R1, [R1]
171286:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171288:  BLX             R2; j_opus_decoder_destroy_0
17128A:  MOV             R0, R4
17128C:  POP             {R4,R6,R7,PC}
