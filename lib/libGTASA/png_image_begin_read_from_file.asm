; =========================================================
; Game Engine Function: png_image_begin_read_from_file
; Address            : 0x1F68B4 - 0x1F6924
; =========================================================

1F68B4:  PUSH            {R4,R5,R7,LR}
1F68B6:  ADD             R7, SP, #8
1F68B8:  MOV             R4, R0
1F68BA:  CBZ             R4, loc_1F6920
1F68BC:  LDR             R0, [R4,#4]
1F68BE:  CMP             R0, #1
1F68C0:  BNE             loc_1F68FC
1F68C2:  CBZ             R1, loc_1F6900
1F68C4:  ADR             R2, aRb_21; "rb"
1F68C6:  MOV             R0, R1; filename
1F68C8:  MOV             R1, R2; modes
1F68CA:  BLX             fopen
1F68CE:  MOV             R5, R0
1F68D0:  CBZ             R5, loc_1F6904
1F68D2:  MOV             R0, R4
1F68D4:  BL              sub_1F6680
1F68D8:  CBZ             R0, loc_1F691A
1F68DA:  LDR             R0, [R4]
1F68DC:  LDR             R1, =(sub_1F67FC+1 - 0x1F68E4)
1F68DE:  LDR             R0, [R0]
1F68E0:  ADD             R1, PC; sub_1F67FC
1F68E2:  STR.W           R5, [R0,#0x120]
1F68E6:  LDR             R0, [R4]
1F68E8:  LDRB            R2, [R0,#0x14]
1F68EA:  ORR.W           R2, R2, #2
1F68EE:  STRB            R2, [R0,#0x14]
1F68F0:  MOV             R0, R4
1F68F2:  MOV             R2, R4
1F68F4:  POP.W           {R4,R5,R7,LR}
1F68F8:  B.W             j_j_png_safe_execute
1F68FC:  ADR             R1, aPngImageBeginR_4; "png_image_begin_read_from_file: incorre"...
1F68FE:  B               loc_1F6910
1F6900:  ADR             R1, aPngImageBeginR_5; "png_image_begin_read_from_file: invalid"...
1F6902:  B               loc_1F6910
1F6904:  BLX             __errno
1F6908:  LDR             R0, [R0]; int
1F690A:  BLX             strerror
1F690E:  MOV             R1, R0
1F6910:  MOV             R0, R4
1F6912:  POP.W           {R4,R5,R7,LR}
1F6916:  B.W             j_j_png_image_error
1F691A:  MOV             R0, R5; stream
1F691C:  BLX             fclose
1F6920:  MOVS            R0, #0
1F6922:  POP             {R4,R5,R7,PC}
