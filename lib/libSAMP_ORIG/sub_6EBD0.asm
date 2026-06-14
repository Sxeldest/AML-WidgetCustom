; =========================================================
; Game Engine Function: sub_6EBD0
; Address            : 0x6EBD0 - 0x6EC16
; =========================================================

6EBD0:  SUB             SP, SP, #4
6EBD2:  PUSH            {R4,R6,R7,LR}
6EBD4:  ADD             R7, SP, #8
6EBD6:  SUB             SP, SP, #0xC
6EBD8:  LDR             R4, =(aSsampSettingsJ - 0x6EBE4); "%sSAMP/settings.json" ...
6EBDA:  MOVS            R2, #0xFF
6EBDC:  STR             R3, [R7,#var_s8]
6EBDE:  LDR             R1, =(__stack_chk_guard_ptr - 0x6EBE6)
6EBE0:  ADD             R4, PC; "%sSAMP/settings.json"
6EBE2:  ADD             R1, PC; __stack_chk_guard_ptr
6EBE4:  MOV             R3, R4
6EBE6:  LDR             R1, [R1]; __stack_chk_guard
6EBE8:  LDR             R1, [R1]
6EBEA:  STR             R1, [SP,#0x14+var_C]
6EBEC:  ADD.W           R1, R7, #8
6EBF0:  STRD.W          R1, R1, [SP,#0x14+var_14]
6EBF4:  MOVS            R1, #0
6EBF6:  BLX             __vsprintf_chk
6EBFA:  LDR             R0, [SP,#0x14+var_C]
6EBFC:  LDR             R1, =(__stack_chk_guard_ptr - 0x6EC02)
6EBFE:  ADD             R1, PC; __stack_chk_guard_ptr
6EC00:  LDR             R1, [R1]; __stack_chk_guard
6EC02:  LDR             R1, [R1]
6EC04:  CMP             R1, R0
6EC06:  ITTTT EQ
6EC08:  ADDEQ           SP, SP, #0xC
6EC0A:  POPEQ.W         {R4,R6,R7,LR}
6EC0E:  ADDEQ           SP, SP, #4
6EC10:  BXEQ            LR
6EC12:  BLX             __stack_chk_fail
