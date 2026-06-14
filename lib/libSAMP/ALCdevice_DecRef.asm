; =========================================================
; Game Engine Function: ALCdevice_DecRef
; Address            : 0x1BB180 - 0x1BB32C
; =========================================================

1BB180:  PUSH            {R4,R5,R11,LR}
1BB184:  ADD             R11, SP, #8
1BB188:  MOV             R4, R0
1BB18C:  DMB             ISH
1BB190:  LDREX           R0, [R4]
1BB194:  SUB             R5, R0, #1
1BB198:  STREX           R0, R5, [R4]
1BB19C:  CMP             R0, #0
1BB1A0:  BNE             loc_1BB190
1BB1A4:  LDR             R0, =(LogLevel_ptr - 0x1BB1B4)
1BB1A8:  DMB             ISH
1BB1AC:  LDR             R0, [PC,R0]; LogLevel
1BB1B0:  LDR             R0, [R0]
1BB1B4:  CMP             R0, #4
1BB1B8:  BCC             loc_1BB1D4
1BB1BC:  LDR             R0, =(aPDecreasingRef - 0x1BB1D0); "%p decreasing refcount to %u\n" ...
1BB1C0:  MOV             R2, R4
1BB1C4:  MOV             R3, R5
1BB1C8:  ADD             R1, PC, R0; "%p decreasing refcount to %u\n"
1BB1CC:  ADR             R0, aAlcdeviceDecre_0; "ALCdevice_DecRef"
1BB1D0:  BL              j_al_print
1BB1D4:  CMP             R5, #0
1BB1D8:  POPNE           {R4,R5,R11,PC}
1BB1DC:  LDR             R0, =(LogLevel_ptr - 0x1BB1E8)
1BB1E0:  LDR             R0, [PC,R0]; LogLevel
1BB1E4:  LDR             R0, [R0]
1BB1E8:  CMP             R0, #3
1BB1EC:  BCC             loc_1BB200
1BB1F0:  ADR             R0, aFreedevice; "FreeDevice"
1BB1F4:  ADR             R1, aP; "%p\n"
1BB1F8:  MOV             R2, R4
1BB1FC:  BL              j_al_print
1BB200:  MOVW            R0, #:lower16:(aZnkst6Ndk14Fs1_14+0x19); "ystem4path5beginEv"
1BB204:  MOV             R5, R4
1BB208:  MOVT            R0, #:upper16:(aZnkst6Ndk14Fs1_14+0x19); "ystem4path5beginEv"
1BB20C:  LDR             R0, [R5,R0]!
1BB210:  CMP             R0, #0
1BB214:  BEQ             loc_1BB230
1BB218:  LDR             R0, [R0,#0xC4]
1BB21C:  LDR             R1, [R0]
1BB220:  BLX             R1
1BB224:  LDR             R0, [R5]
1BB228:  MOV             R1, #0
1BB22C:  STR             R1, [R0,#0xC4]
1BB230:  LDR             R3, [R4,#0x40]
1BB234:  ADD             R5, R4, #0x3C ; '<'
1BB238:  CMP             R3, #1
1BB23C:  BLT             loc_1BB26C
1BB240:  LDR             R0, =(LogLevel_ptr - 0x1BB24C)
1BB244:  LDR             R0, [PC,R0]; LogLevel
1BB248:  LDR             R0, [R0]
1BB24C:  CMP             R0, #2
1BB250:  BCC             loc_1BB264
1BB254:  ADR             R0, aFreedevice; "FreeDevice"
1BB258:  ADR             R1, aPDeletingDBuff; "(%p) Deleting %d Buffer(s)\n"
1BB25C:  MOV             R2, R4
1BB260:  BL              j_al_print
1BB264:  MOV             R0, R4
1BB268:  BL              j_ReleaseALBuffers
1BB26C:  MOV             R0, R5
1BB270:  BL              j_ResetUIntMap
1BB274:  LDR             R3, [R4,#0x64]
1BB278:  ADD             R5, R4, #0x60 ; '`'
1BB27C:  CMP             R3, #1
1BB280:  BLT             loc_1BB2B0
1BB284:  LDR             R0, =(LogLevel_ptr - 0x1BB290)
1BB288:  LDR             R0, [PC,R0]; LogLevel
1BB28C:  LDR             R0, [R0]
1BB290:  CMP             R0, #2
1BB294:  BCC             loc_1BB2A8
1BB298:  ADR             R0, aFreedevice; "FreeDevice"
1BB29C:  ADR             R1, aPDeletingDEffe; "(%p) Deleting %d Effect(s)\n"
1BB2A0:  MOV             R2, R4
1BB2A4:  BL              j_al_print
1BB2A8:  MOV             R0, R4
1BB2AC:  BL              j_ReleaseALEffects
1BB2B0:  MOV             R0, R5
1BB2B4:  BL              j_ResetUIntMap
1BB2B8:  LDR             R3, [R4,#0x88]
1BB2BC:  ADD             R5, R4, #0x84
1BB2C0:  CMP             R3, #1
1BB2C4:  BLT             loc_1BB2F4
1BB2C8:  LDR             R0, =(LogLevel_ptr - 0x1BB2D4)
1BB2CC:  LDR             R0, [PC,R0]; LogLevel
1BB2D0:  LDR             R0, [R0]
1BB2D4:  CMP             R0, #2
1BB2D8:  BCC             loc_1BB2EC
1BB2DC:  ADR             R0, aFreedevice; "FreeDevice"
1BB2E0:  ADR             R1, aPDeletingDFilt; "(%p) Deleting %d Filter(s)\n"
1BB2E4:  MOV             R2, R4
1BB2E8:  BL              j_al_print
1BB2EC:  MOV             R0, R4
1BB2F0:  BL              j_ReleaseALFilters
1BB2F4:  MOV             R0, R5
1BB2F8:  BL              j_ResetUIntMap
1BB2FC:  LDR             R0, [R4,#0xAC]; ptr
1BB300:  BL              free
1BB304:  LDR             R0, [R4,#0x20]; ptr
1BB308:  MOV             R5, #0
1BB30C:  STR             R5, [R4,#0xAC]
1BB310:  BL              free
1BB314:  ADD             R0, R4, #8; mutex
1BB318:  STR             R5, [R4,#0x20]
1BB31C:  BL              j_DeleteCriticalSection
1BB320:  MOV             R0, R4; ptr
1BB324:  POP             {R4,R5,R11,LR}
1BB328:  B               free
