; =========================================================
; Game Engine Function: _Z9TryTattooPKcS0_
; Address            : 0x45787C - 0x4578E4
; =========================================================

45787C:  PUSH            {R4-R7,LR}
45787E:  ADD             R7, SP, #0xC
457880:  PUSH.W          {R11}
457884:  MOV             R5, R1
457886:  ADR             R1, dword_4578E4; char *
457888:  MOV             R6, R0
45788A:  BLX             strcmp
45788E:  MOV             R4, R0
457890:  CMP             R4, #0
457892:  MOV             R0, R5; char *
457894:  IT NE
457896:  MOVNE           R4, R6
457898:  BLX             atoi
45789C:  MOV             R1, R0; char *
45789E:  SUBS            R0, R1, #1
4578A0:  CMP             R0, #7
4578A2:  ITT HI
4578A4:  POPHI.W         {R11}
4578A8:  POPHI           {R4-R7,PC}
4578AA:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x4578B4)
4578AC:  ADDS            R5, R1, #3
4578AE:  CMP             R4, #0
4578B0:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4578B2:  LDR             R0, [R0]; CWorld::Players ...
4578B4:  LDR             R0, [R0]; this
4578B6:  LDR.W           R2, [R0,#0x444]
4578BA:  LDR             R6, [R2,#4]
4578BC:  BEQ             loc_4578D0
4578BE:  MOV             R0, R4; this
4578C0:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4578C4:  MOV             R1, R0
4578C6:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x4578CC)
4578C8:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4578CA:  LDR             R0, [R0]; CWorld::Players ...
4578CC:  LDR             R0, [R0]; CWorld::Players
4578CE:  B               loc_4578D2
4578D0:  MOVS            R1, #0
4578D2:  ADD.W           R2, R6, R5,LSL#2; bool
4578D6:  STR             R1, [R2,#0x28]
4578D8:  MOVS            R1, #0; CPlayerPed *
4578DA:  POP.W           {R11}
4578DE:  POP.W           {R4-R7,LR}
4578E2:  B               _ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
