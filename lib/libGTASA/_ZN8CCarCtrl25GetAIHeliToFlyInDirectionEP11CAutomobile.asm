; =========================================================
; Game Engine Function: _ZN8CCarCtrl25GetAIHeliToFlyInDirectionEP11CAutomobile
; Address            : 0x2F67F4 - 0x2F6804
; =========================================================

2F67F4:  LDR.W           R1, [R0,#0x9C8]; CHeli *
2F67F8:  MOVS            R2, #0x447A0000; float
2F67FE:  MOVS            R3, #0; float
2F6800:  B.W             _ZN8CCarCtrl27FlyAIHeliInCertainDirectionEP5CHeliffb; CCarCtrl::FlyAIHeliInCertainDirection(CHeli *,float,float,bool)
