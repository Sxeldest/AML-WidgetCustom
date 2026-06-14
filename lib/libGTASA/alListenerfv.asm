; =========================================================
; Game Engine Function: alListenerfv
; Address            : 0x25547C - 0x255658
; =========================================================

25547C:  PUSH            {R4-R7,LR}
25547E:  ADD             R7, SP, #0xC
255480:  PUSH.W          {R11}
255484:  MOV             R5, R1
255486:  MOV             R6, R0
255488:  CBZ             R5, loc_2554D2
25548A:  MOVW            R0, #0x1009
25548E:  CMP             R6, R0
255490:  BGT             loc_2554B2
255492:  MOVW            R0, #0x1004
255496:  CMP             R6, R0
255498:  ITT NE
25549A:  MOVWNE          R0, #0x1006
25549E:  CMPNE           R6, R0
2554A0:  BNE             loc_2554D2
2554A2:  LDM.W           R5, {R1-R3}
2554A6:  MOV             R0, R6
2554A8:  POP.W           {R11}
2554AC:  POP.W           {R4-R7,LR}
2554B0:  B               alListener3f
2554B2:  MOVS            R0, #0x20004
2554B8:  CMP             R6, R0
2554BA:  ITT NE
2554BC:  MOVWNE          R0, #0x100A
2554C0:  CMPNE           R6, R0
2554C2:  BNE             loc_2554D2
2554C4:  LDR             R1, [R5]
2554C6:  MOV             R0, R6
2554C8:  POP.W           {R11}
2554CC:  POP.W           {R4-R7,LR}
2554D0:  B               alListenerf
2554D2:  BLX             j_GetContextRef
2554D6:  MOV             R4, R0
2554D8:  CMP             R4, #0
2554DA:  BEQ             loc_2555A0
2554DC:  CMP             R5, #0
2554DE:  BEQ             loc_2555A6
2554E0:  MOVW            R0, #0x100F
2554E4:  CMP             R6, R0
2554E6:  BNE             loc_2555DC
2554E8:  VLDR            S0, [R5]
2554EC:  VABS.F32        S2, S0
2554F0:  VLDR            S0, =+Inf
2554F4:  VCMP.F32        S2, S0
2554F8:  VMRS            APSR_nzcv, FPSCR
2554FC:  BEQ.W           loc_255610
255500:  VLDR            S2, [R5,#4]
255504:  VABS.F32        S2, S2
255508:  VCMP.F32        S2, S0
25550C:  VMRS            APSR_nzcv, FPSCR
255510:  BEQ             loc_255610
255512:  VLDR            S2, [R5,#8]
255516:  VABS.F32        S2, S2
25551A:  VCMP.F32        S2, S0
25551E:  VMRS            APSR_nzcv, FPSCR
255522:  BEQ             loc_255610
255524:  VLDR            S2, [R5,#0xC]
255528:  VABS.F32        S2, S2
25552C:  VCMP.F32        S2, S0
255530:  VMRS            APSR_nzcv, FPSCR
255534:  BEQ             loc_255610
255536:  VLDR            S2, [R5,#0x10]
25553A:  VABS.F32        S2, S2
25553E:  VCMP.F32        S2, S0
255542:  VMRS            APSR_nzcv, FPSCR
255546:  BEQ             loc_255610
255548:  VLDR            S2, [R5,#0x14]
25554C:  VABS.F32        S2, S2
255550:  VCMP.F32        S2, S0
255554:  VMRS            APSR_nzcv, FPSCR
255558:  BEQ             loc_255610
25555A:  LDR.W           R0, [R4,#0x88]
25555E:  MOV             R6, #0x161AC
255566:  LDR             R1, [R0,R6]
255568:  LDR             R1, [R1,#0x2C]
25556A:  BLX             R1
25556C:  LDR             R0, [R4,#4]
25556E:  LDR             R1, [R5]
255570:  STR             R1, [R0,#0x18]
255572:  LDR             R0, [R4,#4]
255574:  LDR             R1, [R5,#4]
255576:  STR             R1, [R0,#0x1C]
255578:  LDR             R0, [R4,#4]
25557A:  LDR             R1, [R5,#8]
25557C:  STR             R1, [R0,#0x20]
25557E:  LDR             R0, [R4,#4]
255580:  LDR             R1, [R5,#0xC]
255582:  STR             R1, [R0,#0x24]
255584:  LDR             R0, [R4,#4]
255586:  LDR             R1, [R5,#0x10]
255588:  STR             R1, [R0,#0x28]
25558A:  LDR             R0, [R4,#4]
25558C:  LDR             R1, [R5,#0x14]
25558E:  STR             R1, [R0,#0x2C]
255590:  MOVS            R1, #1
255592:  LDR.W           R0, [R4,#0x88]
255596:  STR             R1, [R4,#0x54]
255598:  LDR             R1, [R0,R6]
25559A:  LDR             R1, [R1,#0x30]
25559C:  BLX             R1
25559E:  B               loc_25564A
2555A0:  POP.W           {R11}
2555A4:  POP             {R4-R7,PC}
2555A6:  LDR             R0, =(TrapALError_ptr - 0x2555AC)
2555A8:  ADD             R0, PC; TrapALError_ptr
2555AA:  LDR             R0, [R0]; TrapALError
2555AC:  LDRB            R0, [R0]
2555AE:  CMP             R0, #0
2555B0:  ITT NE
2555B2:  MOVNE           R0, #5; sig
2555B4:  BLXNE           raise
2555B8:  LDREX.W         R0, [R4,#0x50]
2555BC:  CMP             R0, #0
2555BE:  BNE             loc_255642
2555C0:  ADD.W           R0, R4, #0x50 ; 'P'
2555C4:  MOVW            R1, #0xA003
2555C8:  DMB.W           ISH
2555CC:  STREX.W         R2, R1, [R0]
2555D0:  CBZ             R2, loc_255646
2555D2:  LDREX.W         R2, [R0]
2555D6:  CMP             R2, #0
2555D8:  BEQ             loc_2555CC
2555DA:  B               loc_255642
2555DC:  LDR             R0, =(TrapALError_ptr - 0x2555E2)
2555DE:  ADD             R0, PC; TrapALError_ptr
2555E0:  LDR             R0, [R0]; TrapALError
2555E2:  LDRB            R0, [R0]
2555E4:  CMP             R0, #0
2555E6:  ITT NE
2555E8:  MOVNE           R0, #5; sig
2555EA:  BLXNE           raise
2555EE:  LDREX.W         R0, [R4,#0x50]
2555F2:  CBNZ            R0, loc_255642
2555F4:  ADD.W           R0, R4, #0x50 ; 'P'
2555F8:  MOVW            R1, #0xA002
2555FC:  DMB.W           ISH
255600:  STREX.W         R2, R1, [R0]
255604:  CBZ             R2, loc_255646
255606:  LDREX.W         R2, [R0]
25560A:  CMP             R2, #0
25560C:  BEQ             loc_255600
25560E:  B               loc_255642
255610:  LDR             R0, =(TrapALError_ptr - 0x255616)
255612:  ADD             R0, PC; TrapALError_ptr
255614:  LDR             R0, [R0]; TrapALError
255616:  LDRB            R0, [R0]
255618:  CMP             R0, #0
25561A:  ITT NE
25561C:  MOVNE           R0, #5; sig
25561E:  BLXNE           raise
255622:  LDREX.W         R0, [R4,#0x50]
255626:  CBNZ            R0, loc_255642
255628:  ADD.W           R0, R4, #0x50 ; 'P'
25562C:  MOVW            R1, #0xA003
255630:  DMB.W           ISH
255634:  STREX.W         R2, R1, [R0]
255638:  CBZ             R2, loc_255646
25563A:  LDREX.W         R2, [R0]
25563E:  CMP             R2, #0
255640:  BEQ             loc_255634
255642:  CLREX.W
255646:  DMB.W           ISH
25564A:  MOV             R0, R4
25564C:  POP.W           {R11}
255650:  POP.W           {R4-R7,LR}
255654:  B.W             ALCcontext_DecRef
