; =========================================================
; Game Engine Function: _Z25_rwOpenGLRasterShowRasterPvS_i
; Address            : 0x1B12D0 - 0x1B13A6
; =========================================================

1B12D0:  PUSH            {R4,R6,R7,LR}
1B12D2:  ADD             R7, SP, #8
1B12D4:  BLX             j__Z21emu_IsAltRenderTargetv; emu_IsAltRenderTarget(void)
1B12D8:  CMP             R0, #0
1B12DA:  IT NE
1B12DC:  BLXNE           j__Z23emu_SwapAltRenderTargetv; emu_SwapAltRenderTarget(void)
1B12E0:  LDR             R0, =(renderQueue_ptr - 0x1B12E6)
1B12E2:  ADD             R0, PC; renderQueue_ptr
1B12E4:  LDR             R0, [R0]; renderQueue
1B12E6:  LDR             R0, [R0]; this
1B12E8:  BLX             j__ZN11RenderQueue6FinishEv; RenderQueue::Finish(void)
1B12EC:  LDR             R0, =(skipFrame_ptr - 0x1B12F2)
1B12EE:  ADD             R0, PC; skipFrame_ptr
1B12F0:  LDR             R0, [R0]; skipFrame
1B12F2:  LDR             R0, [R0]
1B12F4:  CBZ             R0, loc_1B1302
1B12F6:  LDR             R1, =(skipFrame_ptr - 0x1B12FE)
1B12F8:  SUBS            R0, #1
1B12FA:  ADD             R1, PC; skipFrame_ptr
1B12FC:  LDR             R1, [R1]; skipFrame
1B12FE:  STR             R0, [R1]
1B1300:  B               loc_1B1386
1B1302:  LDR             R0, =(renderQueue_ptr - 0x1B130A)
1B1304:  MOVS            R3, #0x2E ; '.'
1B1306:  ADD             R0, PC; renderQueue_ptr
1B1308:  LDR             R0, [R0]; renderQueue
1B130A:  LDR             R1, [R0]
1B130C:  LDR.W           R2, [R1,#0x274]
1B1310:  STR.W           R3, [R1,#0x278]
1B1314:  STR             R3, [R2]
1B1316:  LDR.W           R2, [R1,#0x274]
1B131A:  ADDS            R2, #4
1B131C:  STR.W           R2, [R1,#0x274]
1B1320:  LDR             R4, [R0]
1B1322:  LDRB.W          R0, [R4,#0x259]
1B1326:  CMP             R0, #0
1B1328:  ITT NE
1B132A:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B132E:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1B1332:  LDRD.W          R1, R2, [R4,#0x270]
1B1336:  ADD.W           R0, R4, #0x270
1B133A:  DMB.W           ISH
1B133E:  SUBS            R1, R2, R1
1B1340:  LDREX.W         R2, [R0]
1B1344:  ADD             R2, R1
1B1346:  STREX.W         R3, R2, [R0]
1B134A:  CMP             R3, #0
1B134C:  BNE             loc_1B1340
1B134E:  DMB.W           ISH
1B1352:  LDRB.W          R0, [R4,#0x259]
1B1356:  CMP             R0, #0
1B1358:  ITT NE
1B135A:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B135E:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1B1362:  LDRB.W          R0, [R4,#0x258]
1B1366:  CMP             R0, #0
1B1368:  ITT EQ
1B136A:  MOVEQ           R0, R4; this
1B136C:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1B1370:  LDR.W           R1, [R4,#0x270]
1B1374:  LDR.W           R0, [R4,#0x264]
1B1378:  ADD.W           R1, R1, #0x400
1B137C:  CMP             R1, R0
1B137E:  BLS             loc_1B1386
1B1380:  MOV             R0, R4; this
1B1382:  BLX             j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1B1386:  MOVS            R0, #0; unsigned __int8
1B1388:  BLX             j__Z22emu_ArraysProcessQueueh; emu_ArraysProcessQueue(uchar)
1B138C:  BLX             j__Z21emu_IsAltRenderTargetv; emu_IsAltRenderTarget(void)
1B1390:  CBZ             R0, loc_1B139A
1B1392:  BLX             j__Z23emu_BindAltRenderTargetv; emu_BindAltRenderTarget(void)
1B1396:  MOVS            R0, #1
1B1398:  POP             {R4,R6,R7,PC}
1B139A:  MOVS            R0, #0; this
1B139C:  MOVS            R1, #(stderr+1); RQRenderTarget *
1B139E:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1B13A2:  MOVS            R0, #1
1B13A4:  POP             {R4,R6,R7,PC}
