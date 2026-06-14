; =========================================================
; Game Engine Function: _Z23jpeg_set_linear_qualityP20jpeg_compress_structih
; Address            : 0x47A1B0 - 0x47A2B0
; =========================================================

47A1B0:  PUSH            {R4-R7,LR}
47A1B2:  ADD             R7, SP, #0xC
47A1B4:  PUSH.W          {R8,R9,R11}
47A1B8:  MOV             R6, R0
47A1BA:  MOV             R9, R2
47A1BC:  LDR             R0, [R6,#0x14]
47A1BE:  MOV             R5, R1
47A1C0:  CMP             R0, #0x64 ; 'd'
47A1C2:  BEQ             loc_47A1D8
47A1C4:  LDR             R0, [R6]
47A1C6:  MOVS            R1, #0x14
47A1C8:  STR             R1, [R0,#0x14]
47A1CA:  LDR             R0, [R6]
47A1CC:  LDR             R1, [R6,#0x14]
47A1CE:  STR             R1, [R0,#0x18]
47A1D0:  LDR             R0, [R6]
47A1D2:  LDR             R1, [R0]
47A1D4:  MOV             R0, R6
47A1D6:  BLX             R1
47A1D8:  LDR             R0, [R6,#0x48]
47A1DA:  CBNZ            R0, loc_47A1E4
47A1DC:  MOV             R0, R6
47A1DE:  BLX             j__Z22jpeg_alloc_quant_tableP18jpeg_common_struct; jpeg_alloc_quant_table(jpeg_common_struct *)
47A1E2:  STR             R0, [R6,#0x48]
47A1E4:  LDR.W           R12, =(unk_61D1B0 - 0x47A1F6)
47A1E8:  MOVW            R8, #0x851F
47A1EC:  MOVS            R1, #0
47A1EE:  MOVT            R8, #0x51EB
47A1F2:  ADD             R12, PC; unk_61D1B0
47A1F4:  MOVW            R3, #0x7FFF
47A1F8:  LDR.W           R2, [R12,R1,LSL#2]
47A1FC:  MULS            R2, R5
47A1FE:  ADDS            R2, #0x32 ; '2'
47A200:  SMMUL.W         R2, R2, R8
47A204:  ASRS            R4, R2, #5
47A206:  ADD.W           R2, R4, R2,LSR#31
47A20A:  CMP             R2, #1
47A20C:  IT LE
47A20E:  MOVLE           R2, #1
47A210:  CMP             R2, R3
47A212:  IT GE
47A214:  MOVGE           R2, R3
47A216:  CMP             R2, #0xFF
47A218:  MOV             R4, R2
47A21A:  IT GT
47A21C:  MOVGT           R4, #0xFF
47A21E:  CMP.W           R9, #0
47A222:  IT EQ
47A224:  MOVEQ           R4, R2
47A226:  STRH.W          R4, [R0,R1,LSL#1]
47A22A:  ADDS            R1, #1
47A22C:  CMP             R1, #0x40 ; '@'
47A22E:  LDR             R0, [R6,#0x48]
47A230:  BNE             loc_47A1F8
47A232:  MOVS            R1, #0
47A234:  STRB.W          R1, [R0,#0x80]
47A238:  LDR             R0, [R6,#0x14]
47A23A:  CMP             R0, #0x64 ; 'd'
47A23C:  BEQ             loc_47A252
47A23E:  LDR             R0, [R6]
47A240:  MOVS            R1, #0x14
47A242:  STR             R1, [R0,#0x14]
47A244:  LDR             R0, [R6]
47A246:  LDR             R1, [R6,#0x14]
47A248:  STR             R1, [R0,#0x18]
47A24A:  LDR             R0, [R6]
47A24C:  LDR             R1, [R0]
47A24E:  MOV             R0, R6
47A250:  BLX             R1
47A252:  LDR             R0, [R6,#0x4C]
47A254:  CBNZ            R0, loc_47A25E
47A256:  MOV             R0, R6
47A258:  BLX             j__Z22jpeg_alloc_quant_tableP18jpeg_common_struct; jpeg_alloc_quant_table(jpeg_common_struct *)
47A25C:  STR             R0, [R6,#0x4C]
47A25E:  LDR.W           R12, =(unk_61D2B0 - 0x47A26C)
47A262:  MOVS            R1, #0
47A264:  MOVW            R3, #0x7FFF
47A268:  ADD             R12, PC; unk_61D2B0
47A26A:  LDR.W           R4, [R12,R1,LSL#2]
47A26E:  MULS            R4, R5
47A270:  ADDS            R4, #0x32 ; '2'
47A272:  SMMUL.W         R4, R4, R8
47A276:  ASRS            R2, R4, #5
47A278:  ADD.W           R2, R2, R4,LSR#31
47A27C:  CMP             R2, #1
47A27E:  IT LE
47A280:  MOVLE           R2, #1
47A282:  CMP             R2, R3
47A284:  IT GE
47A286:  MOVGE           R2, R3
47A288:  CMP             R2, #0xFF
47A28A:  MOV             R4, R2
47A28C:  IT GT
47A28E:  MOVGT           R4, #0xFF
47A290:  CMP.W           R9, #0
47A294:  IT EQ
47A296:  MOVEQ           R4, R2
47A298:  STRH.W          R4, [R0,R1,LSL#1]
47A29C:  ADDS            R1, #1
47A29E:  CMP             R1, #0x40 ; '@'
47A2A0:  LDR             R0, [R6,#0x4C]
47A2A2:  BNE             loc_47A26A
47A2A4:  MOVS            R1, #0
47A2A6:  STRB.W          R1, [R0,#0x80]
47A2AA:  POP.W           {R8,R9,R11}
47A2AE:  POP             {R4-R7,PC}
