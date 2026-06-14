; =========================================================
; Game Engine Function: sub_1164B8
; Address            : 0x1164B8 - 0x11663C
; =========================================================

1164B8:  PUSH            {R4-R7,LR}
1164BA:  ADD             R7, SP, #0xC
1164BC:  PUSH.W          {R8,R9,R11}
1164C0:  VPUSH           {D8-D10}
1164C4:  SUB             SP, SP, #0x50
1164C6:  MOV             R4, R0
1164C8:  LDR             R0, [R0]
1164CA:  MOV             R8, R2
1164CC:  MOV             R5, R1
1164CE:  LDR             R1, [R7,#arg_0]
1164D0:  MOV             R9, R3
1164D2:  LDR             R2, [R0,#0x60]
1164D4:  MOV             R0, R4
1164D6:  STR             R1, [SP,#0x80+var_34]
1164D8:  MOV             R1, #0x3F00A287
1164E0:  BLX             R2
1164E2:  MOV             R6, R0
1164E4:  LDR             R0, [R4]
1164E6:  MOV             R1, #0x3F8CCCCD
1164EE:  LDR             R2, [R0,#0x60]
1164F0:  MOV             R0, R4
1164F2:  BLX             R2
1164F4:  MOV             R1, R0
1164F6:  MOV             R0, R6
1164F8:  BL              sub_163C58
1164FC:  VMOV            S16, R5
116500:  ADD             R5, SP, #0x80+var_68
116502:  VMOV.I32        Q9, #0
116506:  LDR             R2, =(a0f_0 - 0x116514); "%.0f" ...
116508:  VCVT.F64.F32    D16, S16
11650C:  MOV             R0, R5
11650E:  ADD             R6, SP, #0x80+var_48
116510:  ADD             R2, PC; "%.0f"
116512:  VST1.64         {D18-D19}, [R0]!
116516:  VST1.64         {D18-D19}, [R0]
11651A:  MOV             R0, R6
11651C:  VST1.64         {D18-D19}, [R6]
116520:  VSTR            D16, [SP,#0x80+var_80]
116524:  BL              sub_116828
116528:  MOV             R0, R6
11652A:  MOV             R1, R5
11652C:  BL              sub_163C40
116530:  LDR             R0, [R4]
116532:  MOV             R1, R4
116534:  LDR             R2, [R0,#0x5C]
116536:  ADD             R0, SP, #0x80+var_70
116538:  BLX             R2
11653A:  LDR             R0, [R4]
11653C:  VLDR            S18, [SP,#0x80+var_70]
116540:  LDR             R1, [R0,#0x18]
116542:  MOV             R0, R4
116544:  BLX             R1
116546:  MOV             R6, R0
116548:  LDR             R0, [R4]
11654A:  MOV             R1, R4
11654C:  LDR             R2, [R0,#0x5C]
11654E:  ADD             R0, SP, #0x80+var_78
116550:  BLX             R2
116552:  LDR             R0, [R4]
116554:  VLDR            S20, [SP,#0x80+var_74]
116558:  LDR             R1, [R0,#0x18]
11655A:  MOV             R0, R4
11655C:  BLX             R1
11655E:  VLDR            S0, =398.0
116562:  VMOV            S2, R6
116566:  VMOV            S4, R9
11656A:  MOV             R2, R5
11656C:  VMOV            S6, R0
116570:  VMLA.F32        S18, S2, S0
116574:  VMLA.F32        S20, S4, S6
116578:  VMOV            R0, S18
11657C:  VMOV            R1, S20
116580:  BL              sub_163D64
116584:  LDR             R0, [R4]
116586:  MOV             R1, R4
116588:  LDR             R2, [R0,#0x5C]
11658A:  ADD             R0, SP, #0x80+var_70
11658C:  BLX             R2
11658E:  LDR             R0, [R4]
116590:  VLDR            S18, [SP,#0x80+var_70]
116594:  LDR             R1, [R0,#0x18]
116596:  MOV             R0, R4
116598:  BLX             R1
11659A:  MOV             R5, R0
11659C:  LDR             R0, [R4]
11659E:  MOV             R1, R4
1165A0:  LDR             R2, [R0,#0x5C]
1165A2:  ADD             R0, SP, #0x80+var_78
1165A4:  BLX             R2
1165A6:  LDR             R0, [R4]
1165A8:  VLDR            S20, [SP,#0x80+var_74]
1165AC:  LDR             R1, [R0,#0x18]
1165AE:  MOV             R0, R4
1165B0:  BLX             R1
1165B2:  MOV             R6, R0
1165B4:  LDR             R0, [R4]
1165B6:  LDR             R1, [R0,#0x18]
1165B8:  MOV             R0, R4
1165BA:  BLX             R1
1165BC:  VLDR            S0, =234.0
1165C0:  VMOV            S2, R0
1165C4:  VLDR            S4, =0.01
1165C8:  VMOV            S6, R8
1165CC:  VMUL.F32        S0, S2, S0
1165D0:  VLDR            S2, =100.0
1165D4:  VMOV            S8, R6
1165D8:  VCMP.F32        S16, S2
1165DC:  VMRS            APSR_nzcv, FPSCR
1165E0:  IT GT
1165E2:  VMOVGT.F32      S16, S2
1165E6:  VLDR            S2, =134.0
1165EA:  VMLA.F32        S20, S6, S8
1165EE:  VMUL.F32        S0, S0, S4
1165F2:  VMOV            S4, R5
1165F6:  MOV             R5, R4
1165F8:  LDR.W           R0, [R5],#0x2C
1165FC:  VMLA.F32        S18, S4, S2
116600:  LDR             R1, [R0,#0x18]
116602:  MOV             R0, R4
116604:  VMUL.F32        S16, S16, S0
116608:  BLX             R1
11660A:  VMOV            R1, S18
11660E:  VMOV            R2, S20
116612:  VMOV            R3, S16
116616:  VMOV.F32        S0, #8.0
11661A:  VMOV            S2, R0
11661E:  ADD             R0, SP, #0x80+var_34
116620:  STR             R0, [SP,#0x80+var_80+4]
116622:  MOV             R0, R5
116624:  VMUL.F32        S0, S2, S0
116628:  VSTR            S0, [SP,#0x80+var_80]
11662C:  BL              sub_163176
116630:  ADD             SP, SP, #0x50 ; 'P'
116632:  VPOP            {D8-D10}
116636:  POP.W           {R8,R9,R11}
11663A:  POP             {R4-R7,PC}
