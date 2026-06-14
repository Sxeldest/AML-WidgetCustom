; =========================================================
; Game Engine Function: sub_171110
; Address            : 0x171110 - 0x17113E
; =========================================================

171110:  PUSH            {R4,R6,R7,LR}
171112:  ADD             R7, SP, #8
171114:  MOV             R4, R0
171116:  LDR             R0, [R0,#8]
171118:  CBZ             R0, loc_17113A
17111A:  LDR             R1, =(dword_381B58 - 0x171120)
17111C:  ADD             R1, PC; dword_381B58
17111E:  LDR             R1, [R1]
171120:  CBZ             R1, loc_17112C
171122:  LDR.W           R2, [R1,#0x370]
171126:  SUBS            R2, #1
171128:  STR.W           R2, [R1,#0x370]
17112C:  LDR             R1, =(dword_381B60 - 0x171134)
17112E:  LDR             R2, =(off_2390B0 - 0x171136)
171130:  ADD             R1, PC; dword_381B60
171132:  ADD             R2, PC; off_2390B0
171134:  LDR             R1, [R1]
171136:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171138:  BLX             R2; j_opus_decoder_destroy_0
17113A:  MOV             R0, R4
17113C:  POP             {R4,R6,R7,PC}
