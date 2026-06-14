; =========================================================
; Game Engine Function: _Z13TakeJPegPhotoP8RwCamera
; Address            : 0x3F572C - 0x3F5736
; =========================================================

3F572C:  LDR             R0, =(_ZN7CWeapon13ms_bTakePhotoE_ptr - 0x3F5732)
3F572E:  ADD             R0, PC; _ZN7CWeapon13ms_bTakePhotoE_ptr
3F5730:  LDR             R0, [R0]; CWeapon::ms_bTakePhoto ...
3F5732:  LDRB            R0, [R0]; CWeapon::ms_bTakePhoto
3F5734:  BX              LR
