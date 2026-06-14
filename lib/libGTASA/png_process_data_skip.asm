; =========================================================
; Game Engine Function: png_process_data_skip
; Address            : 0x1F4468 - 0x1F4478
; =========================================================

1F4468:  PUSH            {R7,LR}
1F446A:  MOV             R7, SP
1F446C:  LDR             R1, =(aPngProcessData_2 - 0x1F4472); "png_process_data_skip is not implemente"...
1F446E:  ADD             R1, PC; "png_process_data_skip is not implemente"...
1F4470:  BLX             j_png_app_warning
1F4474:  MOVS            R0, #0
1F4476:  POP             {R7,PC}
