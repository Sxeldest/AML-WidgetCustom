; =========================================================
; Game Engine Function: sub_117EEC
; Address            : 0x117EEC - 0x117F0C
; =========================================================

117EEC:  PUSH            {R7,LR}
117EEE:  MOV             R7, SP
117EF0:  SUB             SP, SP, #0x10
117EF2:  MOV             R12, R1
117EF4:  ADD.W           R1, R7, #8
117EF8:  STR             R1, [SP,#0x18+var_C]
117EFA:  STRD.W          R3, R1, [SP,#0x18+var_18]
117EFE:  MOV             R1, R2
117F00:  MOVS            R2, #0
117F02:  MOV             R3, R12
117F04:  BLX             __vsnprintf_chk
117F08:  ADD             SP, SP, #0x10
117F0A:  POP             {R7,PC}
