; =========================================================
; Game Engine Function: png_set_background
; Address            : 0x1F9528 - 0x1F95F0
; =========================================================

1F9528:  PUSH            {R4-R7,LR}
1F952A:  ADD             R7, SP, #0xC
1F952C:  PUSH.W          {R8}
1F9530:  SUB             SP, SP, #8
1F9532:  MOV             R8, R3
1F9534:  MOV             R6, R2
1F9536:  LDRD.W          R2, R3, [R7,#arg_0]
1F953A:  MOV             R4, R0
1F953C:  ADR             R0, aPngSetBackgrou_1; "png_set_background"
1F953E:  STR             R0, [SP,#0x18+var_18]
1F9540:  MOV             R0, R4
1F9542:  MOV             R5, R1
1F9544:  BLX             j_png_fixed
1F9548:  CMP             R4, #0
1F954A:  BEQ             loc_1F95E8
1F954C:  LDR.W           R1, [R4,#0x138]
1F9550:  TST.W           R1, #0x40
1F9554:  BNE             loc_1F95B2
1F9556:  ORR.W           R1, R1, #0x4000
1F955A:  CMP             R5, #0
1F955C:  STR.W           R1, [R4,#0x138]
1F9560:  BEQ             loc_1F95E8
1F9562:  CBZ             R6, loc_1F95C6
1F9564:  BIC.W           R1, R1, #0x2000
1F9568:  STR.W           R1, [R4,#0x138]
1F956C:  LDR.W           R1, [R4,#0x13C]
1F9570:  MOVW            R2, #0xFF7F
1F9574:  MOVW            R12, #:lower16:stru_40078.st_size
1F9578:  MOVT            R2, #0xFF7B
1F957C:  ANDS            R1, R2
1F957E:  MOVT            R12, #:upper16:stru_40078.st_size
1F9582:  ORR.W           R3, R1, R12
1F9586:  STR.W           R3, [R4,#0x13C]
1F958A:  LDRH            R2, [R5,#8]
1F958C:  CMP.W           R8, #0
1F9590:  VLD1.16         {D16}, [R5]
1F9594:  STRH.W          R2, [R4,#0x228]
1F9598:  STR.W           R0, [R4,#0x21C]
1F959C:  ADD.W           R0, R4, #0x220
1F95A0:  STRB.W          R6, [R4,#0x21A]
1F95A4:  VST1.16         {D16}, [R0]
1F95A8:  BEQ             loc_1F95DA
1F95AA:  ADD.W           R0, R12, #0x100
1F95AE:  ORRS            R0, R1
1F95B0:  B               loc_1F95E4
1F95B2:  LDR             R1, =(aInvalidAfterPn - 0x1F95BA); "invalid after png_start_read_image or p"...
1F95B4:  MOV             R0, R4
1F95B6:  ADD             R1, PC; "invalid after png_start_read_image or p"...
1F95B8:  ADD             SP, SP, #8
1F95BA:  POP.W           {R8}
1F95BE:  POP.W           {R4-R7,LR}
1F95C2:  B.W             j_j_png_app_error
1F95C6:  LDR             R1, =(aApplicationMus - 0x1F95CE); "Application must supply a known backgro"...
1F95C8:  MOV             R0, R4
1F95CA:  ADD             R1, PC; "Application must supply a known backgro"...
1F95CC:  ADD             SP, SP, #8
1F95CE:  POP.W           {R8}
1F95D2:  POP.W           {R4-R7,LR}
1F95D6:  B.W             j_j_png_warning
1F95DA:  MOV             R0, #0xFF7FFEFF
1F95E2:  ANDS            R0, R3
1F95E4:  STR.W           R0, [R4,#0x13C]
1F95E8:  ADD             SP, SP, #8
1F95EA:  POP.W           {R8}
1F95EE:  POP             {R4-R7,PC}
