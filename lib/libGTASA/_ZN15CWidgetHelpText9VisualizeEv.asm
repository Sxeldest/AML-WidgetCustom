; =========================================================
; Game Engine Function: _ZN15CWidgetHelpText9VisualizeEv
; Address            : 0x2B82AC - 0x2B82F6
; =========================================================

2B82AC:  PUSH            {R4-R7,LR}
2B82AE:  ADD             R7, SP, #0xC
2B82B0:  PUSH.W          {R11}
2B82B4:  SUB             SP, SP, #0x10
2B82B6:  ADD             R5, SP, #0x20+var_14
2B82B8:  MOV             R4, R0
2B82BA:  MOVS            R6, #0xFF
2B82BC:  MOVS            R1, #0xFF; unsigned __int8
2B82BE:  MOV             R0, R5; this
2B82C0:  MOVS            R2, #0xFF; unsigned __int8
2B82C2:  MOVS            R3, #0xFF; unsigned __int8
2B82C4:  STR             R6, [SP,#0x20+var_20]; unsigned __int8
2B82C6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B82CA:  ADD.W           R0, R4, #0x20 ; ' '
2B82CE:  MOV             R1, R5
2B82D0:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2B82D4:  ADD             R5, SP, #0x20+var_18
2B82D6:  MOVS            R1, #0x80; unsigned __int8
2B82D8:  MOVS            R2, #0x80; unsigned __int8
2B82DA:  MOVS            R3, #0x80; unsigned __int8
2B82DC:  MOV             R0, R5; this
2B82DE:  STR             R6, [SP,#0x20+var_20]; unsigned __int8
2B82E0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B82E4:  ADD.W           R0, R4, #0xA8
2B82E8:  MOV             R1, R5
2B82EA:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2B82EE:  ADD             SP, SP, #0x10
2B82F0:  POP.W           {R11}
2B82F4:  POP             {R4-R7,PC}
