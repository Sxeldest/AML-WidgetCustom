; =========================================================
; Game Engine Function: _ZN4CPad7GetDuckEv
; Address            : 0x3FB9EC - 0x3FBA48
; =========================================================

3FB9EC:  PUSH            {R4,R6,R7,LR}
3FB9EE:  ADD             R7, SP, #8
3FB9F0:  LDRH.W          R1, [R0,#0x110]
3FB9F4:  CMP             R1, #0
3FB9F6:  ITT EQ
3FB9F8:  LDRBEQ.W        R0, [R0,#0x12E]
3FB9FC:  CMPEQ           R0, #0
3FB9FE:  BEQ             loc_3FBA06
3FBA00:  MOVS            R4, #0
3FBA02:  MOV             R0, R4
3FBA04:  POP             {R4,R6,R7,PC}
3FBA06:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FBA0C)
3FBA08:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FBA0A:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
3FBA0C:  LDR.W           R0, [R0,#(dword_6F3814 - 0x6F3794)]
3FBA10:  CBZ             R0, loc_3FBA26
3FBA12:  MOVS            R0, #0x20 ; ' '
3FBA14:  MOVS            R1, #0
3FBA16:  MOVS            R2, #1
3FBA18:  MOVS            R4, #0
3FBA1A:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FBA1E:  CMP             R0, #1
3FBA20:  BNE             loc_3FBA44
3FBA22:  MOVS            R0, #0x20 ; ' '
3FBA24:  B               loc_3FBA36
3FBA26:  MOVS            R0, #0xA7
3FBA28:  MOVS            R1, #1
3FBA2A:  MOVS            R2, #1
3FBA2C:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
3FBA30:  CMP             R0, #1
3FBA32:  BNE             loc_3FBA00
3FBA34:  MOVS            R0, #0xA7
3FBA36:  BLX             j__ZN15CTouchInterface15ClearTapHistoryENS_9WidgetIDsE; CTouchInterface::ClearTapHistory(CTouchInterface::WidgetIDs)
3FBA3A:  MOV.W           R0, #(elf_hash_bucket+0xF04); this
3FBA3E:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
3FBA42:  MOVS            R4, #1
3FBA44:  MOV             R0, R4
3FBA46:  POP             {R4,R6,R7,PC}
