; =========================================================
; Game Engine Function: sub_5E8248
; Address            : 0x5E8248 - 0x5E8278
; =========================================================

5E8248:  PUSH            {R7,LR}
5E824A:  MOV             R7, SP
5E824C:  SUB             SP, SP, #8
5E824E:  LDR             R3, =(__stack_chk_guard_ptr - 0x5E8254)
5E8250:  ADD             R3, PC; __stack_chk_guard_ptr
5E8252:  LDR             R3, [R3]; __stack_chk_guard
5E8254:  LDR             R3, [R3]
5E8256:  STR             R3, [SP,#0x10+var_C]
5E8258:  MOVS            R3, #0
5E825A:  STR             R1, [SP,#0x10+var_10]
5E825C:  MOV             R1, SP
5E825E:  BL              sub_5E8358
5E8262:  LDR             R1, =(__stack_chk_guard_ptr - 0x5E826A)
5E8264:  LDR             R2, [SP,#0x10+var_C]
5E8266:  ADD             R1, PC; __stack_chk_guard_ptr
5E8268:  LDR             R1, [R1]; __stack_chk_guard
5E826A:  LDR             R1, [R1]
5E826C:  SUBS            R1, R1, R2
5E826E:  ITT EQ
5E8270:  ADDEQ           SP, SP, #8
5E8272:  POPEQ           {R7,PC}
5E8274:  BLX.W           __stack_chk_fail
