; =========================================================
; Game Engine Function: _ZN6CWorld32FindPlayerSlotWithVehiclePointerEP7CEntity
; Address            : 0x42CA30 - 0x42CA5E
; =========================================================

42CA30:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x42CA36)
42CA32:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
42CA34:  LDR             R1, [R1]; CWorld::Players ...
42CA36:  LDR             R1, [R1]; CWorld::Players
42CA38:  CBZ             R1, loc_42CA42
42CA3A:  LDR.W           R1, [R1,#0x590]
42CA3E:  CMP             R1, R0
42CA40:  BEQ             loc_42CA5A
42CA42:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x42CA48)
42CA44:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
42CA46:  LDR             R1, [R1]; CWorld::Players ...
42CA48:  LDR.W           R1, [R1,#(dword_96B830 - 0x96B69C)]
42CA4C:  CBZ             R1, loc_42CA5A
42CA4E:  LDR.W           R1, [R1,#0x590]
42CA52:  CMP             R1, R0
42CA54:  ITT EQ
42CA56:  MOVEQ           R0, #1
42CA58:  BXEQ            LR
42CA5A:  MOVS            R0, #0
42CA5C:  BX              LR
