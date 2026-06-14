; =========================================================
; Game Engine Function: png_write_png
; Address            : 0x204818 - 0x204930
; =========================================================

204818:  PUSH            {R4-R7,LR}
20481A:  ADD             R7, SP, #0xC
20481C:  PUSH.W          {R8-R10}
204820:  MOV             R4, R0
204822:  CMP             R4, #0
204824:  MOV             R8, R1
204826:  MOV             R6, R2
204828:  IT NE
20482A:  CMPNE.W         R8, #0
20482E:  BEQ             loc_204848
204830:  LDRB.W          R0, [R8,#9]
204834:  LSLS            R0, R0, #0x18
204836:  BMI             loc_20484E
204838:  ADR             R1, aNoRowsForPngWr; "no rows for png_write_image to write"
20483A:  MOV             R0, R4
20483C:  POP.W           {R8-R10}
204840:  POP.W           {R4-R7,LR}
204844:  B.W             j_j_png_app_error
204848:  POP.W           {R8-R10}
20484C:  POP             {R4-R7,PC}
20484E:  MOV             R0, R4
204850:  MOV             R1, R8
204852:  BLX             j_png_write_info
204856:  LSLS            R0, R6, #0x1A
204858:  ITT MI
20485A:  MOVMI           R0, R4
20485C:  BLXMI           j_png_set_invert_mono
204860:  LSLS            R0, R6, #0x19
204862:  ITT MI
204864:  LDRBMI.W        R0, [R8,#8]
204868:  MOVSMI.W        R0, R0,LSL#30
20486C:  BPL             loc_204878
20486E:  ADD.W           R1, R8, #0x94
204872:  MOV             R0, R4
204874:  BLX             j_png_set_shift
204878:  LSLS            R0, R6, #0x1D
20487A:  ITT MI
20487C:  MOVMI           R0, R4
20487E:  BLXMI           j_png_set_packing
204882:  LSLS            R0, R6, #0x17
204884:  ITT MI
204886:  MOVMI           R0, R4
204888:  BLXMI           j_png_set_swap_alpha
20488C:  TST.W           R6, #0x1800
204890:  BEQ             loc_2048BA
204892:  AND.W           R0, R6, #0x800
204896:  TST.W           R6, #0x1000
20489A:  BNE             loc_2048A6
20489C:  CBZ             R0, loc_2048BA
20489E:  MOV             R0, R4
2048A0:  MOVS            R1, #0
2048A2:  MOVS            R2, #0
2048A4:  B               loc_2048B6
2048A6:  CBZ             R0, loc_2048B0
2048A8:  ADR             R1, aPngTransformSt; "PNG_TRANSFORM_STRIP_FILLER: BEFORE+AFTE"...
2048AA:  MOV             R0, R4
2048AC:  BLX             j_png_app_error
2048B0:  MOV             R0, R4
2048B2:  MOVS            R1, #0
2048B4:  MOVS            R2, #1
2048B6:  BLX             j_png_set_filler
2048BA:  LSLS            R0, R6, #0x18
2048BC:  ITT MI
2048BE:  MOVMI           R0, R4
2048C0:  BLXMI           j_png_set_bgr
2048C4:  LSLS            R0, R6, #0x16
2048C6:  ITT MI
2048C8:  MOVMI           R0, R4
2048CA:  BLXMI           j_png_set_swap
2048CE:  LSLS            R0, R6, #0x1C
2048D0:  ITT MI
2048D2:  MOVMI           R0, R4
2048D4:  BLXMI           j_png_set_packswap
2048D8:  LSLS            R0, R6, #0x15
2048DA:  ITT MI
2048DC:  MOVMI           R0, R4
2048DE:  BLXMI           j_png_set_invert_alpha
2048E2:  MOV             R0, R4
2048E4:  LDR.W           R5, [R8,#0x114]
2048E8:  BLX             j_png_set_interlace_handling
2048EC:  MOV             R9, R0
2048EE:  CMP.W           R9, #1
2048F2:  BLT             loc_204920
2048F4:  LDR.W           R0, [R4,#0x1C4]
2048F8:  MOV.W           R10, #0
2048FC:  CBZ             R0, loc_204916
2048FE:  MOVS            R6, #0
204900:  LDR.W           R1, [R5,R6,LSL#2]
204904:  MOV             R0, R4
204906:  BLX             j_png_write_row
20490A:  LDR.W           R0, [R4,#0x1C4]
20490E:  ADDS            R6, #1
204910:  CMP             R6, R0
204912:  BCC             loc_204900
204914:  B               loc_204918
204916:  MOVS            R0, #0
204918:  ADD.W           R10, R10, #1
20491C:  CMP             R10, R9
20491E:  BNE             loc_2048FC
204920:  MOV             R0, R4
204922:  MOV             R1, R8
204924:  POP.W           {R8-R10}
204928:  POP.W           {R4-R7,LR}
20492C:  B.W             png_write_end
