; =========================================================
; Game Engine Function: _ZN7CCamera18GetFadingDirectionEv
; Address            : 0x3D46AA - 0x3D46C2
; =========================================================

3D46AA:  LDRB.W          R1, [R0,#0x4F]
3D46AE:  CMP             R1, #0
3D46B0:  ITT EQ
3D46B2:  MOVEQ           R0, #2
3D46B4:  BXEQ            LR
3D46B6:  LDRH.W          R0, [R0,#0xBB8]
3D46BA:  CMP             R0, #1
3D46BC:  IT NE
3D46BE:  MOVNE           R0, #0
3D46C0:  BX              LR
