; =========================================================
; Game Engine Function: al_print
; Address            : 0x1C0BDC - 0x1C0CAC
; =========================================================

1C0BDC:  SUB             SP, SP, #8
1C0BE0:  PUSH            {R4-R6,R10,R11,LR}
1C0BE4:  ADD             R11, SP, #0x10
1C0BE8:  SUB             SP, SP, #0x108
1C0BEC:  MOV             R4, R0
1C0BF0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C0C0C)
1C0BF4:  STR             R3, [R11,#var_sC]
1C0BF8:  ADD             R5, SP, #0x118+s
1C0BFC:  MOV             R6, R1
1C0C00:  MOV             R1, #0x100; maxlen
1C0C04:  LDR             R0, [PC,R0]; __stack_chk_guard
1C0C08:  MOV             R3, R4
1C0C0C:  LDR             R0, [R0]
1C0C10:  STR             R2, [R11,#var_s8]
1C0C14:  STR             R0, [R11,#var_14]
1C0C18:  ADR             R2, aAlLibS; "AL lib: %s: "
1C0C1C:  MOV             R0, R5; s
1C0C20:  BL              snprintf
1C0C24:  SUB             R1, R0, #1
1C0C28:  CMP             R1, #0xFE
1C0C2C:  BHI             loc_1C0C4C
1C0C30:  ADD             R2, R5, R0
1C0C34:  ADD             R3, R11, #8; arg
1C0C38:  RSB             R1, R0, #0x100; maxlen
1C0C3C:  STR             R3, [SP,#0x118+var_118]
1C0C40:  MOV             R0, R2; s
1C0C44:  MOV             R2, R6; format
1C0C48:  BL              vsnprintf
1C0C4C:  LDR             R0, =(LogFile_ptr - 0x1C0C5C)
1C0C50:  ADD             R4, SP, #0x118+s
1C0C54:  LDR             R5, [PC,R0]; LogFile
1C0C58:  MOV             R0, #0
1C0C5C:  STRB            R0, [SP,#0x118+var_15]
1C0C60:  MOV             R0, R4; s
1C0C64:  LDR             R1, [R5]; stream
1C0C68:  BL              fputs
1C0C6C:  LDR             R0, [R5]; stream
1C0C70:  BL              fflush
1C0C74:  ADR             R1, aOpenal; "OpenAL"
1C0C78:  MOV             R0, #5; prio
1C0C7C:  MOV             R2, R4; text
1C0C80:  BL              __android_log_write
1C0C84:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C0C94)
1C0C88:  LDR             R1, [R11,#var_14]
1C0C8C:  LDR             R0, [PC,R0]; __stack_chk_guard
1C0C90:  LDR             R0, [R0]
1C0C94:  SUBS            R0, R0, R1
1C0C98:  SUBEQ           SP, R11, #0x10
1C0C9C:  POPEQ           {R4-R6,R10,R11,LR}
1C0CA0:  ADDEQ           SP, SP, #8
1C0CA4:  BXEQ            LR
1C0CA8:  BL              __stack_chk_fail
