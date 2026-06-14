; =========================================================
; Game Engine Function: _ZN17CScriptsForBrains17AddNewScriptBrainEsstaaf
; Address            : 0x32F616 - 0x32F690
; =========================================================

32F616:  PUSH            {R4-R7,LR}
32F618:  ADD             R7, SP, #0xC
32F61A:  PUSH.W          {R8}
32F61E:  LDRD.W          R12, LR, [R7,#arg_0]
32F622:  MOVS            R4, #0
32F624:  VLDR            S0, [R7,#arg_8]
32F628:  MOVW            R8, #0xFFFF
32F62C:  MOVS            R6, #0
32F62E:  ADD.W           R4, R4, R4,LSL#2
32F632:  LDRH.W          R5, [R0,R4,LSL#2]
32F636:  MOVS            R4, #0
32F638:  CMP             R5, R8
32F63A:  IT NE
32F63C:  MOVNE           R4, #1
32F63E:  ADD             R6, R4
32F640:  UXTB            R4, R6
32F642:  CMP             R4, #0x45 ; 'E'
32F644:  BHI             loc_32F64A
32F646:  CMP             R5, R8
32F648:  BNE             loc_32F62E
32F64A:  MOVW            R6, #0xFFFF
32F64E:  CMP             R5, R6
32F650:  BEQ             loc_32F658
32F652:  POP.W           {R8}
32F656:  POP             {R4-R7,PC}
32F658:  VCMPE.F32       S0, #0.0
32F65C:  ADD.W           R4, R4, R4,LSL#2
32F660:  VMRS            APSR_nzcv, FPSCR
32F664:  VMOV.F32        S2, #5.0
32F668:  IT LE
32F66A:  VMOVLE.F32      S0, S2
32F66E:  STRH.W          R1, [R0,R4,LSL#2]
32F672:  ADD.W           R0, R0, R4,LSL#2
32F676:  MOVS            R1, #1
32F678:  STRH            R2, [R0,#0xC]
32F67A:  STRH            R3, [R0,#0xE]
32F67C:  STRB.W          LR, [R0,#3]
32F680:  STRB.W          R12, [R0,#2]
32F684:  STRB            R1, [R0,#4]
32F686:  VSTR            S0, [R0,#8]
32F68A:  POP.W           {R8}
32F68E:  POP             {R4-R7,PC}
