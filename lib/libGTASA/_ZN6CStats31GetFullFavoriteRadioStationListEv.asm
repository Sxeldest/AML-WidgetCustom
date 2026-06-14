; =========================================================
; Game Engine Function: _ZN6CStats31GetFullFavoriteRadioStationListEv
; Address            : 0x416474 - 0x41647C
; =========================================================

416474:  LDR             R0, =(_ZN6CStats24FavoriteRadioStationListE_ptr - 0x41647A)
416476:  ADD             R0, PC; _ZN6CStats24FavoriteRadioStationListE_ptr
416478:  LDR             R0, [R0]; CStats::FavoriteRadioStationList ...
41647A:  BX              LR
