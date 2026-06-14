; =========================================================
; Game Engine Function: _ZN9CPhysical25DettachAutoAttachedEntityEv
; Address            : 0x407C80 - 0x407D20
; =========================================================

407C80:  PUSH            {R4,R5,R7,LR}
407C82:  ADD             R7, SP, #8
407C84:  MOV             R4, R0
407C86:  MOVS            R1, #0
407C88:  LDR             R0, [R4]
407C8A:  MOVS            R5, #0
407C8C:  LDR             R2, [R0,#0x14]
407C8E:  MOV             R0, R4
407C90:  BLX             R2
407C92:  LDR             R1, [R4,#0x44]
407C94:  STRB.W          R5, [R4,#0xBC]
407C98:  BIC.W           R0, R1, #0x2000000
407C9C:  TST.W           R1, #4
407CA0:  STR             R0, [R4,#0x44]
407CA2:  BNE             loc_407CD2
407CA4:  LDR.W           R1, [R4,#0x100]
407CA8:  ADD.W           R0, R4, #0x100
407CAC:  LDRB.W          R2, [R1,#0x3A]
407CB0:  AND.W           R2, R2, #7
407CB4:  CMP             R2, #2
407CB6:  BNE             loc_407CEC
407CB8:  VLDR            D16, [R1,#0x48]
407CBC:  LDR             R2, [R1,#0x50]
407CBE:  STR             R2, [R4,#0x50]
407CC0:  VSTR            D16, [R4,#0x48]
407CC4:  VLDR            D16, [R1,#0x54]
407CC8:  LDR             R1, [R1,#0x5C]
407CCA:  STR             R1, [R4,#0x5C]
407CCC:  VSTR            D16, [R4,#0x54]
407CD0:  B               loc_407CEC
407CD2:  STRD.W          R5, R5, [R4,#0x54]
407CD6:  ORR.W           R0, R0, #8
407CDA:  VLDR            D16, [R4,#0x54]
407CDE:  STR             R0, [R4,#0x44]
407CE0:  ADD.W           R0, R4, #0x100
407CE4:  STR             R5, [R4,#0x5C]
407CE6:  STR             R5, [R4,#0x50]
407CE8:  VSTR            D16, [R4,#0x48]
407CEC:  MOVS            R1, #0
407CEE:  VMOV.I32        Q8, #0
407CF2:  STR.W           R1, [R4,#0x12C]
407CF6:  ADD.W           R2, R4, #0x11C
407CFA:  STR             R1, [R0]
407CFC:  LDRB.W          R0, [R4,#0x3A]
407D00:  VST1.32         {D16-D17}, [R2]
407D04:  AND.W           R0, R0, #7
407D08:  STRD.W          R1, R1, [R4,#0x104]
407D0C:  CMP             R0, #4
407D0E:  STR.W           R1, [R4,#0x10C]
407D12:  ITTT EQ
407D14:  LDREQ.W         R0, [R4,#0x164]
407D18:  LDREQ           R0, [R0,#0xC]
407D1A:  STREQ.W         R0, [R4,#0xA0]
407D1E:  POP             {R4,R5,R7,PC}
