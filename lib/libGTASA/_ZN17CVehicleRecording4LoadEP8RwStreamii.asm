; =========================================================
; Game Engine Function: _ZN17CVehicleRecording4LoadEP8RwStreamii
; Address            : 0x324318 - 0x3243A6
; =========================================================

324318:  PUSH            {R4,R5,R7,LR}
32431A:  ADD             R7, SP, #8
32431C:  MOV             R4, R0
32431E:  LDR             R0, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x324324)
324320:  ADD             R0, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
324322:  LDR             R0, [R0]; CVehicleRecording::StreamingArray ...
324324:  ADD.W           R5, R0, R1,LSL#4
324328:  MOV             R0, R2; byte_count
32432A:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
32432E:  MOVW            R2, #:lower16:unk_98967F
324332:  MOV             R1, R0; void *
324334:  MOVT            R2, #:upper16:unk_98967F; size_t
324338:  MOV             R0, R4; int
32433A:  STR.W           R1, [R5,#4]!
32433E:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
324342:  STR             R0, [R5,#4]
324344:  MOV             R0, R4
324346:  MOVS            R1, #0
324348:  BLX             j__Z13RwStreamCloseP8RwStreamPv; RwStreamClose(RwStream *,void *)
32434C:  LDR             R2, [R5,#4]
32434E:  ADDS            R0, R5, #4
324350:  CMP             R2, #0
324352:  BLE             loc_32436C
324354:  LDR             R1, [R5]
324356:  MOVS            R3, #0
324358:  CBZ             R3, loc_324364
32435A:  LDR             R5, [R1,R3]
32435C:  CMP             R5, #0
32435E:  ITT EQ
324360:  STREQ           R3, [R0]
324362:  MOVEQ           R2, R3
324364:  ADDS            R3, #0x20 ; ' '
324366:  CMP             R3, R2
324368:  BLT             loc_324358
32436A:  B               loc_32436E
32436C:  LDR             R1, [R5]
32436E:  SUBS            R2, #0x20 ; ' '
324370:  CMP             R2, #0x21 ; '!'
324372:  IT CC
324374:  POPCC           {R4,R5,R7,PC}
324376:  VMOV.F32        S0, #0.5
32437A:  LDR             R3, [R1]
32437C:  MOVS            R2, #0x20 ; ' '
32437E:  ADDS            R5, R1, R2
324380:  LDR             R5, [R5,#0x20]
324382:  ADD             R3, R5
324384:  VMOV            S2, R3
324388:  VCVT.F32.U32    S2, S2
32438C:  VMUL.F32        S2, S2, S0
324390:  VCVT.U32.F32    S2, S2
324394:  VMOV            R3, S2
324398:  STR             R3, [R1,R2]
32439A:  ADDS            R2, #0x20 ; ' '
32439C:  LDR             R5, [R0]
32439E:  SUBS            R5, #0x20 ; ' '
3243A0:  CMP             R2, R5
3243A2:  BCC             loc_32437E
3243A4:  POP             {R4,R5,R7,PC}
