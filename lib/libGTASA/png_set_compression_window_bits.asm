; =========================================================
; Game Engine Function: png_set_compression_window_bits
; Address            : 0x204708 - 0x204740
; =========================================================

204708:  PUSH            {R4,R6,R7,LR}
20470A:  ADD             R7, SP, #8
20470C:  MOV             R4, R0
20470E:  CMP             R4, #0
204710:  IT EQ
204712:  POPEQ           {R4,R6,R7,PC}
204714:  CMP             R1, #0x10
204716:  BLT             loc_20472A
204718:  LDR             R1, =(aOnlyCompressio - 0x204720); "Only compression windows <= 32k support"...
20471A:  MOV             R0, R4
20471C:  ADD             R1, PC; "Only compression windows <= 32k support"...
20471E:  BLX             j_png_warning
204722:  MOVS            R1, #0xF
204724:  STR.W           R1, [R4,#0x18C]
204728:  POP             {R4,R6,R7,PC}
20472A:  CMP             R1, #7
20472C:  BGT             loc_20473A
20472E:  LDR             R1, =(aOnlyCompressio_0 - 0x204736); "Only compression windows >= 256 support"...
204730:  MOV             R0, R4
204732:  ADD             R1, PC; "Only compression windows >= 256 support"...
204734:  BLX             j_png_warning
204738:  MOVS            R1, #8
20473A:  STR.W           R1, [R4,#0x18C]
20473E:  POP             {R4,R6,R7,PC}
