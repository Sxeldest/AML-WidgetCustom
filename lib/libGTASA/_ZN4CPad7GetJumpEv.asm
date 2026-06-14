; =========================================================
; Game Engine Function: _ZN4CPad7GetJumpEv
; Address            : 0x3FBC08 - 0x3FBC56
; =========================================================

3FBC08:  PUSH            {R4,R6,R7,LR}
3FBC0A:  ADD             R7, SP, #8
3FBC0C:  LDRH.W          R1, [R0,#0x110]
3FBC10:  CMP             R1, #0
3FBC12:  ITT EQ
3FBC14:  LDRBEQ.W        R0, [R0,#0x132]
3FBC18:  CMPEQ           R0, #0
3FBC1A:  BEQ             loc_3FBC22
3FBC1C:  MOVS            R4, #0
3FBC1E:  MOV             R0, R4
3FBC20:  POP             {R4,R6,R7,PC}
3FBC22:  LDR             R0, =(TheCamera_ptr - 0x3FBC28)
3FBC24:  ADD             R0, PC; TheCamera_ptr
3FBC26:  LDR             R0, [R0]; TheCamera ; this
3FBC28:  BLX             j__ZN7CCamera17IsTargetingActiveEv; CCamera::IsTargetingActive(void)
3FBC2C:  CMP             R0, #0
3FBC2E:  BNE             loc_3FBC1C
3FBC30:  MOVS            R0, #0xA8
3FBC32:  MOVS            R1, #1
3FBC34:  MOVS            R2, #1
3FBC36:  MOVS            R4, #1
3FBC38:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
3FBC3C:  CMP             R0, #0
3FBC3E:  BNE             loc_3FBC1E
3FBC40:  MOVS            R0, #0x1F
3FBC42:  MOVS            R1, #1
3FBC44:  MOVS            R2, #1
3FBC46:  MOVS            R4, #1
3FBC48:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
3FBC4C:  CMP             R0, #0
3FBC4E:  IT EQ
3FBC50:  MOVEQ           R4, #0
3FBC52:  MOV             R0, R4
3FBC54:  POP             {R4,R6,R7,PC}
