; =========================================================
; Game Engine Function: _Z20jpeg_add_quant_tableP20jpeg_compress_structiPKjih
; Address            : 0x47A0F0 - 0x47A1B0
; =========================================================

47A0F0:  PUSH            {R4-R7,LR}
47A0F2:  ADD             R7, SP, #0xC
47A0F4:  PUSH.W          {R8-R10}
47A0F8:  MOV             R9, R0
47A0FA:  MOV             R10, R3
47A0FC:  LDR.W           R0, [R9,#0x14]
47A100:  MOV             R5, R2
47A102:  MOV             R8, R1
47A104:  CMP             R0, #0x64 ; 'd'
47A106:  BEQ             loc_47A124
47A108:  LDR.W           R0, [R9]
47A10C:  MOVS            R1, #0x14
47A10E:  STR             R1, [R0,#0x14]
47A110:  LDR.W           R0, [R9]
47A114:  LDR.W           R1, [R9,#0x14]
47A118:  STR             R1, [R0,#0x18]
47A11A:  LDR.W           R0, [R9]
47A11E:  LDR             R1, [R0]
47A120:  MOV             R0, R9
47A122:  BLX             R1
47A124:  CMP.W           R8, #4
47A128:  BCC             loc_47A144
47A12A:  LDR.W           R0, [R9]
47A12E:  MOVS            R1, #0x1F
47A130:  STR             R1, [R0,#0x14]
47A132:  LDR.W           R0, [R9]
47A136:  STR.W           R8, [R0,#0x18]
47A13A:  LDR.W           R0, [R9]
47A13E:  LDR             R1, [R0]
47A140:  MOV             R0, R9
47A142:  BLX             R1
47A144:  ADD.W           R6, R9, R8,LSL#2
47A148:  LDR.W           R0, [R6,#0x48]!
47A14C:  CBNZ            R0, loc_47A156
47A14E:  MOV             R0, R9
47A150:  BLX             j__Z22jpeg_alloc_quant_tableP18jpeg_common_struct; jpeg_alloc_quant_table(jpeg_common_struct *)
47A154:  STR             R0, [R6]
47A156:  LDR.W           R12, [R7,#arg_0]
47A15A:  MOVW            LR, #0x851F
47A15E:  MOVS            R2, #0
47A160:  MOVT            LR, #0x51EB
47A164:  MOVW            R1, #0x7FFF
47A168:  LDR.W           R3, [R5,R2,LSL#2]
47A16C:  MUL.W           R3, R3, R10
47A170:  ADDS            R3, #0x32 ; '2'
47A172:  SMMUL.W         R3, R3, LR
47A176:  ASRS            R4, R3, #5
47A178:  ADD.W           R3, R4, R3,LSR#31
47A17C:  CMP             R3, #1
47A17E:  IT LE
47A180:  MOVLE           R3, #1
47A182:  CMP             R3, R1
47A184:  IT GE
47A186:  MOVGE           R3, R1
47A188:  CMP             R3, #0xFF
47A18A:  MOV             R4, R3
47A18C:  IT GT
47A18E:  MOVGT           R4, #0xFF
47A190:  CMP.W           R12, #0
47A194:  IT EQ
47A196:  MOVEQ           R4, R3
47A198:  STRH.W          R4, [R0,R2,LSL#1]
47A19C:  ADDS            R2, #1
47A19E:  CMP             R2, #0x40 ; '@'
47A1A0:  LDR             R0, [R6]
47A1A2:  BNE             loc_47A168
47A1A4:  MOVS            R1, #0
47A1A6:  STRB.W          R1, [R0,#0x80]
47A1AA:  POP.W           {R8-R10}
47A1AE:  POP             {R4-R7,PC}
