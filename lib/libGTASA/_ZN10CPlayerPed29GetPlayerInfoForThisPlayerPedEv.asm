; =========================================================
; Game Engine Function: _ZN10CPlayerPed29GetPlayerInfoForThisPlayerPedEv
; Address            : 0x4C995C - 0x4C9982
; =========================================================

4C995C:  MOV             R1, R0
4C995E:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x4C9964)
4C9960:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4C9962:  LDR             R0, [R0]; CWorld::Players ...
4C9964:  LDR             R2, [R0]; CWorld::Players
4C9966:  CMP             R2, R1
4C9968:  IT EQ
4C996A:  BXEQ            LR
4C996C:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x4C9972)
4C996E:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4C9970:  LDR             R2, [R0]; CWorld::Players ...
4C9972:  MOVS            R0, #0
4C9974:  LDR.W           R3, [R2,#(dword_96B830 - 0x96B69C)]
4C9978:  CMP             R3, R1
4C997A:  IT EQ
4C997C:  ADDEQ.W         R0, R2, #0x194
4C9980:  BX              LR
