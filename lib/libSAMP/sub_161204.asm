; =========================================================
; Game Engine Function: sub_161204
; Address            : 0x161204 - 0x161236
; =========================================================

161204:  PUSH            {R4,R6,R7,LR}
161206:  ADD             R7, SP, #8
161208:  LDR             R0, =(unk_23907C - 0x16120E)
16120A:  ADD             R0, PC; unk_23907C
16120C:  BLX             j___emutls_get_address
161210:  LDR             R1, [R0]
161212:  ADDS            R0, R1, #1
161214:  BEQ             loc_161224
161216:  LDR             R0, =(unk_23907C - 0x16121E)
161218:  SUBS            R4, R1, #1
16121A:  ADD             R0, PC; unk_23907C
16121C:  BLX             j___emutls_get_address
161220:  STR             R4, [R0]
161222:  POP             {R4,R6,R7,PC}
161224:  LDR             R1, =(aAxl - 0x16122E); "AXL" ...
161226:  MOVS            R0, #6
161228:  LDR             R2, =(aAntiCrasherInv_0 - 0x161230); "anti_crasher: Invalid count of save/dro"... ...
16122A:  ADD             R1, PC; "AXL"
16122C:  ADD             R2, PC; "anti_crasher: Invalid count of save/dro"...
16122E:  POP.W           {R4,R6,R7,LR}
161232:  B.W             sub_2242C8
