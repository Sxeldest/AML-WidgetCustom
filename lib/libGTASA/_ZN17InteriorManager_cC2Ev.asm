; =========================================================
; Game Engine Function: _ZN17InteriorManager_cC2Ev
; Address            : 0x44CE90 - 0x44CF5E
; =========================================================

44CE90:  PUSH            {R4,R6,R7,LR}
44CE92:  ADD             R7, SP, #8
44CE94:  MOV             R4, R0
44CE96:  BLX             j__ZN10Interior_cC2Ev; Interior_c::Interior_c(void)
44CE9A:  ADDW            R0, R4, #0x794; this
44CE9E:  BLX             j__ZN10Interior_cC2Ev; Interior_c::Interior_c(void)
44CEA2:  ADDW            R0, R4, #0xF28; this
44CEA6:  BLX             j__ZN10Interior_cC2Ev; Interior_c::Interior_c(void)
44CEAA:  MOVW            R0, #0x16BC
44CEAE:  ADD             R0, R4; this
44CEB0:  BLX             j__ZN10Interior_cC2Ev; Interior_c::Interior_c(void)
44CEB4:  MOVW            R0, #0x1E50
44CEB8:  ADD             R0, R4; this
44CEBA:  BLX             j__ZN10Interior_cC2Ev; Interior_c::Interior_c(void)
44CEBE:  MOVW            R0, #0x25E4
44CEC2:  ADD             R0, R4; this
44CEC4:  BLX             j__ZN10Interior_cC2Ev; Interior_c::Interior_c(void)
44CEC8:  MOVW            R0, #0x2D78
44CECC:  ADD             R0, R4; this
44CECE:  BLX             j__ZN10Interior_cC2Ev; Interior_c::Interior_c(void)
44CED2:  MOVW            R0, #0x350C
44CED6:  ADD             R0, R4; this
44CED8:  BLX             j__ZN10Interior_cC2Ev; Interior_c::Interior_c(void)
44CEDC:  MOVW            R0, #0x3CA0
44CEE0:  ADD             R0, R4; this
44CEE2:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
44CEE6:  MOVW            R0, #0x3CAC
44CEEA:  ADD             R0, R4; this
44CEEC:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
44CEF0:  MOVW            R0, #0x3D68
44CEF4:  ADD             R0, R4; this
44CEF6:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
44CEFA:  MOVW            R0, #0x3E24
44CEFE:  ADD             R0, R4; this
44CF00:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
44CF04:  MOVW            R0, #0x3EE0
44CF08:  ADD             R0, R4; this
44CF0A:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
44CF0E:  MOVW            R0, #0x3F9C
44CF12:  ADD             R0, R4; this
44CF14:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
44CF18:  MOVW            R0, #0x4058
44CF1C:  ADD             R0, R4; this
44CF1E:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
44CF22:  MOVW            R0, #0x4114
44CF26:  ADD             R0, R4; this
44CF28:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
44CF2C:  MOVW            R0, #0x41D0
44CF30:  ADD             R0, R4; this
44CF32:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
44CF36:  MOVW            R0, #0x428C
44CF3A:  ADD             R0, R4; this
44CF3C:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
44CF40:  MOVW            R0, #0x4298
44CF44:  ADD             R0, R4; this
44CF46:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
44CF4A:  ADR             R0, loc_44CF60
44CF4C:  MOVW            R1, #0x4740
44CF50:  VLD1.64         {D16-D17}, [R0@128]
44CF54:  ADDS            R0, R4, R1
44CF56:  VST1.32         {D16-D17}, [R0]
44CF5A:  MOV             R0, R4
44CF5C:  POP             {R4,R6,R7,PC}
