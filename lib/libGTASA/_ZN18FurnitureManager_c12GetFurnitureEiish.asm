; =========================================================
; Game Engine Function: _ZN18FurnitureManager_c12GetFurnitureEiish
; Address            : 0x4448D0 - 0x4448F4
; =========================================================

4448D0:  ADD.W           R1, R1, R1,LSL#1
4448D4:  LDR.W           R0, [R0,R1,LSL#2]; this
4448D8:  CBZ             R0, loc_4448EA
4448DA:  LDR.W           R12, [SP,#arg_0]
4448DE:  LDR             R1, [R0,#8]
4448E0:  CMP             R1, R2
4448E2:  BEQ             loc_4448EE
4448E4:  LDR             R0, [R0,#4]
4448E6:  CMP             R0, #0
4448E8:  BNE             loc_4448DE
4448EA:  MOVS            R0, #0
4448EC:  BX              LR
4448EE:  MOV             R1, R3; __int16
4448F0:  MOV             R2, R12; unsigned __int8
4448F2:  B               _ZN19FurnitureSubGroup_c12GetFurnitureEsh; FurnitureSubGroup_c::GetFurniture(short,uchar)
