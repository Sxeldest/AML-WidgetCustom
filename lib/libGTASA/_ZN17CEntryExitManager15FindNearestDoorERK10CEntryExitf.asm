; =========================================================
; Game Engine Function: _ZN17CEntryExitManager15FindNearestDoorERK10CEntryExitf
; Address            : 0x306B7C - 0x306C5A
; =========================================================

306B7C:  PUSH            {R4-R7,LR}
306B7E:  ADD             R7, SP, #0xC
306B80:  PUSH.W          {R11}
306B84:  SUB             SP, SP, #0x1C0
306B86:  VLDR            S0, [R0,#8]
306B8A:  VMOV.F32        S8, #0.5
306B8E:  VLDR            S4, [R0,#0x10]
306B92:  ADD             R6, SP, #0x1D0+var_1A0
306B94:  VLDR            S2, [R0,#0xC]
306B98:  MOV             R5, R1
306B9A:  VADD.F32        S0, S0, S4
306B9E:  VLDR            S6, [R0,#0x14]
306BA2:  MOVS            R4, #0
306BA4:  MOVS            R1, #dword_64
306BA6:  ADD.W           R3, SP, #0x1D0+var_1A2; bool
306BAA:  MOVS            R2, #0; float
306BAC:  VMUL.F32        S0, S0, S8
306BB0:  VSTR            S0, [SP,#0x1D0+var_1B0]
306BB4:  VADD.F32        S0, S2, S6
306BB8:  VMUL.F32        S0, S0, S8
306BBC:  VSTR            S0, [SP,#0x1D0+var_1AC]
306BC0:  LDR             R0, [R0,#0x18]
306BC2:  STR             R0, [SP,#0x1D0+var_1AC+4]
306BC4:  MOVS            R0, #1
306BC6:  STRD.W          R1, R6, [SP,#0x1D0+var_1D0]; __int16 *
306BCA:  MOV             R1, R5; CVector *
306BCC:  STRD.W          R4, R4, [SP,#0x1D0+var_1C8]; CEntity **
306BD0:  STRD.W          R4, R0, [SP,#0x1D0+var_1C0]; bool
306BD4:  ADD             R0, SP, #0x1D0+var_1B0; this
306BD6:  STR             R4, [SP,#0x1D0+var_1B8]; bool
306BD8:  BLX             j__ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsInRange(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
306BDC:  LDRH.W          R0, [SP,#0x1D0+var_1A2]
306BE0:  VMOV            S2, R5
306BE4:  VLDR            D16, [SP,#0x1D0+var_1AC]
306BE8:  MOVW            R1, #0xFFFF
306BEC:  VLDR            S0, [SP,#0x1D0+var_1B0]
306BF0:  B               loc_306C3A
306BF2:  STRH.W          R0, [SP,#0x1D0+var_1A2]
306BF6:  LDR             R3, [R2,#0x14]
306BF8:  ADD.W           R5, R3, #0x30 ; '0'
306BFC:  CMP             R3, #0
306BFE:  IT EQ
306C00:  ADDEQ           R5, R2, #4
306C02:  VLDR            S4, [R5]
306C06:  VLDR            D17, [R5,#4]
306C0A:  VSUB.F32        S4, S0, S4
306C0E:  VSUB.F32        D17, D16, D17
306C12:  VMUL.F32        D3, D17, D17
306C16:  VMUL.F32        S4, S4, S4
306C1A:  VADD.F32        S4, S4, S6
306C1E:  VADD.F32        S4, S4, S7
306C22:  VSQRT.F32       S4, S4
306C26:  VCMPE.F32       S4, S2
306C2A:  VMRS            APSR_nzcv, FPSCR
306C2E:  VMIN.F32        D3, D2, D1
306C32:  VMOV            D1, D3
306C36:  IT LT
306C38:  MOVLT           R4, R2
306C3A:  TST             R0, R1
306C3C:  BEQ             loc_306C50
306C3E:  SUBS            R0, #1
306C40:  SXTH            R2, R0
306C42:  LDR.W           R2, [R6,R2,LSL#2]
306C46:  LDRB.W          R3, [R2,#0x44]
306C4A:  LSLS            R3, R3, #0x1A
306C4C:  BPL             loc_306C3A
306C4E:  B               loc_306BF2
306C50:  MOV             R0, R4
306C52:  ADD             SP, SP, #0x1C0
306C54:  POP.W           {R11}
306C58:  POP             {R4-R7,PC}
