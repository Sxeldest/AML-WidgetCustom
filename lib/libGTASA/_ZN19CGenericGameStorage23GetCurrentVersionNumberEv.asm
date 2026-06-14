; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage23GetCurrentVersionNumberEv
; Address            : 0x483BFC - 0x483C36
; =========================================================

483BFC:  PUSH            {R4,R6,R7,LR}
483BFE:  ADD             R7, SP, #8
483C00:  SUB             SP, SP, #0x30
483C02:  LDR             R0, =(__stack_chk_guard_ptr - 0x483C0E)
483C04:  ADD             R4, SP, #0x38+var_34
483C06:  LDR             R1, =(aGtasaD - 0x483C10); "GTASA%d"
483C08:  MOVS            R2, #4
483C0A:  ADD             R0, PC; __stack_chk_guard_ptr
483C0C:  ADD             R1, PC; "GTASA%d"
483C0E:  LDR             R0, [R0]; __stack_chk_guard
483C10:  LDR             R0, [R0]
483C12:  STR             R0, [SP,#0x38+var_C]
483C14:  MOV             R0, R4
483C16:  BL              sub_5E6BC0
483C1A:  MOV             R0, R4; this
483C1C:  BLX             j__ZN7CKeyGen6GetKeyEPKc; CKeyGen::GetKey(char const*)
483C20:  LDR             R1, =(__stack_chk_guard_ptr - 0x483C28)
483C22:  LDR             R2, [SP,#0x38+var_C]
483C24:  ADD             R1, PC; __stack_chk_guard_ptr
483C26:  LDR             R1, [R1]; __stack_chk_guard
483C28:  LDR             R1, [R1]
483C2A:  SUBS            R1, R1, R2
483C2C:  ITT EQ
483C2E:  ADDEQ           SP, SP, #0x30 ; '0'
483C30:  POPEQ           {R4,R6,R7,PC}
483C32:  BLX             __stack_chk_fail
