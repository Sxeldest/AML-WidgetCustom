; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo4InitEv
; Address            : 0x3851BA - 0x3851CC
; =========================================================

3851BA:  PUSH            {R4,R6,R7,LR}
3851BC:  ADD             R7, SP, #8
3851BE:  MOV             R4, R0
3851C0:  BLX             j__ZN14CBaseModelInfo4InitEv; CBaseModelInfo::Init(void)
3851C4:  MOV.W           R0, #0xFFFFFFFF
3851C8:  STR             R0, [R4,#0x38]
3851CA:  POP             {R4,R6,R7,PC}
