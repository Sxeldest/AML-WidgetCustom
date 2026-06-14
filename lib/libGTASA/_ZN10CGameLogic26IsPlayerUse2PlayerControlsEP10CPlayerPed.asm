; =========================================================
; Game Engine Function: _ZN10CGameLogic26IsPlayerUse2PlayerControlsEP10CPlayerPed
; Address            : 0x30999C - 0x3099DE
; =========================================================

30999C:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3099A2)
30999E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3099A0:  LDR             R2, [R1]; CWorld::Players ...
3099A2:  MOVS            R1, #0
3099A4:  LDR             R3, [R2]; CWorld::Players
3099A6:  CMP             R3, #0
3099A8:  ITT NE
3099AA:  LDRNE.W         R2, [R2,#(dword_96B830 - 0x96B69C)]
3099AE:  CMPNE           R2, #0
3099B0:  BEQ             loc_3099DA
3099B2:  LDR             R1, =(_ZN10CGameLogic18n2PlayerPedInFocusE_ptr - 0x3099B8)
3099B4:  ADD             R1, PC; _ZN10CGameLogic18n2PlayerPedInFocusE_ptr
3099B6:  LDR             R1, [R1]; CGameLogic::n2PlayerPedInFocus ...
3099B8:  LDR             R1, [R1]; CGameLogic::n2PlayerPedInFocus
3099BA:  CMP             R1, #2
3099BC:  ITTT EQ
3099BE:  MOVEQ           R1, #1
3099C0:  MOVEQ           R0, R1
3099C2:  BXEQ            LR
3099C4:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x3099D0)
3099C6:  MOV.W           R3, #0x194
3099CA:  MULS            R1, R3
3099CC:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
3099CE:  LDR             R2, [R2]; CWorld::Players ...
3099D0:  LDR             R2, [R2,R1]
3099D2:  MOVS            R1, #0
3099D4:  CMP             R2, R0
3099D6:  IT NE
3099D8:  MOVNE           R1, #1
3099DA:  MOV             R0, R1
3099DC:  BX              LR
