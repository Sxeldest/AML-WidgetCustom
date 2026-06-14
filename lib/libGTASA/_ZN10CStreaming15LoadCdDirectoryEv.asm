; =========================================================
; Game Engine Function: _ZN10CStreaming15LoadCdDirectoryEv
; Address            : 0x46BF88 - 0x46C01E
; =========================================================

46BF88:  PUSH            {R4-R7,LR}
46BF8A:  ADD             R7, SP, #0xC
46BF8C:  PUSH.W          {R8,R9,R11}
46BF90:  LDR             R1, =(_ZN10CStreaming8ms_filesE_ptr - 0x46BFA0)
46BF92:  MOV.W           R2, #0xFFFFFFFF; int
46BF96:  LDR             R0, =(_ZN10CStreaming15ms_imageOffsetsE_ptr - 0x46BFA2)
46BF98:  MOV.W           R8, #0
46BF9C:  ADD             R1, PC; _ZN10CStreaming8ms_filesE_ptr
46BF9E:  ADD             R0, PC; _ZN10CStreaming15ms_imageOffsetsE_ptr
46BFA0:  LDR             R1, [R1]; CStreaming::ms_files ...
46BFA2:  LDR             R0, [R0]; CStreaming::ms_imageOffsets ...
46BFA4:  LDRB            R1, [R1]; CStreaming::ms_files
46BFA6:  STRD.W          R8, R2, [R0]; CStreaming::ms_imageOffsets
46BFAA:  CMP             R1, #0
46BFAC:  STRD.W          R2, R2, [R0,#(dword_792B28 - 0x792B20)]
46BFB0:  STRD.W          R2, R2, [R0,#(dword_792B30 - 0x792B20)]
46BFB4:  BEQ             loc_46C002
46BFB6:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x46BFBE)
46BFB8:  MOVS            R5, #0
46BFBA:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
46BFBC:  LDR             R4, [R0]; CStreaming::ms_files ...
46BFBE:  LDR             R0, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x46BFC4)
46BFC0:  ADD             R0, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
46BFC2:  LDR             R6, [R0]; CLoadingScreen::m_bActive ...
46BFC4:  LDR             R0, =(bLoadingScene_ptr - 0x46BFCA)
46BFC6:  ADD             R0, PC; bLoadingScene_ptr
46BFC8:  LDR.W           R9, [R0]; bLoadingScene
46BFCC:  LDRB.W          R0, [R4,#0x28]
46BFD0:  CMP             R0, #0
46BFD2:  ITTT NE
46BFD4:  MOVNE           R0, R4; this
46BFD6:  MOVNE           R1, R5; char *
46BFD8:  BLXNE           j__ZN10CStreaming15LoadCdDirectoryEPKci; CStreaming::LoadCdDirectory(char const*,int)
46BFDC:  LDRB            R0, [R6]; this
46BFDE:  CBZ             R0, loc_46BFEA
46BFE0:  BLX             j__ZN14CLoadingScreen15DisplayPCScreenEv; CLoadingScreen::DisplayPCScreen(void)
46BFE4:  CMP             R5, #0x1E
46BFE6:  BLE             loc_46BFF8
46BFE8:  B               loc_46C002
46BFEA:  LDRB.W          R0, [R9]
46BFEE:  CBZ             R0, loc_46BFF4
46BFF0:  BLX             j__Z16Pump_SwapBuffersv; Pump_SwapBuffers(void)
46BFF4:  CMP             R5, #0x1E
46BFF6:  BGT             loc_46C002
46BFF8:  LDRB.W          R0, [R4,#0x30]!
46BFFC:  ADDS            R5, #1
46BFFE:  CMP             R0, #0
46C000:  BNE             loc_46BFCC
46C002:  LDR             R0, =(_ZN10CStreaming12ms_imageSizeE_ptr - 0x46C00A)
46C004:  LDR             R1, =(_ZN10CStreaming16ms_lastImageReadE_ptr - 0x46C00C)
46C006:  ADD             R0, PC; _ZN10CStreaming12ms_imageSizeE_ptr
46C008:  ADD             R1, PC; _ZN10CStreaming16ms_lastImageReadE_ptr
46C00A:  LDR             R0, [R0]; CStreaming::ms_imageSize ...
46C00C:  LDR             R1, [R1]; CStreaming::ms_lastImageRead ...
46C00E:  LDR             R2, [R0]; CStreaming::ms_imageSize
46C010:  STR.W           R8, [R1]; CStreaming::ms_lastImageRead
46C014:  LSRS            R1, R2, #0xB
46C016:  STR             R1, [R0]; CStreaming::ms_imageSize
46C018:  POP.W           {R8,R9,R11}
46C01C:  POP             {R4-R7,PC}
