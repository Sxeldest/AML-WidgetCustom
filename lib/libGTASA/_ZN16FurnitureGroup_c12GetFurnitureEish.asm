; =========================================================
; Game Engine Function: _ZN16FurnitureGroup_c12GetFurnitureEish
; Address            : 0x444788 - 0x4447A4
; =========================================================

444788:  LDR             R0, [R0]
44478A:  B               loc_44478E
44478C:  LDR             R0, [R0,#4]
44478E:  CMP             R0, #0
444790:  ITT EQ
444792:  MOVEQ           R0, #0; this
444794:  BXEQ            LR
444796:  LDR.W           R12, [R0,#8]
44479A:  CMP             R12, R1
44479C:  BNE             loc_44478C
44479E:  MOV             R1, R2; __int16
4447A0:  MOV             R2, R3; unsigned __int8
4447A2:  B               _ZN19FurnitureSubGroup_c12GetFurnitureEsh; FurnitureSubGroup_c::GetFurniture(short,uchar)
