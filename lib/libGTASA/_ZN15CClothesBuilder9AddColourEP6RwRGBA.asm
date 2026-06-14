; =========================================================
; Game Engine Function: _ZN15CClothesBuilder9AddColourEP6RwRGBA
; Address            : 0x45BDF0 - 0x45BE0E
; =========================================================

45BDF0:  LDRB            R1, [R0,#3]
45BDF2:  CBNZ            R1, loc_45BDFC
45BDF4:  LDR             R1, =(unk_9A7530 - 0x45BDFC)
45BDF6:  MOVS            R2, #1
45BDF8:  ADD             R1, PC; unk_9A7530
45BDFA:  STR             R2, [R1,#(dword_9A755C - 0x9A7530)]
45BDFC:  LDR.W           R12, =(unk_9A7530 - 0x45BE06)
45BE00:  LDRB            R1, [R0]; unsigned __int8
45BE02:  ADD             R12, PC; unk_9A7530
45BE04:  LDRB            R2, [R0,#1]; unsigned __int8
45BE06:  LDRB            R3, [R0,#2]; unsigned __int8
45BE08:  MOV             R0, R12; this
45BE0A:  B.W             j_j__ZN12COctTreeBase6InsertEhhh; j_COctTreeBase::Insert(uchar,uchar,uchar)
