; =========================================================
; Game Engine Function: _ZN18FurnitureManager_c11GetRandomIdEiih
; Address            : 0x4448F4 - 0x444914
; =========================================================

4448F4:  ADD.W           R1, R1, R1,LSL#1
4448F8:  LDR.W           R0, [R0,R1,LSL#2]
4448FC:  B               loc_444900
4448FE:  LDR             R0, [R0,#4]
444900:  CMP             R0, #0
444902:  ITT EQ
444904:  MOVEQ.W         R0, #0xFFFFFFFF; this
444908:  BXEQ            LR
44490A:  LDR             R1, [R0,#8]
44490C:  CMP             R1, R2
44490E:  BNE             loc_4448FE
444910:  MOV             R1, R3; unsigned __int8
444912:  B               _ZN19FurnitureSubGroup_c11GetRandomIdEh; FurnitureSubGroup_c::GetRandomId(uchar)
