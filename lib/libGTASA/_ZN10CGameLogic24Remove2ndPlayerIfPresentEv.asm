; =========================================================
; Game Engine Function: _ZN10CGameLogic24Remove2ndPlayerIfPresentEv
; Address            : 0x309658 - 0x3096CA
; =========================================================

309658:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x30965E)
30965A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
30965C:  LDR             R0, [R0]; CWorld::Players ...
30965E:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]; this
309662:  CBZ             R0, loc_3096BE
309664:  PUSH            {R4,R6,R7,LR}
309666:  ADD             R7, SP, #8
309668:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
30966C:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x309672)
30966E:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
309670:  LDR             R0, [R0]; CWorld::Players ...
309672:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
309676:  CMP             R0, #0
309678:  ITTT NE
30967A:  LDRNE           R1, [R0]
30967C:  LDRNE           R1, [R1,#4]
30967E:  BLXNE           R1
309680:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x309688)
309682:  MOVS            R1, #0
309684:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
309686:  LDR             R4, [R0]; CWorld::Players ...
309688:  LDR             R0, [R4]; this
30968A:  STR.W           R1, [R4,#(dword_96B830 - 0x96B69C)]
30968E:  MOVS            R1, #0; CPlayerPed *
309690:  BLX             j__ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
309694:  LDR             R0, [R4]; CWorld::Players
309696:  LDR.W           R4, [R0,#0x490]
30969A:  LDR.W           R3, [R0,#0x48C]
30969E:  LDR.W           R1, [R0,#0x484]
3096A2:  LDR.W           R2, [R0,#0x488]
3096A6:  BIC.W           R3, R3, #0x18000000
3096AA:  STR.W           R1, [R0,#0x484]
3096AE:  STR.W           R2, [R0,#0x488]
3096B2:  STR.W           R3, [R0,#0x48C]
3096B6:  STR.W           R4, [R0,#0x490]
3096BA:  POP.W           {R4,R6,R7,LR}
3096BE:  LDR             R0, =(_ZN10CGameLogic18n2PlayerPedInFocusE_ptr - 0x3096C6)
3096C0:  MOVS            R1, #2
3096C2:  ADD             R0, PC; _ZN10CGameLogic18n2PlayerPedInFocusE_ptr
3096C4:  LDR             R0, [R0]; CGameLogic::n2PlayerPedInFocus ...
3096C6:  STR             R1, [R0]; CGameLogic::n2PlayerPedInFocus
3096C8:  BX              LR
