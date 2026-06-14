; =========================================================
; Game Engine Function: _ZN19FurnitureSubGroup_c12AddFurnitureEtshhh
; Address            : 0x475CC4 - 0x475DA4
; =========================================================

475CC4:  PUSH            {R4-R7,LR}
475CC6:  ADD             R7, SP, #0xC
475CC8:  PUSH.W          {R8-R10}
475CCC:  LDR             R4, =(g_currFurnitureId_ptr - 0x475CD2)
475CCE:  ADD             R4, PC; g_currFurnitureId_ptr
475CD0:  LDR             R4, [R4]; g_currFurnitureId
475CD2:  LDRH            R4, [R4]
475CD4:  CMP             R4, #0xFF
475CD6:  BHI             loc_475D22
475CD8:  LDR             R5, =(g_currFurnitureId_ptr - 0x475CE4)
475CDA:  LDR             R6, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x475CE6)
475CDC:  LDR.W           R8, =(g_furnitureStore_ptr - 0x475CEC)
475CE0:  ADD             R5, PC; g_currFurnitureId_ptr
475CE2:  ADD             R6, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
475CE4:  LDRD.W          LR, R12, [R7,#arg_0]
475CE8:  ADD             R8, PC; g_furnitureStore_ptr
475CEA:  LDR.W           R10, [R5]; g_currFurnitureId
475CEE:  ADDS            R5, R4, #1
475CF0:  LDR.W           R9, [R6]; CModelInfo::ms_modelInfoPtrs ...
475CF4:  LDR.W           R6, [R8]; g_furnitureStore
475CF8:  ADD.W           R4, R4, R4,LSL#2
475CFC:  STRH.W          R5, [R10]
475D00:  ADD.W           R5, R6, R4,LSL#2
475D04:  STRH            R2, [R5,#0xA]
475D06:  STRH            R1, [R5,#8]
475D08:  LDR.W           R1, [R9,R1,LSL#2]
475D0C:  LDRB            R2, [R0,#0x1A]
475D0E:  LDR             R1, [R1,#0x2C]
475D10:  CMP             R2, #0
475D12:  BEQ             loc_475D2A
475D14:  VLDR            D16, [R1]
475D18:  VLDR            D17, [R1,#0xC]
475D1C:  VSUB.F32        D0, D17, D16
475D20:  B               loc_475D36
475D22:  MOVS            R0, #0
475D24:  POP.W           {R8-R10}
475D28:  POP             {R4-R7,PC}
475D2A:  VMOV.I32        D16, #0x3F000000
475D2E:  VLDR            D17, [R1,#0xC]
475D32:  VADD.F32        D0, D17, D16
475D36:  VCVT.S32.F32    S2, S1
475D3A:  VLDR            S6, =0.02
475D3E:  LDR             R1, =(g_furnitureStore_ptr - 0x475D44)
475D40:  ADD             R1, PC; g_furnitureStore_ptr
475D42:  LDR             R1, [R1]; g_furnitureStore
475D44:  VMOV            R2, S2
475D48:  ADD.W           R1, R1, R4,LSL#2; ListItem_c *
475D4C:  VCVT.F32.S32    S2, S2
475D50:  VCVT.S32.F32    S4, S0
475D54:  VSUB.F32        S2, S1, S2
475D58:  VMOV            R5, S4
475D5C:  VCVT.F32.S32    S4, S4
475D60:  STRB            R3, [R1,#0xE]
475D62:  STRB.W          LR, [R1,#0xF]
475D66:  STRB.W          R12, [R1,#0x13]
475D6A:  VCMPE.F32       S2, S6
475D6E:  VMRS            APSR_nzcv, FPSCR
475D72:  VSUB.F32        S0, S0, S4
475D76:  VCMPE.F32       S0, S6
475D7A:  IT GE
475D7C:  ADDGE           R2, #1
475D7E:  VMRS            APSR_nzcv, FPSCR
475D82:  STRB            R2, [R1,#0xD]
475D84:  IT GE
475D86:  ADDGE           R5, #1
475D88:  STRB            R5, [R1,#0xC]
475D8A:  LDRB            R2, [R0,#0x18]
475D8C:  STRB            R2, [R1,#0x10]
475D8E:  LDRB            R2, [R0,#0x19]
475D90:  STRB            R2, [R1,#0x11]
475D92:  LDRB            R2, [R0,#0x1A]
475D94:  ADDS            R0, #0xC; this
475D96:  STRB            R2, [R1,#0x12]
475D98:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
475D9C:  MOVS            R0, #1
475D9E:  POP.W           {R8-R10}
475DA2:  POP             {R4-R7,PC}
