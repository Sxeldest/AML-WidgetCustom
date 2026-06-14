; =========================================================
; Game Engine Function: _ZN10CTimeCycle16FindTimeCycleBoxE7CVectorPP13CTimeCycleBoxPfbbS2_
; Address            : 0x4204BC - 0x42067A
; =========================================================

4204BC:  PUSH            {R4-R7,LR}
4204BE:  ADD             R7, SP, #0xC
4204C0:  PUSH.W          {R8}
4204C4:  LDR             R6, =(_ZN10CTimeCycle10m_NumBoxesE_ptr - 0x4204D0)
4204C6:  MOVS            R5, #0
4204C8:  LDR.W           R12, [R7,#arg_0]
4204CC:  ADD             R6, PC; _ZN10CTimeCycle10m_NumBoxesE_ptr
4204CE:  STR             R5, [R3]
4204D0:  LDR             R6, [R6]; CTimeCycle::m_NumBoxes ...
4204D2:  STR.W           R5, [R12]
4204D6:  LDR             R6, [R6]; CTimeCycle::m_NumBoxes
4204D8:  CMP             R6, #1
4204DA:  BLT.W           loc_420674
4204DE:  VLDR            S0, =0.0
4204E2:  VMOV            S6, R2
4204E6:  LDR             R6, =(_ZN10CTimeCycle8m_aBoxesE_ptr - 0x4204FA)
4204E8:  VMOV.F32        S8, #3.0
4204EC:  LDR             R2, =(_ZN10CTimeCycle10m_NumBoxesE_ptr - 0x4204FC)
4204EE:  VMOV.F32        S10, #1.0
4204F2:  VMOV.F32        S12, S0
4204F6:  ADD             R6, PC; _ZN10CTimeCycle8m_aBoxesE_ptr
4204F8:  ADD             R2, PC; _ZN10CTimeCycle10m_NumBoxesE_ptr
4204FA:  VMOV            S2, R0
4204FE:  LDR.W           LR, [R7,#arg_C]
420502:  VMOV            S4, R1
420506:  LDRD.W          R5, R4, [R7,#arg_4]
42050A:  MOVS            R1, #0
42050C:  LDR             R0, [R6]; CTimeCycle::m_aBoxes ...
42050E:  MOV.W           R8, #0x3F800000
420512:  LDR             R2, [R2]; CTimeCycle::m_NumBoxes ...
420514:  CMP             R0, #0
420516:  BEQ.W           loc_420668
42051A:  CMP             R5, #1
42051C:  ITT EQ
42051E:  LDRBEQ          R6, [R0,#0x1A]
420520:  CMPEQ           R6, #0x20 ; ' '
420522:  BEQ.W           loc_420668
420526:  CMP             R4, #1
420528:  BNE             loc_420536
42052A:  CMP             LR, R0
42052C:  BEQ.W           loc_420668
420530:  LDRH            R6, [R0,#0x18]
420532:  CBNZ            R6, loc_42053C
420534:  B               loc_420668
420536:  CMP             LR, R0
420538:  BEQ.W           loc_420668
42053C:  VLDR            S5, [R0]
420540:  VLDR            S14, [R0,#0x24]
420544:  VSUB.F32        S1, S5, S14
420548:  VCMPE.F32       S1, S2
42054C:  VMRS            APSR_nzcv, FPSCR
420550:  BGT.W           loc_420668
420554:  VLDR            S3, [R0,#4]
420558:  VSUB.F32        S1, S3, S14
42055C:  VCMPE.F32       S1, S4
420560:  VMRS            APSR_nzcv, FPSCR
420564:  BGT.W           loc_420668
420568:  VDIV.F32        S13, S14, S8
42056C:  VLDR            S1, [R0,#8]
420570:  VSUB.F32        S7, S1, S13
420574:  VCMPE.F32       S7, S6
420578:  VMRS            APSR_nzcv, FPSCR
42057C:  BGT             loc_420668
42057E:  VLDR            S9, [R0,#0xC]
420582:  VADD.F32        S7, S14, S9
420586:  VCMPE.F32       S7, S2
42058A:  VMRS            APSR_nzcv, FPSCR
42058E:  BLT             loc_420668
420590:  VLDR            S11, [R0,#0x10]
420594:  VADD.F32        S7, S14, S11
420598:  VCMPE.F32       S7, S4
42059C:  VMRS            APSR_nzcv, FPSCR
4205A0:  BLT             loc_420668
4205A2:  VLDR            S7, [R0,#0x14]
4205A6:  VADD.F32        S13, S13, S7
4205AA:  VCMPE.F32       S13, S6
4205AE:  VMRS            APSR_nzcv, FPSCR
4205B2:  BLT             loc_420668
4205B4:  VCMPE.F32       S9, S2
4205B8:  VMRS            APSR_nzcv, FPSCR
4205BC:  BGE             loc_4205C4
4205BE:  VSUB.F32        S9, S2, S9
4205C2:  B               loc_4205D6
4205C4:  VCMPE.F32       S5, S2
4205C8:  VMRS            APSR_nzcv, FPSCR
4205CC:  VMOV.F32        S9, S0
4205D0:  IT GT
4205D2:  VSUBGT.F32      S9, S5, S2
4205D6:  VCMPE.F32       S11, S4
4205DA:  VMRS            APSR_nzcv, FPSCR
4205DE:  BGE             loc_4205E6
4205E0:  VSUB.F32        S5, S4, S11
4205E4:  B               loc_4205F8
4205E6:  VCMPE.F32       S3, S4
4205EA:  VMRS            APSR_nzcv, FPSCR
4205EE:  VMOV.F32        S5, S0
4205F2:  IT GT
4205F4:  VSUBGT.F32      S5, S3, S4
4205F8:  VCMPE.F32       S7, S6
4205FC:  VMRS            APSR_nzcv, FPSCR
420600:  BGE             loc_420608
420602:  VSUB.F32        S3, S6, S7
420606:  B               loc_42061A
420608:  VCMPE.F32       S1, S6
42060C:  VMRS            APSR_nzcv, FPSCR
420610:  VMOV.F32        S3, S0
420614:  IT GT
420616:  VSUBGT.F32      S3, S1, S6
42061A:  VMUL.F32        S3, S3, S8
42061E:  VMUL.F32        S1, S5, S5
420622:  VMUL.F32        S5, S9, S9
420626:  VMUL.F32        S3, S3, S3
42062A:  VADD.F32        S1, S5, S1
42062E:  VADD.F32        S1, S1, S3
420632:  VSQRT.F32       S1, S1
420636:  VCMPE.F32       S1, #0.0
42063A:  VMRS            APSR_nzcv, FPSCR
42063E:  BLE             loc_42065E
420640:  VDIV.F32        S14, S1, S14
420644:  VSUB.F32        S14, S10, S14
420648:  VCMPE.F32       S14, S12
42064C:  VMRS            APSR_nzcv, FPSCR
420650:  ITTT GT
420652:  STRGT           R0, [R3]
420654:  VSTRGT          S14, [R12]
420658:  VMOVGT.F32      S12, S14
42065C:  B               loc_420668
42065E:  STR             R0, [R3]
420660:  VMOV.F32        S12, S10
420664:  STR.W           R8, [R12]
420668:  LDR             R6, [R2]; CTimeCycle::m_NumBoxes
42066A:  ADDS            R1, #1
42066C:  ADDS            R0, #0x28 ; '('
42066E:  CMP             R1, R6
420670:  BLT.W           loc_420514
420674:  POP.W           {R8}
420678:  POP             {R4-R7,PC}
