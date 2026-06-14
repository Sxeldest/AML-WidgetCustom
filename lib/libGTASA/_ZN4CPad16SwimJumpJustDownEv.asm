; =========================================================
; Game Engine Function: _ZN4CPad16SwimJumpJustDownEv
; Address            : 0x3FBD08 - 0x3FBD5A
; =========================================================

3FBD08:  PUSH            {R4,R6,R7,LR}
3FBD0A:  ADD             R7, SP, #8
3FBD0C:  LDRH.W          R0, [R0,#0x110]
3FBD10:  CBNZ            R0, loc_3FBD1E
3FBD12:  LDR             R0, =(TheCamera_ptr - 0x3FBD18)
3FBD14:  ADD             R0, PC; TheCamera_ptr
3FBD16:  LDR             R0, [R0]; TheCamera ; this
3FBD18:  BLX             j__ZN7CCamera17IsTargetingActiveEv; CCamera::IsTargetingActive(void)
3FBD1C:  CBZ             R0, loc_3FBD24
3FBD1E:  MOVS            R4, #0
3FBD20:  MOV             R0, R4
3FBD22:  POP             {R4,R6,R7,PC}
3FBD24:  MOVS            R0, #0xA8
3FBD26:  MOVS            R1, #1
3FBD28:  MOVS            R2, #1
3FBD2A:  MOVS            R4, #1
3FBD2C:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
3FBD30:  CMP             R0, #0
3FBD32:  BNE             loc_3FBD20
3FBD34:  MOVS            R0, #3
3FBD36:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
3FBD3A:  CBZ             R0, loc_3FBD42
3FBD3C:  MOVS            R4, #1
3FBD3E:  MOV             R0, R4
3FBD40:  POP             {R4,R6,R7,PC}
3FBD42:  MOVS            R0, #0x22 ; '"'
3FBD44:  MOVS            R1, #0
3FBD46:  MOVS            R2, #1
3FBD48:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
3FBD4C:  CMP             R0, #1
3FBD4E:  BNE             loc_3FBD1E
3FBD50:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FBD54:  CMP             R0, #0
3FBD56:  BNE             loc_3FBD1E
3FBD58:  B               loc_3FBD3C
