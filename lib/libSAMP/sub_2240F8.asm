; =========================================================
; Game Engine Function: sub_2240F8
; Address            : 0x2240F8 - 0x2241F4
; =========================================================

2240F8:  PUSH            {R4-R8,R10,R11,LR}
2240FC:  ADD             R11, SP, #0x18
224100:  SUB             SP, SP, #0x358
224104:  ADD             R6, SP, #0x370+var_2F0
224108:  MOV             R5, R0
22410C:  MOV             R4, R1
224110:  MOV             R0, R6
224114:  BL              sub_224220
224118:  SUB             R7, R11, #-var_1A0
22411C:  MOV             R1, R6
224120:  MOV             R0, R7
224124:  BL              sub_222BB0
224128:  VMOV.I32        Q8, #0
22412C:  ADD             R0, SP, #0x370+var_348
224130:  ADD             R0, R0, #8
224134:  MOV             R1, SP
224138:  VST1.64         {D16-D17}, [R0]!
22413C:  VST1.64         {D16-D17}, [R0]!
224140:  VST1.64         {D16-D17}, [R0]!
224144:  VST1.64         {D16-D17}, [R0]!
224148:  VST1.64         {D16-D17}, [R0]
22414C:  MOV             R0, #0x574E55
224154:  STR             R0, [SP,#0x370+var_344]
224158:  MOV             R0, #0x474E4C43
224160:  STR             R0, [SP,#0x370+var_348]
224164:  MOV             R0, R7
224168:  BL              sub_222E9C
22416C:  CMP             R0, #0
224170:  BEQ             loc_224180
224174:  MOV             R0, #5
224178:  SUB             SP, R11, #0x18
22417C:  POP             {R4-R8,R10,R11,PC}
224180:  ADD             R6, SP, #0x370+var_348
224184:  SUB             R7, R11, #-var_1A0
224188:  MOV             R8, SP
22418C:  LDR             R3, [SP,#0x370+var_364]
224190:  LDR             R0, [SP,#0x370+var_370]
224194:  LDR             R1, [SP,#0x370+var_35C]
224198:  CMP             R3, #0
22419C:  LDR             R2, [SP,#0x370+var_350]
2241A0:  STR             R2, [SP,#0x370+var_2FC]
2241A4:  STR             R0, [SP,#0x370+var_300]
2241A8:  STR             R1, [SP,#0x370+var_2F8]
2241AC:  BEQ             loc_224174
2241B0:  MOV             R0, #8
2241B4:  MOV             R1, R6
2241B8:  MOV             R2, R7
2241BC:  BLX             R3
2241C0:  CMP             R0, #8
2241C4:  BNE             loc_224174
2241C8:  MOV             R0, R7
2241CC:  MOV             R1, R4
2241D0:  BLX             R5
2241D4:  CMP             R0, #0
2241D8:  BNE             loc_224178
2241DC:  MOV             R0, R7
2241E0:  MOV             R1, R8
2241E4:  BL              sub_222E9C
2241E8:  CMP             R0, #0
2241EC:  BEQ             loc_22418C
2241F0:  B               loc_224174
