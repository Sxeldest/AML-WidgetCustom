; =========================================================
; Game Engine Function: _Z21RwImageCreateResamplePK7RwImageii
; Address            : 0x1DAF10 - 0x1DAF94
; =========================================================

1DAF10:  PUSH            {R4-R7,LR}
1DAF12:  ADD             R7, SP, #0xC
1DAF14:  PUSH.W          {R11}
1DAF18:  MOV             R5, R0
1DAF1A:  MOV             R0, R1; int
1DAF1C:  MOV             R1, R2; int
1DAF1E:  MOVS            R2, #0x20 ; ' '; int
1DAF20:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1DAF24:  MOV             R4, R0
1DAF26:  CBZ             R4, loc_1DAF8A
1DAF28:  MOV             R0, R4
1DAF2A:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1DAF2E:  CBZ             R0, loc_1DAF84
1DAF30:  LDR             R0, [R5,#0xC]
1DAF32:  CMP             R0, #0x20 ; ' '
1DAF34:  BNE             loc_1DAF42
1DAF36:  MOV             R0, R4
1DAF38:  MOV             R1, R5
1DAF3A:  BLX             j__Z15RwImageResampleP7RwImagePKS_; RwImageResample(RwImage *,RwImage const*)
1DAF3E:  CBNZ            R4, loc_1DAF8C
1DAF40:  B               loc_1DAF7E
1DAF42:  LDRD.W          R0, R1, [R5,#4]; int
1DAF46:  MOVS            R2, #0x20 ; ' '; int
1DAF48:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1DAF4C:  MOV             R6, R0
1DAF4E:  CBZ             R6, loc_1DAF7E
1DAF50:  MOV             R0, R6
1DAF52:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1DAF56:  CBZ             R0, loc_1DAF78
1DAF58:  MOV             R0, R6
1DAF5A:  MOV             R1, R5
1DAF5C:  BLX             j__Z11RwImageCopyP7RwImagePKS_; RwImageCopy(RwImage *,RwImage const*)
1DAF60:  MOV             R0, R4
1DAF62:  MOV             R1, R6
1DAF64:  BLX             j__Z15RwImageResampleP7RwImagePKS_; RwImageResample(RwImage *,RwImage const*)
1DAF68:  MOV             R0, R6
1DAF6A:  BLX             j__Z17RwImageFreePixelsP7RwImage; RwImageFreePixels(RwImage *)
1DAF6E:  MOV             R0, R6
1DAF70:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DAF74:  CBNZ            R4, loc_1DAF8C
1DAF76:  B               loc_1DAF7E
1DAF78:  MOV             R0, R6
1DAF7A:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DAF7E:  MOV             R0, R4
1DAF80:  BLX             j__Z17RwImageFreePixelsP7RwImage; RwImageFreePixels(RwImage *)
1DAF84:  MOV             R0, R4
1DAF86:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DAF8A:  MOVS            R4, #0
1DAF8C:  MOV             R0, R4
1DAF8E:  POP.W           {R11}
1DAF92:  POP             {R4-R7,PC}
