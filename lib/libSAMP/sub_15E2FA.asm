; =========================================================
; Game Engine Function: sub_15E2FA
; Address            : 0x15E2FA - 0x15E312
; =========================================================

15E2FA:  PUSH            {R4,R5,R7,LR}
15E2FC:  ADD             R7, SP, #8
15E2FE:  MOV             R5, R0
15E300:  LDR             R0, [R0]
15E302:  MOV             R4, R1
15E304:  MOVW            R1, #0xFA2
15E308:  MOV             R2, R4
15E30A:  BLX             j_opus_encoder_ctl
15E30E:  STR             R4, [R5,#8]
15E310:  POP             {R4,R5,R7,PC}
