; =========================================================
; Game Engine Function: sub_80300
; Address            : 0x80300 - 0x80412
; =========================================================

80300:  PUSH            {R4-R7,LR}
80302:  ADD             R7, SP, #0xC
80304:  PUSH.W          {R11}
80308:  SUB             SP, SP, #0x20
8030A:  LDR             R1, =(byte_1A49B4 - 0x80312)
8030C:  LDR             R2, =(__stack_chk_guard_ptr - 0x80314)
8030E:  ADD             R1, PC; byte_1A49B4
80310:  ADD             R2, PC; __stack_chk_guard_ptr
80312:  LDR             R2, [R2]; __stack_chk_guard
80314:  LDR             R2, [R2]
80316:  STR             R2, [SP,#0x30+var_14]
80318:  LDRB            R1, [R1]
8031A:  CMP             R1, #0
8031C:  BEQ             loc_803C2
8031E:  BL              sub_82698
80322:  BL              sub_82644
80326:  LDR             R4, =(dword_1A49B8 - 0x8032C)
80328:  ADD             R4, PC; dword_1A49B8
8032A:  CBZ             R0, loc_803A4
8032C:  LDR             R0, [R4]
8032E:  CBNZ            R0, loc_803A4
80330:  LDR             R0, =(off_114CD8 - 0x80338)
80332:  LDR             R6, =(dword_1A49BC - 0x8033A)
80334:  ADD             R0, PC; off_114CD8
80336:  ADD             R6, PC; dword_1A49BC
80338:  LDR             R1, [R0]; off_1ABF1C
8033A:  LDR             R0, [R6]
8033C:  LDR             R2, [R1]
8033E:  MOVS            R1, #0x10011
80344:  BLX             R2
80346:  CMP             R0, #0
80348:  STR             R0, [R4]
8034A:  BEQ             loc_803DC
8034C:  LDR             R1, =(off_114CDC - 0x8035C)
8034E:  ADR             R2, dword_80420
80350:  VLD1.64         {D16-D17}, [R2@128]
80354:  MOVW            R5, #0xD70A
80358:  ADD             R1, PC; off_114CDC
8035A:  MOVT            R5, #0x3C23
8035E:  LDR             R2, [R1]; off_1ABF24
80360:  ADD             R1, SP, #0x30+var_2C
80362:  MOV             R3, R1
80364:  VST1.32         {D16-D17}, [R3]!
80368:  STR             R5, [R3]
8036A:  MOV.W           R3, #0xFFFFFFFF
8036E:  LDR             R2, [R2]
80370:  STR             R3, [SP,#0x30+var_18]
80372:  BLX             R2
80374:  CBNZ            R0, loc_803C2
80376:  LDR             R0, =(off_114CB0 - 0x8037C)
80378:  ADD             R0, PC; off_114CB0
8037A:  LDR             R0, [R0]; off_1ABF0C
8037C:  LDR             R0, [R0]
8037E:  BLX             R0
80380:  MOV             R1, R0
80382:  LDR             R0, =(aSvErrPlaybackS - 0x80388); "[sv:err:playback:setsoundbalancer] : fa"... ...
80384:  ADD             R0, PC; "[sv:err:playback:setsoundbalancer] : fa"...
80386:  BL              sub_80664
8038A:  LDR             R0, =(off_114CD4 - 0x80392)
8038C:  LDR             R1, [R4]
8038E:  ADD             R0, PC; off_114CD4
80390:  LDR             R2, [R0]; off_1ABF20
80392:  LDR             R0, [R6]
80394:  LDR             R2, [R2]
80396:  BLX             R2
80398:  MOVS            R0, #0
8039A:  STR             R0, [R4]
8039C:  MOVS            R0, #0
8039E:  BL              sub_82698
803A2:  B               loc_803C2
803A4:  BL              sub_82644
803A8:  CBNZ            R0, loc_803C2
803AA:  LDR             R1, [R4]
803AC:  CBZ             R1, loc_803C2
803AE:  LDR             R0, =(off_114CD4 - 0x803B6)
803B0:  LDR             R2, =(dword_1A49BC - 0x803B8)
803B2:  ADD             R0, PC; off_114CD4
803B4:  ADD             R2, PC; dword_1A49BC
803B6:  LDR             R3, [R0]; off_1ABF20
803B8:  LDR             R0, [R2]
803BA:  LDR             R2, [R3]
803BC:  BLX             R2
803BE:  MOVS            R0, #0
803C0:  STR             R0, [R4]
803C2:  LDR             R0, [SP,#0x30+var_14]
803C4:  LDR             R1, =(__stack_chk_guard_ptr - 0x803CA)
803C6:  ADD             R1, PC; __stack_chk_guard_ptr
803C8:  LDR             R1, [R1]; __stack_chk_guard
803CA:  LDR             R1, [R1]
803CC:  CMP             R1, R0
803CE:  ITTT EQ
803D0:  ADDEQ           SP, SP, #0x20 ; ' '
803D2:  POPEQ.W         {R11}
803D6:  POPEQ           {R4-R7,PC}
803D8:  BLX             __stack_chk_fail
803DC:  LDR             R0, =(off_114CB0 - 0x803E2)
803DE:  ADD             R0, PC; off_114CB0
803E0:  LDR             R0, [R0]; off_1ABF0C
803E2:  LDR             R0, [R0]
803E4:  BLX             R0
803E6:  MOV             R1, R0
803E8:  LDR             R0, =(aSvErrPlaybackS_0 - 0x803EE); "[sv:err:playback:setsoundbalancer] : fa"... ...
803EA:  ADD             R0, PC; "[sv:err:playback:setsoundbalancer] : fa"...
803EC:  BL              sub_80664
803F0:  LDR             R0, [SP,#0x30+var_14]
803F2:  LDR             R1, =(__stack_chk_guard_ptr - 0x803F8)
803F4:  ADD             R1, PC; __stack_chk_guard_ptr
803F6:  LDR             R1, [R1]; __stack_chk_guard
803F8:  LDR             R1, [R1]
803FA:  CMP             R1, R0
803FC:  ITTTT EQ
803FE:  MOVEQ           R0, #0
80400:  ADDEQ           SP, SP, #0x20 ; ' '
80402:  POPEQ.W         {R11}
80406:  POPEQ.W         {R4-R7,LR}
8040A:  IT EQ
8040C:  BEQ.W           sub_82698
80410:  B               loc_803D8
