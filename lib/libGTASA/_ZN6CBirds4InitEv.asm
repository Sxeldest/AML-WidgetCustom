; =========================================================
; Game Engine Function: _ZN6CBirds4InitEv
; Address            : 0x59CF10 - 0x59CF42
; =========================================================

59CF10:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59CF1C)
59CF12:  MOVS            R3, #0
59CF14:  LDR             R1, =(_ZN6CBirds16bHasBirdBeenShotE_ptr - 0x59CF1E)
59CF16:  LDR             R2, =(_ZN6CBirds13NumberOfBirdsE_ptr - 0x59CF20)
59CF18:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59CF1A:  ADD             R1, PC; _ZN6CBirds16bHasBirdBeenShotE_ptr
59CF1C:  ADD             R2, PC; _ZN6CBirds13NumberOfBirdsE_ptr
59CF1E:  LDR             R0, [R0]; CBirds::aBirds ...
59CF20:  LDR             R1, [R1]; CBirds::bHasBirdBeenShot ...
59CF22:  LDR             R2, [R2]; CBirds::NumberOfBirds ...
59CF24:  STRB.W          R3, [R0,#(byte_A23CAF - 0xA23C2C)]
59CF28:  STRB.W          R3, [R0,#(byte_A23C6B - 0xA23C2C)]
59CF2C:  STRB.W          R3, [R0,#(byte_A23CF3 - 0xA23C2C)]
59CF30:  STRB.W          R3, [R0,#(byte_A23D37 - 0xA23C2C)]
59CF34:  STRB.W          R3, [R0,#(byte_A23D7B - 0xA23C2C)]
59CF38:  STRB.W          R3, [R0,#(byte_A23DBF - 0xA23C2C)]
59CF3C:  STR             R3, [R2]; CBirds::NumberOfBirds
59CF3E:  STRB            R3, [R1]; CBirds::bHasBirdBeenShot
59CF40:  BX              LR
