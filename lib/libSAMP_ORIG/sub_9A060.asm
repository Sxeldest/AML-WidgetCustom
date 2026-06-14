; =========================================================
; Game Engine Function: sub_9A060
; Address            : 0x9A060 - 0x9A1E2
; =========================================================

9A060:  PUSH            {R4-R7,LR}
9A062:  ADD             R7, SP, #0xC
9A064:  PUSH.W          {R8-R11}
9A068:  SUB             SP, SP, #0x2C
9A06A:  MOV             R8, R0
9A06C:  LDR             R0, =(dword_1ACF68 - 0x9A07A)
9A06E:  ADD.W           R10, SP, #0x48+var_40
9A072:  MOVW            R1, #0x2D14
9A076:  ADD             R0, PC; dword_1ACF68
9A078:  STR             R0, [SP,#0x48+var_44]
9A07A:  VMOV.I32        Q8, #0
9A07E:  MOV             R5, R10
9A080:  LDR             R2, [R0]
9A082:  LDR             R0, =(__stack_chk_guard_ptr - 0x9A08A)
9A084:  ADDS            R6, R2, R1
9A086:  ADD             R0, PC; __stack_chk_guard_ptr
9A088:  LDR             R0, [R0]; __stack_chk_guard
9A08A:  LDR             R0, [R0]
9A08C:  STR             R0, [SP,#0x48+var_20]
9A08E:  LDR             R4, [R2,R1]
9A090:  MOVS            R1, #9
9A092:  VST1.64         {D16-D17}, [R5],R1
9A096:  VST1.8          {D16-D17}, [R5]
9A09A:  LDR             R3, [R6,#4]
9A09C:  LDR             R1, =(off_117248 - 0x9A0A4)
9A09E:  CMP             R4, R3
9A0A0:  ADD             R1, PC; off_117248
9A0A2:  MOV             R11, R1
9A0A4:  LDR             R1, =(dword_1ACF70 - 0x9A0AA)
9A0A6:  ADD             R1, PC; dword_1ACF70
9A0A8:  MOV             R9, R1
9A0AA:  BNE             loc_9A120
9A0AC:  CMP             R4, #0
9A0AE:  ADD.W           R5, R4, #1
9A0B2:  ITTE NE
9A0B4:  ADDNE.W         R1, R4, R4,LSR#31
9A0B8:  ADDNE.W         R1, R4, R1,ASR#1
9A0BC:  MOVEQ           R1, #8
9A0BE:  CMP             R1, R5
9A0C0:  IT GT
9A0C2:  MOVGT           R5, R1
9A0C4:  CMP             R4, R5
9A0C6:  BGE             loc_9A120
9A0C8:  LDR.W           R0, [R2,#0x370]
9A0CC:  LDR.W           R3, [R11]; sub_9A720
9A0D0:  ADDS            R0, #1
9A0D2:  STR.W           R0, [R2,#0x370]
9A0D6:  RSB.W           R0, R5, R5,LSL#3
9A0DA:  LDR.W           R1, [R9]
9A0DE:  LSLS            R0, R0, #2
9A0E0:  BLX             R3; sub_9A720
9A0E2:  LDR             R1, [R6,#8]; src
9A0E4:  CBZ             R1, loc_9A11A
9A0E6:  LDR             R2, [R6]
9A0E8:  MOV             R4, R0
9A0EA:  RSB.W           R2, R2, R2,LSL#3
9A0EE:  LSLS            R2, R2, #2; n
9A0F0:  BLX             j_memcpy
9A0F4:  LDR             R0, [R6,#8]
9A0F6:  CMP             R0, #0
9A0F8:  ITTTT NE
9A0FA:  LDRNE           R1, [SP,#0x48+var_44]
9A0FC:  LDRNE           R1, [R1]
9A0FE:  CMPNE           R1, #0
9A100:  LDRNE.W         R2, [R1,#0x370]
9A104:  ITT NE
9A106:  SUBNE           R2, #1
9A108:  STRNE.W         R2, [R1,#0x370]
9A10C:  LDR             R2, =(off_11724C - 0x9A116)
9A10E:  LDR.W           R1, [R9]
9A112:  ADD             R2, PC; off_11724C
9A114:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A116:  BLX             R2; j_opus_decoder_destroy_0
9A118:  MOV             R0, R4
9A11A:  LDR             R4, [R6]
9A11C:  STRD.W          R5, R0, [R6,#4]
9A120:  MOVS            R1, #0xC
9A122:  LDR             R2, [R6,#8]
9A124:  RSB.W           R0, R4, R4,LSL#3
9A128:  VLD1.8          {D16-D17}, [R10],R1
9A12C:  ADD.W           R0, R2, R0,LSL#2
9A130:  VLD1.32         {D18-D19}, [R10]
9A134:  VST1.8          {D16-D17}, [R0],R1
9A138:  VST1.8          {D18-D19}, [R0]
9A13C:  LDR             R0, [R6]
9A13E:  ADDS            R1, R0, #1
9A140:  STR             R1, [R6]
9A142:  LDR             R1, [R6,#8]
9A144:  RSB.W           R0, R0, R0,LSL#3
9A148:  ADD.W           R5, R1, R0,LSL#2
9A14C:  MOV             R0, R8; s
9A14E:  BLX             strlen
9A152:  LDR             R1, [SP,#0x48+var_44]
9A154:  ADDS            R6, R0, #1
9A156:  LDR             R1, [R1]
9A158:  CMP             R1, #0
9A15A:  ITTT NE
9A15C:  LDRNE.W         R0, [R1,#0x370]
9A160:  ADDNE           R0, #1
9A162:  STRNE.W         R0, [R1,#0x370]
9A166:  LDR.W           R1, [R9]
9A16A:  MOV             R0, R6
9A16C:  LDR.W           R2, [R11]; sub_9A720
9A170:  BLX             R2; sub_9A720
9A172:  MOV             R1, R8; src
9A174:  MOV             R2, R6; n
9A176:  MOV             R4, R0
9A178:  BLX             j_memcpy
9A17C:  STR             R4, [R5]
9A17E:  LDRB.W          R2, [R8]
9A182:  CBZ             R2, loc_9A1C2
9A184:  LDR             R3, =(unk_52D88 - 0x9A192)
9A186:  ADD.W           R1, R8, #1
9A18A:  MOV.W           R0, #0xFFFFFFFF
9A18E:  ADD             R3, PC; unk_52D88
9A190:  B               loc_9A1A2
9A192:  UXTB            R4, R0
9A194:  EORS            R6, R4
9A196:  ADDS            R1, #1
9A198:  LDR.W           R6, [R3,R6,LSL#2]
9A19C:  EOR.W           R0, R6, R0,LSR#8
9A1A0:  CBZ             R2, loc_9A1BE
9A1A2:  MOV             R6, R2
9A1A4:  LDRB            R2, [R1]
9A1A6:  CMP             R6, #0x23 ; '#'
9A1A8:  IT EQ
9A1AA:  CMPEQ           R2, #0x23 ; '#'
9A1AC:  BNE             loc_9A192
9A1AE:  LDRB            R2, [R1,#1]
9A1B0:  CMP             R2, #0x23 ; '#'
9A1B2:  MOV.W           R2, #0x23 ; '#'
9A1B6:  IT EQ
9A1B8:  MOVEQ.W         R0, #0xFFFFFFFF
9A1BC:  B               loc_9A192
9A1BE:  MVNS            R0, R0
9A1C0:  B               loc_9A1C4
9A1C2:  MOVS            R0, #0
9A1C4:  STR             R0, [R5,#4]
9A1C6:  LDR             R0, [SP,#0x48+var_20]
9A1C8:  LDR             R1, =(__stack_chk_guard_ptr - 0x9A1CE)
9A1CA:  ADD             R1, PC; __stack_chk_guard_ptr
9A1CC:  LDR             R1, [R1]; __stack_chk_guard
9A1CE:  LDR             R1, [R1]
9A1D0:  CMP             R1, R0
9A1D2:  ITTTT EQ
9A1D4:  MOVEQ           R0, R5
9A1D6:  ADDEQ           SP, SP, #0x2C ; ','
9A1D8:  POPEQ.W         {R8-R11}
9A1DC:  POPEQ           {R4-R7,PC}
9A1DE:  BLX             __stack_chk_fail
