; =========================================================
; Game Engine Function: _ZN20CFollowLeaderOffSetsC2Ev
; Address            : 0x5446E0 - 0x544754
; =========================================================

5446E0:  ADR             R1, dword_544760
5446E2:  MOV             R2, R0
5446E4:  VLD1.64         {D16-D17}, [R1@128]
5446E8:  ADR             R1, dword_544770
5446EA:  MOVS            R3, #0
5446EC:  VLD1.64         {D18-D19}, [R1@128]
5446F0:  ADR             R1, dword_544780
5446F2:  VLD1.64         {D20-D21}, [R1@128]
5446F6:  ADR             R1, dword_544790
5446F8:  VLD1.64         {D22-D23}, [R1@128]
5446FC:  MOV.W           R1, #0x3F800000
544700:  STR.W           R1, [R0,#0x80]
544704:  VST1.32         {D16-D17}, [R2]!
544708:  STRD.W          R3, R1, [R2]
54470C:  ADD.W           R2, R0, #0x54 ; 'T'
544710:  VST1.32         {D18-D19}, [R2]
544714:  ADD.W           R2, R0, #0x44 ; 'D'
544718:  VST1.32         {D20-D21}, [R2]
54471C:  MOVS            R2, #0xBF800000
544722:  STRD.W          R2, R3, [R0,#0x18]
544726:  STRD.W          R1, R3, [R0,#0x20]
54472A:  STRD.W          R2, R2, [R0,#0x28]
54472E:  STRD.W          R3, R2, [R0,#0x30]
544732:  STRD.W          R1, R2, [R0,#0x38]
544736:  MOVS            R1, #0
544738:  STR             R2, [R0,#0x40]
54473A:  ADD.W           R2, R0, #0x6C ; 'l'
54473E:  MOVT            R1, #0xBFA0
544742:  VST1.32         {D22-D23}, [R2]
544746:  STRD.W          R1, R3, [R0,#0x64]
54474A:  MOVS            R1, #0xC0200000
544750:  STR             R1, [R0,#0x7C]
544752:  BX              LR
