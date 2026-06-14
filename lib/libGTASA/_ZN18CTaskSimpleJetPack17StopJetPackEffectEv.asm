; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPack17StopJetPackEffectEv
; Address            : 0x530C68 - 0x530C8C
; =========================================================

530C68:  PUSH            {R4,R6,R7,LR}
530C6A:  ADD             R7, SP, #8
530C6C:  MOV             R4, R0
530C6E:  LDR             R0, [R4,#0x64]; this
530C70:  CBZ             R0, loc_530C7A
530C72:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
530C76:  MOVS            R0, #0
530C78:  STR             R0, [R4,#0x64]
530C7A:  LDR             R0, [R4,#0x68]; this
530C7C:  CMP             R0, #0
530C7E:  IT EQ
530C80:  POPEQ           {R4,R6,R7,PC}
530C82:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
530C86:  MOVS            R0, #0
530C88:  STR             R0, [R4,#0x68]
530C8A:  POP             {R4,R6,R7,PC}
