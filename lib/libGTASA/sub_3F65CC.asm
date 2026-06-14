; =========================================================
; Game Engine Function: sub_3F65CC
; Address            : 0x3F65CC - 0x3F65DE
; =========================================================

3F65CC:  PUSH            {R0,LR}
3F65CE:  PUSH.W          {R1-R11}
3F65D2:  BLX             j__ZN10CPlaceName9GetForMapEff; CPlaceName::GetForMap(float,float)
3F65D6:  POP.W           {R1-R11}
3F65DA:  MOV             R2, R0
3F65DC:  POP             {R0,PC}
