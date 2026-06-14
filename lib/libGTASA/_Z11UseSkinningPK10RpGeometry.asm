; =========================================================
; Game Engine Function: _Z11UseSkinningPK10RpGeometry
; Address            : 0x1C7AC8 - 0x1C7AF4
; =========================================================

1C7AC8:  PUSH            {R7,LR}
1C7ACA:  MOV             R7, SP
1C7ACC:  BLX             j_RpSkinGeometryGetSkin
1C7AD0:  CBZ             R0, loc_1C7AE0
1C7AD2:  LDR             R1, =(RQMaxBones_ptr - 0x1C7ADA)
1C7AD4:  LDR             R0, [R0]
1C7AD6:  ADD             R1, PC; RQMaxBones_ptr
1C7AD8:  LDR             R1, [R1]; RQMaxBones
1C7ADA:  LDR             R1, [R1]
1C7ADC:  CMP             R0, R1
1C7ADE:  BLE             loc_1C7AE4
1C7AE0:  MOVS            R0, #0
1C7AE2:  POP             {R7,PC}
1C7AE4:  LDR             R0, =(UseGpuSkinning_ptr - 0x1C7AEA)
1C7AE6:  ADD             R0, PC; UseGpuSkinning_ptr
1C7AE8:  LDR             R0, [R0]; UseGpuSkinning
1C7AEA:  LDR             R0, [R0]
1C7AEC:  CMP             R0, #0
1C7AEE:  IT NE
1C7AF0:  MOVNE           R0, #1
1C7AF2:  POP             {R7,PC}
