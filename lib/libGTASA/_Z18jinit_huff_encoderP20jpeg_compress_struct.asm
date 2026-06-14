; =========================================================
; Game Engine Function: _Z18jinit_huff_encoderP20jpeg_compress_struct
; Address            : 0x477728 - 0x47776A
; =========================================================

477728:  PUSH            {R4,R6,R7,LR}
47772A:  ADD             R7, SP, #8
47772C:  MOV             R4, R0
47772E:  MOVS            R1, #1
477730:  LDR             R0, [R4,#4]
477732:  MOVS            R2, #0x6C ; 'l'
477734:  LDR             R3, [R0]
477736:  MOV             R0, R4
477738:  BLX             R3
47773A:  LDR             R1, =(sub_477770+1 - 0x477748)
47773C:  VMOV.I32        Q8, #0
477740:  STR.W           R0, [R4,#0x15C]
477744:  ADD             R1, PC; sub_477770
477746:  STR             R1, [R0]
477748:  MOVS            R1, #0
47774A:  STRD.W          R1, R1, [R0,#0x4C]
47774E:  STRD.W          R1, R1, [R0,#0x54]
477752:  ADD.W           R1, R0, #0x5C ; '\'
477756:  VST1.32         {D16-D17}, [R1]
47775A:  ADD.W           R1, R0, #0x2C ; ','
47775E:  ADDS            R0, #0x3C ; '<'
477760:  VST1.32         {D16-D17}, [R1]
477764:  VST1.32         {D16-D17}, [R0]
477768:  POP             {R4,R6,R7,PC}
