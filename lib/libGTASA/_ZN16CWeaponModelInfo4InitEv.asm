; =========================================================
; Game Engine Function: _ZN16CWeaponModelInfo4InitEv
; Address            : 0x3890E4 - 0x3890F4
; =========================================================

3890E4:  PUSH            {R4,R6,R7,LR}
3890E6:  ADD             R7, SP, #8
3890E8:  MOV             R4, R0
3890EA:  BLX             j__ZN15CClumpModelInfo4InitEv; CClumpModelInfo::Init(void)
3890EE:  MOVS            R0, #0
3890F0:  STR             R0, [R4,#0x3C]
3890F2:  POP             {R4,R6,R7,PC}
