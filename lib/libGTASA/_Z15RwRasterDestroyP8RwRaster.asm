; =========================================================
; Game Engine Function: _Z15RwRasterDestroyP8RwRaster
; Address            : 0x1DA850 - 0x1DA88A
; =========================================================

1DA850:  PUSH            {R4,R5,R7,LR}
1DA852:  ADD             R7, SP, #8
1DA854:  MOV             R4, R0
1DA856:  LDR             R0, =(dword_682598 - 0x1DA85E)
1DA858:  MOV             R1, R4
1DA85A:  ADD             R0, PC; dword_682598
1DA85C:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
1DA860:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA86A)
1DA862:  MOV             R1, R4
1DA864:  MOVS            R2, #0
1DA866:  ADD             R0, PC; RwEngineInstance_ptr
1DA868:  LDR             R5, [R0]; RwEngineInstance
1DA86A:  LDR             R0, [R5]
1DA86C:  LDR             R3, [R0,#0x5C]
1DA86E:  MOVS            R0, #0
1DA870:  BLX             R3
1DA872:  LDR             R0, =(dword_6BCF30 - 0x1DA87A)
1DA874:  LDR             R1, [R5]
1DA876:  ADD             R0, PC; dword_6BCF30
1DA878:  LDR             R0, [R0]
1DA87A:  LDR.W           R2, [R1,#0x140]
1DA87E:  ADD             R0, R1
1DA880:  MOV             R1, R4
1DA882:  LDR             R0, [R0,#0x60]
1DA884:  BLX             R2
1DA886:  MOVS            R0, #1
1DA888:  POP             {R4,R5,R7,PC}
