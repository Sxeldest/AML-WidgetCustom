; =========================================================
; Game Engine Function: sub_E02B4
; Address            : 0xE02B4 - 0xE0364
; =========================================================

E02B4:  PUSH            {R4-R7,LR}
E02B6:  ADD             R7, SP, #0xC
E02B8:  PUSH.W          {R11}
E02BC:  SUB             SP, SP, #8
E02BE:  MOV             R5, R1
E02C0:  MOV             R1, R0
E02C2:  LDRB            R0, [R0]
E02C4:  MOV             R4, R2
E02C6:  STR             R1, [SP,#0x18+var_14]
E02C8:  SUB.W           R2, R0, #0x30 ; '0'
E02CC:  CMP             R2, #9
E02CE:  BHI             loc_E02DC
E02D0:  CMP             R0, #0x30 ; '0'
E02D2:  BNE             loc_E031A
E02D4:  ADDS            R6, R1, #1
E02D6:  MOVS            R0, #0
E02D8:  STR             R6, [SP,#0x18+var_14]
E02DA:  B               loc_E0328
E02DC:  CMP             R0, #0x5F ; '_'
E02DE:  BEQ             loc_E02EA
E02E0:  AND.W           R0, R0, #0xDF
E02E4:  SUBS            R0, #0x41 ; 'A'
E02E6:  CMP             R0, #0x19
E02E8:  BHI             loc_E0350
E02EA:  ADDS            R0, R1, #1
E02EC:  CMP             R0, R5
E02EE:  BEQ             loc_E030E
E02F0:  LDRB.W          R2, [R0],#1
E02F4:  SUB.W           R3, R2, #0x30 ; '0'
E02F8:  CMP             R3, #0xA
E02FA:  BCC             loc_E02EC
E02FC:  CMP             R2, #0x5F ; '_'
E02FE:  BEQ             loc_E02EC
E0300:  AND.W           R2, R2, #0xDF
E0304:  SUBS            R2, #0x41 ; 'A'
E0306:  CMP             R2, #0x1A
E0308:  BCC             loc_E02EC
E030A:  SUBS            R6, R0, #1
E030C:  B               loc_E0310
E030E:  MOV             R6, R5
E0310:  LDR             R0, [R4]
E0312:  SUBS            R2, R6, R1
E0314:  BL              sub_E03E4
E0318:  B               loc_E0344
E031A:  ADD             R0, SP, #0x18+var_14
E031C:  MOV             R1, R5
E031E:  MOV             R2, #0x7FFFFFFF
E0322:  BL              sub_E036C
E0326:  LDR             R6, [SP,#0x18+var_14]
E0328:  CMP             R6, R5
E032A:  BEQ             loc_E0350
E032C:  LDRB            R1, [R6]
E032E:  CMP             R1, #0x3A ; ':'
E0330:  IT NE
E0332:  CMPNE           R1, #0x7D ; '}'
E0334:  BNE             loc_E0350
E0336:  LDR             R2, [R4]
E0338:  LDR             R1, [R2,#0xC]
E033A:  CMP             R1, #1
E033C:  BGE             loc_E035A
E033E:  MOV.W           R1, #0xFFFFFFFF
E0342:  STR             R1, [R2,#0xC]
E0344:  STR             R0, [R4,#4]
E0346:  MOV             R0, R6
E0348:  ADD             SP, SP, #8
E034A:  POP.W           {R11}
E034E:  POP             {R4-R7,PC}
E0350:  LDR             R1, =(aInvalidFormatS - 0xE0358); "invalid format string" ...
E0352:  LDR             R0, [R4]; this
E0354:  ADD             R1, PC; "invalid format string"
E0356:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E035A:  LDR             R1, =(aCannotSwitchFr_0 - 0xE0362); "cannot switch from automatic to manual "... ...
E035C:  ADDS            R0, R2, #4; this
E035E:  ADD             R1, PC; "cannot switch from automatic to manual "...
E0360:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
