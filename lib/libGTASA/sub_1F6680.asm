; =========================================================
; Game Engine Function: sub_1F6680
; Address            : 0x1F6680 - 0x1F67A4
; =========================================================

1F6680:  PUSH            {R4-R7,LR}
1F6682:  ADD             R7, SP, #0xC
1F6684:  PUSH.W          {R11}
1F6688:  SUB             SP, SP, #0x18
1F668A:  MOV             R4, R0
1F668C:  LDR             R0, [R4]
1F668E:  CBZ             R0, loc_1F66A2
1F6690:  ADR             R1, aPngImageReadOp; "png_image_read: opaque pointer not NULL"
1F6692:  MOV             R0, R4
1F6694:  ADD             SP, SP, #0x18
1F6696:  POP.W           {R11}
1F669A:  POP.W           {R4-R7,LR}
1F669E:  B.W             j_j_png_image_error
1F66A2:  LDR             R1, =(png_safe_warning_ptr - 0x1F66AC)
1F66A4:  MOVS            R6, #0
1F66A6:  LDR             R0, =(png_safe_error_ptr - 0x1F66B2)
1F66A8:  ADD             R1, PC; png_safe_warning_ptr
1F66AA:  STRD.W          R6, R6, [SP,#0x28+var_28]
1F66AE:  ADD             R0, PC; png_safe_error_ptr
1F66B0:  STR             R6, [SP,#0x28+var_20]
1F66B2:  LDR             R3, [R1]; png_safe_warning
1F66B4:  MOV             R1, R4
1F66B6:  LDR             R2, [R0]; png_safe_error
1F66B8:  ADR             R0, a1634; "1.6.34"
1F66BA:  BLX             j_png_create_png_struct
1F66BE:  MOV             R5, R0
1F66C0:  CMP             R5, #0
1F66C2:  BEQ             loc_1F674C
1F66C4:  MOV.W           R0, #0x2000
1F66C8:  MOV.W           R1, #0x8000
1F66CC:  STR.W           R0, [R5,#0x364]
1F66D0:  MOVS            R2, #0
1F66D2:  LDR.W           R0, [R5,#0x138]
1F66D6:  ORR.W           R0, R0, #0x300000
1F66DA:  STRD.W          R1, R0, [R5,#0x134]
1F66DE:  MOV             R0, R5
1F66E0:  MOVS            R1, #0
1F66E2:  BLX             j_png_set_read_fn
1F66E6:  VMOV.I32        Q8, #0
1F66EA:  ADD.W           R0, R4, #0x50 ; 'P'
1F66EE:  STR             R5, [SP,#0x28+var_14]
1F66F0:  MOVS            R1, #1
1F66F2:  VST1.32         {D16-D17}, [R0]
1F66F6:  ADD.W           R0, R4, #0x40 ; '@'
1F66FA:  VST1.32         {D16-D17}, [R0]
1F66FE:  ADD.W           R0, R4, #0x30 ; '0'
1F6702:  VST1.32         {D16-D17}, [R0]
1F6706:  ADD.W           R0, R4, #0x20 ; ' '
1F670A:  VST1.32         {D16-D17}, [R0]
1F670E:  MOV             R0, R4
1F6710:  VST1.32         {D16-D17}, [R0]!
1F6714:  STR             R1, [R4,#4]
1F6716:  VST1.32         {D16-D17}, [R0]
1F671A:  MOV             R0, R5
1F671C:  BLX             j_png_create_info_struct
1F6720:  MOV             R6, R0
1F6722:  CMP             R6, #0
1F6724:  STR             R6, [SP,#0x28+var_18]
1F6726:  BEQ             loc_1F678A
1F6728:  MOV             R0, R5; int
1F672A:  MOVS            R1, #0x18; byte_count
1F672C:  BLX             j_png_malloc_warn
1F6730:  CBZ             R0, loc_1F6782
1F6732:  VMOV.I32        Q8, #0
1F6736:  ADD.W           R1, R0, #8
1F673A:  VST1.32         {D16-D17}, [R1]
1F673E:  MOVS            R1, #0
1F6740:  STRD.W          R5, R6, [R0]
1F6744:  STRB            R1, [R0,#0x14]
1F6746:  STR             R0, [R4]
1F6748:  MOVS            R0, #1
1F674A:  B               loc_1F679C
1F674C:  VMOV.I32        Q8, #0
1F6750:  ADD.W           R0, R4, #0x50 ; 'P'
1F6754:  STR             R6, [SP,#0x28+var_14]
1F6756:  MOVS            R1, #1
1F6758:  VST1.32         {D16-D17}, [R0]
1F675C:  ADD.W           R0, R4, #0x40 ; '@'
1F6760:  VST1.32         {D16-D17}, [R0]
1F6764:  ADD.W           R0, R4, #0x30 ; '0'
1F6768:  VST1.32         {D16-D17}, [R0]
1F676C:  ADD.W           R0, R4, #0x20 ; ' '
1F6770:  VST1.32         {D16-D17}, [R0]
1F6774:  MOV             R0, R4
1F6776:  VST1.32         {D16-D17}, [R0]!
1F677A:  STR             R1, [R4,#4]
1F677C:  VST1.32         {D16-D17}, [R0]
1F6780:  B               loc_1F6794
1F6782:  ADD             R1, SP, #0x28+var_18
1F6784:  MOV             R0, R5
1F6786:  BLX             j_png_destroy_info_struct
1F678A:  ADD             R0, SP, #0x28+var_14
1F678C:  MOVS            R1, #0
1F678E:  MOVS            R2, #0
1F6790:  BLX             j_png_destroy_read_struct
1F6794:  ADR             R1, aPngImageReadOu; "png_image_read: out of memory"
1F6796:  MOV             R0, R4
1F6798:  BLX             j_png_image_error
1F679C:  ADD             SP, SP, #0x18
1F679E:  POP.W           {R11}
1F67A2:  POP             {R4-R7,PC}
