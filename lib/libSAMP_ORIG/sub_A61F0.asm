; =========================================================
; Game Engine Function: sub_A61F0
; Address            : 0xA61F0 - 0xA6262
; =========================================================

A61F0:  SUB             SP, SP, #0xC
A61F2:  PUSH            {R4,R6,R7,LR}
A61F4:  ADD             R7, SP, #8
A61F6:  SUB             SP, SP, #0xC
A61F8:  ADD.W           LR, R7, #8
A61FC:  MOV             R12, R0
A61FE:  LDR             R0, =(off_114D5C - 0xA620A)
A6200:  STM.W           LR, {R1-R3}
A6204:  MOVS            R2, #1
A6206:  ADD             R0, PC; off_114D5C
A6208:  LDR             R1, =(__stack_chk_guard_ptr - 0xA6214)
A620A:  ADD.W           R3, R7, #8
A620E:  LDR             R0, [R0]; dword_1ACF68
A6210:  ADD             R1, PC; __stack_chk_guard_ptr
A6212:  LDR             R1, [R1]; __stack_chk_guard
A6214:  LDR             R1, [R1]
A6216:  STR             R1, [SP,#0x14+var_C]
A6218:  MOVW            R1, #0x19AC
A621C:  LDR             R0, [R0]
A621E:  STR             R3, [SP,#0x14+var_10]
A6220:  LDR             R1, [R0,R1]
A6222:  STRB.W          R2, [R1,#0x7C]
A6226:  LDRB.W          R1, [R1,#0x7F]
A622A:  CBNZ            R1, loc_A6246
A622C:  ADD.W           R4, R0, #0x2F40
A6230:  MOVW            R1, #0xC01
A6234:  MOV             R2, R12
A6236:  MOV             R0, R4
A6238:  BL              sub_88724
A623C:  ADDS            R1, R4, R0
A623E:  MOV             R0, R4; s
A6240:  MOVS            R2, #1
A6242:  BL              sub_A5E84
A6246:  LDR             R0, [SP,#0x14+var_C]
A6248:  LDR             R1, =(__stack_chk_guard_ptr - 0xA624E)
A624A:  ADD             R1, PC; __stack_chk_guard_ptr
A624C:  LDR             R1, [R1]; __stack_chk_guard
A624E:  LDR             R1, [R1]
A6250:  CMP             R1, R0
A6252:  ITTTT EQ
A6254:  ADDEQ           SP, SP, #0xC
A6256:  POPEQ.W         {R4,R6,R7,LR}
A625A:  ADDEQ           SP, SP, #0xC
A625C:  BXEQ            LR
A625E:  BLX             __stack_chk_fail
