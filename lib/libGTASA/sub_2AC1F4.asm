; =========================================================
; Game Engine Function: sub_2AC1F4
; Address            : 0x2AC1F4 - 0x2AC210
; =========================================================

2AC1F4:  LDR             R0, [R0]
2AC1F6:  LDR.W           R0, [R0,#0xC8]
2AC1FA:  CMP             R0, #1
2AC1FC:  ITT NE
2AC1FE:  MOVNE           R0, #0; this
2AC200:  BXNE            LR
2AC202:  PUSH            {R7,LR}
2AC204:  MOV             R7, SP
2AC206:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
2AC20A:  EOR.W           R0, R0, #1
2AC20E:  POP             {R7,PC}
