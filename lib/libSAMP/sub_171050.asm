; =========================================================
; Game Engine Function: sub_171050
; Address            : 0x171050 - 0x17107E
; =========================================================

171050:  PUSH            {R4,R6,R7,LR}
171052:  ADD             R7, SP, #8
171054:  MOV             R4, R0
171056:  LDR             R0, [R0,#8]
171058:  CBZ             R0, loc_17107A
17105A:  LDR             R1, =(dword_381B58 - 0x171060)
17105C:  ADD             R1, PC; dword_381B58
17105E:  LDR             R1, [R1]
171060:  CBZ             R1, loc_17106C
171062:  LDR.W           R2, [R1,#0x370]
171066:  SUBS            R2, #1
171068:  STR.W           R2, [R1,#0x370]
17106C:  LDR             R1, =(dword_381B60 - 0x171074)
17106E:  LDR             R2, =(off_2390B0 - 0x171076)
171070:  ADD             R1, PC; dword_381B60
171072:  ADD             R2, PC; off_2390B0
171074:  LDR             R1, [R1]
171076:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171078:  BLX             R2; j_opus_decoder_destroy_0
17107A:  MOV             R0, R4
17107C:  POP             {R4,R6,R7,PC}
