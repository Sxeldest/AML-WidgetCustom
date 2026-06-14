; =========================================================
; Game Engine Function: sub_1712A0
; Address            : 0x1712A0 - 0x17131E
; =========================================================

1712A0:  PUSH            {R4-R7,LR}
1712A2:  ADD             R7, SP, #0xC
1712A4:  PUSH.W          {R8}
1712A8:  MOV             R4, R0
1712AA:  LDR             R0, [R0,#0x2C]
1712AC:  LDR             R1, =(dword_381B58 - 0x1712B6)
1712AE:  LDR             R3, =(dword_381B60 - 0x1712B8)
1712B0:  LDR             R6, =(off_2390B0 - 0x1712BA)
1712B2:  ADD             R1, PC; dword_381B58
1712B4:  ADD             R3, PC; dword_381B60
1712B6:  ADD             R6, PC; off_2390B0
1712B8:  CBZ             R0, loc_1712DA
1712BA:  MOV             R8, R1
1712BC:  LDR             R1, [R1]
1712BE:  CBZ             R1, loc_1712CA
1712C0:  LDR.W           R2, [R1,#0x370]
1712C4:  SUBS            R2, #1
1712C6:  STR.W           R2, [R1,#0x370]
1712CA:  LDR             R1, [R3]
1712CC:  LDR             R2, [R6]; j_opus_decoder_destroy_0
1712CE:  MOV             R5, R6
1712D0:  MOV             R6, R3
1712D2:  BLX             R2; j_opus_decoder_destroy_0
1712D4:  MOV             R3, R6
1712D6:  MOV             R6, R5
1712D8:  MOV             R1, R8
1712DA:  LDR             R0, [R4,#0x20]
1712DC:  CBZ             R0, loc_1712FE
1712DE:  MOV             R8, R1
1712E0:  LDR             R1, [R1]
1712E2:  CBZ             R1, loc_1712EE
1712E4:  LDR.W           R2, [R1,#0x370]
1712E8:  SUBS            R2, #1
1712EA:  STR.W           R2, [R1,#0x370]
1712EE:  LDR             R1, [R3]
1712F0:  LDR             R2, [R6]; j_opus_decoder_destroy_0
1712F2:  MOV             R5, R6
1712F4:  MOV             R6, R3
1712F6:  BLX             R2; j_opus_decoder_destroy_0
1712F8:  MOV             R3, R6
1712FA:  MOV             R6, R5
1712FC:  MOV             R1, R8
1712FE:  LDR             R0, [R4,#0x14]
171300:  CBZ             R0, loc_171316
171302:  LDR             R1, [R1]
171304:  CBZ             R1, loc_171310
171306:  LDR.W           R2, [R1,#0x370]
17130A:  SUBS            R2, #1
17130C:  STR.W           R2, [R1,#0x370]
171310:  LDR             R1, [R3]
171312:  LDR             R2, [R6]; j_opus_decoder_destroy_0
171314:  BLX             R2; j_opus_decoder_destroy_0
171316:  MOV             R0, R4
171318:  POP.W           {R8}
17131C:  POP             {R4-R7,PC}
