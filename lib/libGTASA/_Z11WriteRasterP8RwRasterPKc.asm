; =========================================================
; Game Engine Function: _Z11WriteRasterP8RwRasterPKc
; Address            : 0x458120 - 0x45815A
; =========================================================

458120:  PUSH            {R4-R7,LR}
458122:  ADD             R7, SP, #0xC
458124:  PUSH.W          {R11}
458128:  MOV             R5, R0
45812A:  ADD.W           R2, R5, #0xC
45812E:  MOV             R4, R1
458130:  LDM             R2, {R0-R2}; int
458132:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
458136:  MOV             R6, R0
458138:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
45813C:  MOV             R0, R6
45813E:  MOV             R1, R5
458140:  BLX             j__Z20RwImageSetFromRasterP7RwImageP8RwRaster; RwImageSetFromRaster(RwImage *,RwRaster *)
458144:  MOV             R0, R6
458146:  MOV             R1, R4
458148:  BLX             j__Z15RtPNGImageWriteP7RwImagePKc; RtPNGImageWrite(RwImage *,char const*)
45814C:  MOV             R0, R6
45814E:  POP.W           {R11}
458152:  POP.W           {R4-R7,LR}
458156:  B.W             sub_19ED54
