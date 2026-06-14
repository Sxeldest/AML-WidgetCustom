; =========================================================
; Game Engine Function: sub_85DAC
; Address            : 0x85DAC - 0x85E16
; =========================================================

85DAC:  PUSH            {R4,R5,R7,LR}
85DAE:  ADD             R7, SP, #8
85DB0:  SUB             SP, SP, #0x18
85DB2:  MOV             R4, R0
85DB4:  LDR             R0, =(__stack_chk_guard_ptr - 0x85DBE)
85DB6:  MOV             R12, R1
85DB8:  MOVS            R1, #0
85DBA:  ADD             R0, PC; __stack_chk_guard_ptr
85DBC:  LDR             R0, [R0]; __stack_chk_guard
85DBE:  LDR             R0, [R0]
85DC0:  STR             R0, [SP,#0x20+var_C]
85DC2:  VLDR            D16, [R2]
85DC6:  LDR             R0, [R2,#8]
85DC8:  STRD.W          R1, R1, [R2]
85DCC:  STR             R1, [R2,#8]
85DCE:  MOVS            R1, #3; int
85DD0:  STR             R3, [SP,#0x20+var_20]; float
85DD2:  ADD             R3, SP, #0x20+var_18; int
85DD4:  STR             R0, [SP,#0x20+var_10]
85DD6:  MOV             R0, R4; int
85DD8:  MOV             R2, R12; int
85DDA:  VSTR            D16, [SP,#0x20+var_18]
85DDE:  BL              sub_7E210
85DE2:  LDRB.W          R0, [SP,#0x20+var_18]
85DE6:  LDR             R5, [R7,#arg_0]
85DE8:  LSLS            R0, R0, #0x1F
85DEA:  ITT NE
85DEC:  LDRNE           R0, [SP,#0x20+var_10]; void *
85DEE:  BLXNE           j__ZdlPv; operator delete(void *)
85DF2:  LDR             R0, =(_ZTV15StreamAtVehicle - 0x85DFC); `vtable for'StreamAtVehicle ...
85DF4:  STRH.W          R5, [R4,#0x5C]
85DF8:  ADD             R0, PC; `vtable for'StreamAtVehicle
85DFA:  ADDS            R0, #8
85DFC:  STR             R0, [R4]
85DFE:  LDR             R0, [SP,#0x20+var_C]
85E00:  LDR             R1, =(__stack_chk_guard_ptr - 0x85E06)
85E02:  ADD             R1, PC; __stack_chk_guard_ptr
85E04:  LDR             R1, [R1]; __stack_chk_guard
85E06:  LDR             R1, [R1]
85E08:  CMP             R1, R0
85E0A:  ITTT EQ
85E0C:  MOVEQ           R0, R4
85E0E:  ADDEQ           SP, SP, #0x18
85E10:  POPEQ           {R4,R5,R7,PC}
85E12:  BLX             __stack_chk_fail
