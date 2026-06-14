; =========================================================
; Game Engine Function: _Z37FindPlayerCentreOfWorld_NoSniperShifti
; Address            : 0x40BC54 - 0x40BCCA
; =========================================================

40BC54:  LDR             R1, =(_ZN8CCarCtrl26bCarsGeneratedAroundCameraE_ptr - 0x40BC5A)
40BC56:  ADD             R1, PC; _ZN8CCarCtrl26bCarsGeneratedAroundCameraE_ptr
40BC58:  LDR             R1, [R1]; CCarCtrl::bCarsGeneratedAroundCamera ...
40BC5A:  LDRB            R1, [R1]; CCarCtrl::bCarsGeneratedAroundCamera
40BC5C:  CBZ             R1, loc_40BC66
40BC5E:  LDR             R0, =(TheCamera_ptr - 0x40BC64)
40BC60:  ADD             R0, PC; TheCamera_ptr
40BC62:  LDR             R1, [R0]; TheCamera
40BC64:  B               loc_40BCB6
40BC66:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x40BC70)
40BC68:  MOV.W           R2, #0x194
40BC6C:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40BC6E:  LDR             R1, [R1]; CWorld::Players ...
40BC70:  MLA.W           R1, R0, R2, R1
40BC74:  LDR.W           R1, [R1,#0xB0]
40BC78:  CBNZ            R1, loc_40BCB6
40BC7A:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40BC84)
40BC7C:  CMP             R0, #0
40BC7E:  LDR             R3, =(_ZN6CWorld7PlayersE_ptr - 0x40BC86)
40BC80:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
40BC82:  ADD             R3, PC; _ZN6CWorld7PlayersE_ptr
40BC84:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
40BC86:  LDR             R1, [R1]; CWorld::PlayerInFocus
40BC88:  IT GE
40BC8A:  MOVGE           R1, R0
40BC8C:  MULS            R1, R2
40BC8E:  LDR             R2, [R3]; CWorld::Players ...
40BC90:  LDR             R1, [R2,R1]
40BC92:  CMP             R1, #0
40BC94:  ITT NE
40BC96:  LDRBNE.W        R2, [R1,#0x485]
40BC9A:  MOVSNE.W        R2, R2,LSL#31
40BC9E:  BEQ             loc_40BCA6
40BCA0:  LDR.W           R1, [R1,#0x590]
40BCA4:  CBNZ            R1, loc_40BCB6
40BCA6:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x40BCB2)
40BCA8:  MOV.W           R2, #0x194
40BCAC:  MULS            R0, R2
40BCAE:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40BCB0:  LDR             R1, [R1]; CWorld::Players ...
40BCB2:  LDR             R1, [R1,R0]
40BCB4:  CBZ             R1, loc_40BCC4
40BCB6:  LDR             R2, [R1,#0x14]
40BCB8:  ADD.W           R0, R2, #0x30 ; '0'
40BCBC:  CMP             R2, #0
40BCBE:  IT EQ
40BCC0:  ADDEQ           R0, R1, #4
40BCC2:  BX              LR
40BCC4:  LDR             R0, =(dword_95ABA8 - 0x40BCCA)
40BCC6:  ADD             R0, PC; dword_95ABA8
40BCC8:  BX              LR
