; =========================================================
; Game Engine Function: sub_7B1EC
; Address            : 0x7B1EC - 0x7B232
; =========================================================

7B1EC:  SUB             SP, SP, #4
7B1EE:  PUSH            {R4,R6,R7,LR}
7B1F0:  ADD             R7, SP, #8
7B1F2:  SUB             SP, SP, #0xC
7B1F4:  LDR             R4, =(a02x02x02x - 0x7B200); "#%02X%02X%02X" ...
7B1F6:  MOVS            R2, #8
7B1F8:  STR             R3, [R7,#var_s8]
7B1FA:  LDR             R1, =(__stack_chk_guard_ptr - 0x7B202)
7B1FC:  ADD             R4, PC; "#%02X%02X%02X"
7B1FE:  ADD             R1, PC; __stack_chk_guard_ptr
7B200:  MOV             R3, R4
7B202:  LDR             R1, [R1]; __stack_chk_guard
7B204:  LDR             R1, [R1]
7B206:  STR             R1, [SP,#0x14+var_C]
7B208:  ADD.W           R1, R7, #8
7B20C:  STRD.W          R1, R1, [SP,#0x14+var_14]
7B210:  MOVS            R1, #0
7B212:  BLX             __vsprintf_chk
7B216:  LDR             R0, [SP,#0x14+var_C]
7B218:  LDR             R1, =(__stack_chk_guard_ptr - 0x7B21E)
7B21A:  ADD             R1, PC; __stack_chk_guard_ptr
7B21C:  LDR             R1, [R1]; __stack_chk_guard
7B21E:  LDR             R1, [R1]
7B220:  CMP             R1, R0
7B222:  ITTTT EQ
7B224:  ADDEQ           SP, SP, #0xC
7B226:  POPEQ.W         {R4,R6,R7,LR}
7B22A:  ADDEQ           SP, SP, #4
7B22C:  BXEQ            LR
7B22E:  BLX             __stack_chk_fail
