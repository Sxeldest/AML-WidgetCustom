; =========================================================
; Game Engine Function: sub_171150
; Address            : 0x171150 - 0x17117E
; =========================================================

171150:  PUSH            {R4,R6,R7,LR}
171152:  ADD             R7, SP, #8
171154:  MOV             R4, R0
171156:  LDR             R0, [R0,#8]
171158:  CBZ             R0, loc_17117A
17115A:  LDR             R1, =(dword_381B58 - 0x171160)
17115C:  ADD             R1, PC; dword_381B58
17115E:  LDR             R1, [R1]
171160:  CBZ             R1, loc_17116C
171162:  LDR.W           R2, [R1,#0x370]
171166:  SUBS            R2, #1
171168:  STR.W           R2, [R1,#0x370]
17116C:  LDR             R1, =(dword_381B60 - 0x171174)
17116E:  LDR             R2, =(off_2390B0 - 0x171176)
171170:  ADD             R1, PC; dword_381B60
171172:  ADD             R2, PC; off_2390B0
171174:  LDR             R1, [R1]
171176:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171178:  BLX             R2; j_opus_decoder_destroy_0
17117A:  MOV             R0, R4
17117C:  POP             {R4,R6,R7,PC}
