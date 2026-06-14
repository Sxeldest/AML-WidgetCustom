; =========================================================
; Game Engine Function: sub_171220
; Address            : 0x171220 - 0x17124E
; =========================================================

171220:  PUSH            {R4,R6,R7,LR}
171222:  ADD             R7, SP, #8
171224:  MOV             R4, R0
171226:  LDR             R0, [R0,#8]
171228:  CBZ             R0, loc_17124A
17122A:  LDR             R1, =(dword_381B58 - 0x171230)
17122C:  ADD             R1, PC; dword_381B58
17122E:  LDR             R1, [R1]
171230:  CBZ             R1, loc_17123C
171232:  LDR.W           R2, [R1,#0x370]
171236:  SUBS            R2, #1
171238:  STR.W           R2, [R1,#0x370]
17123C:  LDR             R1, =(dword_381B60 - 0x171244)
17123E:  LDR             R2, =(off_2390B0 - 0x171246)
171240:  ADD             R1, PC; dword_381B60
171242:  ADD             R2, PC; off_2390B0
171244:  LDR             R1, [R1]
171246:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171248:  BLX             R2; j_opus_decoder_destroy_0
17124A:  MOV             R0, R4
17124C:  POP             {R4,R6,R7,PC}
