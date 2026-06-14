; =========================================================
; Game Engine Function: _Z17jpeg_set_defaultsP20jpeg_compress_struct
; Address            : 0x47A314 - 0x47A476
; =========================================================

47A314:  PUSH            {R4,R5,R7,LR}
47A316:  ADD             R7, SP, #8
47A318:  MOV             R4, R0
47A31A:  LDR             R0, [R4,#0x14]
47A31C:  CMP             R0, #0x64 ; 'd'
47A31E:  BEQ             loc_47A334
47A320:  LDR             R0, [R4]
47A322:  MOVS            R1, #0x14
47A324:  STR             R1, [R0,#0x14]
47A326:  LDR             R0, [R4]
47A328:  LDR             R1, [R4,#0x14]
47A32A:  STR             R1, [R0,#0x18]
47A32C:  LDR             R0, [R4]
47A32E:  LDR             R1, [R0]
47A330:  MOV             R0, R4
47A332:  BLX             R1
47A334:  LDR             R0, [R4,#0x44]
47A336:  CBNZ            R0, loc_47A348
47A338:  LDR             R0, [R4,#4]
47A33A:  MOVS            R1, #0
47A33C:  MOV.W           R2, #0x150
47A340:  LDR             R3, [R0]
47A342:  MOV             R0, R4
47A344:  BLX             R3
47A346:  STR             R0, [R4,#0x44]
47A348:  MOVS            R0, #8
47A34A:  MOVS            R1, #0x32 ; '2'
47A34C:  STR             R0, [R4,#0x38]
47A34E:  MOV             R0, R4
47A350:  MOVS            R2, #1
47A352:  MOVS            R5, #1
47A354:  BLX             j__Z23jpeg_set_linear_qualityP20jpeg_compress_structih; jpeg_set_linear_quality(jpeg_compress_struct *,int,uchar)
47A358:  LDR             R2, =(unk_61D3B0 - 0x47A366)
47A35A:  ADD.W           R1, R4, #0x58 ; 'X'; int
47A35E:  LDR             R3, =(unk_61D3C1 - 0x47A368)
47A360:  MOV             R0, R4; int
47A362:  ADD             R2, PC; unk_61D3B0 ; int
47A364:  ADD             R3, PC; unk_61D3C1 ; void *
47A366:  BL              sub_47A910
47A36A:  LDR             R2, =(unk_61D3EA - 0x47A378)
47A36C:  ADD.W           R1, R4, #0x68 ; 'h'; int
47A370:  LDR             R3, =(unk_61D3FB - 0x47A37A)
47A372:  MOV             R0, R4; int
47A374:  ADD             R2, PC; unk_61D3EA ; int
47A376:  ADD             R3, PC; unk_61D3FB ; void *
47A378:  BL              sub_47A910
47A37C:  LDR             R2, =(unk_61D3CD - 0x47A38A)
47A37E:  ADD.W           R1, R4, #0x5C ; '\'; int
47A382:  LDR             R3, =(unk_61D3DE - 0x47A38C)
47A384:  MOV             R0, R4; int
47A386:  ADD             R2, PC; unk_61D3CD ; int
47A388:  ADD             R3, PC; unk_61D3DE ; void *
47A38A:  BL              sub_47A910
47A38E:  LDR             R2, =(unk_61D49D - 0x47A39C)
47A390:  ADD.W           R1, R4, #0x6C ; 'l'; int
47A394:  LDR             R3, =(unk_61D4AE - 0x47A39E)
47A396:  MOV             R0, R4; int
47A398:  ADD             R2, PC; unk_61D49D ; int
47A39A:  ADD             R3, PC; unk_61D4AE ; void *
47A39C:  BL              sub_47A910
47A3A0:  MOVS            R0, #0
47A3A2:  MOV.W           R1, #0x1010101
47A3A6:  STR             R0, [R4,#0x78]
47A3A8:  MOVS            R2, #5
47A3AA:  STR.W           R1, [R4,#0x88]
47A3AE:  MOV.W           R1, #0x5050505
47A3B2:  STR.W           R1, [R4,#0x98]
47A3B6:  MOVW            R1, #0x101
47A3BA:  STRB.W          R2, [R4,#0x9C]
47A3BE:  VMOV.I32        Q8, #0
47A3C2:  STRH.W          R0, [R4,#0x7C]
47A3C6:  ADD.W           R3, R4, #0xB3
47A3CA:  STRH.W          R1, [R4,#0x8C]
47A3CE:  STRB.W          R2, [R4,#0x9D]
47A3D2:  STRB.W          R5, [R4,#0x8E]
47A3D6:  STRB.W          R2, [R4,#0x9E]
47A3DA:  STRB.W          R5, [R4,#0x8F]
47A3DE:  STRB.W          R2, [R4,#0x9F]
47A3E2:  STRB.W          R5, [R4,#0x90]
47A3E6:  STRB.W          R2, [R4,#0xA0]
47A3EA:  STR.W           R0, [R4,#0x7E]
47A3EE:  STRB.W          R5, [R4,#0x91]
47A3F2:  STRB.W          R2, [R4,#0xA1]
47A3F6:  STRB.W          R0, [R4,#0x82]
47A3FA:  STRB.W          R2, [R4,#0xA2]
47A3FE:  STRB.W          R5, [R4,#0x92]
47A402:  STRB.W          R0, [R4,#0x83]
47A406:  STRB.W          R5, [R4,#0x93]
47A40A:  STRB.W          R2, [R4,#0xA3]
47A40E:  STRB.W          R0, [R4,#0x84]
47A412:  STRB.W          R5, [R4,#0x94]
47A416:  STRB.W          R2, [R4,#0xA4]
47A41A:  STRB.W          R0, [R4,#0x85]
47A41E:  STRB.W          R5, [R4,#0x95]
47A422:  STRB.W          R2, [R4,#0xA5]
47A426:  STRB.W          R0, [R4,#0x86]
47A42A:  STRB.W          R5, [R4,#0x96]
47A42E:  STRB.W          R2, [R4,#0xA6]
47A432:  STRB.W          R0, [R4,#0x87]
47A436:  STRB.W          R5, [R4,#0x97]
47A43A:  STRB.W          R2, [R4,#0xA7]
47A43E:  STRB.W          R0, [R4,#0xB2]
47A442:  STRH.W          R0, [R4,#0xB0]
47A446:  LDR             R2, [R4,#0x38]
47A448:  VST1.8          {D16-D17}, [R3]
47A44C:  CMP             R2, #8
47A44E:  STRB.W          R0, [R4,#0xC3]
47A452:  STRD.W          R0, R0, [R4,#0xA8]
47A456:  STRH.W          R1, [R4,#0xC5]
47A45A:  STRB.W          R0, [R4,#0xC7]
47A45E:  STRH.W          R5, [R4,#0xC8]
47A462:  STRH.W          R5, [R4,#0xCA]
47A466:  IT GT
47A468:  MOVGT           R0, #1
47A46A:  STRB.W          R0, [R4,#0xB2]
47A46E:  MOV             R0, R4
47A470:  POP.W           {R4,R5,R7,LR}
47A474:  B               _Z23jpeg_default_colorspaceP20jpeg_compress_struct; jpeg_default_colorspace(jpeg_compress_struct *)
