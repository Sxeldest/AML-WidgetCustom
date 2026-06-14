; =========================================================
; Game Engine Function: sub_171338
; Address            : 0x171338 - 0x171366
; =========================================================

171338:  PUSH            {R4,R6,R7,LR}
17133A:  ADD             R7, SP, #8
17133C:  MOV             R4, R0
17133E:  LDR             R0, [R0,#8]
171340:  CBZ             R0, loc_171362
171342:  LDR             R1, =(dword_381B58 - 0x171348)
171344:  ADD             R1, PC; dword_381B58
171346:  LDR             R1, [R1]
171348:  CBZ             R1, loc_171354
17134A:  LDR.W           R2, [R1,#0x370]
17134E:  SUBS            R2, #1
171350:  STR.W           R2, [R1,#0x370]
171354:  LDR             R1, =(dword_381B60 - 0x17135C)
171356:  LDR             R2, =(off_2390B0 - 0x17135E)
171358:  ADD             R1, PC; dword_381B60
17135A:  ADD             R2, PC; off_2390B0
17135C:  LDR             R1, [R1]
17135E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171360:  BLX             R2; j_opus_decoder_destroy_0
171362:  MOV             R0, R4
171364:  POP             {R4,R6,R7,PC}
