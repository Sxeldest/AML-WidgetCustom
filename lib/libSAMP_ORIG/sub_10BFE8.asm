; =========================================================
; Game Engine Function: sub_10BFE8
; Address            : 0x10BFE8 - 0x10C0E4
; =========================================================

10BFE8:  PUSH            {R4-R8,R10,R11,LR}
10BFEC:  ADD             R11, SP, #0x18
10BFF0:  SUB             SP, SP, #0x358
10BFF4:  ADD             R6, SP, #0x370+var_2F0
10BFF8:  MOV             R5, R0
10BFFC:  MOV             R4, R1
10C000:  MOV             R0, R6
10C004:  BL              sub_10C110
10C008:  SUB             R7, R11, #-var_1A0
10C00C:  MOV             R1, R6
10C010:  MOV             R0, R7
10C014:  BL              sub_10AAA0
10C018:  VMOV.I32        Q8, #0
10C01C:  ADD             R0, SP, #0x370+var_348
10C020:  ADD             R0, R0, #8
10C024:  MOV             R1, SP
10C028:  VST1.64         {D16-D17}, [R0]!
10C02C:  VST1.64         {D16-D17}, [R0]!
10C030:  VST1.64         {D16-D17}, [R0]!
10C034:  VST1.64         {D16-D17}, [R0]!
10C038:  VST1.64         {D16-D17}, [R0]
10C03C:  MOV             R0, #0x574E55
10C044:  STR             R0, [SP,#0x370+var_344]
10C048:  MOV             R0, #0x474E4C43
10C050:  STR             R0, [SP,#0x370+var_348]
10C054:  MOV             R0, R7
10C058:  BL              sub_10AD8C
10C05C:  CMP             R0, #0
10C060:  BEQ             loc_10C070
10C064:  MOV             R0, #5
10C068:  SUB             SP, R11, #0x18
10C06C:  POP             {R4-R8,R10,R11,PC}
10C070:  ADD             R6, SP, #0x370+var_348
10C074:  SUB             R7, R11, #-var_1A0
10C078:  MOV             R8, SP
10C07C:  LDR             R3, [SP,#0x370+var_364]
10C080:  LDR             R0, [SP,#0x370+var_370]
10C084:  LDR             R1, [SP,#0x370+var_35C]
10C088:  CMP             R3, #0
10C08C:  LDR             R2, [SP,#0x370+var_350]
10C090:  STR             R2, [SP,#0x370+var_2FC]
10C094:  STR             R0, [SP,#0x370+var_300]
10C098:  STR             R1, [SP,#0x370+var_2F8]
10C09C:  BEQ             loc_10C064
10C0A0:  MOV             R0, #8
10C0A4:  MOV             R1, R6
10C0A8:  MOV             R2, R7
10C0AC:  BLX             R3
10C0B0:  CMP             R0, #8
10C0B4:  BNE             loc_10C064
10C0B8:  MOV             R0, R7
10C0BC:  MOV             R1, R4
10C0C0:  BLX             R5
10C0C4:  CMP             R0, #0
10C0C8:  BNE             loc_10C068
10C0CC:  MOV             R0, R7
10C0D0:  MOV             R1, R8
10C0D4:  BL              sub_10AD8C
10C0D8:  CMP             R0, #0
10C0DC:  BEQ             loc_10C07C
10C0E0:  B               loc_10C064
