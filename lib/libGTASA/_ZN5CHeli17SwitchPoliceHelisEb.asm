; =========================================================
; Game Engine Function: _ZN5CHeli17SwitchPoliceHelisEb
; Address            : 0x5744B4 - 0x5744BE
; =========================================================

5744B4:  LDR             R1, =(_ZN5CHeli19bPoliceHelisAllowedE_ptr - 0x5744BA)
5744B6:  ADD             R1, PC; _ZN5CHeli19bPoliceHelisAllowedE_ptr
5744B8:  LDR             R1, [R1]; CHeli::bPoliceHelisAllowed ...
5744BA:  STRB            R0, [R1]; CHeli::bPoliceHelisAllowed
5744BC:  BX              LR
