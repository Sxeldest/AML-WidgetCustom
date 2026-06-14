; =========================================================
; Game Engine Function: _ZN4CPad12JumpJustDownEv
; Address            : 0x3FBC5C - 0x3FBCB6
; =========================================================

3FBC5C:  PUSH            {R4,R6,R7,LR}
3FBC5E:  ADD             R7, SP, #8
3FBC60:  LDRH.W          R1, [R0,#0x110]
3FBC64:  CBZ             R1, loc_3FBC6C
3FBC66:  MOVS            R4, #0
3FBC68:  MOV             R0, R4
3FBC6A:  POP             {R4,R6,R7,PC}
3FBC6C:  LDRB.W          R0, [R0,#0x132]
3FBC70:  MOVS            R4, #0
3FBC72:  CMP             R0, #0
3FBC74:  BNE             loc_3FBC68
3FBC76:  LDR             R0, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x3FBC7C)
3FBC78:  ADD             R0, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
3FBC7A:  LDR             R0, [R0]; CRopes::PlayerControlsCrane ...
3FBC7C:  LDR             R0, [R0]; CRopes::PlayerControlsCrane
3FBC7E:  CMP             R0, #0
3FBC80:  BNE             loc_3FBC68
3FBC82:  LDR             R0, =(TheCamera_ptr - 0x3FBC88)
3FBC84:  ADD             R0, PC; TheCamera_ptr
3FBC86:  LDR             R0, [R0]; TheCamera ; this
3FBC88:  BLX             j__ZN7CCamera17IsTargetingActiveEv; CCamera::IsTargetingActive(void)
3FBC8C:  CMP             R0, #0
3FBC8E:  BNE             loc_3FBC66
3FBC90:  MOVS            R0, #0xA8
3FBC92:  MOVS            R1, #1
3FBC94:  MOVS            R2, #1
3FBC96:  MOVS            R4, #1
3FBC98:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
3FBC9C:  CMP             R0, #0
3FBC9E:  BNE             loc_3FBC68
3FBCA0:  MOVS            R0, #0x1F
3FBCA2:  MOVS            R1, #0
3FBCA4:  MOVS            R2, #1
3FBCA6:  MOVS            R4, #1
3FBCA8:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
3FBCAC:  CMP             R0, #0
3FBCAE:  IT EQ
3FBCB0:  MOVEQ           R4, #0
3FBCB2:  MOV             R0, R4
3FBCB4:  POP             {R4,R6,R7,PC}
