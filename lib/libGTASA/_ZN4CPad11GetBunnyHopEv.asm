; =========================================================
; Game Engine Function: _ZN4CPad11GetBunnyHopEv
; Address            : 0x3FBBA8 - 0x3FBBEA
; =========================================================

3FBBA8:  PUSH            {R4,R6,R7,LR}
3FBBAA:  ADD             R7, SP, #8
3FBBAC:  LDRH.W          R1, [R0,#0x110]
3FBBB0:  CMP             R1, #0
3FBBB2:  ITT EQ
3FBBB4:  LDRBEQ.W        R0, [R0,#0x132]
3FBBB8:  CMPEQ           R0, #0
3FBBBA:  BEQ             loc_3FBBC2
3FBBBC:  MOVS            R4, #0
3FBBBE:  MOV             R0, R4
3FBBC0:  POP             {R4,R6,R7,PC}
3FBBC2:  MOVS            R0, #0x5F ; '_'
3FBBC4:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
3FBBC8:  CMP             R0, #0
3FBBCA:  BNE             loc_3FBBBC
3FBBCC:  MOVS            R0, #2
3FBBCE:  MOVS            R1, #1
3FBBD0:  MOVS            R2, #1
3FBBD2:  MOVS            R4, #1
3FBBD4:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
3FBBD8:  CMP             R0, #0
3FBBDA:  BNE             loc_3FBBBE
3FBBDC:  MOVS            R0, #0x9E
3FBBDE:  MOVS            R1, #1
3FBBE0:  MOVS            R2, #1
3FBBE2:  POP.W           {R4,R6,R7,LR}
3FBBE6:  B.W             j_j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; j_CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
