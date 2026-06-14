; =========================================================
; Game Engine Function: sub_113E38
; Address            : 0x113E38 - 0x113E58
; =========================================================

113E38:  PUSH            {R7,LR}
113E3A:  MOV             R7, SP
113E3C:  SUB             SP, SP, #0x10
113E3E:  MOV             R12, R1
113E40:  ADD.W           R1, R7, #8
113E44:  STR             R1, [SP,#0x18+var_C]
113E46:  STRD.W          R3, R1, [SP,#0x18+var_18]
113E4A:  MOV             R1, R2
113E4C:  MOVS            R2, #0
113E4E:  MOV             R3, R12
113E50:  BLX             __vsnprintf_chk
113E54:  ADD             SP, SP, #0x10
113E56:  POP             {R7,PC}
