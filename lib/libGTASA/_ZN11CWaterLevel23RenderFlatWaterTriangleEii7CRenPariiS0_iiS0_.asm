; =========================================================
; Game Engine Function: _ZN11CWaterLevel23RenderFlatWaterTriangleEii7CRenPariiS0_iiS0_
; Address            : 0x599698 - 0x599748
; =========================================================

599698:  PUSH            {R4-R7,LR}
59969A:  ADD             R7, SP, #0xC
59969C:  PUSH.W          {R8-R11}
5996A0:  SUB             SP, SP, #0x3C
5996A2:  MOV             R12, R2
5996A4:  MOV             R2, R1
5996A6:  MOV             R1, R0
5996A8:  LDR             R0, [R7,#arg_8]
5996AA:  LDRD.W          LR, R8, [R7,#arg_28]
5996AE:  LDRD.W          R6, R4, [R7,#arg_10]
5996B2:  SUB.W           R11, R0, R1
5996B6:  LDRD.W          R9, R10, [R7,#arg_20]
5996BA:  CMP.W           R11, #0xA9
5996BE:  BLT             loc_599704
5996C0:  LDR             R5, =(bSplitBigPolys_ptr - 0x5996C6)
5996C2:  ADD             R5, PC; bSplitBigPolys_ptr
5996C4:  LDR             R5, [R5]; bSplitBigPolys
5996C6:  LDRB            R5, [R5]
5996C8:  CBZ             R5, loc_599704
5996CA:  ADD             R5, SP, #0x58+var_34
5996CC:  STR.W           R8, [SP,#0x58+var_28]
5996D0:  STM.W           R5, {R9,R10,LR}
5996D4:  STRD.W          R6, R4, [SP,#0x58+var_44]
5996D8:  STR             R0, [SP,#0x58+var_4C]
5996DA:  ADD             R0, R1
5996DC:  STR             R3, [SP,#0x58+var_58]
5996DE:  LDR             R3, [R7,#arg_30]
5996E0:  ADD.W           R0, R0, R0,LSR#31
5996E4:  STR             R3, [SP,#0x58+var_24]
5996E6:  LDR             R3, [R7,#arg_18]
5996E8:  ASRS            R0, R0, #1
5996EA:  STR             R3, [SP,#0x58+var_3C]
5996EC:  LDR             R3, [R7,#arg_0]
5996EE:  STR             R3, [SP,#0x58+var_54]
5996F0:  LDR             R3, [R7,#arg_34]
5996F2:  STR             R3, [SP,#0x58+var_20]
5996F4:  LDR             R3, [R7,#arg_1C]
5996F6:  STR             R3, [SP,#0x58+var_38]
5996F8:  LDR             R3, [R7,#arg_4]
5996FA:  STR             R3, [SP,#0x58+var_50]
5996FC:  MOV             R3, R12
5996FE:  BLX             j__ZN11CWaterLevel28SplitWaterTriangleAlongXLineEiii7CRenPariiS0_iiS0_; CWaterLevel::SplitWaterTriangleAlongXLine(int,int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
599702:  B               loc_599740
599704:  LDR.W           R11, [R7,#arg_C]
599708:  MOVS            R5, #0
59970A:  STR             R5, [SP,#0x58+var_20]
59970C:  ADD             R5, SP, #0x58+var_38
59970E:  STR.W           R8, [SP,#0x58+var_2C]
599712:  STM.W           R5, {R9,R10,LR}
599716:  STRD.W          R6, R4, [SP,#0x58+var_48]
59971A:  STRD.W          R0, R11, [SP,#0x58+var_50]
59971E:  LDR             R0, [R7,#arg_30]
599720:  STR             R0, [SP,#0x58+var_28]
599722:  LDR             R0, [R7,#arg_18]
599724:  STR             R0, [SP,#0x58+var_40]
599726:  LDR             R0, [R7,#arg_0]
599728:  STR             R0, [SP,#0x58+var_58]
59972A:  LDR             R0, [R7,#arg_34]
59972C:  STR             R0, [SP,#0x58+var_24]
59972E:  LDR             R0, [R7,#arg_1C]
599730:  STR             R0, [SP,#0x58+var_3C]
599732:  LDR             R0, [R7,#arg_4]
599734:  STR             R0, [SP,#0x58+var_54]
599736:  MOV             R0, R1
599738:  MOV             R1, R2
59973A:  MOV             R2, R12
59973C:  BLX             j__ZN11CWaterLevel32RenderFlatWaterTriangle_OneLayerEii7CRenPariiS0_iiS0_i; CWaterLevel::RenderFlatWaterTriangle_OneLayer(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar,int)
599740:  ADD             SP, SP, #0x3C ; '<'
599742:  POP.W           {R8-R11}
599746:  POP             {R4-R7,PC}
