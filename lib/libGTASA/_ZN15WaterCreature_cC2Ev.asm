; =========================================================
; Game Engine Function: _ZN15WaterCreature_cC2Ev
; Address            : 0x591F1C - 0x591F2A
; =========================================================

591F1C:  PUSH            {R7,LR}; Alternative name is 'WaterCreature_c::WaterCreature_c(void)'
591F1E:  MOV             R7, SP
591F20:  BLX.W           j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
591F24:  MOVS            R1, #0
591F26:  STR             R1, [R0,#8]
591F28:  POP             {R7,PC}
