; =========================================================
; Game Engine Function: _ZN8CCarCtrl15ChooseBoatModelEv
; Address            : 0x2EA6D4 - 0x2EA6E0
; =========================================================

2EA6D4:  LDR             R0, =(_ZN11CPopulation13m_LoadedBoatsE_ptr - 0x2EA6DC)
2EA6D6:  MOVS            R1, #1; int
2EA6D8:  ADD             R0, PC; _ZN11CPopulation13m_LoadedBoatsE_ptr
2EA6DA:  LDR             R0, [R0]; this
2EA6DC:  B.W             sub_192BB4
