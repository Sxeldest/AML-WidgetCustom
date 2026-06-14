; =========================================================
; Game Engine Function: alcGetContextsDevice
; Address            : 0x1BF2BC - 0x1BF3D8
; =========================================================

1BF2BC:  PUSH            {R4,R5,R11,LR}
1BF2C0:  ADD             R11, SP, #8
1BF2C4:  MOV             R4, R0
1BF2C8:  LDR             R0, =(unk_3827A0 - 0x1BF2D4)
1BF2CC:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BF2D0:  BL              j_EnterCriticalSection
1BF2D4:  LDR             R0, =(dword_382838 - 0x1BF2E0)
1BF2D8:  LDR             R0, [PC,R0]; dword_382838
1BF2DC:  CMP             R0, #0
1BF2E0:  BEQ             loc_1BF328
1BF2E4:  MOVW            R1, #:lower16:(aZnkst6Ndk14Fs1_14+0x1D); "m4path5beginEv"
1BF2E8:  MOVW            R2, #:lower16:(aZnkst6Ndk14Fs1_14+0x29); "Ev"
1BF2EC:  MOVT            R1, #:upper16:(aZnkst6Ndk14Fs1_14+0x1D); "m4path5beginEv"
1BF2F0:  MOVT            R2, #:upper16:(aZnkst6Ndk14Fs1_14+0x29); "Ev"
1BF2F4:  LDR             R3, [R0,R1]
1BF2F8:  CMP             R3, #0
1BF2FC:  BNE             loc_1BF310
1BF300:  B               loc_1BF31C
1BF304:  LDR             R3, [R3,#0x104]
1BF308:  CMP             R3, #0
1BF30C:  BEQ             loc_1BF31C
1BF310:  CMP             R3, R4
1BF314:  BNE             loc_1BF304
1BF318:  B               loc_1BF338
1BF31C:  LDR             R0, [R0,R2]
1BF320:  CMP             R0, #0
1BF324:  BNE             loc_1BF2F4
1BF328:  LDR             R0, =(unk_3827A0 - 0x1BF334)
1BF32C:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BF330:  BL              j_LeaveCriticalSection
1BF334:  B               loc_1BF3A8
1BF338:  DMB             ISH
1BF33C:  LDREX           R0, [R4]
1BF340:  ADD             R3, R0, #1
1BF344:  STREX           R0, R3, [R4]
1BF348:  CMP             R0, #0
1BF34C:  BNE             loc_1BF33C
1BF350:  LDR             R0, =(LogLevel_ptr - 0x1BF360)
1BF354:  DMB             ISH
1BF358:  LDR             R0, [PC,R0]; LogLevel
1BF35C:  LDR             R0, [R0]
1BF360:  CMP             R0, #4
1BF364:  BCC             loc_1BF380
1BF368:  LDR             R0, =(aAlccontextIncr_0 - 0x1BF37C); "ALCcontext_IncRef" ...
1BF36C:  MOV             R2, R4
1BF370:  LDR             R1, =(aPIncreasingRef - 0x1BF380); "%p increasing refcount to %u\n" ...
1BF374:  ADD             R0, PC, R0; "ALCcontext_IncRef"
1BF378:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BF37C:  BL              j_al_print
1BF380:  LDR             R0, =(unk_3827A0 - 0x1BF38C)
1BF384:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BF388:  BL              j_LeaveCriticalSection
1BF38C:  CMP             R4, #0
1BF390:  BEQ             loc_1BF3A8
1BF394:  MOV             R0, R4
1BF398:  LDR             R5, [R4,#0xFC]
1BF39C:  BL              j_ALCcontext_DecRef
1BF3A0:  MOV             R0, R5
1BF3A4:  POP             {R4,R5,R11,PC}
1BF3A8:  LDR             R0, =(byte_382798 - 0x1BF3B4)
1BF3AC:  LDRB            R0, [PC,R0]; byte_382798
1BF3B0:  CMP             R0, #0
1BF3B4:  BEQ             loc_1BF3C0
1BF3B8:  MOV             R0, #5; sig
1BF3BC:  BL              raise
1BF3C0:  LDR             R0, =(dword_38283C - 0x1BF3D4)
1BF3C4:  MOVW            R1, #0xA002
1BF3C8:  MOV             R5, #0
1BF3CC:  STR             R1, [PC,R0]; dword_38283C
1BF3D0:  MOV             R0, R5
1BF3D4:  POP             {R4,R5,R11,PC}
