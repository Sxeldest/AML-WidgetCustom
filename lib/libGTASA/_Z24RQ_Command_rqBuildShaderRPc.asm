; =========================================================
; Game Engine Function: _Z24RQ_Command_rqBuildShaderRPc
; Address            : 0x1CD9FC - 0x1CDAEE
; =========================================================

1CD9FC:  PUSH            {R4-R7,LR}
1CD9FE:  ADD             R7, SP, #0xC
1CDA00:  PUSH.W          {R8-R11}
1CDA04:  SUB             SP, SP, #4
1CDA06:  VPUSH           {D8}
1CDA0A:  SUB.W           SP, SP, #0x1000
1CDA0E:  SUB             SP, SP, #8
1CDA10:  LDR             R1, =(__stack_chk_guard_ptr - 0x1CDA16)
1CDA12:  ADD             R1, PC; __stack_chk_guard_ptr
1CDA14:  LDR             R1, [R1]; __stack_chk_guard
1CDA16:  LDR             R1, [R1]
1CDA18:  STR.W           R1, [R7,#var_30]
1CDA1C:  LDR             R1, [R0]
1CDA1E:  ADDS            R3, R1, #4
1CDA20:  MOV             R2, R1
1CDA22:  LDR.W           R8, [R2],#0x10
1CDA26:  STR             R3, [R0]
1CDA28:  ADD.W           R3, R1, #8
1CDA2C:  LDR.W           R11, [R1,#4]
1CDA30:  STR             R3, [R0]
1CDA32:  ADD.W           R3, R1, #0xC
1CDA36:  LDR.W           R10, [R1,#8]
1CDA3A:  STR             R3, [R0]
1CDA3C:  LDR.W           R9, [R1,#0xC]
1CDA40:  MOV             R1, R11; char *
1CDA42:  STR             R2, [R0]
1CDA44:  MOV             R0, R8; this
1CDA46:  MOV             R2, R10; char *
1CDA48:  BLX             j__ZN9ES2Shader5BuildEPKcS1_; ES2Shader::Build(char const*,char const*)
1CDA4C:  CBNZ            R0, loc_1CDAB6
1CDA4E:  MOV             R4, SP
1CDA50:  MOV             R1, R11; char *
1CDA52:  MOV             R0, R4; char *
1CDA54:  BLX             strcpy
1CDA58:  ADR             R1, aAtbegin; "/*ATBEGIN*/"
1CDA5A:  MOV             R0, R4; haystack
1CDA5C:  BLX             strstr
1CDA60:  CBZ             R0, loc_1CDA84
1CDA62:  LDR             R1, =(aAtbegin_0 - 0x1CDA70); "/*ATBEGIN  "
1CDA64:  ADR             R4, aAtbegin; "/*ATBEGIN*/"
1CDA66:  MOVS            R5, #0x20 ; ' '
1CDA68:  MOVW            R6, #0x204E
1CDA6C:  ADD             R1, PC; "/*ATBEGIN  "
1CDA6E:  VLDR            D8, [R1]
1CDA72:  MOV             R1, R4; needle
1CDA74:  STRB            R5, [R0,#0xA]
1CDA76:  STRH            R6, [R0,#8]
1CDA78:  VST1.8          {D8}, [R0]
1CDA7C:  BLX             strstr
1CDA80:  CMP             R0, #0
1CDA82:  BNE             loc_1CDA72
1CDA84:  ADR             R1, aAtend; "/*ATEND*/"
1CDA86:  MOV             R0, SP; haystack
1CDA88:  BLX             strstr
1CDA8C:  CBZ             R0, loc_1CDAAA
1CDA8E:  LDR             R1, =(aAtend_0 - 0x1CDA98); "  ATEND*/"
1CDA90:  ADR             R4, aAtend; "/*ATEND*/"
1CDA92:  MOVS            R5, #0x2F ; '/'
1CDA94:  ADD             R1, PC; "  ATEND*/"
1CDA96:  VLDR            D8, [R1]
1CDA9A:  MOV             R1, R4; needle
1CDA9C:  STRB            R5, [R0,#8]
1CDA9E:  VST1.8          {D8}, [R0]
1CDAA2:  BLX             strstr
1CDAA6:  CMP             R0, #0
1CDAA8:  BNE             loc_1CDA9A
1CDAAA:  MOV             R1, SP; char *
1CDAAC:  MOV             R0, R8; this
1CDAAE:  MOV             R2, R10; char *
1CDAB0:  BLX             j__ZN9ES2Shader5BuildEPKcS1_; ES2Shader::Build(char const*,char const*)
1CDAB4:  NOP
1CDAB6:  MOV             R0, R11; p
1CDAB8:  BLX             free
1CDABC:  MOV             R0, R10; p
1CDABE:  BLX             free
1CDAC2:  LDR             R0, =(__stack_chk_guard_ptr - 0x1CDACC)
1CDAC4:  STR.W           R9, [R8,#0x3EC]
1CDAC8:  ADD             R0, PC; __stack_chk_guard_ptr
1CDACA:  LDR.W           R1, [R7,#var_30]
1CDACE:  LDR             R0, [R0]; __stack_chk_guard
1CDAD0:  LDR             R0, [R0]
1CDAD2:  SUBS            R0, R0, R1
1CDAD4:  ITTTT EQ
1CDAD6:  ADDEQ.W         SP, SP, #0x1000
1CDADA:  ADDEQ           SP, SP, #8
1CDADC:  VPOPEQ          {D8}
1CDAE0:  ADDEQ           SP, SP, #4
1CDAE2:  ITT EQ
1CDAE4:  POPEQ.W         {R8-R11}
1CDAE8:  POPEQ           {R4-R7,PC}
1CDAEA:  BLX             __stack_chk_fail
