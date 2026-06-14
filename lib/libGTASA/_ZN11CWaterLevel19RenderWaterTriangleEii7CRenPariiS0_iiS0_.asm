; =========================================================
; Game Engine Function: _ZN11CWaterLevel19RenderWaterTriangleEii7CRenPariiS0_iiS0_
; Address            : 0x597CF4 - 0x597FB0
; =========================================================

597CF4:  PUSH            {R4-R7,LR}
597CF6:  ADD             R7, SP, #0xC
597CF8:  PUSH.W          {R8-R11}
597CFC:  SUB             SP, SP, #0x44
597CFE:  MOV             R12, R1
597D00:  MOV             R1, R0
597D02:  LDR             R0, =(CameraRangeMaxX_ptr - 0x597D0E)
597D04:  MOV             R5, R2
597D06:  LDRD.W          R10, R11, [R7,#arg_28]
597D0A:  ADD             R0, PC; CameraRangeMaxX_ptr
597D0C:  LDR.W           R8, [R7,#arg_34]
597D10:  LDR.W           LR, [R7,#arg_1C]
597D14:  LDR             R0, [R0]; CameraRangeMaxX
597D16:  LDRD.W          R4, R9, [R7,#arg_4]
597D1A:  LDR             R6, [R7,#arg_24]
597D1C:  LDR             R0, [R0]
597D1E:  CMP             R0, R1
597D20:  BLE             loc_597D8E
597D22:  LDR             R2, =(CameraRangeMinX_ptr - 0x597D28)
597D24:  ADD             R2, PC; CameraRangeMinX_ptr
597D26:  LDR             R2, [R2]; CameraRangeMinX
597D28:  LDR             R2, [R2]
597D2A:  CMP             R2, R9
597D2C:  BGE             loc_597D8E
597D2E:  STR             R5, [SP,#0x60+var_20]
597D30:  CMP             R12, R6
597D32:  LDR             R5, =(CameraRangeMaxY_ptr - 0x597D40)
597D34:  MOV             R8, R6
597D36:  IT LT
597D38:  MOVLT           R8, R12
597D3A:  MOV             LR, R12
597D3C:  ADD             R5, PC; CameraRangeMaxY_ptr
597D3E:  LDR             R5, [R5]; CameraRangeMaxY
597D40:  LDR             R4, [R5]
597D42:  IT LT
597D44:  MOVLT           LR, R6
597D46:  CMP             R8, R4
597D48:  BGE             loc_597DE0
597D4A:  LDR             R5, =(CameraRangeMinY_ptr - 0x597D50)
597D4C:  ADD             R5, PC; CameraRangeMinY_ptr
597D4E:  LDR             R5, [R5]; CameraRangeMinY
597D50:  LDR             R5, [R5]
597D52:  CMP             LR, R5
597D54:  BLE             loc_597DE0
597D56:  CMP             R0, R9
597D58:  BGE.W           loc_597EA8
597D5C:  ADD             R2, SP, #0x60+var_38
597D5E:  STM.W           R2, {R6,R10,R11}
597D62:  LDR             R2, [R7,#arg_20]
597D64:  STR             R2, [SP,#0x60+var_3C]
597D66:  LDR             R2, [R7,#arg_14]
597D68:  STR             R2, [SP,#0x60+var_48]
597D6A:  LDR             R2, [R7,#arg_10]
597D6C:  STR             R2, [SP,#0x60+var_4C]
597D6E:  LDR             R2, [R7,#arg_30]
597D70:  STR.W           R9, [SP,#0x60+var_54]
597D74:  STR             R3, [SP,#0x60+var_60]
597D76:  STR             R2, [SP,#0x60+var_2C]
597D78:  LDR             R2, [R7,#arg_18]
597D7A:  STR             R2, [SP,#0x60+var_44]
597D7C:  LDR             R2, [R7,#arg_0]
597D7E:  STR             R2, [SP,#0x60+var_5C]
597D80:  LDR             R2, [R7,#arg_34]
597D82:  STR             R2, [SP,#0x60+var_28]
597D84:  LDR             R2, [R7,#arg_1C]
597D86:  STR             R2, [SP,#0x60+var_40]
597D88:  LDR             R2, [R7,#arg_4]
597D8A:  STR             R2, [SP,#0x60+var_58]
597D8C:  B               loc_597EDE
597D8E:  SUB.W           R0, R9, R1
597D92:  CMP             R0, #0xA9
597D94:  BLT             loc_597E2E
597D96:  LDR             R0, =(bSplitBigPolys_ptr - 0x597D9C)
597D98:  ADD             R0, PC; bSplitBigPolys_ptr
597D9A:  LDR             R0, [R0]; bSplitBigPolys
597D9C:  LDRB            R0, [R0]
597D9E:  CMP             R0, #0
597DA0:  BEQ             loc_597E2E
597DA2:  ADD             R0, SP, #0x60+var_38
597DA4:  MOV             R2, R12
597DA6:  STM.W           R0, {R6,R10,R11}
597DAA:  LDR             R0, [R7,#arg_20]
597DAC:  STR             R0, [SP,#0x60+var_3C]
597DAE:  LDR             R0, [R7,#arg_14]
597DB0:  STR             R0, [SP,#0x60+var_48]
597DB2:  LDR             R0, [R7,#arg_10]
597DB4:  STR             R0, [SP,#0x60+var_4C]
597DB6:  LDR             R0, [R7,#arg_30]
597DB8:  STR.W           R9, [SP,#0x60+var_54]
597DBC:  STR             R3, [SP,#0x60+var_60]
597DBE:  MOV             R3, R5
597DC0:  STR             R0, [SP,#0x60+var_2C]
597DC2:  LDR             R0, [R7,#arg_18]
597DC4:  STR             R0, [SP,#0x60+var_44]
597DC6:  LDR             R0, [R7,#arg_0]
597DC8:  STR.W           R8, [SP,#0x60+var_28]
597DCC:  STR.W           LR, [SP,#0x60+var_40]
597DD0:  STRD.W          R0, R4, [SP,#0x60+var_5C]
597DD4:  ADD.W           R0, R9, R1
597DD8:  ADD.W           R0, R0, R0,LSR#31
597DDC:  ASRS            R0, R0, #1
597DDE:  B               loc_597EE2
597DE0:  SUB.W           R0, R9, R1
597DE4:  CMP             R0, #0xA9
597DE6:  BLT             loc_597E68
597DE8:  LDR             R0, =(bSplitBigPolys_ptr - 0x597DEE)
597DEA:  ADD             R0, PC; bSplitBigPolys_ptr
597DEC:  LDR             R0, [R0]; bSplitBigPolys
597DEE:  LDRB            R0, [R0]
597DF0:  CBZ             R0, loc_597E68
597DF2:  ADD             R0, SP, #0x60+var_38
597DF4:  STM.W           R0, {R6,R10,R11}
597DF8:  LDR             R0, [R7,#arg_20]
597DFA:  STR             R0, [SP,#0x60+var_3C]
597DFC:  LDR             R0, [R7,#arg_14]
597DFE:  STR             R0, [SP,#0x60+var_48]
597E00:  LDR             R0, [R7,#arg_10]
597E02:  STR             R0, [SP,#0x60+var_4C]
597E04:  LDR             R0, [R7,#arg_30]
597E06:  STR.W           R9, [SP,#0x60+var_54]
597E0A:  STR             R3, [SP,#0x60+var_60]
597E0C:  STR             R0, [SP,#0x60+var_2C]
597E0E:  LDR             R0, [R7,#arg_18]
597E10:  STR             R0, [SP,#0x60+var_44]
597E12:  LDR             R0, [R7,#arg_0]
597E14:  STR             R0, [SP,#0x60+var_5C]
597E16:  LDR             R0, [R7,#arg_34]
597E18:  STR             R0, [SP,#0x60+var_28]
597E1A:  LDR             R0, [R7,#arg_1C]
597E1C:  STR             R0, [SP,#0x60+var_40]
597E1E:  LDR             R0, [R7,#arg_4]
597E20:  STR             R0, [SP,#0x60+var_58]
597E22:  ADD.W           R0, R9, R1
597E26:  ADD.W           R0, R0, R0,LSR#31
597E2A:  ASRS            R0, R0, #1
597E2C:  B               loc_597EDE
597E2E:  MOVS            R0, #0
597E30:  MOV             R2, R5
597E32:  STR             R0, [SP,#0x60+var_28]
597E34:  ADD             R0, SP, #0x60+var_3C
597E36:  STM.W           R0, {R6,R10,R11}
597E3A:  LDR             R0, [R7,#arg_20]
597E3C:  STR             R0, [SP,#0x60+var_40]
597E3E:  LDR             R0, [R7,#arg_14]
597E40:  STR             R0, [SP,#0x60+var_4C]
597E42:  LDR             R0, [R7,#arg_10]
597E44:  STR             R0, [SP,#0x60+var_50]
597E46:  LDR             R0, [R7,#arg_C]
597E48:  STRD.W          R9, R0, [SP,#0x60+var_58]
597E4C:  LDR             R0, [R7,#arg_30]
597E4E:  STR             R0, [SP,#0x60+var_30]
597E50:  LDR             R0, [R7,#arg_18]
597E52:  STR             R0, [SP,#0x60+var_48]
597E54:  LDR             R0, [R7,#arg_0]
597E56:  STR.W           R8, [SP,#0x60+var_2C]
597E5A:  STR.W           LR, [SP,#0x60+var_44]
597E5E:  STRD.W          R0, R4, [SP,#0x60+var_60]
597E62:  MOV             R0, R1
597E64:  MOV             R1, R12
597E66:  B               loc_597EA2
597E68:  MOVS            R0, #0
597E6A:  STR             R0, [SP,#0x60+var_28]
597E6C:  ADD             R0, SP, #0x60+var_3C
597E6E:  STM.W           R0, {R6,R10,R11}
597E72:  LDR             R0, [R7,#arg_20]
597E74:  STR             R0, [SP,#0x60+var_40]
597E76:  LDR             R0, [R7,#arg_14]
597E78:  STR             R0, [SP,#0x60+var_4C]
597E7A:  LDR             R0, [R7,#arg_10]
597E7C:  STR             R0, [SP,#0x60+var_50]
597E7E:  LDR             R0, [R7,#arg_C]
597E80:  STRD.W          R9, R0, [SP,#0x60+var_58]
597E84:  LDR             R0, [R7,#arg_30]
597E86:  STR             R0, [SP,#0x60+var_30]
597E88:  LDR             R0, [R7,#arg_18]
597E8A:  STR             R0, [SP,#0x60+var_48]
597E8C:  LDR             R0, [R7,#arg_0]
597E8E:  STR             R0, [SP,#0x60+var_60]
597E90:  LDR             R0, [R7,#arg_34]
597E92:  STR             R0, [SP,#0x60+var_2C]
597E94:  LDR             R0, [R7,#arg_1C]
597E96:  STR             R0, [SP,#0x60+var_44]
597E98:  LDR             R0, [R7,#arg_4]
597E9A:  STR             R0, [SP,#0x60+var_5C]
597E9C:  MOV             R0, R1
597E9E:  MOV             R1, R12
597EA0:  LDR             R2, [SP,#0x60+var_20]
597EA2:  BLX             j__ZN11CWaterLevel32RenderFlatWaterTriangle_OneLayerEii7CRenPariiS0_iiS0_i; CWaterLevel::RenderFlatWaterTriangle_OneLayer(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar,int)
597EA6:  B               loc_597EE6
597EA8:  CMP             R2, R1
597EAA:  BLE             loc_597EEE
597EAC:  ADD             R0, SP, #0x60+var_38
597EAE:  STM.W           R0, {R6,R10,R11}
597EB2:  LDR             R0, [R7,#arg_20]
597EB4:  STR             R0, [SP,#0x60+var_3C]
597EB6:  LDR             R0, [R7,#arg_14]
597EB8:  STR             R0, [SP,#0x60+var_48]
597EBA:  LDR             R0, [R7,#arg_10]
597EBC:  STR             R0, [SP,#0x60+var_4C]
597EBE:  LDR             R0, [R7,#arg_30]
597EC0:  STR.W           R9, [SP,#0x60+var_54]
597EC4:  STR             R3, [SP,#0x60+var_60]
597EC6:  STR             R0, [SP,#0x60+var_2C]
597EC8:  LDR             R0, [R7,#arg_18]
597ECA:  STR             R0, [SP,#0x60+var_44]
597ECC:  LDR             R0, [R7,#arg_0]
597ECE:  STR             R0, [SP,#0x60+var_5C]
597ED0:  LDR             R0, [R7,#arg_34]
597ED2:  STR             R0, [SP,#0x60+var_28]
597ED4:  LDR             R0, [R7,#arg_1C]
597ED6:  STR             R0, [SP,#0x60+var_40]
597ED8:  LDR             R0, [R7,#arg_4]
597EDA:  STR             R0, [SP,#0x60+var_58]
597EDC:  MOV             R0, R2
597EDE:  LDR             R3, [SP,#0x60+var_20]
597EE0:  MOV             R2, R12
597EE2:  BLX             j__ZN11CWaterLevel28SplitWaterTriangleAlongXLineEiii7CRenPariiS0_iiS0_; CWaterLevel::SplitWaterTriangleAlongXLine(int,int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
597EE6:  ADD             SP, SP, #0x44 ; 'D'
597EE8:  POP.W           {R8-R11}
597EEC:  POP             {R4-R7,PC}
597EEE:  CMP             LR, R4
597EF0:  BLE             loc_597F30
597EF2:  ADD             R0, SP, #0x60+var_38
597EF4:  MOV             R2, R12
597EF6:  STM.W           R0, {R6,R10,R11}
597EFA:  LDR             R0, [R7,#arg_20]
597EFC:  STR             R0, [SP,#0x60+var_3C]
597EFE:  LDR             R0, [R7,#arg_14]
597F00:  STR             R0, [SP,#0x60+var_48]
597F02:  LDR             R0, [R7,#arg_10]
597F04:  STR             R0, [SP,#0x60+var_4C]
597F06:  LDR             R0, [R7,#arg_C]
597F08:  STRD.W          R9, R0, [SP,#0x60+var_54]
597F0C:  LDR             R0, [R7,#arg_30]
597F0E:  STR             R3, [SP,#0x60+var_60]
597F10:  STR             R0, [SP,#0x60+var_2C]
597F12:  LDR             R0, [R7,#arg_18]
597F14:  STR             R0, [SP,#0x60+var_44]
597F16:  LDR             R0, [R7,#arg_0]
597F18:  STR             R0, [SP,#0x60+var_5C]
597F1A:  LDR             R0, [R7,#arg_34]
597F1C:  STR             R0, [SP,#0x60+var_28]
597F1E:  LDR             R0, [R7,#arg_1C]
597F20:  LDR             R3, [SP,#0x60+var_20]
597F22:  STR             R0, [SP,#0x60+var_40]
597F24:  LDR             R0, [R7,#arg_4]
597F26:  STR             R0, [SP,#0x60+var_58]
597F28:  MOV             R0, R4
597F2A:  BLX.W           j__ZN11CWaterLevel28SplitWaterTriangleAlongYLineEiii7CRenPariiS0_iiS0_; CWaterLevel::SplitWaterTriangleAlongYLine(int,int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
597F2E:  B               loc_597EE6
597F30:  LDR             R0, [R7,#arg_4]
597F32:  CMP             R8, R5
597F34:  LDR             R2, [R7,#arg_1C]
597F36:  LDR             R4, [SP,#0x60+var_20]
597F38:  MOV             LR, R0
597F3A:  LDR             R0, [R7,#arg_34]
597F3C:  MOV             R8, R2
597F3E:  LDR             R2, [R7,#arg_0]
597F40:  BGE             loc_597F7C
597F42:  STR.W           R11, [SP,#0x60+var_30]
597F46:  STR.W           R10, [SP,#0x60+var_34]
597F4A:  STR             R6, [SP,#0x60+var_38]
597F4C:  LDR             R6, [R7,#arg_20]
597F4E:  STR             R6, [SP,#0x60+var_3C]
597F50:  LDR             R6, [R7,#arg_14]
597F52:  STR             R6, [SP,#0x60+var_48]
597F54:  LDR             R6, [R7,#arg_10]
597F56:  STR             R6, [SP,#0x60+var_4C]
597F58:  LDR             R6, [R7,#arg_C]
597F5A:  STRD.W          R9, R6, [SP,#0x60+var_54]
597F5E:  STR             R3, [SP,#0x60+var_60]
597F60:  LDR             R3, [R7,#arg_30]
597F62:  STR             R3, [SP,#0x60+var_2C]
597F64:  LDR             R3, [R7,#arg_18]
597F66:  STR             R0, [SP,#0x60+var_28]
597F68:  MOV             R0, R5
597F6A:  STRD.W          R3, R8, [SP,#0x60+var_44]
597F6E:  MOV             R3, R4
597F70:  STRD.W          R2, LR, [SP,#0x60+var_5C]
597F74:  MOV             R2, R12
597F76:  BLX.W           j__ZN11CWaterLevel28SplitWaterTriangleAlongYLineEiii7CRenPariiS0_iiS0_; CWaterLevel::SplitWaterTriangleAlongYLine(int,int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
597F7A:  B               loc_597EE6
597F7C:  ADD             R5, SP, #0x60+var_3C
597F7E:  STM.W           R5, {R6,R10,R11}
597F82:  LDR             R5, [R7,#arg_20]
597F84:  STR             R5, [SP,#0x60+var_40]
597F86:  LDR             R5, [R7,#arg_14]
597F88:  STR             R5, [SP,#0x60+var_4C]
597F8A:  LDR             R5, [R7,#arg_10]
597F8C:  STR             R5, [SP,#0x60+var_50]
597F8E:  LDR             R5, [R7,#arg_C]
597F90:  STRD.W          R9, R5, [SP,#0x60+var_58]
597F94:  LDR             R5, [R7,#arg_30]
597F96:  STR             R5, [SP,#0x60+var_30]
597F98:  LDR             R5, [R7,#arg_18]
597F9A:  STR             R0, [SP,#0x60+var_2C]
597F9C:  MOV             R0, R1
597F9E:  STRD.W          R5, R8, [SP,#0x60+var_48]
597FA2:  MOV             R1, R12
597FA4:  STRD.W          R2, LR, [SP,#0x60+var_60]
597FA8:  MOV             R2, R4
597FAA:  BLX.W           j__ZN11CWaterLevel29RenderHighDetailWaterTriangleEii7CRenPariiS0_iiS0_; CWaterLevel::RenderHighDetailWaterTriangle(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
597FAE:  B               loc_597EE6
