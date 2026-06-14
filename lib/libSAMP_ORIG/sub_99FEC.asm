; =========================================================
; Game Engine Function: sub_99FEC
; Address            : 0x99FEC - 0x9A054
; =========================================================

99FEC:  SUB             SP, SP, #0xC
99FEE:  PUSH            {R7,LR}
99FF0:  MOV             R7, SP
99FF2:  SUB             SP, SP, #0xC
99FF4:  MOV             R12, R0
99FF6:  LDR             R0, =(dword_1ACF68 - 0x9A000)
99FF8:  STRD.W          R1, R2, [R7,#8]
99FFC:  ADD             R0, PC; dword_1ACF68
99FFE:  LDR             R1, [R0]
9A000:  STR             R3, [R7,#0x10]
9A002:  LDR             R0, =(__stack_chk_guard_ptr - 0x9A008)
9A004:  ADD             R0, PC; __stack_chk_guard_ptr
9A006:  LDR             R0, [R0]; __stack_chk_guard
9A008:  LDR             R0, [R0]
9A00A:  STR             R0, [SP,#0x20+var_18]
9A00C:  MOVW            R0, #0x2D20
9A010:  LDRB            R2, [R1,R0]
9A012:  CBZ             R2, loc_9A038
9A014:  ADD             R0, R1
9A016:  ADD.W           R2, R7, #8
9A01A:  STR             R2, [SP,#0x20+arg]
9A01C:  LDR             R0, [R0,#8]; s
9A01E:  CBZ             R0, loc_9A02A
9A020:  LDR             R2, [SP,#0x20+arg]; arg
9A022:  MOV             R1, R12; format
9A024:  BLX             vfprintf
9A028:  B               loc_9A038
9A02A:  MOVW            R0, #0x2D2C
9A02E:  LDR             R2, [SP,#0x20+arg]; arg
9A030:  ADD             R0, R1; int
9A032:  MOV             R1, R12; format
9A034:  BL              sub_88F60
9A038:  LDR             R0, [SP,#0x20+var_18]
9A03A:  LDR             R1, =(__stack_chk_guard_ptr - 0x9A040)
9A03C:  ADD             R1, PC; __stack_chk_guard_ptr
9A03E:  LDR             R1, [R1]; __stack_chk_guard
9A040:  LDR             R1, [R1]
9A042:  CMP             R1, R0
9A044:  ITTTT EQ
9A046:  ADDEQ           SP, SP, #0xC
9A048:  POPEQ.W         {R7,LR}
9A04C:  ADDEQ           SP, SP, #0xC
9A04E:  BXEQ            LR
9A050:  BLX             __stack_chk_fail
