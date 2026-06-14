; =========================================================
; Game Engine Function: _ZN21CTaskSimpleBikeJacked19FinishAnimBikeHitCBEP21CAnimBlendAssociationPv
; Address            : 0x5058DC - 0x5058F6
; =========================================================

5058DC:  MOVS            R0, #1
5058DE:  MOVS            R2, #0
5058E0:  STRB            R0, [R1,#8]
5058E2:  LDR             R0, [R1,#0x18]
5058E4:  STR             R2, [R1,#0xC]
5058E6:  ORR.W           R0, R0, #2
5058EA:  CMP             R0, #0xA
5058EC:  ITE NE
5058EE:  MOVNE           R0, #0x6A ; 'j'
5058F0:  MOVEQ           R0, #0x69 ; 'i'
5058F2:  STR             R0, [R1,#0x10]
5058F4:  BX              LR
