; =========================================================
; Game Engine Function: sub_248036
; Address            : 0x248036 - 0x2480C6
; =========================================================

248036:  PUSH            {R4-R7,LR}
248038:  ADD             R7, SP, #0xC
24803A:  PUSH.W          {R11}
24803E:  SUB             SP, SP, #0x10C
248040:  MOV             R4, R0
248042:  LDR             R0, =(__stack_chk_guard_ptr - 0x24804C)
248044:  ADD             R5, SP, #0x11C+s
248046:  MOV             R6, R2
248048:  ADD             R0, PC; __stack_chk_guard_ptr
24804A:  ADR             R2, aAlLibSS; "AL lib: %s %s: "
24804C:  LDR             R0, [R0]; __stack_chk_guard
24804E:  LDR             R0, [R0]
248050:  STR             R3, [R7,#arg_0]
248052:  MOV             R3, R4
248054:  STR             R0, [SP,#0x11C+var_14]
248056:  MOV             R0, R5
248058:  STR             R1, [SP,#0x11C+var_11C]
24805A:  MOV.W           R1, #0x100
24805E:  BL              sub_5E6B74
248062:  CMP             R0, #1
248064:  BLT             loc_24807E
248066:  CMP             R0, #0xFF
248068:  BHI             loc_24807E
24806A:  ADDS            R2, R5, R0
24806C:  ADD.W           R3, R7, #8
248070:  RSB.W           R1, R0, #0x100
248074:  STR             R3, [SP,#0x11C+var_118]
248076:  MOV             R0, R2
248078:  MOV             R2, R6
24807A:  BL              sub_5E7E10
24807E:  LDR             R0, =(LogFile_ptr - 0x248086)
248080:  ADD             R4, SP, #0x11C+s
248082:  ADD             R0, PC; LogFile_ptr
248084:  LDR             R5, [R0]; LogFile
248086:  MOVS            R0, #0
248088:  STRB.W          R0, [SP,#0x11C+var_15]
24808C:  MOV             R0, R4; s
24808E:  LDR             R1, [R5]; stream
248090:  BLX             fputs
248094:  LDR             R0, [R5]; stream
248096:  BLX             fflush
24809A:  ADR             R1, aOpenalAlsource; "OpenAL_alSource.c"
24809C:  MOVS            R0, #4; prio
24809E:  MOV             R2, R4; fmt
2480A0:  BLX             __android_log_print
2480A4:  LDR             R0, =(__stack_chk_guard_ptr - 0x2480AC)
2480A6:  LDR             R1, [SP,#0x11C+var_14]
2480A8:  ADD             R0, PC; __stack_chk_guard_ptr
2480AA:  LDR             R0, [R0]; __stack_chk_guard
2480AC:  LDR             R0, [R0]
2480AE:  SUBS            R0, R0, R1
2480B0:  ITTTT EQ
2480B2:  ADDEQ           SP, SP, #0x10C
2480B4:  POPEQ.W         {R11}
2480B8:  POPEQ.W         {R4-R7,LR}
2480BC:  ADDEQ           SP, SP, #4
2480BE:  IT EQ
2480C0:  BXEQ            LR
2480C2:  BLX             __stack_chk_fail
