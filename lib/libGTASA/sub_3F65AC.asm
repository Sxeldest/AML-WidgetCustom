; =========================================================
; Game Engine Function: sub_3F65AC
; Address            : 0x3F65AC - 0x3F65BC
; =========================================================

3F65AC:  PUSH            {R0-R4,LR}
3F65AE:  MOV             R0, R4; this
3F65B0:  BLX             j__ZN10CPlaceName7ProcessEv; CPlaceName::Process(void)
3F65B4:  POP.W           {R0-R4,LR}
3F65B8:  B.W             sub_427936
