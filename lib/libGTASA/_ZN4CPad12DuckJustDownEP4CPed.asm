; =========================================================
; Game Engine Function: _ZN4CPad12DuckJustDownEP4CPed
; Address            : 0x3FBA4C - 0x3FBAB8
; =========================================================

3FBA4C:  PUSH            {R4,R6,R7,LR}
3FBA4E:  ADD             R7, SP, #8
3FBA50:  LDRH.W          R2, [R0,#0x110]
3FBA54:  MOVS            R4, #0
3FBA56:  CBZ             R2, loc_3FBA5C
3FBA58:  MOV             R0, R4
3FBA5A:  POP             {R4,R6,R7,PC}
3FBA5C:  CMP             R1, #0
3FBA5E:  BEQ             loc_3FBA58
3FBA60:  LDRB.W          R0, [R0,#0x12E]
3FBA64:  CMP             R0, #0
3FBA66:  BNE             loc_3FBA58
3FBA68:  LDR.W           R0, [R1,#0x100]
3FBA6C:  CMP             R0, #0
3FBA6E:  ITTT NE
3FBA70:  MOVNE           R4, #0
3FBA72:  MOVNE           R0, R4
3FBA74:  POPNE           {R4,R6,R7,PC}
3FBA76:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FBA7E)
3FBA78:  MOVS            R4, #0
3FBA7A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FBA7C:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
3FBA7E:  LDR.W           R0, [R0,#(dword_6F3814 - 0x6F3794)]
3FBA82:  CBZ             R0, loc_3FBA96
3FBA84:  MOVS            R0, #0x20 ; ' '
3FBA86:  MOVS            R1, #0
3FBA88:  MOVS            R2, #1
3FBA8A:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FBA8E:  CMP             R0, #1
3FBA90:  BNE             loc_3FBA58
3FBA92:  MOVS            R0, #0x20 ; ' '
3FBA94:  B               loc_3FBAA6
3FBA96:  MOVS            R0, #0xA7
3FBA98:  MOVS            R1, #1
3FBA9A:  MOVS            R2, #0
3FBA9C:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
3FBAA0:  CMP             R0, #1
3FBAA2:  BNE             loc_3FBA58
3FBAA4:  MOVS            R0, #0xA7
3FBAA6:  BLX             j__ZN15CTouchInterface15ClearTapHistoryENS_9WidgetIDsE; CTouchInterface::ClearTapHistory(CTouchInterface::WidgetIDs)
3FBAAA:  MOV.W           R0, #(elf_hash_bucket+0xF04); this
3FBAAE:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
3FBAB2:  MOVS            R4, #1
3FBAB4:  MOV             R0, R4
3FBAB6:  POP             {R4,R6,R7,PC}
