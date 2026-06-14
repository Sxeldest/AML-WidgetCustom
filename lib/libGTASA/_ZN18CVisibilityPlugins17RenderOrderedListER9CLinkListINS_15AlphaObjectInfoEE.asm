; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins17RenderOrderedListER9CLinkListINS_15AlphaObjectInfoEE
; Address            : 0x5D6D00 - 0x5D6D1C
; =========================================================

5D6D00:  PUSH            {R4,R5,R7,LR}
5D6D02:  ADD             R7, SP, #8
5D6D04:  MOV             R4, R0
5D6D06:  LDR             R5, [R4,#0x20]
5D6D08:  B               loc_5D6D14
5D6D0A:  LDRD.W          R0, R2, [R5]
5D6D0E:  LDR             R1, [R5,#8]
5D6D10:  BLX             R2
5D6D12:  LDR             R5, [R5,#0xC]
5D6D14:  CMP             R5, R4
5D6D16:  IT EQ
5D6D18:  POPEQ           {R4,R5,R7,PC}
5D6D1A:  B               loc_5D6D0A
