; =========================================================
; Game Engine Function: sub_264300
; Address            : 0x264300 - 0x2643F6
; =========================================================

264300:  PUSH            {R4,R6,R7,LR}
264302:  ADD             R7, SP, #8
264304:  VLDR            S0, [R3]
264308:  MOV             R4, R1
26430A:  CMP             R2, #2
26430C:  BEQ             loc_264368
26430E:  CMP             R2, #1
264310:  BNE             loc_2643BA
264312:  VCMPE.F32       S0, #0.0
264316:  VMRS            APSR_nzcv, FPSCR
26431A:  BLT             loc_264330
26431C:  VLDR            S2, =8000.0
264320:  VCMPE.F32       S0, S2
264324:  VMRS            APSR_nzcv, FPSCR
264328:  ITT LE
26432A:  VSTRLE          S0, [R0,#0x84]
26432E:  POPLE           {R4,R6,R7,PC}
264330:  LDR             R0, =(TrapALError_ptr - 0x264336)
264332:  ADD             R0, PC; TrapALError_ptr
264334:  LDR             R0, [R0]; TrapALError
264336:  LDRB            R0, [R0]
264338:  CMP             R0, #0
26433A:  ITT NE
26433C:  MOVNE           R0, #5; sig
26433E:  BLXNE           raise
264342:  LDREX.W         R0, [R4,#0x50]
264346:  CMP             R0, #0
264348:  BNE             loc_2643EC
26434A:  ADD.W           R0, R4, #0x50 ; 'P'
26434E:  MOVW            R1, #0xA003
264352:  DMB.W           ISH
264356:  STREX.W         R2, R1, [R0]
26435A:  CMP             R2, #0
26435C:  BEQ             loc_2643F0
26435E:  LDREX.W         R2, [R0]
264362:  CMP             R2, #0
264364:  BEQ             loc_264356
264366:  B               loc_2643EC
264368:  VCMPE.F32       S0, #0.0
26436C:  VMRS            APSR_nzcv, FPSCR
264370:  BLT             loc_264386
264372:  VLDR            S2, =24000.0
264376:  VCMPE.F32       S0, S2
26437A:  VMRS            APSR_nzcv, FPSCR
26437E:  ITT LE
264380:  VSTRLE          S0, [R0,#0x88]
264384:  POPLE           {R4,R6,R7,PC}
264386:  LDR             R0, =(TrapALError_ptr - 0x26438C)
264388:  ADD             R0, PC; TrapALError_ptr
26438A:  LDR             R0, [R0]; TrapALError
26438C:  LDRB            R0, [R0]
26438E:  CMP             R0, #0
264390:  ITT NE
264392:  MOVNE           R0, #5; sig
264394:  BLXNE           raise
264398:  LDREX.W         R0, [R4,#0x50]
26439C:  CBNZ            R0, loc_2643EC
26439E:  ADD.W           R0, R4, #0x50 ; 'P'
2643A2:  MOVW            R1, #0xA003
2643A6:  DMB.W           ISH
2643AA:  STREX.W         R2, R1, [R0]
2643AE:  CBZ             R2, loc_2643F0
2643B0:  LDREX.W         R2, [R0]
2643B4:  CMP             R2, #0
2643B6:  BEQ             loc_2643AA
2643B8:  B               loc_2643EC
2643BA:  LDR             R0, =(TrapALError_ptr - 0x2643C0)
2643BC:  ADD             R0, PC; TrapALError_ptr
2643BE:  LDR             R0, [R0]; TrapALError
2643C0:  LDRB            R0, [R0]
2643C2:  CMP             R0, #0
2643C4:  ITT NE
2643C6:  MOVNE           R0, #5; sig
2643C8:  BLXNE           raise
2643CC:  LDREX.W         R0, [R4,#0x50]
2643D0:  CBNZ            R0, loc_2643EC
2643D2:  ADD.W           R0, R4, #0x50 ; 'P'
2643D6:  MOVW            R1, #0xA002
2643DA:  DMB.W           ISH
2643DE:  STREX.W         R2, R1, [R0]
2643E2:  CBZ             R2, loc_2643F0
2643E4:  LDREX.W         R2, [R0]
2643E8:  CMP             R2, #0
2643EA:  BEQ             loc_2643DE
2643EC:  CLREX.W
2643F0:  DMB.W           ISH
2643F4:  POP             {R4,R6,R7,PC}
