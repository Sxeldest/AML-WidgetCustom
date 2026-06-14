; =========================================================
; Game Engine Function: _ZN15CWidgetListShop11AssignImageEi
; Address            : 0x2BB9FC - 0x2BBA96
; =========================================================

2BB9FC:  PUSH            {R4-R7,LR}
2BB9FE:  ADD             R7, SP, #0xC
2BBA00:  PUSH.W          {R8-R10}
2BBA04:  MOV             R9, R0
2BBA06:  MOV             R8, R1
2BBA08:  MOV.W           R0, #0x11C
2BBA0C:  MLA.W           R0, R8, R0, R9; this
2BBA10:  ADD.W           R6, R0, #0x90
2BBA14:  BLX             j__ZN15CTouchInterface17LoadAllTextureDBsEv; CTouchInterface::LoadAllTextureDBs(void)
2BBA18:  LDR             R0, =(_ZN15CWidgetListShop11m_FileEntryE_ptr - 0x2BBA26)
2BBA1A:  MOV.W           R5, #0xFFFFFFFF
2BBA1E:  MOVW            R10, #0x31F
2BBA22:  ADD             R0, PC; _ZN15CWidgetListShop11m_FileEntryE_ptr
2BBA24:  LDR             R0, [R0]; CWidgetListShop::m_FileEntry ...
2BBA26:  ADD.W           R4, R0, #0x54 ; 'T'
2BBA2A:  SUB.W           R0, R4, #0x54 ; 'T'; char *
2BBA2E:  MOV             R1, R6; char *
2BBA30:  BLX             strcasecmp
2BBA34:  CBZ             R0, loc_2BBA40
2BBA36:  ADDS            R5, #1
2BBA38:  ADDS            R4, #0x58 ; 'X'
2BBA3A:  CMP             R5, R10
2BBA3C:  BLT             loc_2BBA2A
2BBA3E:  B               loc_2BBA8A
2BBA40:  MOV.W           R0, #0x11C
2BBA44:  SUB.W           R1, R4, #0x34 ; '4'; char *
2BBA48:  MLA.W           R5, R8, R0, R9
2BBA4C:  ADD.W           R0, R5, #0x190; this
2BBA50:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2BBA54:  SUB.W           R0, R4, #0x14
2BBA58:  VLD1.32         {D16-D17}, [R0]
2BBA5C:  ADD.W           R0, R5, #0x194
2BBA60:  VST1.32         {D16-D17}, [R0]
2BBA64:  LDRB.W          R0, [R4,#-4]
2BBA68:  STRB.W          R0, [R5,#0x1A4]
2BBA6C:  LDRB.W          R0, [R4,#-3]
2BBA70:  STRB.W          R0, [R5,#0x1A5]
2BBA74:  LDRB.W          R0, [R4,#-2]
2BBA78:  STRB.W          R0, [R5,#0x1A6]
2BBA7C:  LDRB.W          R0, [R4,#-1]
2BBA80:  STRB.W          R0, [R5,#0x1A7]
2BBA84:  LDRB            R0, [R4]; this
2BBA86:  STRB.W          R0, [R5,#0x1A8]
2BBA8A:  POP.W           {R8-R10}
2BBA8E:  POP.W           {R4-R7,LR}
2BBA92:  B.W             j_j__ZN15CTouchInterface19UnloadAllTextureDBsEv; j_CTouchInterface::UnloadAllTextureDBs(void)
