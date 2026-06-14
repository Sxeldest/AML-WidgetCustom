; =========================================================
; Game Engine Function: sub_84164
; Address            : 0x84164 - 0x841A8
; =========================================================

84164:  SUB             SP, SP, #4
84166:  PUSH            {R7,LR}
84168:  MOV             R7, SP
8416A:  SUB             SP, SP, #0xC
8416C:  STR             R3, [R7,#8]
8416E:  MOV             R12, R2
84170:  LDR             R1, =(__stack_chk_guard_ptr - 0x8417A)
84172:  MOVS            R2, #0x40 ; '@'
84174:  MOV             R3, R12
84176:  ADD             R1, PC; __stack_chk_guard_ptr
84178:  LDR             R1, [R1]; __stack_chk_guard
8417A:  LDR             R1, [R1]
8417C:  STR             R1, [SP,#0x18+var_10]
8417E:  ADD.W           R1, R7, #8
84182:  STRD.W          R1, R1, [SP,#0x18+var_18]
84186:  MOVS            R1, #0
84188:  BLX             __vsprintf_chk
8418C:  LDR             R0, [SP,#0x18+var_10]
8418E:  LDR             R1, =(__stack_chk_guard_ptr - 0x84194)
84190:  ADD             R1, PC; __stack_chk_guard_ptr
84192:  LDR             R1, [R1]; __stack_chk_guard
84194:  LDR             R1, [R1]
84196:  CMP             R1, R0
84198:  ITTTT EQ
8419A:  ADDEQ           SP, SP, #0xC
8419C:  POPEQ.W         {R7,LR}
841A0:  ADDEQ           SP, SP, #4
841A2:  BXEQ            LR
841A4:  BLX             __stack_chk_fail
