; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo23GetOriginalCompPositionER7CVectori
; Address            : 0x38859C - 0x3885C0
; =========================================================

38859C:  PUSH            {R4,R6,R7,LR}
38859E:  ADD             R7, SP, #8
3885A0:  LDR             R0, [R0,#0x34]
3885A2:  MOV             R4, R1
3885A4:  MOV             R1, R2
3885A6:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
3885AA:  CBZ             R0, loc_3885BC
3885AC:  LDR             R1, [R0,#0x40]
3885AE:  STR             R1, [R4]
3885B0:  LDR             R1, [R0,#0x44]
3885B2:  STR             R1, [R4,#4]
3885B4:  LDR             R0, [R0,#0x48]
3885B6:  STR             R0, [R4,#8]
3885B8:  MOVS            R0, #1
3885BA:  POP             {R4,R6,R7,PC}
3885BC:  MOVS            R0, #0
3885BE:  POP             {R4,R6,R7,PC}
