; =========================================================
; Game Engine Function: _ZN6CBirds8ShutdownEv
; Address            : 0x59E244 - 0x59E2E0
; =========================================================

59E244:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E24A)
59E246:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E248:  LDR             R0, [R0]; CBirds::aBirds ...
59E24A:  LDRB.W          R0, [R0,#(byte_A23C6B - 0xA23C2C)]
59E24E:  CBZ             R0, loc_59E25C
59E250:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E258)
59E252:  MOVS            R1, #0
59E254:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E256:  LDR             R0, [R0]; CBirds::aBirds ...
59E258:  STRB.W          R1, [R0,#(byte_A23C6B - 0xA23C2C)]
59E25C:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E262)
59E25E:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E260:  LDR             R0, [R0]; CBirds::aBirds ...
59E262:  LDRB.W          R0, [R0,#(byte_A23CAF - 0xA23C2C)]
59E266:  CBZ             R0, loc_59E274
59E268:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E270)
59E26A:  MOVS            R1, #0
59E26C:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E26E:  LDR             R0, [R0]; CBirds::aBirds ...
59E270:  STRB.W          R1, [R0,#(byte_A23CAF - 0xA23C2C)]
59E274:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E27A)
59E276:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E278:  LDR             R0, [R0]; CBirds::aBirds ...
59E27A:  LDRB.W          R0, [R0,#(byte_A23CF3 - 0xA23C2C)]
59E27E:  CBZ             R0, loc_59E28C
59E280:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E288)
59E282:  MOVS            R1, #0
59E284:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E286:  LDR             R0, [R0]; CBirds::aBirds ...
59E288:  STRB.W          R1, [R0,#(byte_A23CF3 - 0xA23C2C)]
59E28C:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E292)
59E28E:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E290:  LDR             R0, [R0]; CBirds::aBirds ...
59E292:  LDRB.W          R0, [R0,#(byte_A23D37 - 0xA23C2C)]
59E296:  CBZ             R0, loc_59E2A4
59E298:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E2A0)
59E29A:  MOVS            R1, #0
59E29C:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E29E:  LDR             R0, [R0]; CBirds::aBirds ...
59E2A0:  STRB.W          R1, [R0,#(byte_A23D37 - 0xA23C2C)]
59E2A4:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E2AA)
59E2A6:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E2A8:  LDR             R0, [R0]; CBirds::aBirds ...
59E2AA:  LDRB.W          R0, [R0,#(byte_A23D7B - 0xA23C2C)]
59E2AE:  CBZ             R0, loc_59E2BC
59E2B0:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E2B8)
59E2B2:  MOVS            R1, #0
59E2B4:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E2B6:  LDR             R0, [R0]; CBirds::aBirds ...
59E2B8:  STRB.W          R1, [R0,#(byte_A23D7B - 0xA23C2C)]
59E2BC:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E2C2)
59E2BE:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E2C0:  LDR             R0, [R0]; CBirds::aBirds ...
59E2C2:  LDRB.W          R0, [R0,#(byte_A23DBF - 0xA23C2C)]
59E2C6:  CBZ             R0, loc_59E2D4
59E2C8:  LDR             R0, =(_ZN6CBirds6aBirdsE_ptr - 0x59E2D0)
59E2CA:  MOVS            R1, #0
59E2CC:  ADD             R0, PC; _ZN6CBirds6aBirdsE_ptr
59E2CE:  LDR             R0, [R0]; CBirds::aBirds ...
59E2D0:  STRB.W          R1, [R0,#(byte_A23DBF - 0xA23C2C)]
59E2D4:  LDR             R0, =(_ZN6CBirds13NumberOfBirdsE_ptr - 0x59E2DC)
59E2D6:  MOVS            R1, #0
59E2D8:  ADD             R0, PC; _ZN6CBirds13NumberOfBirdsE_ptr
59E2DA:  LDR             R0, [R0]; CBirds::NumberOfBirds ...
59E2DC:  STR             R1, [R0]; CBirds::NumberOfBirds
59E2DE:  BX              LR
