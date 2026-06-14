; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo4InitEv
; Address            : 0x3890B8 - 0x3890DC
; =========================================================

3890B8:  PUSH            {R4,R6,R7,LR}
3890BA:  ADD             R7, SP, #8
3890BC:  MOV             R4, R0
3890BE:  BLX             j__ZN15CClumpModelInfo4InitEv; CClumpModelInfo::Init(void)
3890C2:  MOVW            R0, #0xFFFF
3890C6:  STRH.W          R0, [R4,#0x60]
3890CA:  MOV.W           R0, #0xFFFFFFFF
3890CE:  STR             R0, [R4,#0x54]
3890D0:  MOV             R0, #0x4479FF5C
3890D8:  STR             R0, [R4,#0x70]
3890DA:  POP             {R4,R6,R7,PC}
