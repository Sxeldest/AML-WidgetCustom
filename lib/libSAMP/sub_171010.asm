; =========================================================
; Game Engine Function: sub_171010
; Address            : 0x171010 - 0x17103E
; =========================================================

171010:  PUSH            {R4,R6,R7,LR}
171012:  ADD             R7, SP, #8
171014:  MOV             R4, R0
171016:  LDR             R0, [R0,#0x10]
171018:  CBZ             R0, loc_17103A
17101A:  LDR             R1, =(dword_381B58 - 0x171020)
17101C:  ADD             R1, PC; dword_381B58
17101E:  LDR             R1, [R1]
171020:  CBZ             R1, loc_17102C
171022:  LDR.W           R2, [R1,#0x370]
171026:  SUBS            R2, #1
171028:  STR.W           R2, [R1,#0x370]
17102C:  LDR             R1, =(dword_381B60 - 0x171034)
17102E:  LDR             R2, =(off_2390B0 - 0x171036)
171030:  ADD             R1, PC; dword_381B60
171032:  ADD             R2, PC; off_2390B0
171034:  LDR             R1, [R1]
171036:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171038:  BLX             R2; j_opus_decoder_destroy_0
17103A:  MOV             R0, R4
17103C:  POP             {R4,R6,R7,PC}
