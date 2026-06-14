; =========================================================
; Game Engine Function: sub_8221C
; Address            : 0x8221C - 0x82236
; =========================================================

8221C:  PUSH            {R4,R6,R7,LR}
8221E:  ADD             R7, SP, #8
82220:  MOV             R4, R0
82222:  MOVS            R0, #8; unsigned int
82224:  BLX             j__Znwj; operator new(uint)
82228:  LDR             R1, =(unk_111394 - 0x82230)
8222A:  LDR             R2, [R4,#4]
8222C:  ADD             R1, PC; unk_111394
8222E:  ADDS            R1, #8
82230:  STRD.W          R1, R2, [R0]
82234:  POP             {R4,R6,R7,PC}
