; =========================================================
; Game Engine Function: _ZN16FurnitureGroup_c11GetRandomIdEih
; Address            : 0x4447A4 - 0x4447BE
; =========================================================

4447A4:  LDR             R0, [R0]
4447A6:  B               loc_4447AA
4447A8:  LDR             R0, [R0,#4]
4447AA:  CMP             R0, #0
4447AC:  ITT EQ
4447AE:  MOVEQ.W         R0, #0xFFFFFFFF; this
4447B2:  BXEQ            LR
4447B4:  LDR             R3, [R0,#8]
4447B6:  CMP             R3, R1
4447B8:  BNE             loc_4447A8
4447BA:  MOV             R1, R2; unsigned __int8
4447BC:  B               _ZN19FurnitureSubGroup_c11GetRandomIdEh; FurnitureSubGroup_c::GetRandomId(uchar)
