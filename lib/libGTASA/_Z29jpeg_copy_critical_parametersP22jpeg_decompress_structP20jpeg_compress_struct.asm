; =========================================================
; Game Engine Function: _Z29jpeg_copy_critical_parametersP22jpeg_decompress_structP20jpeg_compress_struct
; Address            : 0x47B238 - 0x47B42A
; =========================================================

47B238:  PUSH            {R4-R7,LR}
47B23A:  ADD             R7, SP, #0xC
47B23C:  PUSH.W          {R8-R11}
47B240:  SUB             SP, SP, #0xC
47B242:  MOV             R4, R1
47B244:  MOV             R8, R0
47B246:  LDR             R0, [R4,#0x14]
47B248:  CMP             R0, #0x64 ; 'd'
47B24A:  BEQ             loc_47B260
47B24C:  LDR             R0, [R4]
47B24E:  MOVS            R1, #0x14
47B250:  STR             R1, [R0,#0x14]
47B252:  LDR             R0, [R4]
47B254:  LDR             R1, [R4,#0x14]
47B256:  STR             R1, [R0,#0x18]
47B258:  LDR             R0, [R4]
47B25A:  LDR             R1, [R0]
47B25C:  MOV             R0, R4
47B25E:  BLX             R1
47B260:  LDR.W           R0, [R8,#0x1C]
47B264:  STR             R0, [R4,#0x1C]
47B266:  LDR.W           R0, [R8,#0x20]
47B26A:  STR             R0, [R4,#0x20]
47B26C:  LDR.W           R0, [R8,#0x24]
47B270:  STR             R0, [R4,#0x24]
47B272:  LDR.W           R0, [R8,#0x28]
47B276:  STR             R0, [R4,#0x28]
47B278:  MOV             R0, R4
47B27A:  BLX             j__Z17jpeg_set_defaultsP20jpeg_compress_struct; jpeg_set_defaults(jpeg_compress_struct *)
47B27E:  LDR.W           R1, [R8,#0x28]
47B282:  MOV             R0, R4
47B284:  BLX             j__Z19jpeg_set_colorspaceP20jpeg_compress_struct13J_COLOR_SPACE; jpeg_set_colorspace(jpeg_compress_struct *,J_COLOR_SPACE)
47B288:  LDR.W           R0, [R8,#0xC0]
47B28C:  STR             R0, [R4,#0x38]
47B28E:  LDRB.W          R0, [R8,#0x10A]
47B292:  STRB.W          R0, [R4,#0xB3]
47B296:  LDR.W           R1, [R8,#0x90]
47B29A:  CBZ             R1, loc_47B2BA
47B29C:  LDR             R0, [R4,#0x48]
47B29E:  CBNZ            R0, loc_47B2AC
47B2A0:  MOV             R0, R4
47B2A2:  BLX             j__Z22jpeg_alloc_quant_tableP18jpeg_common_struct; jpeg_alloc_quant_table(jpeg_common_struct *)
47B2A6:  STR             R0, [R4,#0x48]
47B2A8:  LDR.W           R1, [R8,#0x90]; void *
47B2AC:  MOVS            R2, #0x80; size_t
47B2AE:  BLX             memcpy_1
47B2B2:  LDR             R0, [R4,#0x48]
47B2B4:  MOVS            R1, #0
47B2B6:  STRB.W          R1, [R0,#0x80]
47B2BA:  LDR.W           R1, [R8,#0x94]
47B2BE:  CBZ             R1, loc_47B2DE
47B2C0:  LDR             R0, [R4,#0x4C]
47B2C2:  CBNZ            R0, loc_47B2D0
47B2C4:  MOV             R0, R4
47B2C6:  BLX             j__Z22jpeg_alloc_quant_tableP18jpeg_common_struct; jpeg_alloc_quant_table(jpeg_common_struct *)
47B2CA:  STR             R0, [R4,#0x4C]
47B2CC:  LDR.W           R1, [R8,#0x94]; void *
47B2D0:  MOVS            R2, #0x80; size_t
47B2D2:  BLX             memcpy_1
47B2D6:  LDR             R0, [R4,#0x4C]
47B2D8:  MOVS            R1, #0
47B2DA:  STRB.W          R1, [R0,#0x80]
47B2DE:  LDR.W           R1, [R8,#0x98]
47B2E2:  CBZ             R1, loc_47B302
47B2E4:  LDR             R0, [R4,#0x50]
47B2E6:  CBNZ            R0, loc_47B2F4
47B2E8:  MOV             R0, R4
47B2EA:  BLX             j__Z22jpeg_alloc_quant_tableP18jpeg_common_struct; jpeg_alloc_quant_table(jpeg_common_struct *)
47B2EE:  STR             R0, [R4,#0x50]
47B2F0:  LDR.W           R1, [R8,#0x98]; void *
47B2F4:  MOVS            R2, #0x80; size_t
47B2F6:  BLX             memcpy_1
47B2FA:  LDR             R0, [R4,#0x50]
47B2FC:  MOVS            R1, #0
47B2FE:  STRB.W          R1, [R0,#0x80]
47B302:  LDR.W           R1, [R8,#0x9C]
47B306:  CBZ             R1, loc_47B326
47B308:  LDR             R0, [R4,#0x54]
47B30A:  CBNZ            R0, loc_47B318
47B30C:  MOV             R0, R4
47B30E:  BLX             j__Z22jpeg_alloc_quant_tableP18jpeg_common_struct; jpeg_alloc_quant_table(jpeg_common_struct *)
47B312:  STR             R0, [R4,#0x54]
47B314:  LDR.W           R1, [R8,#0x9C]; void *
47B318:  MOVS            R2, #0x80; size_t
47B31A:  BLX             memcpy_1
47B31E:  LDR             R0, [R4,#0x54]
47B320:  MOVS            R1, #0
47B322:  STRB.W          R1, [R0,#0x80]
47B326:  LDR.W           R0, [R8,#0x24]
47B32A:  STR             R0, [R4,#0x3C]
47B32C:  SUBS            R0, #1
47B32E:  CMP             R0, #3
47B330:  BLS             loc_47B352
47B332:  LDR             R0, [R4]
47B334:  MOVS            R1, #0x1A
47B336:  STR             R1, [R0,#0x14]
47B338:  LDR             R0, [R4]
47B33A:  LDR             R1, [R4,#0x3C]
47B33C:  STR             R1, [R0,#0x18]
47B33E:  MOVS            R1, #4
47B340:  LDR             R0, [R4]
47B342:  STR             R1, [R0,#0x1C]
47B344:  LDR             R0, [R4]
47B346:  LDR             R1, [R0]
47B348:  MOV             R0, R4
47B34A:  BLX             R1
47B34C:  LDR             R0, [R4,#0x3C]
47B34E:  CMP             R0, #1
47B350:  BLT             loc_47B3EE
47B352:  LDR.W           R6, [R8,#0xC4]
47B356:  MOVS            R1, #0
47B358:  LDR             R5, [R4,#0x44]
47B35A:  STR.W           R8, [SP,#0x28+var_24]
47B35E:  STR             R1, [SP,#0x28+var_20]
47B360:  LDR             R0, [R6]
47B362:  STR             R0, [R5]
47B364:  LDR             R0, [R6,#8]
47B366:  STR             R0, [R5,#8]
47B368:  LDR             R0, [R6,#0xC]
47B36A:  STR             R0, [R5,#0xC]
47B36C:  LDR.W           R10, [R6,#0x10]
47B370:  STR.W           R10, [R5,#0x10]
47B374:  CMP.W           R10, #3
47B378:  ADD.W           R0, R8, R10,LSL#2
47B37C:  ADD.W           R9, R0, #0x90
47B380:  BHI             loc_47B38C
47B382:  LDR.W           R8, [R9]
47B386:  CMP.W           R8, #0
47B38A:  BNE             loc_47B3A4
47B38C:  LDR             R0, [R4]
47B38E:  MOVS            R1, #0x34 ; '4'
47B390:  STR             R1, [R0,#0x14]
47B392:  LDR             R0, [R4]
47B394:  STR.W           R10, [R0,#0x18]
47B398:  LDR             R0, [R4]
47B39A:  LDR             R1, [R0]
47B39C:  MOV             R0, R4
47B39E:  BLX             R1
47B3A0:  LDR.W           R8, [R9]
47B3A4:  LDR.W           R11, [R6,#0x4C]
47B3A8:  CMP.W           R11, #0
47B3AC:  BEQ             loc_47B3DC
47B3AE:  MOV.W           R9, #0
47B3B2:  LDRH.W          R0, [R8,R9,LSL#1]
47B3B6:  LDRH.W          R1, [R11,R9,LSL#1]
47B3BA:  CMP             R1, R0
47B3BC:  BEQ             loc_47B3D2
47B3BE:  LDR             R0, [R4]
47B3C0:  MOVS            R1, #0x2C ; ','
47B3C2:  STR             R1, [R0,#0x14]
47B3C4:  LDR             R0, [R4]
47B3C6:  STR.W           R10, [R0,#0x18]
47B3CA:  LDR             R0, [R4]
47B3CC:  LDR             R1, [R0]
47B3CE:  MOV             R0, R4
47B3D0:  BLX             R1
47B3D2:  ADD.W           R9, R9, #1
47B3D6:  CMP.W           R9, #0x40 ; '@'
47B3DA:  BNE             loc_47B3B2
47B3DC:  LDR             R1, [SP,#0x28+var_20]
47B3DE:  ADDS            R5, #0x54 ; 'T'
47B3E0:  LDR             R0, [R4,#0x3C]
47B3E2:  ADDS            R6, #0x54 ; 'T'
47B3E4:  LDR.W           R8, [SP,#0x28+var_24]
47B3E8:  ADDS            R1, #1
47B3EA:  CMP             R1, R0
47B3EC:  BLT             loc_47B35E
47B3EE:  LDRB.W          R0, [R8,#0x100]
47B3F2:  CBZ             R0, loc_47B422
47B3F4:  LDRB.W          R0, [R8,#0x101]
47B3F8:  CMP             R0, #1
47B3FA:  ITTTT EQ
47B3FC:  MOVEQ           R0, #1
47B3FE:  STRBEQ.W        R0, [R4,#0xC5]
47B402:  LDRBEQ.W        R0, [R8,#0x102]
47B406:  STRBEQ.W        R0, [R4,#0xC6]
47B40A:  LDRB.W          R0, [R8,#0x103]
47B40E:  STRB.W          R0, [R4,#0xC7]
47B412:  LDRH.W          R0, [R8,#0x104]
47B416:  STRH.W          R0, [R4,#0xC8]
47B41A:  LDRH.W          R0, [R8,#0x106]
47B41E:  STRH.W          R0, [R4,#0xCA]
47B422:  ADD             SP, SP, #0xC
47B424:  POP.W           {R8-R11}
47B428:  POP             {R4-R7,PC}
