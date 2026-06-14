; =========================================================
; Game Engine Function: _ZN15CCurrentVehicle7ProcessEv
; Address            : 0x4212D4 - 0x42132E
; =========================================================

4212D4:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4212E0)
4212D6:  MOV.W           R3, #0x194
4212DA:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x4212E2)
4212DC:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
4212DE:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
4212E0:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
4212E2:  LDR             R2, [R2]; CWorld::Players ...
4212E4:  LDR             R1, [R1]; CWorld::PlayerInFocus
4212E6:  SMULBB.W        R1, R1, R3
4212EA:  LDR             R1, [R2,R1]
4212EC:  LDRB.W          R2, [R1,#0x485]
4212F0:  LSLS            R2, R2, #0x1F
4212F2:  BNE             loc_4212FA
4212F4:  MOVS            R1, #0; unsigned __int16 *
4212F6:  STR             R1, [R0]
4212F8:  B               loc_421328
4212FA:  LDR.W           R1, [R1,#0x590]
4212FE:  STR             R1, [R0]
421300:  CBZ             R1, loc_421328
421302:  PUSH            {R7,LR}
421304:  MOV             R7, SP
421306:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x42130E)
421308:  LDR             R2, =(TheText_ptr - 0x421314)
42130A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
42130C:  LDRSH.W         R1, [R1,#0x26]
421310:  ADD             R2, PC; TheText_ptr
421312:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
421314:  LDR.W           R1, [R0,R1,LSL#2]
421318:  LDR             R0, [R2]; TheText ; this
42131A:  ADDS            R1, #0x4A ; 'J'; CKeyGen *
42131C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
421320:  POP.W           {R7,LR}
421324:  B.W             sub_18E4AC
421328:  MOVS            R0, #0; this
42132A:  B.W             sub_18E4AC
