; =========================================================
; Game Engine Function: sub_E0A24
; Address            : 0xE0A24 - 0xE0AC2
; =========================================================

E0A24:  PUSH            {R4,R5,R7,LR}
E0A26:  ADD             R7, SP, #8
E0A28:  SUB             SP, SP, #0x10
E0A2A:  MOV             R5, R1
E0A2C:  MOV             R1, R0
E0A2E:  LDRB            R0, [R0]
E0A30:  MOV             R4, R2
E0A32:  STR             R1, [SP,#0x18+var_14]
E0A34:  SUB.W           R2, R0, #0x30 ; '0'
E0A38:  CMP             R2, #9
E0A3A:  BHI             loc_E0A48
E0A3C:  CMP             R0, #0x30 ; '0'
E0A3E:  BNE             loc_E0A82
E0A40:  ADDS            R0, R1, #1
E0A42:  MOVS            R1, #0
E0A44:  STR             R0, [SP,#0x18+var_14]
E0A46:  B               loc_E0A92
E0A48:  CMP             R0, #0x5F ; '_'
E0A4A:  BEQ             loc_E0A56
E0A4C:  AND.W           R0, R0, #0xDF
E0A50:  SUBS            R0, #0x41 ; 'A'
E0A52:  CMP             R0, #0x19
E0A54:  BHI             loc_E0AB8
E0A56:  ADDS            R0, R1, #1
E0A58:  CMP             R0, R5
E0A5A:  BEQ             loc_E0A78
E0A5C:  LDRB.W          R2, [R0],#1
E0A60:  SUB.W           R3, R2, #0x30 ; '0'
E0A64:  CMP             R3, #0xA
E0A66:  BCC             loc_E0A58
E0A68:  CMP             R2, #0x5F ; '_'
E0A6A:  BEQ             loc_E0A58
E0A6C:  AND.W           R2, R2, #0xDF
E0A70:  SUBS            R2, #0x41 ; 'A'
E0A72:  CMP             R2, #0x1A
E0A74:  BCC             loc_E0A58
E0A76:  SUBS            R5, R0, #1
E0A78:  LDR             R0, [R4]
E0A7A:  SUBS            R2, R5, R1
E0A7C:  BL              sub_E0B5C
E0A80:  B               loc_E0AA8
E0A82:  ADD             R0, SP, #0x18+var_14
E0A84:  MOV             R1, R5
E0A86:  MOV             R2, #0x7FFFFFFF
E0A8A:  BL              sub_E036C
E0A8E:  MOV             R1, R0
E0A90:  LDR             R0, [SP,#0x18+var_14]
E0A92:  CMP             R0, R5
E0A94:  BEQ             loc_E0AAE
E0A96:  LDRB            R0, [R0]
E0A98:  CMP             R0, #0x3A ; ':'
E0A9A:  IT NE
E0A9C:  CMPNE           R0, #0x7D ; '}'
E0A9E:  BNE             loc_E0AAE
E0AA0:  LDR             R0, [R4]
E0AA2:  BL              sub_E0ACC
E0AA6:  LDR             R5, [SP,#0x18+var_14]
E0AA8:  MOV             R0, R5
E0AAA:  ADD             SP, SP, #0x10
E0AAC:  POP             {R4,R5,R7,PC}
E0AAE:  LDR             R1, =(aInvalidFormatS - 0xE0AB6); "invalid format string" ...
E0AB0:  ADD             R0, SP, #0x18+var_10; this
E0AB2:  ADD             R1, PC; "invalid format string"
E0AB4:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E0AB8:  LDR             R1, =(aInvalidFormatS - 0xE0AC0); "invalid format string" ...
E0ABA:  ADD             R0, SP, #0x18+var_C; this
E0ABC:  ADD             R1, PC; "invalid format string"
E0ABE:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
