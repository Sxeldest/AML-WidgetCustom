; =========================================================
; Game Engine Function: sub_2231F4
; Address            : 0x2231F4 - 0x2232E4
; =========================================================

2231F4:  PUSH            {R4-R7,R11,LR}
2231F8:  ADD             R11, SP, #0x10
2231FC:  MOV             R5, R0
223200:  BIC             R0, R1, #0xF
223204:  MOV             R7, R3
223208:  MOV             R6, R2
22320C:  MOV             R4, R1
223210:  CMP             R0, #0x110
223214:  BEQ             loc_22323C
223218:  CMP             R0, #0x100
22321C:  BNE             loc_2232AC
223220:  LDRB            R0, [R5,#0x4D]
223224:  CMP             R0, #0
223228:  BEQ             loc_22326C
22322C:  ADD             R0, R5, R4,LSL#3
223230:  SUB             R0, R0, #0x7B0
223234:  STRD            R6, R7, [R0]
223238:  POP             {R4-R7,R11,PC}
22323C:  LDRB            R0, [R5,#0x4E]
223240:  CMP             R0, #0
223244:  BNE             loc_223258
223248:  MOV             R0, #1
22324C:  STRB            R0, [R5,#0x4E]
223250:  ADD             R0, R5, #0xD8
223254:  BL              sub_224248
223258:  ADD             R0, R5, R4,LSL#3
22325C:  MOVW            R1, #0x7A8
223260:  SUB             R0, R0, R1
223264:  STRD            R6, R7, [R0]
223268:  POP             {R4-R7,R11,PC}
22326C:  MOV             R0, #1
223270:  LDRB            R1, [R5,#0x4C]
223274:  STRB            R0, [R5,#0x4D]
223278:  ADD             R0, R5, #0x50 ; 'P'
22327C:  CMP             R1, #0
223280:  BEQ             loc_223298
223284:  BL              sub_224240
223288:  ADD             R0, R5, R4,LSL#3
22328C:  SUB             R0, R0, #0x7B0
223290:  STRD            R6, R7, [R0]
223294:  POP             {R4-R7,R11,PC}
223298:  BL              sub_224238
22329C:  ADD             R0, R5, R4,LSL#3
2232A0:  SUB             R0, R0, #0x7B0
2232A4:  STRD            R6, R7, [R0]
2232A8:  POP             {R4-R7,R11,PC}
2232AC:  LDR             R1, =(aLibunwindSS - 0x2232C0); "libunwind: %s - %s\n" ...
2232B0:  LDR             R2, =(aSetfloatregist - 0x2232C8); "setFloatRegister" ...
2232B4:  LDR             R3, =(aUnknownArmFloa - 0x2232CC); "Unknown ARM float register" ...
2232B8:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
2232BC:  LDR             R0, =(__sF_ptr - 0x2232D0)
2232C0:  ADD             R2, PC, R2; "setFloatRegister"
2232C4:  ADD             R3, PC, R3; "Unknown ARM float register"
2232C8:  LDR             R0, [PC,R0]; __sF
2232CC:  ADD             R4, R0, #0xA8
2232D0:  MOV             R0, R4; stream
2232D4:  BL              fprintf
2232D8:  MOV             R0, R4; stream
2232DC:  BL              fflush
2232E0:  BL              abort
