; =========================================================
; Game Engine Function: sub_3F660A
; Address            : 0x3F660A - 0x3F6624
; =========================================================

3F660A:  LDRSH.W         R0, [R5,#0x26]; this
3F660E:  PUSH            {R0}
3F6610:  PUSH.W          {R2-R11,LR}
3F6614:  BLX             j__ZN11CFileLoader10LoadPickupEPKc; CFileLoader::LoadPickup(char const*)
3F6618:  POP.W           {R2-R11,LR}
3F661C:  MOV             R1, R0
3F661E:  POP             {R0}
3F6620:  B.W             loc_3AC724
