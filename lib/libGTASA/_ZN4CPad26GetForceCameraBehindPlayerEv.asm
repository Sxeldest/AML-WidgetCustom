; =========================================================
; Game Engine Function: _ZN4CPad26GetForceCameraBehindPlayerEv
; Address            : 0x3FBF7A - 0x3FBFB6
; =========================================================

3FBF7A:  PUSH            {R7,LR}
3FBF7C:  MOV             R7, SP
3FBF7E:  LDRH.W          R0, [R0,#0x110]; this
3FBF82:  CBNZ            R0, loc_3FBFB2
3FBF84:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FBF88:  CMP             R0, #1
3FBF8A:  BNE             loc_3FBFB2
3FBF8C:  MOVS            R0, #0x34 ; '4'
3FBF8E:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
3FBF92:  CMP             R0, #1
3FBF94:  BNE             loc_3FBFB2
3FBF96:  MOVS            R0, #0x34 ; '4'
3FBF98:  MOVS            R1, #0
3FBF9A:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FBF9E:  CMP             R0, #1
3FBFA0:  BNE             loc_3FBFB2
3FBFA2:  MOVS            R0, #0x24 ; '$'
3FBFA4:  MOVS            R1, #0
3FBFA6:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FBFAA:  CMP             R0, #1
3FBFAC:  ITT NE
3FBFAE:  MOVNE           R0, #1
3FBFB0:  POPNE           {R7,PC}
3FBFB2:  MOVS            R0, #0
3FBFB4:  POP             {R7,PC}
