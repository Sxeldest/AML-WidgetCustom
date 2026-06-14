; =========================================================
; Game Engine Function: sub_3F65DE
; Address            : 0x3F65DE - 0x3F65F0
; =========================================================

3F65DE:  PUSH            {R0,LR}
3F65E0:  PUSH.W          {R1-R11}
3F65E4:  BLX             j__ZN10CPlaceName9GetForMapEff; CPlaceName::GetForMap(float,float)
3F65E8:  POP.W           {R1-R11}
3F65EC:  MOV             R1, R0
3F65EE:  POP             {R0,PC}
