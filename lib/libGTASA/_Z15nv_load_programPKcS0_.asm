; =========================================================
; Game Engine Function: _Z15nv_load_programPKcS0_
; Address            : 0x279A8C - 0x279CBC
; =========================================================

279A8C:  PUSH            {R4-R7,LR}
279A8E:  ADD             R7, SP, #0xC
279A90:  PUSH.W          {R8-R11}
279A94:  SUB             SP, SP, #0x124
279A96:  MOV             R9, R0
279A98:  LDR             R0, =(__stack_chk_guard_ptr - 0x279AA2)
279A9A:  ADR             R5, aNvShader; "nv_shader"
279A9C:  ADR             R2, aInNvLoadProgra; "in nv_load_program"
279A9E:  ADD             R0, PC; __stack_chk_guard_ptr
279AA0:  MOV             R4, R1
279AA2:  MOV             R1, R5; tag
279AA4:  LDR             R0, [R0]; __stack_chk_guard
279AA6:  LDR             R0, [R0]
279AA8:  STR             R0, [SP,#0x140+var_20]
279AAA:  MOVS            R0, #3; prio
279AAC:  BLX             __android_log_print
279AB0:  MOVW            R0, #0x1F02; name
279AB4:  BLX             glGetString
279AB8:  ADR             R2, aGlVersionS; "gl version: %s"
279ABA:  MOV             R3, R0
279ABC:  MOVS            R0, #3; prio
279ABE:  MOV             R1, R5; tag
279AC0:  BLX             __android_log_print
279AC4:  MOVW            R0, #0x8B31
279AC8:  BLX             glCreateShader
279ACC:  MOV             R10, R0
279ACE:  MOVW            R0, #0x8B30
279AD2:  BLX             glCreateShader
279AD6:  MOV             R6, R0
279AD8:  BLX             glCreateProgram
279ADC:  MOV             R1, R10
279ADE:  MOV             R8, R0
279AE0:  BLX             glAttachShader
279AE4:  MOV             R0, R8
279AE6:  MOV             R1, R6
279AE8:  BLX             glAttachShader
279AEC:  CBZ             R4, loc_279B44
279AEE:  ADR             R1, aNvShader; "nv_shader"
279AF0:  ADR             R2, aCompilingStrin; "compiling string:\n\"%s\"\n"
279AF2:  MOVS            R0, #3; prio
279AF4:  MOV             R3, R4
279AF6:  BLX             __android_log_print
279AFA:  MOV             R0, R4; char *
279AFC:  STR             R4, [SP,#0x140+var_12C]
279AFE:  BLX             strlen
279B02:  MOVS            R5, #1
279B04:  STR             R0, [SP,#0x140+var_134]
279B06:  CMP.W           R9, #0
279B0A:  BEQ             loc_279B4C
279B0C:  ADD             R4, SP, #0x140+var_120
279B0E:  ADR             R1, aSVert; "%s.vert"
279B10:  MOV             R2, R9
279B12:  STR             R6, [SP,#0x140+var_13C]
279B14:  MOV             R0, R4
279B16:  STR.W           R9, [SP,#0x140+var_140]
279B1A:  BL              sub_5E6BC0
279B1E:  ADR             R1, aNvShader; "nv_shader"
279B20:  ADR             R2, aCompilingFileS; "compiling file: %s\n"
279B22:  MOVS            R0, #3; prio
279B24:  MOV             R3, R4
279B26:  BLX             __android_log_print
279B2A:  MOV             R0, R4; char *
279B2C:  BLX             j__Z9load_filePKc; load_file(char const*)
279B30:  ADD             R1, SP, #0x140+var_12C
279B32:  STR.W           R0, [R1,R5,LSL#2]
279B36:  BLX             strlen
279B3A:  ADD             R1, SP, #0x140+var_134
279B3C:  ADDS            R4, R5, #1
279B3E:  STR.W           R0, [R1,R5,LSL#2]
279B42:  B               loc_279B58
279B44:  MOVS            R5, #0
279B46:  CMP.W           R9, #0
279B4A:  BNE             loc_279B0C
279B4C:  CMP             R5, #0
279B4E:  BEQ.W           loc_279C9C
279B52:  MOVS            R4, #1
279B54:  STRD.W          R9, R6, [SP,#0x140+var_140]
279B58:  ADD             R5, SP, #0x140+var_12C
279B5A:  ADD             R3, SP, #0x140+var_134
279B5C:  MOV             R0, R10
279B5E:  MOV             R1, R4
279B60:  MOV             R2, R5
279B62:  STR.W           R8, [SP,#0x140+var_138]
279B66:  BLX             glShaderSource
279B6A:  MOV             R0, R10
279B6C:  BLX             glCompileShader
279B70:  SUB.W           R9, R4, #1
279B74:  LDR.W           R0, [R5,R9,LSL#2]; void *
279B78:  CMP             R0, #0
279B7A:  IT NE
279B7C:  BLXNE           _ZdaPv; operator delete[](void *)
279B80:  MOVS            R0, #0
279B82:  ADD             R2, SP, #0x140+byte_count
279B84:  STR             R0, [SP,#0x140+byte_count]
279B86:  MOV             R0, R10
279B88:  MOVW            R1, #0x8B84
279B8C:  BLX             glGetShaderiv
279B90:  LDR.W           R8, [SP,#0x140+byte_count]
279B94:  CMP.W           R8, #1
279B98:  BLT             loc_279BC6
279B9A:  MOV             R0, R8; byte_count
279B9C:  BLX             malloc
279BA0:  MOV             R11, R0
279BA2:  CMP.W           R11, #0
279BA6:  BEQ             loc_279BC6
279BA8:  MOV             R0, R10
279BAA:  MOV             R1, R8
279BAC:  MOVS            R2, #0
279BAE:  MOV             R3, R11
279BB0:  BLX             glGetShaderInfoLog
279BB4:  ADR             R1, aNvShader; "nv_shader"
279BB6:  ADR             R2, aShaderDebugS; "shader_debug: %s\n"
279BB8:  MOVS            R0, #3; prio
279BBA:  MOV             R3, R11
279BBC:  BLX             __android_log_print
279BC0:  MOV             R0, R11; p
279BC2:  BLX             free
279BC6:  ADD             R6, SP, #0x140+var_120
279BC8:  LDR             R2, [SP,#0x140+var_140]
279BCA:  ADR             R1, aSFrag; "%s.frag"
279BCC:  MOV             R0, R6
279BCE:  BL              sub_5E6BC0
279BD2:  ADR             R1, aNvShader; "nv_shader"
279BD4:  ADR             R2, aCompilingFileS; "compiling file: %s\n"
279BD6:  MOVS            R0, #3; prio
279BD8:  MOV             R3, R6
279BDA:  BLX             __android_log_print
279BDE:  MOV             R0, R6; char *
279BE0:  BLX             j__Z9load_filePKc; load_file(char const*)
279BE4:  STR.W           R0, [R5,R9,LSL#2]
279BE8:  BLX             strlen
279BEC:  LDR             R6, [SP,#0x140+var_13C]
279BEE:  ADD             R3, SP, #0x140+var_134
279BF0:  MOV             R1, R4
279BF2:  MOV             R2, R5
279BF4:  STR.W           R0, [R3,R9,LSL#2]
279BF8:  MOV             R0, R6
279BFA:  BLX             glShaderSource
279BFE:  MOV             R0, R6
279C00:  BLX             glCompileShader
279C04:  LDR.W           R0, [R5,R9,LSL#2]; void *
279C08:  CMP             R0, #0
279C0A:  IT NE
279C0C:  BLXNE           _ZdaPv; operator delete[](void *)
279C10:  ADD             R2, SP, #0x140+byte_count
279C12:  MOV.W           R8, #0
279C16:  MOV             R0, R6
279C18:  MOVW            R1, #0x8B84
279C1C:  STR.W           R8, [SP,#0x140+byte_count]
279C20:  BLX             glGetShaderiv
279C24:  LDR             R5, [SP,#0x140+byte_count]
279C26:  LDR.W           R9, [SP,#0x140+var_138]
279C2A:  CMP             R5, #1
279C2C:  BLT             loc_279C56
279C2E:  MOV             R0, R5; byte_count
279C30:  BLX             malloc
279C34:  MOV             R4, R0
279C36:  CBZ             R4, loc_279C56
279C38:  MOV             R0, R6
279C3A:  MOV             R1, R5
279C3C:  MOVS            R2, #0
279C3E:  MOV             R3, R4
279C40:  BLX             glGetShaderInfoLog
279C44:  ADR             R1, aNvShader; "nv_shader"
279C46:  ADR             R2, aShaderDebugS; "shader_debug: %s\n"
279C48:  MOVS            R0, #3; prio
279C4A:  MOV             R3, R4
279C4C:  BLX             __android_log_print
279C50:  MOV             R0, R4; p
279C52:  BLX             free
279C56:  MOV             R0, R9
279C58:  BLX             glLinkProgram
279C5C:  ADD             R2, SP, #0x140+byte_count
279C5E:  MOV             R0, R9
279C60:  MOVW            R1, #0x8B84
279C64:  STR.W           R8, [SP,#0x140+byte_count]
279C68:  BLX             glGetProgramiv
279C6C:  LDR             R5, [SP,#0x140+byte_count]
279C6E:  CMP             R5, #1
279C70:  BLT             loc_279CA0
279C72:  MOV             R0, R5; byte_count
279C74:  BLX             malloc
279C78:  MOV             R4, R0
279C7A:  CBZ             R4, loc_279CA0
279C7C:  MOV             R0, R9
279C7E:  MOV             R1, R5
279C80:  MOVS            R2, #0
279C82:  MOV             R3, R4
279C84:  BLX             glGetProgramInfoLog
279C88:  ADR             R1, aNvShader; "nv_shader"
279C8A:  ADR             R2, aShaderDebugS; "shader_debug: %s\n"
279C8C:  MOVS            R0, #3; prio
279C8E:  MOV             R3, R4
279C90:  BLX             __android_log_print
279C94:  MOV             R0, R4; p
279C96:  BLX             free
279C9A:  B               loc_279CA0
279C9C:  MOV.W           R9, #0
279CA0:  LDR             R0, =(__stack_chk_guard_ptr - 0x279CA8)
279CA2:  LDR             R1, [SP,#0x140+var_20]
279CA4:  ADD             R0, PC; __stack_chk_guard_ptr
279CA6:  LDR             R0, [R0]; __stack_chk_guard
279CA8:  LDR             R0, [R0]
279CAA:  SUBS            R0, R0, R1
279CAC:  ITTTT EQ
279CAE:  MOVEQ           R0, R9
279CB0:  ADDEQ           SP, SP, #0x124
279CB2:  POPEQ.W         {R8-R11}
279CB6:  POPEQ           {R4-R7,PC}
279CB8:  BLX             __stack_chk_fail
