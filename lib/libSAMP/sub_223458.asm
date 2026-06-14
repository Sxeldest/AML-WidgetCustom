; =========================================================
; Game Engine Function: sub_223458
; Address            : 0x223458 - 0x2234EC
; =========================================================

223458:  PUSH            {R4,R5,R11,LR}
22345C:  ADD             R11, SP, #8
223460:  SUB             SP, SP, #0x10
223464:  MOV             R4, R0
223468:  LDR             R0, [R0]
22346C:  MOV             R5, R1
223470:  MOV             R1, #0xFFFFFFFF
223474:  LDR             R2, [R0,#0xC]
223478:  MOV             R0, R4
22347C:  BLX             R2
223480:  BIC             R0, R0, #1
223484:  CMP             R0, #0
223488:  BEQ             loc_2234C0
22348C:  SUB             R5, R0, R5
223490:  MOV             R1, #0
223494:  STR             R1, [SP,#0x18+var_C]
223498:  ADD             R1, SP, #0x18+var_C
22349C:  MOV             R0, R5
2234A0:  BL              dl_unwind_find_exidx
2234A4:  LDR             R1, [SP,#0x18+var_C]
2234A8:  CMP             R0, #0
2234AC:  STR             R0, [SP,#0x18+var_14]
2234B0:  MOV             R1, R1,LSL#3
2234B4:  CMPNE           R1, #0
2234B8:  STR             R1, [SP,#0x18+var_10]
2234BC:  BNE             loc_2234D0
2234C0:  MOV             R0, #1
2234C4:  STRB            R0, [R4,#0x180]
2234C8:  SUB             SP, R11, #8
2234CC:  POP             {R4,R5,R11,PC}
2234D0:  ADD             R2, SP, #0x18+var_14
2234D4:  MOV             R0, R4
2234D8:  MOV             R1, R5
2234DC:  BL              sub_223500
2234E0:  CMP             R0, #0
2234E4:  BEQ             loc_2234C0
2234E8:  B               loc_2234C8
