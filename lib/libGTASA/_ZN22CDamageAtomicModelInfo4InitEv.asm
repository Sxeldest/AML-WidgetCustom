; =========================================================
; Game Engine Function: _ZN22CDamageAtomicModelInfo4InitEv
; Address            : 0x384DC0 - 0x384DD0
; =========================================================

384DC0:  PUSH            {R4,R6,R7,LR}
384DC2:  ADD             R7, SP, #8
384DC4:  MOV             R4, R0
384DC6:  BLX             j__ZN14CBaseModelInfo4InitEv; CBaseModelInfo::Init(void)
384DCA:  MOVS            R0, #0
384DCC:  STR             R0, [R4,#0x38]
384DCE:  POP             {R4,R6,R7,PC}
