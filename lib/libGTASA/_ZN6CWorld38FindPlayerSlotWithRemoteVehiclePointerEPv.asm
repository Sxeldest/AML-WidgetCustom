; =========================================================
; Game Engine Function: _ZN6CWorld38FindPlayerSlotWithRemoteVehiclePointerEPv
; Address            : 0x42C9FC - 0x42CA26
; =========================================================

42C9FC:  MOV             R1, R0
42C9FE:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x42CA04)
42CA00:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
42CA02:  LDR             R0, [R0]; CWorld::Players ...
42CA04:  LDR.W           R0, [R0,#(dword_96B74C - 0x96B69C)]
42CA08:  CMP             R0, R1
42CA0A:  ITT EQ
42CA0C:  MOVEQ           R0, #0
42CA0E:  BXEQ            LR
42CA10:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x42CA16)
42CA12:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
42CA14:  LDR             R0, [R0]; CWorld::Players ...
42CA16:  LDR.W           R2, [R0,#(dword_96B8E0 - 0x96B69C)]
42CA1A:  MOV.W           R0, #0xFFFFFFFF
42CA1E:  CMP             R2, R1
42CA20:  IT EQ
42CA22:  MOVEQ           R0, #1
42CA24:  BX              LR
