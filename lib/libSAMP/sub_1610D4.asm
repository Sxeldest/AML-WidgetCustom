; =========================================================
; Game Engine Function: sub_1610D4
; Address            : 0x1610D4 - 0x161152
; =========================================================

1610D4:  PUSH            {R4-R7,LR}
1610D6:  ADD             R7, SP, #0xC
1610D8:  PUSH.W          {R8}
1610DC:  SUB             SP, SP, #8
1610DE:  MOV             R4, R0
1610E0:  CMP             R0, #0xA
1610E2:  BCC             loc_1610FA
1610E4:  LDR             R1, =(aAxl - 0x1610F0); "AXL" ...
1610E6:  MOVS            R0, #0xA
1610E8:  LDR             R2, =(aAntiCrasherInv - 0x1610F4); "anti_crasher: Invalid env id %d. Max en"... ...
1610EA:  MOV             R3, R4
1610EC:  ADD             R1, PC; "AXL"
1610EE:  STR             R0, [SP,#0x18+var_18]
1610F0:  ADD             R2, PC; "anti_crasher: Invalid env id %d. Max en"...
1610F2:  MOVS            R0, #6; prio
1610F4:  BLX             __android_log_print
1610F8:  MOVS            R4, #0
1610FA:  LDR             R0, =(unk_23909C - 0x161100)
1610FC:  ADD             R0, PC; unk_23909C
1610FE:  BLX             j___emutls_get_address
161102:  LDRB            R0, [R0]
161104:  CBZ             R0, loc_16111C
161106:  LDR             R0, =(unk_23908C - 0x16110C)
161108:  ADD             R0, PC; unk_23908C
16110A:  BLX             j___emutls_get_address
16110E:  MOVS            R1, #0xC8
161110:  MLA.W           R0, R4, R1, R0
161114:  ADD             SP, SP, #8
161116:  POP.W           {R8}
16111A:  POP             {R4-R7,PC}
16111C:  LDR             R5, =(unk_23908C - 0x161128)
16111E:  MOVS            R6, #0
161120:  MOV.W           R8, #1
161124:  ADD             R5, PC; unk_23908C
161126:  MOV             R0, R5
161128:  BLX             j___emutls_get_address
16112C:  ADD             R0, R6
16112E:  ADDS            R6, #0xC8
161130:  CMP.W           R6, #0x7D0
161134:  STRB.W          R8, [R0,#0xC0]
161138:  BNE             loc_161126
16113A:  LDR             R0, =(unk_23909C - 0x161140)
16113C:  ADD             R0, PC; unk_23909C
16113E:  BLX             j___emutls_get_address
161142:  MOVS            R1, #1
161144:  CMP             R4, #0xA
161146:  STRB            R1, [R0]
161148:  BCC             loc_161106
16114A:  LDR             R0, =(aArrayAt - 0x161150); "array::at" ...
16114C:  ADD             R0, PC; "array::at"
16114E:  BL              sub_EE13C
