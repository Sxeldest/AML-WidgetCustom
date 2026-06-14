; =========================================================
; Game Engine Function: sub_82038
; Address            : 0x82038 - 0x82052
; =========================================================

82038:  PUSH            {R4,R6,R7,LR}
8203A:  ADD             R7, SP, #8
8203C:  MOV             R4, R0
8203E:  MOVS            R0, #8; unsigned int
82040:  BLX             j__Znwj; operator new(uint)
82044:  LDR             R1, =(unk_111244 - 0x8204C)
82046:  LDR             R2, [R4,#4]
82048:  ADD             R1, PC; unk_111244
8204A:  ADDS            R1, #8
8204C:  STRD.W          R1, R2, [R0]
82050:  POP             {R4,R6,R7,PC}
