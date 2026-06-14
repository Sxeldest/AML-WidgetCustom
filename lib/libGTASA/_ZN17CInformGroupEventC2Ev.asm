; =========================================================
; Game Engine Function: _ZN17CInformGroupEventC2Ev
; Address            : 0x370154 - 0x370162
; =========================================================

370154:  MOVS            R1, #0; Alternative name is 'CInformGroupEvent::CInformGroupEvent(void)'
370156:  MOV.W           R2, #0xFFFFFFFF
37015A:  STR             R1, [R0]
37015C:  STRD.W          R1, R2, [R0,#8]
370160:  BX              LR
